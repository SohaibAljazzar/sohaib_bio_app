import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sohaib_bio_app/widgets/custom_list_tile_card.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // centerTitle: true,
        title: const Text(
          'My BIO',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          // color: Colors.orange,
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFFC9BBCF),
              Color(0xFFD6EFED),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 40,
              backgroundImage: const NetworkImage(
                'https://lh3.googleusercontent.com/a-/AFdZucozQhef7tnl1_-kr12-pralA5iM9XrrdPHUlbKcGg=s360-p-rw-no',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Sohaib B. F. Aljazzar',
              style: GoogleFonts.cairo(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'elancer 2 - UCASTI',
              style: GoogleFonts.cairo(
                fontSize: 13,
                height: 0.8,
                fontWeight: FontWeight.w300,
              ),
            ),
            // SizedBox(height: 50,),
            const Divider(
              thickness: 0.6,
              color: Color(0xFF898AA6),
              indent: 40,
              endIndent: 40,
              height: 50,
            ),
            CustomListTileCard(
              leadingIcon: Icons.phone_android_outlined,
              title: 'Mobile',
              subTitle: '+970 59-1234-567',
              trailingIcon: Icons.call,
              marginBottom: 10,
              onActionPressed: () {
                _showMessage(context, message: 'send number');
              },
            ),
            CustomListTileCard(
              leadingIcon: Icons.email,
              title: 'Email',
              subTitle: 'sohaib@email.com',
              trailingIcon: Icons.send,
              marginBottom: 10,
              onActionPressed: () {
                _showMessage(context, message: 'Send Email');
              },
            ),
            CustomListTileCard(
              leadingIcon: Icons.location_history,
              title: 'Location',
              subTitle: 'Gaza',
              trailingIcon: Icons.map,
              onActionPressed: () {
                _showMessage(context, message: 'Open Map');
              },
            ),
            const Spacer(),
            Text(
              'eLancer 2',
              style: GoogleFonts.cairo(fontSize: 16),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }

  void _showMessage(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        elevation: 5,
        dismissDirection: DismissDirection.horizontal,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {},
          textColor: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
