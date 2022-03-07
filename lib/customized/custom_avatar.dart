import 'package:flutter/material.dart';

class CustomNetworkAvatar extends StatelessWidget {
  const CustomNetworkAvatar(
    this.url, {
    Key? key,
    required this.size,
    required this.text,
    this.isAsset = false,
  }) : super(key: key);
  final double size;
  final String? text;
  final String? url;
  final bool isAsset;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundColor: Colors.white,
      // backgroundImage:
      //     isAsset ? AssetImage(url ?? '') : NetworkImage(url ?? ''),
      child: ClipOval(
        child: !isAsset
            ? Image.network(
                url ??
                    'https://cdn0.iconfinder.com/data/icons/elasto-online-store/26/00-ELASTOFONT-STORE-READY_user-512.png',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              )
            : Image.asset(url!),
      ),
    );
  }
}
