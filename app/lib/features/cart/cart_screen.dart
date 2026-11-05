import 'package:flutter/material.dart';
import 'package:stroller_shop/core/bloc/app_bloc_provider.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/cart/bloc/cart_bloc.dart';
import 'package:stroller_shop/features/cart/models/cart_vm.dart';
import 'package:stroller_shop/features/cart/widgets/cart_header.dart';
import 'package:stroller_shop/features/cart/widgets/cart_line_card.dart';
import 'package:stroller_shop/features/cart/widgets/cart_summary.dart';
import 'package:stroller_shop/features/cart/widgets/checkout_bar.dart';
import 'package:stroller_shop/features/cart/widgets/delivery_card.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/app_button.dart';
import 'package:stroller_shop/ui_kit/widgets/error_view.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBlocProvider<CartBloc>(
      postCreate: (bloc) => bloc.add(const .init()),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) => SafeArea(
          bottom: false,
          child: switch (state) {
            CartInitialState() || CartLoadingState() => const Center(
              child: CircularProgressIndicator(),
            ),
            CartErrorState(:final exception) => ErrorView(
              exception: exception,
              onRetry: () => context.read<CartBloc>().add(const .retryPressed()),
            ),
            CartLoadedState(:final data) when data.isEmpty => const _EmptyView(),
            CartLoadedState(:final data) => _LoadedView(vm: data),
          },
        ),
      ),
    );
  }
}

class _LoadedView extends StatelessWidget {
  final CartVM vm;

  const _LoadedView({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const .fromLTRB(20, 16, 20, 20),
            children: [
              CartHeader(itemsCount: vm.itemsCount),
              const SizedBox(height: 16),
              Column(
                spacing: 12,
                children: [
                  ...vm.lines.map(
                    (line) => CartLineCard(
                      vm: line,
                      onDecreasePressed: () => context.read<CartBloc>().add(
                        .quantityChanged(strollerId: line.strollerId, color: line.color, delta: -1),
                      ),
                      onIncreasePressed: () => context.read<CartBloc>().add(
                        .quantityChanged(strollerId: line.strollerId, color: line.color, delta: 1),
                      ),
                    ),
                  ),
                  DeliveryCard(
                    options: vm.deliveryOptions,
                    onSelected: (method) =>
                        context.read<CartBloc>().add(.deliverySelected(method: method)),
                  ),
                  CartSummary(goodsTotalByn: vm.goodsTotalByn, shippingByn: vm.shippingByn),
                ],
              ),
            ],
          ),
        ),
        CheckoutBar(
          totalByn: vm.totalByn,
          onCheckoutPressed: () => context.read<CartBloc>().add(const .checkoutPressed()),
        ),
      ],
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);

    return Center(
      child: Column(
        mainAxisSize: .min,
        spacing: 16,
        children: [
          Text(strings.cartEmpty, style: context.textStyles.title),
          AppButton.secondary(
            label: strings.cartGoToCatalog,
            onPressed: () => context.read<CartBloc>().add(const .catalogPressed()),
          ),
        ],
      ),
    );
  }
}
