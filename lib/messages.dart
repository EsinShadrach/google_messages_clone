import 'package:flutter/material.dart';

String message = "Your Pulse Main Account : Airtime: -N415.59. Pulse point balance: 5.00. Expires 31-12-2023 23:59:59. Xtratime Balance: N120.07. Data Transfer Bal: 439MB. Expires 26-05-2023 23:59:59.Free incoming minutes: You have used 0.00 mins from your free incoming mins. You have 50.00 mins remaining, valid till 01-06-2023.  Get 6X MORE when you recharge with *888*PIN# today. Load N200 get N1200.";

class MessagesWidget extends StatelessWidget {
  const MessagesWidget({
    super.key,
    required this.placeholders,
    required this.palette,
    required this.presentTime,
  });

  final List placeholders;
  final ColorScheme palette;
  final DateTime presentTime;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          for (var count in placeholders)
            Card(
              color: Colors.transparent,
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              child: ListTile(
                onTap: () {},
                leading: ClipOval(
                  child: IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                        backgroundColor: palette.secondaryContainer),
                    icon: Icon(Icons.person_rounded, color: palette.secondary),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Message - ${count + 1}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${presentTime.hour}:${presentTime.minute}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  message,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
