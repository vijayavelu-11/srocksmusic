import 'package:flutter/material.dart';
import '../models/music_service.dart';

class ServiceCard extends StatelessWidget {
  final MusicService service;
  final VoidCallback onTap;

  const ServiceCard({
    Key? key,
    required this.service,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Material(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: _getIconColor(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    _getIconData(),
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        service.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        service.description,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getIconColor() {
    switch (service.iconName) {
      case 'music_production':
        return const Color(0xFFFF6B6B);
      case 'mixing':
        return const Color(0xFF4ECDC4);
      case 'lyrics':
        return const Color(0xFFFFE66D);
      case 'vocals':
        return const Color(0xFF95A5FF);
      default:
        return const Color(0xFF6C5CE7);
    }
  }

  IconData _getIconData() {
    switch (service.iconName) {
      case 'music_production':
        return Icons.graphic_eq;
      case 'mixing':
        return Icons.equalizer;
      case 'lyrics':
        return Icons.edit;
      case 'vocals':
        return Icons.mic;
      default:
        return Icons.music_note;
    }
  }
}