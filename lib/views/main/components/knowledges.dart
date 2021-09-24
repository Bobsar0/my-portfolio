import 'package:flutter/material.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(
            text: "AWS (Lambda, Cognito,\n API Gateway, Aurora MySQL)"),
        const KnowledgeText(text: "Pipelines"),
        const KnowledgeText(text: "Containers, Docker, Kubernetes"),
        const KnowledgeText(text: "Git Knowledge"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            size: kDefaultPadding,
            color: kPrimaryColor,
          ),
          const SizedBox(width: kDefaultPadding / 2),
          Text(text, overflow: TextOverflow.fade, maxLines: 2),
        ],
      ),
    );
  }
}
