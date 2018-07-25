
import 'package:flutter/widgets.dart';
import 'package:flutter_kata_stocktracker/src/stock_bloc.dart';

/// This is an InheritedWidget that wraps around [example]. Think about this
/// as Scoped Model for that specific class.
///
/// This merely solves the "passing reference down the tree" problem for us.
/// You can solve this in other ways, like through dependency injection.
///
/// Also note that this does not call [StocksBloc.dispose]. If your app
/// ever doesn't need to access the cart, you should make sure it's
/// disposed of properly.
/// 
class StocksProvider extends InheritedWidget {
  final StocksBloc stocksBloc;

  StocksProvider({
    Key key,
    StocksBloc stocksBloc,
    Widget child,
  })  : stocksBloc = stocksBloc ?? StocksBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static StocksBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(StocksProvider) as StocksProvider)
          .stocksBloc;
}
