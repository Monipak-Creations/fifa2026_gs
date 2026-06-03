import 'package:fifa2026/utils/cyber_themes.dart';
import 'package:fifa2026/utils/groups.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const WorldCupHubApp());
}

class WorldCupHubApp extends StatelessWidget {
  const WorldCupHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FIFA World Cup 2026 Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: CyberTheme.bgMain,
        textTheme: GoogleFonts.fredokaTextTheme(
          ThemeData.dark().textTheme,
        )
      ),
      home: const WorldCupHubScreen(),
    );
  }
}

// --- Structured Data Payload ---
class Fixture {
  final int id;
  final String date;
  final String weekday;
  final String time;
  final String group;
  final String matchup;
  final String highlight;

  const Fixture({
    required this.id,
    required this.date,
    required this.weekday,
    required this.time,
    required this.group,
    required this.matchup,
    this.highlight = 'none',
  });
}

// Real database mirror matching the HTML document registry payload
const List<Fixture> fixturesDatabase = [
  Fixture(id: 1, date: "12-Jun-26", weekday: "Friday", time: "12:30 AM", group: "Group", matchup: "Mexico vs South Africa"),
  Fixture(id: 2, date: "12-Jun-26", weekday: "Friday", time: "7:30 AM", group: "Group", matchup: "South Korea vs Czechia"),
  Fixture(id: 3, date: "13-Jun-26", weekday: "Saturday", time: "12:30 AM", group: "Group", matchup: "Canada vs Bosnia and Herzegovina"),
  Fixture(id: 4, date: "13-Jun-26", weekday: "Saturday", time: "6:30 AM", group: "Group", matchup: "USA vs Paraguay"),
  Fixture(id: 5, date: "14-Jun-26", weekday: "Sunday", time: "12:30 AM", group: "Group", matchup: "Qatar vs Switzerland"),
  Fixture(id: 6, date: "14-Jun-26", weekday: "Sunday", time: "3:30 AM", group: "Group", matchup: "Brazil vs Morocco"),
  Fixture(id: 7, date: "14-Jun-26", weekday: "Sunday", time: "6:30 AM", group: "Group", matchup: "Haiti vs Scotland"),
  Fixture(id: 8, date: "14-Jun-26", weekday: "Sunday", time: "9:30 AM", group: "Group", matchup: "Australia vs Türkiye"),
  Fixture(id: 9, date: "14-Jun-26", weekday: "Sunday", time: "10:30 PM", group: "Group", matchup: "Germany vs Curaçao"),
  Fixture(id: 10, date: "15-Jun-26", weekday: "Monday", time: "1:30 AM", group: "Group", matchup: "Netherlands vs Japan"),
  Fixture(id: 11, date: "15-Jun-26", weekday: "Monday", time: "4:30 AM", group: "Group", matchup: "Ivory Coast vs Ecuador"),
  Fixture(id: 12, date: "15-Jun-26", weekday: "Monday", time: "7:30 AM", group: "Group", matchup: "Sweden vs Tunisia"),
  Fixture(id: 13, date: "15-Jun-26", weekday: "Monday", time: "9:30 PM", group: "Group", matchup: "Spain vs Cape Verde"),
  Fixture(id: 14, date: "16-Jun-26", weekday: "Tuesday", time: "12:30 AM", group: "Group", matchup: "Belgium vs Egypt"),
  Fixture(id: 15, date: "16-Jun-26", weekday: "Tuesday", time: "3:30 AM", group: "Group", matchup: "Uruguay vs Saudi Arabia"),
  Fixture(id: 16, date: "16-Jun-26", weekday: "Tuesday", time: "6:30 AM", group: "Group", matchup: "Iran vs New Zealand"),
  Fixture(id: 17, date: "17-Jun-26", weekday: "Wednesday", time: "12:30 AM", group: "Group", matchup: "France vs Senegal"),
  Fixture(id: 18, date: "17-Jun-26", weekday: "Wednesday", time: "3:30 AM", group: "Group", matchup: "Iraq vs Norway"),
  Fixture(id: 19, date: "17-Jun-26", weekday: "Wednesday", time: "6:30 AM", group: "Group", matchup: "Argentina vs Algeria"),
  Fixture(id: 20, date: "17-Jun-26", weekday: "Wednesday", time: "9:30 AM", group: "Group", matchup: "Austria vs Jordan"),
  Fixture(id: 21, date: "17-Jun-26", weekday: "Wednesday", time: "10:30 PM", group: "Group", matchup: "Portugal vs Congo DR"),
  Fixture(id: 22, date: "18-Jun-26", weekday: "Thursday", time: "1:30 AM", group: "Group", matchup: "England vs Croatia"),
  Fixture(id: 23, date: "18-Jun-26", weekday: "Thursday", time: "4:30 AM", group: "Group", matchup: "Ghana vs Panama"),
  Fixture(id: 24, date: "18-Jun-26", weekday: "Thursday", time: "7:30 AM", group: "Group", matchup: "Uzbekistan vs Colombia"),
  Fixture(id: 25, date: "18-Jun-26", weekday: "Thursday", time: "9:30 PM", group: "Group", matchup: "Czechia vs South Africa"),
  Fixture(id: 26, date: "19-Jun-26", weekday: "Friday", time: "12:30 AM", group: "Group", matchup: "Switzerland vs Bosnia and Herzegovina"),
  Fixture(id: 27, date: "19-Jun-26", weekday: "Friday", time: "3:30 AM", group: "Group", matchup: "Canada vs Qatar"),
  Fixture(id: 28, date: "19-Jun-26", weekday: "Friday", time: "6:30 AM", group: "Group", matchup: "Mexico vs South Korea"),
  Fixture(id: 29, date: "20-Jun-26", weekday: "Saturday", time: "12:30 AM", group: "Group", matchup: "USA vs Australia"),
  Fixture(id: 30, date: "20-Jun-26", weekday: "Saturday", time: "3:30 AM", group: "Group", matchup: "Scotland vs Morocco"),
  Fixture(id: 31, date: "20-Jun-26", weekday: "Saturday", time: "6:00 AM", group: "Group", matchup: "Brazil vs Haiti"),
  Fixture(id: 32, date: "20-Jun-26", weekday: "Saturday", time: "8:30 AM", group: "Group", matchup: "Türkiye vs Paraguay"),
  Fixture(id: 33, date: "20-Jun-26", weekday: "Saturday", time: "10:30 PM", group: "Group", matchup: "Netherlands vs Sweden"),
  Fixture(id: 34, date: "21-Jun-26", weekday: "Sunday", time: "1:30 AM", group: "Group", matchup: "Germany vs Ivory Coast"),
  Fixture(id: 35, date: "21-Jun-26", weekday: "Sunday", time: "5:30 AM", group: "Group", matchup: "Ecuador vs Curaçao"),
  Fixture(id: 36, date: "21-Jun-26", weekday: "Sunday", time: "9:30 AM", group: "Group", matchup: "Tunisia vs Japan"),
  Fixture(id: 37, date: "21-Jun-26", weekday: "Sunday", time: "9:30 PM", group: "Group", matchup: "Spain vs Saudi Arabia"),
  Fixture(id: 38, date: "22-Jun-26", weekday: "Monday", time: "12:30 AM", group: "Group", matchup: "Belgium vs Iran"),
  Fixture(id: 39, date: "22-Jun-26", weekday: "Monday", time: "3:30 AM", group: "Group", matchup: "Uruguay vs Cape Verde"),
  Fixture(id: 40, date: "22-Jun-26", weekday: "Monday", time: "6:30 AM", group: "Group", matchup: "New Zealand vs Egypt"),
  Fixture(id: 41, date: "22-Jun-26", weekday: "Monday", time: "10:30 PM", group: "Group", matchup: "Argentina vs Austria"),
  Fixture(id: 42, date: "23-Jun-26", weekday: "Tuesday", time: "2:30 AM", group: "Group", matchup: "France vs Iraq"),
  Fixture(id: 43, date: "23-Jun-26", weekday: "Tuesday", time: "5:30 AM", group: "Group", matchup: "Norway vs Senegal"),
  Fixture(id: 44, date: "23-Jun-26", weekday: "Tuesday", time: "8:30 AM", group: "Group", matchup: "Jordan vs Algeria"),
  Fixture(id: 45, date: "23-Jun-26", weekday: "Tuesday", time: "10:30 PM", group: "Group", matchup: "Portugal vs Uzbekistan"),
  Fixture(id: 46, date: "24-Jun-26", weekday: "Wednesday", time: "1:30 AM", group: "Group", matchup: "England vs Ghana"),
  Fixture(id: 47, date: "24-Jun-26", weekday: "Wednesday", time: "4:30 AM", group: "Group", matchup: "Panama vs Croatia"),
  Fixture(id: 48, date: "24-Jun-26", weekday: "Wednesday", time: "7:30 AM", group: "Group", matchup: "Colombia vs Congo DR"),
  Fixture(id: 49, date: "25-Jun-26", weekday: "Thursday", time: "12:30 AM", group: "Group", matchup: "Switzerland vs Canada"),
  Fixture(id: 50, date: "25-Jun-26", weekday: "Thursday", time: "12:30 AM", group: "Group", matchup: "Bosnia and Herzegovina vs Qatar"),
  Fixture(id: 51, date: "25-Jun-26", weekday: "Thursday", time: "3:30 AM", group: "Group", matchup: "Morocco vs Haiti"),
  Fixture(id: 52, date: "25-Jun-26", weekday: "Thursday", time: "3:30 AM", group: "Group", matchup: "Scotland vs Brazil"),
  Fixture(id: 53, date: "25-Jun-26", weekday: "Thursday", time: "6:30 AM", group: "Group", matchup: "South Africa vs South Korea"),
  Fixture(id: 54, date: "25-Jun-26", weekday: "Thursday", time: "6:30 AM", group: "Group", matchup: "Czechia vs Mexico"),
  Fixture(id: 55, date: "26-Jun-26", weekday: "Friday", time: "1:30 PM", group: "Group", matchup: "Curaçao vs Ivory Coast"),
  Fixture(id: 56, date: "26-Jun-26", weekday: "Friday", time: "1:30 PM", group: "Group", matchup: "Ecuador vs Germany"),
  Fixture(id: 57, date: "26-Jun-26", weekday: "Friday", time: "4:30 AM", group: "Group", matchup: "Tunisia vs Netherlands"),
  Fixture(id: 58, date: "26-Jun-26", weekday: "Friday", time: "4:30 AM", group: "Group", matchup: "Japan vs Sweden"),
  Fixture(id: 59, date: "26-Jun-26", weekday: "Friday", time: "7:30 AM", group: "Group", matchup: "Türkiye vs USA"),
  Fixture(id: 60, date: "26-Jun-26", weekday: "Friday", time: "7:30 AM", group: "Group", matchup: "Paraguay vs Australia"),
  Fixture(id: 61, date: "27-Jun-26", weekday: "Saturday", time: "12:30 AM", group: "Group", matchup: "Norway vs France"),
  Fixture(id: 62, date: "27-Jun-26", weekday: "Saturday", time: "12:30 AM", group: "Group", matchup: "Senegal vs Iraq"),
  Fixture(id: 63, date: "27-Jun-26", weekday: "Saturday", time: "5:30 AM", group: "Group", matchup: "Cape Verde vs Saudi Arabia"),
  Fixture(id: 64, date: "27-Jun-26", weekday: "Saturday", time: "5:30 AM", group: "Group", matchup: "Uruguay vs Spain"),
  Fixture(id: 65, date: "27-Jun-26", weekday: "Saturday", time: "8:30 AM", group: "Group", matchup: "New Zealand vs Belgium"),
  Fixture(id: 66, date: "27-Jun-26", weekday: "Saturday", time: "8:30 AM", group: "Group", matchup: "Egypt vs Iran"),
  Fixture(id: 67, date: "28-Jun-26", weekday: "Sunday", time: "2:30 AM", group: "Group", matchup: "Panama vs England"),
  Fixture(id: 68, date: "28-Jun-26", weekday: "Sunday", time: "2:30 AM", group: "Group", matchup: "Croatia vs Ghana"),
  Fixture(id: 69, date: "28-Jun-26", weekday: "Sunday", time: "5:00 AM", group: "Group", matchup: "Colombia vs Portugal"),
  Fixture(id: 70, date: "28-Jun-26", weekday: "Sunday", time: "5:00 AM", group: "Group", matchup: "Congo DR vs Uzbekistan"),
  Fixture(id: 71, date: "28-Jun-26", weekday: "Sunday", time: "7:30 AM", group: "Group", matchup: "Algeria vs Austria"),
  Fixture(id: 72, date: "28-Jun-26", weekday: "Sunday", time: "7:30 AM", group: "Group", matchup: "Jordan vs Argentina"),
  // START OF KNOCKOUT TOURNAMENT (ROUND OF 32)
  Fixture(id: 73, date: "29-Jun-26", weekday: "Monday", time: "12:30 AM", group: "Round of 32", matchup: "2A vs 2B"),
  Fixture(id: 74, date: "29-Jun-26", weekday: "Monday", time: "10:30 PM", group: "Round of 32", matchup: "1E vs 3ABCDF"),
  Fixture(id: 75, date: "30-Jun-26", weekday: "Tuesday", time: "2:00 AM", group: "Round of 32", matchup: "1F vs 2C"),
  Fixture(id: 76, date: "30-Jun-26", weekday: "Tuesday", time: "6:30 AM", group: "Round of 32", matchup: "1C vs 2F"),
  Fixture(id: 77, date: "30-Jun-26", weekday: "Tuesday", time: "10:30 PM", group: "Round of 32", matchup: "1I vs 3CDFGH"),
  Fixture(id: 78, date: "01-Jul-26", weekday: "Wednesday", time: "2:30 AM", group: "Round of 32", matchup: "2E vs 2I"),
  Fixture(id: 79, date: "01-Jul-26", weekday: "Wednesday", time: "6:30 AM", group: "Round of 32", matchup: "1A vs 3CEFHI"),
  Fixture(id: 80, date: "01-Jul-26", weekday: "Wednesday", time: "9:30 AM", group: "Round of 32", matchup: "1L vs Group 3EHIJK"),
  Fixture(id: 81, date: "02-Jul-26", weekday: "Thursday", time: "1:30 AM", group: "Round of 32", matchup: "1D vs Group 3BEFIJ"),
  Fixture(id: 82, date: "02-Jul-26", weekday: "Thursday", time: "5:30 AM", group: "Round of 32", matchup: "1G vs 3AEHIJ"),
  Fixture(id: 83, date: "03-Jul-26", weekday: "Friday", time: "12:30 AM", group: "Round of 32", matchup: "2K vs 2L"),
  Fixture(id: 84, date: "03-Jul-26", weekday: "Friday", time: "4:30 AM", group: "Round of 32", matchup: "1H vs 2J"),
  Fixture(id: 85, date: "03-Jul-26", weekday: "Friday", time: "8:30 AM", group: "Round of 32", matchup: "1B vs 3EFGIJ"),
  Fixture(id: 86, date: "03-Jul-26", weekday: "Friday", time: "11:30 AM", group: "Round of 32", matchup: "1J vs 2H"),
  Fixture(id: 87, date: "04-Jul-26", weekday: "Saturday", time: "3:30 AM", group: "Round of 32", matchup: "1K vs 3DEIJL"),
  Fixture(id: 88, date: "04-Jul-26", weekday: "Saturday", time: "7:00 AM", group: "Round of 32", matchup: "2D vs 2G"),
  // ROUND OF 16
  Fixture(id: 89, date: "04-Jul-26", weekday: "Saturday", time: "10:30 PM", group: "Round of 16", matchup: "Winner Match 74 vs Winner Match 77"),
  Fixture(id: 90, date: "05-Jul-26", weekday: "Sunday", time: "2:30 AM", group: "Round of 16", matchup: "Winner Match 73 vs Winner Match 75"),
  Fixture(id: 91, date: "06-Jul-26", weekday: "Monday", time: "1:30 AM", group: "Round of 16", matchup: "Winner Match 76 vs Winner Match 78"),
  Fixture(id: 92, date: "06-Jul-26", weekday: "Monday", time: "5:30 AM", group: "Round of 16", matchup: "Winner Match 79 vs Winner Match 80"),
  Fixture(id: 93, date: "07-Jul-26", weekday: "Tuesday", time: "12:30 AM", group: "Round of 16", matchup: "Winner Match 83 vs Winner Match 84"),
  Fixture(id: 94, date: "07-Jul-26", weekday: "Tuesday", time: "5:30 AM", group: "Round of 16", matchup: "Winner Match 81 vs Winner Match 82"),
  Fixture(id: 95, date: "07-Jul-26", weekday: "Tuesday", time: "9:30 PM", group: "Round of 16", matchup: "Winner Match 86 vs Winner Match 88"),
  Fixture(id: 96, date: "08-Jul-26", weekday: "Wednesday", time: "1:30 AM", group: "Round of 16", matchup: "Winner Match 85 vs Winner Match 87"),
  // QUARTER-FINALS
  Fixture(id: 97, date: "10-Jul-26", weekday: "Friday", time: "1:30 AM", group: "Quarter-finals", matchup: "Winner Match 89 vs Winner Match 90"),
  Fixture(id: 98, date: "11-Jul-26", weekday: "Saturday", time: "12:30 AM", group: "Quarter-finals", matchup: "Winner Match 93 vs Winner Match 94"),
  Fixture(id: 99, date: "12-Jul-26", weekday: "Sunday", time: "2:30 AM", group: "Quarter-finals", matchup: "Winner Match 91 vs Winner Match 92"),
  Fixture(id: 100, date: "12-Jul-26", weekday: "Sunday", time: "6:30 AM", group: "Quarter-finals", matchup: "Winner Match 95 vs Winner Match 96"),
  // SEMI-FINALS
  Fixture(id: 101, date: "15-Jul-26", weekday: "Wednesday", time: "12:30 AM", group: "Semi-finals", matchup: "Winner Match 97 vs Winner Match 98"),
  Fixture(id: 102, date: "16-Jul-26", weekday: "Thursday", time: "12:30 AM", group: "Semi-finals", matchup: "Winner Match 99 vs Winner Match 100"),
  // THIRD PLACE PLAYOFF
  Fixture(id: 103, date: "19-Jul-26", weekday: "Sunday", time: "2:30 AM", group: "Third Place", matchup: "Runner-up Match 101 vs Runner-up Match 102", highlight: 'Bronze'),
  // THE FINAL
  Fixture(id: 104, date: "20-Jul-26", weekday: "Monday", time: "12:30 AM", group: "Final", matchup: "Winner Match 101 vs Winner Match 102", highlight: 'Gold')
];

const List<FIFA2026Group> tournamentGroupsDatabase = [
  FIFA2026Group(
    groupName: "Group A",
    teams: ["Mexico", "South Africa", "South Korea", "Czechia"],
  ),
  FIFA2026Group(
    groupName: "Group B",
    teams: ["Canada", "Bosnia and Herzegovina", "Qatar", "Switzerland"],
  ),
  FIFA2026Group(
    groupName: "Group C",
    teams: ["Brazil", "Morocco", "Haiti", "Scotland"],
  ),
  FIFA2026Group(
    groupName: "Group D",
    teams: ["USA", "Paraguay", "Australia", "Türkiye"],
  ),
  FIFA2026Group(
    groupName: "Group E",
    teams: ["Ivory Coast", "Ecuador", "Germany", "Curaçao"],
  ),
  FIFA2026Group(
    groupName: "Group F",
    teams: ["Netherlands", "Japan", "Sweden", "Tunisia"],
  ),
  FIFA2026Group(
    groupName: "Group G",
    teams: ["Iran", "New Zealand", "Belgium", "Egypt"],
  ),
  FIFA2026Group(
    groupName: "Group H",
    teams: ["Uruguay", "Saudi Arabia", "Spain", "Cape Verde"],
  ),
  FIFA2026Group(
    groupName: "Group I",
    teams: ["France", "Senegal", "Iraq", "Norway"],
  ),
  FIFA2026Group(
    groupName: "Group J",
    teams: ["Argentina", "Algeria", "Austria", "Jordan"],
  ),
  FIFA2026Group(
    groupName: "Group K",
    teams: ["Portugal", "Congo DR", "Uzbekistan", "Colombia"],
  ),
  FIFA2026Group(
    groupName: "Group L",
    teams: ["Ghana", "Panama", "England", "Croatia"],
  ),
];

class WorldCupHubScreen extends StatefulWidget {
  const WorldCupHubScreen({super.key});

  @override
  State<WorldCupHubScreen> createState() => _WorldCupHubScreenState();
}

class _WorldCupHubScreenState extends State<WorldCupHubScreen> {
  late String formattedTodayStr;
  late List<Fixture> todaysMatches;

  @override
  void initState() {
    super.initState();
    _computeCurrentDateSignature();
  }

  void _computeCurrentDateSignature() {
    final now = DateTime.now();
    final List<String> months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

    final dayStr = now.day.toString().padLeft(2, '0');
    final monthStr = months[now.month - 1];
    final yearShortStr = now.year.toString().substring(2);

    // Aligns layout match token syntax: '15-Jun-26'
    formattedTodayStr = "$dayStr-$monthStr-$yearShortStr";

    // Filters live data items match array
    todaysMatches = fixturesDatabase.where((m) => m.date == formattedTodayStr).toList();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 768;

    return Scaffold(
      body: Stack(
        children: [
          // Ambient Glow Element Top Vector Offset
          Positioned(
            top: -150,
            left: screenWidth / 2 - 300,
            child: Container(
              width: 600,
              height: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [CyberTheme.accentGlow, Colors.transparent],
                ),
              ),
            ),
          ),

          // Core Application Context Wrapper
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 16.0 : 40.0,
                vertical: 20.0,
              ),
              child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedHeader(isMobile: isMobile),
                      const SizedBox(height: 40),
                      _buildTodayPanel(isMobile),
                      const SizedBox(height: 50),
                      _buildArchiveTitle(),
                      const SizedBox(height: 20),
                      GroupTeamsListWidget(groups: tournamentGroupsDatabase, isMobile: isMobile),
                      const SizedBox(height: 20),
                      _buildFixturesView(isMobile),
                      const SizedBox(height: 24),
                      _buildCopyRightFooter()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTodayPanel(bool isMobile) {
    final bool hasMatches = todaysMatches.isNotEmpty;

    return Container(
      decoration: BoxDecoration(
        color: CyberTheme.bgSurface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: CyberTheme.borderDrop),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 40,
            offset: const Offset(0, 20),
          )
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          // Top Glowing Accent Line
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 3,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3B82F6), CyberTheme.accentPrimary, Color(0xFFEC4899)],
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(isMobile ? 16.0 : 30.0), // Smaller padding on mobile
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // FIXED HEADER ROW: Wrapped with Expanded to prevent text overflows
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (hasMatches) ...[
                      RepaintBoundary(child: const _LiveDot()),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          "Matches Scheduled Today ($formattedTodayStr)",
                          style: TextStyle(
                            fontSize: isMobile ? 16 : 20, // Smaller font for tight screens
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          maxLines: 2,
                        ),
                      ),
                    ] else ...[
                      const Icon(Icons.flash_on, color: Colors.amber, size: 18),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          "Hub Status Update ($formattedTodayStr)",
                          style: TextStyle(
                            fontSize: isMobile ? 16 : 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          maxLines: 2,
                        ),
                      ),
                    ]
                  ],
                ),
                SizedBox(height: isMobile ? 16 : 24),

                // Switch State Display Engine
                hasMatches
                    ? _buildTodayGrid(isMobile)
                    : _buildNoMatchesView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTodayGrid(bool isMobile) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 1 : 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        mainAxisExtent: 160,
      ),
      itemCount: todaysMatches.length,
      itemBuilder: (context, index) {
        final match = todaysMatches[index];
        final teams = match.matchup.split(" vs ");

        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: CyberTheme.bgSurfaceCard,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: CyberTheme.borderDrop),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Match #${match.id}", style: const TextStyle(color: CyberTheme.textSecondary, fontSize: 13)),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white.withOpacity(0.05)),
                    ),
                    child: Text(match.group, style: const TextStyle(color: Colors.white, fontSize: 12)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text(teams[0], textAlign: TextAlign.right, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: CyberTheme.accentPrimary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text("VS", style: TextStyle(color: CyberTheme.accentPrimary, fontSize: 12, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Expanded(child: Text(teams[1], textAlign: TextAlign.left, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600))),
                ],
              ),
              Text(match.time, style: const TextStyle(color: Color(0xFF38BDF8), fontSize: 16, fontWeight: FontWeight.w700)),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNoMatchesView() {
    return Center(
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          const BouncingEmoji(),
          const SizedBox(height: 16),
          const Text(
            "Looks like it's a match-free day on the schedule today.",
            style: TextStyle(color: Color(0xFFF43F5E), fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          const Text(
            "Take a break and look over the group tables...",
            textAlign: TextAlign.center,
            style: TextStyle(color: CyberTheme.textSecondary, fontSize: 15),
          ),
        ],
      ),
    ),
    );
  }

  Widget _buildArchiveTitle() {
    return const Text(
      "All Tournament Group Fixtures",
      style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),
    );
  }


  Widget _buildFixturesView(bool isMobile) {
    // 1. Properly group items dynamically by their Group / Stage name
    final Map<String, List<Fixture>> groupedFixtures = {};
    for (var fixture in fixturesDatabase) {
      if (!groupedFixtures.containsKey(fixture.group)) {
        groupedFixtures[fixture.group] = [];
      }
      groupedFixtures[fixture.group]!.add(fixture);
    }

    // --- MOBILE VIEW ---
    if (isMobile) {
      return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: groupedFixtures.entries.map((entry) {
          final String groupHeader = entry.key;
          final List<Fixture> stageMatches = entry.value;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Small Title Header before each mobile group block
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 8, left: 4),
                child: Text(
                  groupHeader.toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xFF38BDF8),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              ...stageMatches.map((fixture) {
                Color textColor = _getHighlightColor(fixture.highlight);

                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: CyberTheme.bgSurface,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: CyberTheme.borderDrop),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Match ${fixture.id}", style: const TextStyle(color: CyberTheme.textSecondary, fontSize: 13)),
                          Text(fixture.time, style: const TextStyle(color: Color(0xFF38BDF8), fontWeight: FontWeight.bold, fontSize: 13)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        fixture.matchup,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: textColor),
                      ),
                      const SizedBox(height: 6),
                      Text("${fixture.date} (${fixture.weekday})", style: const TextStyle(color: CyberTheme.textSecondary, fontSize: 13)),
                    ],
                  ),
                );
              }),
            ],
          );
        }).toList(),
      );
    }

    // --- DESKTOP WEBVIEW ---
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: groupedFixtures.entries.map((entry) {
        final String groupHeader = entry.key;
        final List<Fixture> stageMatches = entry.value;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Small Title Header Before Each Web Table ---
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 10, left: 4),
              child: Text(
                groupHeader.toUpperCase(),
                style: const TextStyle(
                  color: Color(0xFF38BDF8), // Cyber theme accent
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  letterSpacing: 1.5,
                ),
              ),
            ),

            // --- Web Data Table Wrapper ---
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: CyberTheme.bgSurface,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: CyberTheme.borderDrop),
              ),
              clipBehavior: Clip.antiAlias,
              child: DataTable(
                headingRowColor: WidgetStateProperty.all(Colors.white.withOpacity(0.02)),
                dataRowMinHeight: 52,
                dataRowMaxHeight: 52,
                // Omit the 'GROUP' column entirely since it's now handled by the section title header
                columns: const [
                  DataColumn(label: Text('MATCH', style: TextStyle(color: CyberTheme.textSecondary, fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('DATE', style: TextStyle(color: CyberTheme.textSecondary, fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('WEEKDAY', style: TextStyle(color: CyberTheme.textSecondary, fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('TIME (IST)', style: TextStyle(color: CyberTheme.textSecondary, fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('MATCHUP', style: TextStyle(color: CyberTheme.textSecondary, fontWeight: FontWeight.bold))),
                ],
                rows: stageMatches.map((fixture) {
                  Color rowColor = _getHighlightColor(fixture.highlight);
                  TextStyle rowStyle = TextStyle(color: rowColor, fontSize: 14);

                  return DataRow(
                    cells: [
                      DataCell(Text(fixture.id.toString(), style: rowStyle)),
                      DataCell(Text(fixture.date, style: rowStyle)),
                      DataCell(Text(fixture.weekday, style: rowStyle)),
                      DataCell(Text(fixture.time, style: const TextStyle(color: Color(0xFF38BDF8), fontSize: 14))),
                      DataCell(Text(fixture.matchup, style: rowStyle.copyWith(fontWeight: FontWeight.w600))),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }


  Color _getHighlightColor(String highlight) {
    switch (highlight) {
      case 'Gold':
        return CyberTheme.brazilGold;
      case 'Bronze':
        return CyberTheme.bronzeBrown;
      default:
        return Colors.white;
    }
  }

}

// --- Pulse Animation Live Engine Dot Component ---
class _LiveDot extends StatefulWidget {
  const _LiveDot();

  @override
  State<_LiveDot> createState() => _LiveDotState();
}

class _LiveDotState extends State<_LiveDot> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.5, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Container(
        width: 10,
        height: 10,
        decoration: const BoxDecoration(
          color: Color(0xFFEF4444),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Color(0xFFEF4444), blurRadius: 10, spreadRadius: 2),
          ],
        ),
      ),
    );
  }
}

class AnimatedHeader extends StatefulWidget {
  final bool isMobile;

  const AnimatedHeader({super.key, required this.isMobile});

  @override
  State<AnimatedHeader> createState() => _AnimatedHeaderState();
}

class _AnimatedHeaderState extends State<AnimatedHeader> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      // 800ms gives the high-end deceleration curve perfect time to glide
      duration: const Duration(milliseconds: 800),
    );

    // Custom cubic bezier: starts incredibly fast, then spends 70% of the time
    // elegantly gliding into its final resting position. (Equivalent to easeOutCubic/Quart)
    _slideAnimation = Tween<double>(begin: -40.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Cubic(0.1, 0.76, 0.55, 0.94),
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        // Linear-to-ease fade that finishes early so the element is fully sharp
        // while it completes its buttery smooth glide.
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          // Using standard Opacity *only* during the fade animation window.
          // Once _fadeAnimation hits 1.0, Flutter stops expensive offscreen compositing.
          opacity: _fadeAnimation.value,
          child: Transform.translate(
            offset: Offset(0.0, _slideAnimation.value),
            child: child, // The critical performance optimization
          ),
        );
      },
      // This heavy sub-tree is built exactly ONCE and cached on the GPU.
      child: RepaintBoundary(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return const LinearGradient(
                    colors: [Colors.white, CyberTheme.premiumNeon],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                },
                child: Text(
                  'FIFA World Cup 2026',
                  style: TextStyle(
                    fontSize: widget.isMobile ? 22 : 49,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Dynamic Match Hub & Central Matrix • Indian Standard Time',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CyberTheme.textSecondary,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class BouncingEmoji extends StatefulWidget {
  const BouncingEmoji({super.key});

  @override
  State<BouncingEmoji> createState() => _BouncingEmojiState();
}

class _BouncingEmojiState extends State<BouncingEmoji> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    // 1. Initialize the controller
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..repeat(reverse: true); // Makes it go up and down continuously

    // 2. Define the bounce physics and distance
    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, 0.1), // Moves upward by 30% of its height
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutQuad, // Smooth acceleration/deceleration
    ));
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up the controller when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: const Text(
        "😴",
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}

Widget _buildCopyRightFooter() {
  return Center(
    child: Text('Copyright © 2026 Monipak Creations', style: TextStyle(
      color: Colors.grey, fontSize: 14
    ),),
  );
}