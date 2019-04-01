Definitions.

INTEGER     = [0-9]+
FLOAT      = [0-9]+\.[0-9]+((E|e)(\+|\-)?[0-9]+)?
WHITESPACES = [\s\t\n\r]

Rules.
{INTEGER}     : {token, {number, TokenLine, list_to_integer(TokenChars)}}.
{FLOAT}       : {token, {number, TokenLine, list_to_float(TokenChars)}}.
\+            : {token, {'+', TokenLine}}.
\*            : {token, {'*', TokenLine}}.
\(            : {token, {'(', TokenLine}}.
\)            : {token, {')', TokenLine}}.
{WHITESPACES} : skip_token.

Erlang code.
% Erlang code can be added here
