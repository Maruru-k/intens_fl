import 'package:flutter/material.dart';
import 'package:intens_fl/les68_recent_calls/call_card.dart';

class RecentCalls extends StatelessWidget {
  const RecentCalls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Журнал звонков"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        physics: const BouncingScrollPhysics(),
        itemCount: 30,
        itemBuilder: (context, _) => const CallCard(),
        separatorBuilder: (context, _) => const Padding(
          padding: EdgeInsets.only(left: 55),
          child: Divider(thickness: 1),
        ),
      ),
    );
  }
}
