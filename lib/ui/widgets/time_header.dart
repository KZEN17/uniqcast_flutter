import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uniqcast_proj/models/epg_data.dart';
import '../../providers/epg_provider.dart';

class TimeHeader extends HookConsumerWidget {
  final DateTime selectedDate;
  
  const TimeHeader({super.key, required this.selectedDate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final epgData = ref.watch(epgDataProvider);

    return epgData.when(
      data: (data) {
        final dates = _getAvailableDates(data);
        
        return Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            border: Border(bottom: BorderSide(color: Colors.grey[800]!)),
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 100),
            children: dates.map((date) => _DateTab(
              date: date,
              selectedDate: selectedDate,
              onTap: () => ref.read(selectedDateProvider.notifier).state = date,
            )).toList(),
          ),
        );
      },
      loading: () => const SizedBox(height: 50),
      error: (_, __) => const SizedBox(height: 50),
    );
  }

  List<DateTime> _getAvailableDates(EPGData data) {
    if (data.programs.isEmpty) return [];

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    
    final lastDate = data.programs
        .map((p) => p.start)
        .reduce((a, b) => a.isAfter(b) ? a : b);
    final lastDateMidnight = DateTime(lastDate.year, lastDate.month, lastDate.day);

   
    final dates = <DateTime>[];
    var currentDate = today;
    
    while (!currentDate.isAfter(lastDateMidnight)) {
      dates.add(currentDate);
      currentDate = currentDate.add(const Duration(days: 1));
    }

    return dates;
  }
}

class _DateTab extends StatelessWidget {
  const _DateTab({
    required this.date,
    required this.selectedDate,
    required this.onTap,
  });

  final DateTime date;
  final DateTime selectedDate;
  final VoidCallback onTap;

  String _getDateLabel(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = today.add(const Duration(days: 1));

    if (_isSameDay(date, today)) return 'Today';
    if (_isSameDay(date, tomorrow)) return 'Tomorrow';
    final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
                    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return '${months[date.month - 1]} ${date.day}';
  }

  bool _isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  @override
  Widget build(BuildContext context) {
    final isSelected = _isSameDay(date, selectedDate);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? Colors.white : Colors.transparent,
              width: 3,
            ),
          ),
        ),
        child: Text(
          _getDateLabel(date),
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}