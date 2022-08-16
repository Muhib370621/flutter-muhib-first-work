import 'package:flutter/material.dart';

import '../model/accountList.dart';

class ItemWidget extends StatefulWidget {
  final Item item;

  const ItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(h * 0.009),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(h * 0.030),
        ),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, h * 0.009, 0, h * 0.009),
          child: ListTile(
            leading: Image.asset(widget.item.image,
                height: h * 0.070, width: w * 0.12),
            title: Padding(
                padding: EdgeInsets.fromLTRB(0, h * 0.009, 0, h * 0.009),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.item.name,
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontSize: h * 0.018, color: Colors.red),
                      ),
                    ),
                    Expanded(
                      child: Text(widget.item.desc,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: h * 0.018, color: Colors.black)),
                    ),
                    Expanded(
                      child: Text(widget.item.date,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: h * 0.018, color: Colors.black)),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}