extension FutureRecord2Extension<A, B> on (Future<A>, Future<B>) {
  Future<(A, B)> get waitAll async {
    final (first, second) = this;
    await Future.wait([first, second]);

    return (await first, await second);
  }
}

extension FutureRecord3Extension<A, B, C> on (Future<A>, Future<B>, Future<C>) {
  Future<(A, B, C)> get waitAll async {
    final (first, second, third) = this;
    await Future.wait([first, second, third]);

    return (await first, await second, await third);
  }
}
