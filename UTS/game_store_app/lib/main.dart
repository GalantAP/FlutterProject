import 'package:flutter/material.dart';
import 'pages/page_one.dart';
import 'pages/page_two.dart';
import 'widgets/game_card.dart';

void main() => runApp(GameStoreApp());

class GameStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, String>> games = [
  {
    'title': 'Cyberpunk 2077',
    'price': '\$49.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1091500/header.jpg',
  },
  {
    'title': 'The Witcher 3: Wild Hunt',
    'price': '\$19.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/292030/header.jpg',
  },
  {
    'title': 'Elden Ring',
    'price': '\$59.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1245620/header.jpg',
  },
  {
    'title': 'Red Dead Redemption 2',
    'price': '\$39.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1174180/header.jpg',
  },
  {
    'title': 'Grand Theft Auto V',
    'price': '\$29.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/271590/header.jpg',
  },
  {
    'title': 'Hogwarts Legacy',
    'price': '\$59.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/990080/header.jpg',
  },
  {
    'title': 'Resident Evil 4 Remake',
    'price': '\$49.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/2050650/header.jpg',
  },
  {
    'title': 'God of War',
    'price': '\$49.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1593500/header.jpg',
  },
  {
    'title': 'Sekiro: Shadows Die Twice',
    'price': '\$29.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/814380/header.jpg',
  },
  {
    'title': 'Assassin’s Creed Valhalla',
    'price': '\$59.99',
    'image': 'https://cdn.akamai.steamstatic.com/steam/apps/2208920/header.jpg',
  },
  {
    'title': 'Far Cry 6',
    'price': '\$59.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/2369390/header.jpg',
  },
  {
    'title': 'Call of Duty: Modern Warfare II',
    'price': '\$69.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1938090/header.jpg',
  },
  {
    'title': 'FIFA 23',
    'price': '\$59.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1811260/header.jpg',
  },
  {
    'title': 'Forza Horizon 5',
    'price': '\$59.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1551360/header.jpg',
  },
  {
    'title': 'Hades',
    'price': '\$24.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1145360/header.jpg',
  },
  {
    'title': 'Stardew Valley',
    'price': '\$14.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/413150/header.jpg',
  },
  {
    'title': 'Among Us',
    'price': '\$4.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/945360/header.jpg',
  },
  {
    'title': 'Minecraft',
    'price': '\$26.95',
    'image': 'https://www.minecraft.net/etc.clientlibs/minecraft/clientlibs/main/resources/img/minecraft-creeper-face.jpg',
  },
  {
    'title': 'Terraria',
    'price': '\$9.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/105600/header.jpg',
  },
  {
    'title': 'Apex Legends',
    'price': 'Free',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1172470/header.jpg',
  },
  {
    'title': 'Overwatch 2',
    'price': 'Free',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/2357570/header.jpg',
  },
  {
    'title': 'League of Legends',
    'price': 'Free',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1234560/header.jpg',
  },
  {
    'title': 'Dota 2',
    'price': 'Free',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/570/header.jpg',
  },
  {
    'title': 'PUBG: Battlegrounds',
    'price': 'Free',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/578080/header.jpg',
  },
  {
    'title': 'The Sims 4',
    'price': 'Free',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1222670/header.jpg',
  },
  {
    'title': 'Dead by Daylight',
    'price': '\$19.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/381210/header.jpg',
  },
  {
    'title': 'Fall Guys',
    'price': 'Free',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/1097150/header.jpg',
  },
  {
    'title': 'Phasmophobia',
    'price': '\$13.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/739630/header.jpg',
  },
  {
    'title': 'ARK: Survival Evolved',
    'price': '\$29.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/346110/header.jpg',
  },
  {
    'title': 'Subnautica',
    'price': '\$29.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/264710/header.jpg',
  },
  {
    'title': 'RimWorld',
    'price': '\$34.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/294100/header.jpg',
  },
  {
    'title': 'Celeste',
    'price': '\$19.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/504230/header.jpg',
  },
  {
    'title': 'Hollow Knight',
    'price': '\$14.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/367520/header.jpg',
  },
  {
    'title': 'Slay the Spire',
    'price': '\$24.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/646570/header.jpg',
  },
  {
    'title': 'Portal 2',
    'price': '\$9.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/620/header.jpg',
  },
  {
    'title': 'Half-Life: Alyx',
    'price': '\$59.99',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/546560/header.jpg',
  },
  {
    'title': 'Team Fortress 2',
    'price': 'Free',
    'image': 'https://cdn.cloudflare.steamstatic.com/steam/apps/440/header.jpg',
  },
];



  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _startSearch() {
    showSearch(context: context, delegate: GameSearch(games: games));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Store'),
        actions: [
          IconButton(
            onPressed: _startSearch,
            icon: Icon(Icons.search),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Games'),
            Tab(text: 'Favorites'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  "Game Store",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => PageOne())),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => PageTwo())),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0), // sedikit padding supaya tidak terlalu mepet ke sisi
            child: GridView.builder(
              itemCount: games.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,         // 3 kolom
                crossAxisSpacing: 8,       // jarak horizontal
                mainAxisSpacing: 6,        // ✅ jarak vertikal DIKURANGI
                childAspectRatio: 0.58,    // ✅ proporsi height/width agar tidak terlalu tinggi
              ),
              itemBuilder: (context, index) {
                final game = games[index];
                return GameCard(
                  title: game['title']!,
                  price: game['price']!,
                  imageUrl: game['image']!,
                  onTap: () {},
                );
              },
            ),
          ),
          const Center(
            child: Text("Your Favorites will show up here"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("FAB Pressed")),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class GameSearch extends SearchDelegate<String> {
  final List<Map<String, String>> games;

  GameSearch({required this.games});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, ''),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = games.where((g) => g['title']!.toLowerCase().contains(query.toLowerCase()));
    return ListView(
      children: results
          .map((game) => GameCard(
                title: game['title']!,
                price: game['price']!,
                imageUrl: game['image']!,
                onTap: () {},
              ))
          .toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = games.where((g) => g['title']!.toLowerCase().startsWith(query.toLowerCase()));
    return ListView(
      children: suggestions
          .map((game) => ListTile(
                title: Text(game['title']!),
                onTap: () => query = game['title']!,
              ))
          .toList(),
    );
  }
}
