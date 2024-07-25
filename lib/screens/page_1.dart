import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool isSelected = false;
  bool isSelected2 = false;
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    TextScaler textScale = MediaQuery.textScalerOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  icon: Icon(CupertinoIcons.alarm),
                  onPressed: () {},
                  label: const Text('Elevated icon Button'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated Button'),
                ),
                Column(
                  children: [
                    ChoiceChip(
                      label: Text('choicechip Button'),
                      selected: isSelected,
                      selectedColor: Colors.grey,
                      onSelected: (newstate) {
                        setState(() {
                          isSelected = newstate;
                        });
                      },
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    FilterChip(
                      label: Text('filterchip Button'),
                      selected: isSelected2,
                      onSelected: (bool value) {
                        setState(
                          () {
                            isSelected2 = !isSelected2;
                          },
                        );
                      },
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    ActionChip(
                      avatar: Icon(
                          favorite ? Icons.favorite : Icons.favorite_border),
                      label: const Text('Like'),
                      onPressed: () {
                        setState(() {
                          favorite = !favorite;
                        });
                      },
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Button'),
                ),
                OutlinedButton.icon(
                  icon: Icon(CupertinoIcons.home),
                  onPressed: () {},
                  label: Text('Button'),
                ),
                CloseButton(
                  onPressed: () {},
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Text Button'),
                ),
                CupertinoButton.filled(
                  child: Text('Cupertino Button'),
                  onPressed: () {},
                ),
                IconButton.filled(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.save_alt_outlined,
                  ),
                ),
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.upload_outlined,
                  ),
                ),
                RawMaterialButton(
                  onPressed: () {},
                  child: Text('Raw Material'),
                ),
                BackButton(
                  onPressed: () {},
                ),
                PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text('1'),
                    ),
                    PopupMenuItem(
                      child: Text('2'),
                    ),
                    PopupMenuItem(
                      child: Text('3'),
                    ),
                  ];
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
