class UserRequestParam {
  final String? limit;
  final String? skip;

  const UserRequestParam({this.limit, this.skip});

  Map<String, String> toMap() {
    return {"limit": limit ?? '', "skip": skip ?? ''};
  }
}
