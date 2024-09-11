import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class ControlGateScreen extends StatefulWidget {
  @override
  _ControlGateScreenState createState() => _ControlGateScreenState();
}

class _ControlGateScreenState extends State<ControlGateScreen> {
  String _response = '';

  // Fungsi untuk membuka atau menutup gerbang
  Future<void> controlGate(String open) async {
    final url =
        'http://172.20.10.3:5000/openGate'; // Ganti dengan IP Raspberry Pi nanti

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
            {"data": open}), // Mengirim true untuk membuka, false untuk menutup
      );

      if (response.statusCode == 200) { 
        setState(() {
          _response = 'Gate updated successfully';
        });
      } else {
        setState(() {
          _response = 'Failed to update gate: ${response.body}';
        });
      }
    } catch (e) {
      setState(() {
        _response = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Control Gate'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => controlGate("True"), // Membuka gerbang
              child: const Text('Open Gate'),
            ),
            ElevatedButton(
              onPressed: () => controlGate("False"), // Menutup gerbang
              child: const Text('Close Gate'),
            ),
           const SizedBox(height: 20),
            Text(_response), // Menampilkan respons dari Raspberry Pi
          ],
        ),
      ),
    );
  }
}
