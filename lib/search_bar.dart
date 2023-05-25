import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.palette,
  });

  final ColorScheme palette;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 30, 8.0, 5),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          color: palette.onSecondary,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
              Expanded(
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    iconColor: palette.onSurface.withOpacity(.8),
                    foregroundColor:
                        palette.onSurface.withOpacity(.8),
                    alignment: AlignmentDirectional.topStart,
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.search_rounded),
                  label: const Text("Search places"),
                ),
              ),
              ClipOval(
                child: IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.blueGrey.withOpacity(.5),
                  ),
                  icon: const Icon(Icons.person_rounded),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
