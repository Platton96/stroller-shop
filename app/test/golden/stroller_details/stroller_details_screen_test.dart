import 'package:stroller_shop/features/stroller_details/bloc/stroller_details_bloc.dart';
import 'package:stroller_shop/features/stroller_details/stroller_details_screen.dart';

import '../../helpers/golden/golden_setup.dart';
import '../golden_test_data.dart';

void main() {
  GoldenScenario scenario(String name, StrollerDetailsState state) => GoldenScenario(
    name,
    widget: const StrollerDetailsScreen(strollerId: 'bugaboo-fox-5'),
    registration: [
      (getIt) => registerBloc<StrollerDetailsBloc, StrollerDetailsState>(
        getIt,
        MockStrollerDetailsBloc(),
        state,
      ),
    ],
  );

  goldenTest(
    'stroller_details_screen',
    scenarios: () => [
      scenario('loading', const .loading()),
      scenario('loaded', const .loaded(data: goldenDetailsVM)),
      scenario(
        'out_of_stock',
        .loaded(
          data: goldenDetailsVM.copyWith(
            isInStock: false,
            stockQuantity: 0,
            isPriceApproximate: true,
          ),
        ),
      ),
      scenario('error', const .error(exception: goldenException)),
    ],
  );
}
