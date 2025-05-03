// NOTE: All of the methods in this tab have "return false" stubs
// that need to be replaced with more appropriate code.

boolean allSame(int a, int b, int c) {
  return a == b && b == c && a == c;
}

boolean allDifferent(int a, int b, int c) {
  return a != b && b != c && a != c;
}

boolean sameColor(Card a, Card b, Card c) {
  return allSame(a.getCol() / 3, b.getCol() / 3, c.getCol() / 3);
}

boolean sameShape(Card a, Card b, Card c) {
  return allSame(a.getCol() % 3, b.getCol() % 3, c.getCol() % 3);
}

boolean sameFill(Card a, Card b, Card c) {
    return allSame(a.getRow() / 3, b.getRow() / 3, c.getRow() / 3);
}

boolean sameCount(Card a, Card b, Card c) {
    return allSame(a.getRow() % 3, b.getRow() % 3, c.getRow() % 3);
}

boolean diffColor(Card a, Card b, Card c) {
  return allDifferent(a.getCol() / 3, b.getCol() / 3, c.getCol() / 3);
}

boolean diffShape(Card a, Card b, Card c) {
  return allDifferent(a.getCol() % 3, b.getCol() % 3, c.getCol() % 3);
}

boolean diffFill(Card a, Card b, Card c) {
    return allDifferent(a.getRow() / 3, b.getRow() / 3, c.getRow() / 3);
}

boolean diffCount(Card a, Card b, Card c) {
    return allDifferent(a.getRow() % 3, b.getRow() % 3, c.getRow() % 3);
}  

boolean isSet(Card a, Card b, Card c) {
  return (sameCount(a, b, c) || diffCount(a, b, c)) && 
         (sameShape(a, b, c) || diffShape(a, b, c)) && 
         (sameFill(a, b, c) || diffFill(a, b, c)) && 
         (sameColor(a, b, c) || diffColor(a, b, c));
}
