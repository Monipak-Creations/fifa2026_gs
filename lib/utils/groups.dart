import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cyber_themes.dart';

class FIFA2026Group {
  final String groupName;
  final List<String> teams;

  const FIFA2026Group({
    required this.groupName,
    required this.teams,
  });
}

class GroupTeamsListWidget extends StatelessWidget {
  final List<FIFA2026Group> groups;
  final bool isMobile;

  const GroupTeamsListWidget({
    super.key,
    required this.groups,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    // Uses a grid system for Desktop Web layout and scales down to a list on Mobile
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 1 : 3, // 3 columns on desktop, single column on mobile
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        mainAxisExtent: 210, // Restricts card heights uniformly
      ),
      itemCount: groups.length,
      itemBuilder: (context, index) {
        final group = groups[index];

        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: CyberTheme.bgSurface, // Matches main.dart container style
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: CyberTheme.borderDrop),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Group Header Banner
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    group.groupName.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xFF38BDF8), // Cyber theme accent color
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const Icon(Icons.blur_on, color: Colors.white24, size: 18),
                ],
              ),
              const SizedBox(height: 4),
              const Divider(color: Colors.white10, thickness: 1),
              const SizedBox(height: 6),

              // Teams Stack
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: group.teams.length,
                  separatorBuilder: (context, _) => const SizedBox(height: 8),
                  itemBuilder: (context, teamIndex) {
                    final team = group.teams[teamIndex];
                    return Row(
                      children: [
                        Container(
                          width: 4,
                          height: 14,
                          decoration: BoxDecoration(
                            color: const Color(0xFF34D399),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            team,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}