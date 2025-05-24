import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/music_service_view_model.dart';
import 'service_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MusicServiceViewModel>().loadServices();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB91C53),
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 16),
                    Icon(Icons.search, color: Colors.white70, size: 20),
                    SizedBox(width: 12),
                    Text(
                      'Search "Punjabi Lyrics"',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Icon(Icons.mic, color: Colors.white),
            const SizedBox(width: 12),
            const CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Color(0xFFB91C53), size: 18),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Header Section
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFB91C53), Color(0xFF8B1538)],
              ),
            ),
            child: Stack(
              children: [
                // Background decorative elements
                Positioned(
                  left: -30,
                  top: 20,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                ),
                Positioned(
                  right: -40,
                  top: 40,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.05),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      'Claim your',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Text(
                      'Free Demo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'for custom Music Production',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFFB91C53),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        'Book Now',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Decorative elements with images
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side - CD/Disc image
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // CD/Disc design
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [Colors.white70, Colors.white38],
                                  ),
                                ),
                                child: Center(
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFB91C53),
                                    ),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                        // Right side - Tilted Piano/Keyboard
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: Transform.rotate(
                            angle: -0.3, // Tilt angle in radians (about -17 degrees)
                            child: Stack(
                              children: [
                                // Piano keys background
                                Container(
                                  width: 100,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 8,
                                        offset: const Offset(2, 4),
                                      ),
                                    ],
                                  ),
                                ),
                                // White key separators
                                Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 20,
                                  child: Container(
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 40,
                                  child: Container(
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 60,
                                  child: Container(
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 80,
                                  child: Container(
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                // Black keys
                                Positioned(
                                  top: 0,
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 12),
                                      Container(
                                        width: 10,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(4),
                                            bottomRight: Radius.circular(4),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        width: 10,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(4),
                                            bottomRight: Radius.circular(4),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Container(
                                        width: 10,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(4),
                                            bottomRight: Radius.circular(4),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        width: 10,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(4),
                                            bottomRight: Radius.circular(4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
          // Services Section
          Expanded(
            child: Container(
              color: const Color(0xFF1A1A1A),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        'Hire hand-picked Pros for popular music services',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                         
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Consumer<MusicServiceViewModel>(
                      builder: (context, viewModel, child) {
                        if (viewModel.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFFB91C53),
                            ),
                          );
                        }

                        if (viewModel.error != null) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.error_outline,
                                  color: Colors.red,
                                  size: 48,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Error: ${viewModel.error}',
                                  style: const TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: () => viewModel.loadServices(),
                                  child: const Text('Retry'),
                                ),
                              ],
                            ),
                          );
                        }

                        return ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: viewModel.services.length,
                          itemBuilder: (context, index) {
                            final service = viewModel.services[index];
                            return _buildServiceCard(service, index, context);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1A1A1A),
        selectedItemColor: const Color(0xFFB91C53),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'TrackBox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'TrackBox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Projects',
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard(dynamic service, int index, BuildContext context) {
    // Different background gradients for variety
    final List<List<Color>> backgroundGradients = [
      [const Color(0xFF8B1538).withOpacity(0.3), const Color(0xFFB91C53).withOpacity(0.1)],
      [const Color(0xFF2E7D32).withOpacity(0.3), const Color(0xFF4CAF50).withOpacity(0.1)],
      [const Color(0xFF1565C0).withOpacity(0.3), const Color(0xFF2196F3).withOpacity(0.1)],
      [const Color(0xFFE65100).withOpacity(0.3), const Color(0xFFFF9800).withOpacity(0.1)],
      [const Color(0xFF4A148C).withOpacity(0.3), const Color(0xFF9C27B0).withOpacity(0.1)],
    ];

    final gradient = backgroundGradients[index % backgroundGradients.length];

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ServiceDetailScreen(
                serviceName: service.title,
              ),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: gradient,
            ),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              // Service Icon
              _getServiceIcon(service.title ?? 'Service', index),
              const SizedBox(width: 16),
              // Service Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.title ?? 'Music Service',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      service.description ?? 'Professional music service',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              // Arrow Icon
              Icon(
                Icons.chevron_right,
                color: Colors.white.withOpacity(0.7),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getServiceIcon(String serviceName, int index) {
    final List<IconData> icons = [
      Icons.audiotrack,
      Icons.tune,
      Icons.edit,
      Icons.mic,
      Icons.piano,
    ];

    final List<Color> iconColors = [
      const Color(0xFFB91C53),
      const Color(0xFF4CAF50),
      const Color(0xFF2196F3),
      const Color(0xFFFF9800),
      const Color(0xFF9C27B0),
    ];

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        icons[index % icons.length],
        color: iconColors[index % iconColors.length],
        size: 24,
      ),
    );
  }
}