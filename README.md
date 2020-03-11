# Calculator

**Slides**: https://iaguirre88.github.io/parse_string_calculator/

Simple toy app to test [yecc](http://erlang.org/doc/man/yecc.html) and
[leex](http://erlang.org/doc/man/leex.html).

It takes a string with a basic math expresion representation and parses it to
get its result. Currently it only supports `+`, `*` and `parentheses`.

## Example inputs
* `"1"`
* `"3+2"`
* `"3*2+1"`
* `"(1)"`
* `"3 * (2 + 1)"`
* `"3 * (2 + 1 + 5 * (3+2))"`


