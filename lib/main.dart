import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightScheme, ColorScheme? darkScheme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: lightScheme,
            useMaterial3: true,
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            colorScheme: darkScheme,
            useMaterial3: true,
            brightness: Brightness.dark,
          ),
          themeMode: ThemeMode.system,
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final DateTime presentTime = DateTime.now();
    List placeholders = List.generate(30, (index) => index);
    ColorScheme palette = Theme.of(context).colorScheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: palette.surface,
            centerTitle: true,
            expandedHeight: 310,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                collapseMode: CollapseMode.pin,
                background: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Messages",
                        style: Theme.of(context).textTheme.headlineLarge!,
                      )),
                ),
                centerTitle: true,
                titlePadding: const EdgeInsets.all(0),
                title: Padding(
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
                                label: const Text("Search places")),
                          ),
                          ClipOval(
                            child: IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                  backgroundColor:
                                      Colors.blueGrey.withOpacity(.5),
                                ),
                                icon: const Icon(Icons.person_rounded)),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: Column(children: [
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
                          icon: Icon(Icons.person_rounded,
                              color: palette.secondary)),
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
                        )
                      ],
                    ),
                    subtitle: const Text(
                      "Your Pulse Main Account : Airtime: -N415.59. Pulse point balance: 5.00. Expires 31-12-2023 23:59:59. Xtratime Balance: N120.07. Data Transfer Bal: 439MB. Expires 26-05-2023 23:59:59.Free incoming minutes: You have used 0.00 mins from your free incoming mins. You have 50.00 mins remaining, valid till 01-06-2023.  Get 6X MORE when you recharge with *888*PIN# today. Load N200 get N1200.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.messenger_outline_rounded),
      ),
    );
  }
}
