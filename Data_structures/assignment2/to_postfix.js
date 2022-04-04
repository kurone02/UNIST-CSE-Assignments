function isOperator(c) {
    return c == '+' || c == '-' || c == '*' || c == '/' || c == '^';
}

function leftAssoc(c) {
    return c != '^';
}

function priority(c) {
    if (c == '^') return 3;
    if (c == '*') return 2;
    if (c == '/') return 2;
    if (c == '+') return 1;
    if (c == '-') return 1;
    return 0;
}

function rightPriority(c) {
    if (c == '+') return 1;
    if (c == '-') return 2;
    if (c == '*') return 3;
    if (c == '/') return 4;
    if (c == '^') return 5;
    return 0;
}

function foo(e){
    return e.replace("#", "-")
}

function infixToPostfix(expr) {

    var i = 0;
    if (typeof expr !== 'string') {
        if (expr instanceof String) {
            expr = expr.toString();
        } else {
            return 'Invalid expression.';
        }
    }

   var tokens = expr.replace(/^-|([\^\(+\-*/])\s*-/g, "$1#")
                  .match(/([\#?\.\w]+)|[\^()+\-*/]/gi)
                  .map(foo);

    var S = [], O = [], tok;

    while (tok = tokens.shift()) {
        if (tok == '(') S.push(tok);
        else if (tok == ')') {
            while (S.length > 0 && S[S.length - 1] != '(') O.push(S.pop());
            if (S.length == 0) return 'Mismatched parenthesis.';
            S.pop();
        } else if (isOperator(tok)) {
            while (S.length > 0 && isOperator(S[S.length - 1]) && ((leftAssoc(tok) && priority(tok) <= priority(S[S.length - 1])) || (!leftAssoc(tok) && priority(tok) < priority(S[S.length - 1])))) O.push(S.pop());
            S.push(tok);
        } else {
            O.push(tok);
        }
    }

    while (S.length > 0) {
        if (!isOperator(S[S.length - 1])) return 'Mismatched parenthesis.';
        O.push(S.pop());
    }

    if (O.length == 0) return 'Invalid expression.'

    var s = '';
    for (var i = 0; i < O.length; i++) {
        if (i != 0) s += ' ';
        s += O[i];
    }

    return s;
}