import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(flex: 2, child: _TopPortion()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Houssam Eddine Lamzoudi",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "houssam.eddine@gmail.com",
                  ),
                  const SizedBox(height: 64),
                  const _ProfileInfoRow()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileInfoRow extends StatelessWidget {
  const _ProfileInfoRow({Key? key}) : super(key: key);

  final List<ProfileInfoItem> _items = const [
    ProfileInfoItem("Avancement de la promo", "46%"),
    ProfileInfoItem("Taux de réussite de la promo", "47%"),
    ProfileInfoItem("Mon taux de réussite", "42%"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      constraints: const BoxConstraints(maxWidth: 400),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _items
            .map((item) => Expanded(
                    child: Column(
                  children: [
                    if (_items.indexOf(item) != 0) const VerticalDivider(),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(item.value),
                      ],
                    )),
                    const SizedBox(height: 16)
                  ],
                )
                    ))
            .toList(),
      ),
    );
  }
}

class ProfileInfoItem {
  final String title;
  final String value;
  const ProfileInfoItem(this.title, this.value);
}

class _TopPortion extends StatelessWidget {
  const _TopPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 206, 0, 51)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png')),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: const Text(
//           'Profile',
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 100),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }
