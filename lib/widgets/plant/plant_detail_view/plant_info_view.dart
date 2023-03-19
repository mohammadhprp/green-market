import 'package:flutter/material.dart';

import '../../../constants/app/app_strings.dart';
import '../../../models/plant/plant.dart';

class PlantInfoView extends StatelessWidget {
  final Plant plant;
  const PlantInfoView({
    super.key,
    required this.plant,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            ListTile(
              title: const Text(AppStrings.type),
              subtitle: Text(
                plant.type,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            ListTile(
              title: const Text(AppStrings.height),
              subtitle: Text(
                "${plant.height.toInt()}ft.",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            ListTile(
              title: const Text(AppStrings.potSize),
              subtitle: Text(
                "${plant.potSize.toInt()} Inches",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            ListTile(
              title: const Text(AppStrings.potType),
              subtitle: Text(
                plant.potType,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ].wrapExpanded,
        ),
        Text(
          plant.about,
          style: Theme.of(context).textTheme.displaySmall,
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}

extension WrapWithExpanded on List<Widget> {
  List<Widget> get wrapExpanded {
    return map(
      (e) => Expanded(child: e),
    ).toList();
  }
}
