import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';

class notification extends StatefulWidget {
  notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  var _value = false;
  var _toggle = false;
  var _chnge = true;
  var _change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Notifications',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              height: 320,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(40)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Card(
                      // elevation: 10,
                      color: Colors.white,
                      child: ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          SwitchListTile(
                            title: Titleuse("Product updates"),
                            subtitle: Text("Freedom your home"),
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          dividerreuse(),
                          SwitchListTile(
                            title: Titleuse("Comments"),
                            subtitle:
                                Text("Advertising relationships vs business"),
                            value: _toggle,
                            onChanged: (value) {
                              setState(() {
                                _toggle = value;
                              });
                            },
                          ),
                          dividerreuse(),
                          SwitchListTile(
                            title: Titleuse("Offer Updates"),
                            subtitle: Text(
                                "furniture app,chaire , table ,and more.."),
                            value: _change,
                            onChanged: (value) {
                              setState(() {
                                _change = value;
                              });
                            },
                          ),
                          dividerreuse(),
                          SwitchListTile(
                            title: Titleuse("Notifications"),
                            subtitle:
                                Text("Creating remarkeble poster periods"),
                            value: _chnge,
                            onChanged: (value) {
                              setState(() {
                                _chnge = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // MaterialButton(context, "Update setting", () {})
        
          UIButton(context, "Update setting", () {}),
        ],
      ),
    );
  }
}

dividerreuse() {
  return Divider(
    thickness: 1,
    indent: 10,
    endIndent: 10,
    color: Color.fromARGB(255, 206, 206, 206),
  );
}

Titleuse(String title) {
  return Text(
    title,
    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
  );
}
