import 'package:flutter/material.dart';
import 'package:signalr_netcore/signalr_client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const ConnectionPage(),
    );
  }
}

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({
    super.key,
  });
  @override
  State<ConnectionPage> createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  String state = '';

  void buildConnection() async {
    // change this url to actual server
    String url = 'wss://socketsbay.com/wss/v2/1/demo/';
    debugPrint('change this url to actual server');
    HubConnection connection =
        HubConnectionBuilder().withUrl(url).withAutomaticReconnect().build();
    await connection.start();
    if (connection.state == HubConnectionState.Connected) {
      setState(() {
        state = "Connected";
      });
      connection.on("received message", (arguments) {});
    }
    if (connection.state == HubConnectionState.Connecting) {
      setState(() {
        state = "Connecting";
      });
    }
    if (connection.state == HubConnectionState.Disconnected) {
      setState(() {
        state = "Disconnected";
      });
    }
    if (connection.state == HubConnectionState.Disconnecting) {
      setState(() {
        state = "Disconnecting";
      });
    }
  }

  void sendMessage() async {
    String url = 'wss://socketsbay.com/wss/v2/1/demo/';
    HubConnection connection =
        HubConnectionBuilder().withUrl(url).withAutomaticReconnect().build();
    await connection.start();
    connection.invoke("send Message", args: [
      {'message': "this is first message"}
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Socket Connection"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Connection State -> $state',
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: buildConnection,
                child: const Text("Build connection"))
          ],
        ),
      ),
    );
  }
}
