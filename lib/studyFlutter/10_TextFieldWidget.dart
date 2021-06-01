import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WXHomePage(),
    );
  }
}

class WXHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础Widget"),
      ),
      body: WXHomeContent(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("FloatingActionButton Click"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class WXHomeContent extends StatefulWidget {
  @override
  _WXHomeContentState createState() => _WXHomeContentState();
}

class _WXHomeContentState extends State<WXHomeContent> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: Colors.green),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: 10),
            TextField(
              controller: userNameController,
              decoration: InputDecoration(
                  labelText: "userName",
                  icon: Icon(Icons.people),
                  hintText: "请输入用户名",
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.red[100]
              ),
              onChanged: (value) {
                print("输入内容: $value");
              },
              onSubmitted: (value) {
                print("onSubmitted: $value");
              },
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "userName",
                hintText: "请输入密码",
                icon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 44,
              child: ElevatedButton(
                  child: Text(
                    "登 录",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    print("TextButton");
                    final username = userNameController.text;
                    final password = passwordController.text;
                    print("账号: $username, 密码:$password");
                    userNameController.text = "";
                    passwordController.text = "";
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
