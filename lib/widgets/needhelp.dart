import 'package:flutter/material.dart';

class NeedHelp extends StatelessWidget {
  const NeedHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildHelpCard(), const SizedBox(height: 20)],
      ),
    );
  }

  Widget _buildHelpCard() {
    return Container(
      width: double.infinity,
      height: 110,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF9682B6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Need help?",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Make an appointment or chat with us.",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          const Icon(Icons.calendar_month, color: Colors.white, size: 50),
        ],
      ),
    );
  }
}
