// widgets/program_details.dart
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/program.dart';


class ProgramDetailsDialog extends HookConsumerWidget {
  final Program program;

  const ProgramDetailsDialog({super.key, required this.program});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasReminder = useState(false);

    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    program.title.first.value,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    hasReminder.value ? Icons.alarm_on : Icons.alarm_add,
                    color: hasReminder.value ? Colors.blue : null,
                  ),
                  onPressed: () {
                    hasReminder.value = !hasReminder.value;
                    // TODO: Implement reminder functionality
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              '${program.start.hour}:${program.start.minute.toString().padLeft(2, '0')} - '
              '${program.stop.hour}:${program.stop.minute.toString().padLeft(2, '0')}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (program.desc?.isNotEmpty ?? false) ...[
              const SizedBox(height: 16),
              Text(
                program.desc!.first.value,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
            const SizedBox(height: 16),
            if (program.previouslyShown ?? false)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text('Rerun'),
              ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Update ProgramTile in program_grid.dart
class ProgramTile extends StatelessWidget {
  final Program program;

  const ProgramTile({super.key, required this.program});

  @override
  Widget build(BuildContext context) {
    final duration = program.stop.difference(program.start);
    final width = duration.inMinutes * 2.0;

    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => ProgramDetailsDialog(program: program),
        );
      },
      child: Container(
        width: width,
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          border: Border.all(color: Colors.blue.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                program.title.first.value,
                style: const TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '${program.start.hour}:${program.start.minute.toString().padLeft(2, '0')} - '
                '${program.stop.hour}:${program.stop.minute.toString().padLeft(2, '0')}',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}