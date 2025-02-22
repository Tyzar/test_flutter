sealed class Or<L, R> {}

class Left<L, R> extends Or<L, R> {
  final L value;

  Left(this.value);
}

class Right<L, R> extends Or<L, R> {
  final R value;

  Right(this.value);
}