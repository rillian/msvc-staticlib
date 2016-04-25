// Export an implementation which depends indirectly on foo.
int foo();

int bar() {
  return foo();
}
