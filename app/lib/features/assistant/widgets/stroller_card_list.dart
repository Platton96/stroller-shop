import 'package:flutter/material.dart';
import 'package:stroller_shop/features/assistant/widgets/assistant_stroller_card.dart';
import 'package:stroller_shop/features/catalog/catalog/models/stroller_card_vm.dart';

class StrollerCardList extends StatelessWidget {
  final List<StrollerCardVM> cards;
  final ValueChanged<String> onPressed;
  final ValueChanged<String> onAddToCartPressed;

  const StrollerCardList({
    required this.cards,
    required this.onPressed,
    required this.onAddToCartPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    scrollDirection: .horizontal,
    padding: const .symmetric(horizontal: 16),
    child: Row(
      crossAxisAlignment: .start,
      spacing: 12,
      children: cards
          .map(
            (card) => AssistantStrollerCard(
              vm: card,
              onPressed: () => onPressed(card.id),
              onAddToCartPressed: () => onAddToCartPressed(card.id),
            ),
          )
          .toList(),
    ),
  );
}
