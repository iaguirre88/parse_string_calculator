Definitions.

NUMBERS     = [0-9]+
WHITESPACES = [\s\t\n\r]

Rules.
{NUMBERS}     : {token, {number, TokenLine, list_to_integer(TokenChars)}}.
\+            : {token, {'+', TokenLine}}.
\*            : {token, {'*', TokenLine}}.
\(            : {token, {'(', TokenLine}}.
\)            : {token, {')', TokenLine}}.
{WHITESPACES} : skip_token.

Erlang code.
% Erlang code can be added here
