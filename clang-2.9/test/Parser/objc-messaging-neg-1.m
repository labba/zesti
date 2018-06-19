// RUN: %clang_cc1 -fsyntax-only -verify %s

@interface A
+(void) foo:(int) a;
@end

int main() {
  id a;
  [a bla:0 6:7]; // expected-error {{expected ']'}}
  [A foo bar]; // expected-error {{expected ':'}}
  [A foo bar bar1]; // expected-error {{expected ':'}}
}