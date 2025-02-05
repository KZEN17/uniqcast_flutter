import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../constants/theme.dart';
import '../../models/program.dart';
import 'program_details.dart';

class ProgramGrid extends HookConsumerWidget {
  const ProgramGrid({
    super.key,
    required this.programs,
    required this.selectedDate,
  });

  final List<Program> programs;
  final DateTime selectedDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dayPrograms = programs.where((program) {
      return _isSameDay(program.start, selectedDate);
    }).toList();

    return ListView.builder(
      itemCount: dayPrograms.length,
      itemBuilder: (context, index) {
        final program = dayPrograms[index];
        return ProgramTile(program: program);
      },
    );
  }

  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}

// class ProgramTile extends StatelessWidget {
//   final Program program;

//   const ProgramTile({super.key, required this.program});

//   @override
//   Widget build(BuildContext context) {
//     final duration = program.stop.difference(program.start);
//     final width = duration.inMinutes * 2.0;

//     return Padding(
//       padding: const EdgeInsets.only(bottom: 5.0),
//       child: GestureDetector(
//         onTap: () => showDialog(
//           context: context,
//           builder: (context) => ProgramDetailsDialog(program: program),
//         ),
//         child: Container(
//           width: width,
//           height: 80,
//           margin: const EdgeInsets.all(1),
//           decoration: BoxDecoration(
//             color: EPGTheme.programTileColor,
//             borderRadius: BorderRadius.circular(4),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Stack(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       program.title.first.value,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: EPGTheme.textPrimary,
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       '${program.start.hour}:${program.start.minute.toString().padLeft(2, '0')} - '
//                       '${program.stop.hour}:${program.stop.minute.toString().padLeft(2, '0')}',
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: EPGTheme.textSecondary,
//                       ),
//                     ),
//                   ],
//                 ),
//                 if (program.previouslyShown ?? false)
//                   Positioned(
//                     bottom: 0,
//                     child: Container(
//                       padding:
//                           const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//                       decoration: BoxDecoration(
//                         color: EPGTheme.surfaceColor,
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Text(
//                         'Rerun',
//                         style: TextStyle(
//                           fontSize: 10,
//                           color: EPGTheme.textSecondary,
//                         ),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class ProgramTile extends StatelessWidget {
  final Program program;

  const ProgramTile({super.key, required this.program});

  bool _isCurrentlyPlaying(DateTime start, DateTime end) {
    final now = DateTime.now();
    return now.isAfter(start) && now.isBefore(end);
  }

  bool _isPast(DateTime end) {
    return DateTime.now().isAfter(end);
  }

  @override
  Widget build(BuildContext context) {
    final duration = program.stop.difference(program.start);
    final width = duration.inMinutes * 2.0;
    final isPlaying = _isCurrentlyPlaying(program.start, program.stop);
    final isPast = _isPast(program.stop);

    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => ProgramDetailsDialog(program: program),
      ),
      child: Opacity(
        opacity: isPast ? 0.5 : 1.0,
        child: Container(
          width: width,
          height: 70,
          margin: const EdgeInsets.only(bottom:10 ),
          decoration: BoxDecoration(
            color: EPGTheme.programTileColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              if (isPlaying)
                Container(
                  width: 3,
                  decoration: const BoxDecoration(
                    color: EPGTheme.selectedBlue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                    ),
                  ),
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            program.title.first.value,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: EPGTheme.textPrimary,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${program.start.hour}:${program.start.minute.toString().padLeft(2, '0')} - '
                            '${program.stop.hour}:${program.stop.minute.toString().padLeft(2, '0')}',
                            style: TextStyle(
                              fontSize: 12,
                              color: EPGTheme.textSecondary,
                            ),
                          ),
                        ],
                      ),
                      if (program.previouslyShown ?? false)
                        Positioned(
                          bottom: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: EPGTheme.surfaceColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Rerun',
                              style: TextStyle(
                                fontSize: 10,
                                color: EPGTheme.textSecondary,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}