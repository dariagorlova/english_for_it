import 'package:auto_route/auto_route.dart';
import 'package:english_for_it/features/start_screen/verb_data.dart';
import 'package:flutter/material.dart';

@RoutePage()
class IrregularVerbsScreen extends StatelessWidget {
  const IrregularVerbsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Irregular Verbs in English'),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       //context.go('/');
        //       },
        //     icon: const Icon(
        //       Icons.home,
        //     ),
        //   ),
        // ],
      ),
      body: const IrregulaerVerbsScreenView(),
    );
  }
}

Widget createTable() {
  final irregularVerbs = IrregularVerbs();
  final allVerbs = irregularVerbs.getAllVerbs();

  final rows = <TableRow>[];
  for (var i = 0; i < allVerbs.length; ++i) {
    rows.add(
      TableRow(
        decoration: BoxDecoration(
          color: i.isEven ? Colors.white : Colors.yellow,
        ),
        children: [
          CustomTableCell(
            text: allVerbs[i].verb,
          ),
          CustomTableCell(
            text: allVerbs[i].pastSimple,
          ),
          CustomTableCell(
            text: allVerbs[i].pastParticiple,
          ),
        ],
      ),
    );
  }
  return Table(
    border: TableBorder.all(),
    columnWidths: const <int, TableColumnWidth>{
      0: FlexColumnWidth(),
      1: FlexColumnWidth(),
      2: FlexColumnWidth(),
    },
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    children: rows,
  );
}

class IrregulaerVerbsScreenView extends StatelessWidget {
  const IrregulaerVerbsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 180,
              // ignore: lines_longer_than_80_chars,
              child: Text(
                '''
The past simple and past participle forms of most verbs in English are the same. You just add ed to the end of the verb. For example, the past simple of walk is walked and the past participle of walk is also walked. However, many verbs in English are irregular because they do not follow this rule. Many of the most common irregular verbs in English are below. The first four verbs (be, do, go, and have) are very important verbs that we use very often. The rest of the verbs that follow are in alphabetical order.''',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            createTable(),
          ],
        ),
      ),
    );
  }
}

class CustomTableCell extends StatelessWidget {
  const CustomTableCell({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      alignment: Alignment.center,
      child: Text(text),
    );
  }
}
