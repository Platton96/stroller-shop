import 'package:flutter/material.dart';
import 'package:stroller_shop/core/bloc/app_bloc_provider.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/shop/bloc/shop_bloc.dart';
import 'package:stroller_shop/features/shop/models/shop_vm.dart';
import 'package:stroller_shop/features/shop/widgets/contacts_card.dart';
import 'package:stroller_shop/features/shop/widgets/delivery_info_card.dart';
import 'package:stroller_shop/features/shop/widgets/payment_card.dart';
import 'package:stroller_shop/features/shop/widgets/text_info_card.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/error_view.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBlocProvider<ShopBloc>(
      postCreate: (bloc) => bloc.add(const .init()),
      child: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) => SafeArea(
          bottom: false,
          child: switch (state) {
            ShopInitialState() || ShopLoadingState() => const Center(
              child: CircularProgressIndicator(),
            ),
            ShopErrorState(:final exception) => ErrorView(
              exception: exception,
              onRetry: () => context.read<ShopBloc>().add(const .retryPressed()),
            ),
            ShopLoadedState(:final data) => _LoadedView(vm: data),
          },
        ),
      ),
    );
  }
}

class _LoadedView extends StatelessWidget {
  final ShopVM vm;

  const _LoadedView({required this.vm});

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);
    final textStyles = context.textStyles;

    return ListView(
      padding: const .fromLTRB(20, 16, 20, 24),
      children: [
        Column(
          crossAxisAlignment: .stretch,
          spacing: 12,
          children: [
            Text(vm.name, style: textStyles.headline),
            Text(vm.tagline, style: textStyles.caption),
            ContactsCard(vm: vm),
            DeliveryInfoCard(options: vm.delivery),
            PaymentCard(methods: vm.payment),
            TextInfoCard(title: strings.shopReturnsTitle, text: vm.returns),
            TextInfoCard(title: strings.shopWarrantyTitle, text: vm.warranty),
            TextInfoCard(title: strings.shopTestDriveTitle, text: vm.testDrive),
            Text(vm.disclaimer, style: textStyles.caption),
          ],
        ),
      ],
    );
  }
}
