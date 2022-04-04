__all__ = ['to_postfix']

# Don't look below, you will not understand this Python code :) I don't.

from js2py.pyjs import *
# setting scope
var = Scope( JS_BUILTINS )
set_global_object(var)

# Code follows:
var.registers(['isOperator', 'rightPriority', 'priority', 'leftAssoc', 'foo', 'infixToPostfix'])
@Js
def PyJsHoisted_isOperator_(c, this, arguments, var=var):
    var = Scope({'c':c, 'this':this, 'arguments':arguments}, var)
    var.registers(['c'])
    return (((((var.get('c')==Js('+')) or (var.get('c')==Js('-'))) or (var.get('c')==Js('*'))) or (var.get('c')==Js('/'))) or (var.get('c')==Js('^')))
PyJsHoisted_isOperator_.func_name = 'isOperator'
var.put('isOperator', PyJsHoisted_isOperator_)
@Js
def PyJsHoisted_leftAssoc_(c, this, arguments, var=var):
    var = Scope({'c':c, 'this':this, 'arguments':arguments}, var)
    var.registers(['c'])
    return (var.get('c')!=Js('^'))
PyJsHoisted_leftAssoc_.func_name = 'leftAssoc'
var.put('leftAssoc', PyJsHoisted_leftAssoc_)
@Js
def PyJsHoisted_priority_(c, this, arguments, var=var):
    var = Scope({'c':c, 'this':this, 'arguments':arguments}, var)
    var.registers(['c'])
    if (var.get('c')==Js('^')):
        return Js(3.0)
    if (var.get('c')==Js('*')):
        return Js(2.0)
    if (var.get('c')==Js('/')):
        return Js(2.0)
    if (var.get('c')==Js('+')):
        return Js(1.0)
    if (var.get('c')==Js('-')):
        return Js(1.0)
    return Js(0.0)
PyJsHoisted_priority_.func_name = 'priority'
var.put('priority', PyJsHoisted_priority_)
@Js
def PyJsHoisted_rightPriority_(c, this, arguments, var=var):
    var = Scope({'c':c, 'this':this, 'arguments':arguments}, var)
    var.registers(['c'])
    if (var.get('c')==Js('+')):
        return Js(1.0)
    if (var.get('c')==Js('-')):
        return Js(2.0)
    if (var.get('c')==Js('*')):
        return Js(3.0)
    if (var.get('c')==Js('/')):
        return Js(4.0)
    if (var.get('c')==Js('^')):
        return Js(5.0)
    return Js(0.0)
PyJsHoisted_rightPriority_.func_name = 'rightPriority'
var.put('rightPriority', PyJsHoisted_rightPriority_)
@Js
def PyJsHoisted_foo_(e, this, arguments, var=var):
    var = Scope({'e':e, 'this':this, 'arguments':arguments}, var)
    var.registers(['e'])
    return var.get('e').callprop('replace', Js('#'), Js('-'))
PyJsHoisted_foo_.func_name = 'foo'
var.put('foo', PyJsHoisted_foo_)
@Js
def PyJsHoisted_infixToPostfix_(expr, this, arguments, var=var):
    var = Scope({'expr':expr, 'this':this, 'arguments':arguments}, var)
    var.registers(['s', 'i', 'O', 'S', 'tokens', 'expr', 'tok'])
    var.put('i', Js(0.0))
    if PyJsStrictNeq(var.get('expr',throw=False).typeof(),Js('string')):
        if var.get('expr').instanceof(var.get('String')):
            var.put('expr', var.get('expr').callprop('toString'))
        else:
            return Js('Invalid expression.')
    var.put('tokens', var.get('expr').callprop('replace', JsRegExp('/^-|([\\^\\(+\\-*/])\\s*-/g'), Js('$1#')).callprop('match', JsRegExp('/([\\#?\\.\\w]+)|[\\^()+\\-*/]/gi')).callprop('map', var.get('foo')))
    var.put('S', Js([]))
    var.put('O', Js([]))
    while var.put('tok', var.get('tokens').callprop('shift')):
        if (var.get('tok')==Js('(')):
            var.get('S').callprop('push', var.get('tok'))
        else:
            if (var.get('tok')==Js(')')):
                while ((var.get('S').get('length')>Js(0.0)) and (var.get('S').get((var.get('S').get('length')-Js(1.0)))!=Js('('))):
                    var.get('O').callprop('push', var.get('S').callprop('pop'))
                if (var.get('S').get('length')==Js(0.0)):
                    return Js('Mismatched parenthesis.')
                var.get('S').callprop('pop')
            else:
                if var.get('isOperator')(var.get('tok')):
                    def PyJs_LONG_0_(var=var):
                        return (((var.get('S').get('length')>Js(0.0)) and var.get('isOperator')(var.get('S').get((var.get('S').get('length')-Js(1.0))))) and ((var.get('leftAssoc')(var.get('tok')) and (var.get('priority')(var.get('tok'))<=var.get('priority')(var.get('S').get((var.get('S').get('length')-Js(1.0)))))) or (var.get('leftAssoc')(var.get('tok')).neg() and (var.get('priority')(var.get('tok'))<var.get('priority')(var.get('S').get((var.get('S').get('length')-Js(1.0))))))))
                    while PyJs_LONG_0_():
                        var.get('O').callprop('push', var.get('S').callprop('pop'))
                    var.get('S').callprop('push', var.get('tok'))
                else:
                    var.get('O').callprop('push', var.get('tok'))
    while (var.get('S').get('length')>Js(0.0)):
        if var.get('isOperator')(var.get('S').get((var.get('S').get('length')-Js(1.0)))).neg():
            return Js('Mismatched parenthesis.')
        var.get('O').callprop('push', var.get('S').callprop('pop'))
    if (var.get('O').get('length')==Js(0.0)):
        return Js('Invalid expression.')
    var.put('s', Js(''))
    #for JS loop
    var.put('i', Js(0.0))
    while (var.get('i')<var.get('O').get('length')):
        try:
            if (var.get('i')!=Js(0.0)):
                var.put('s', Js(' '), '+')
            var.put('s', var.get('O').get(var.get('i')), '+')
        finally:
                (var.put('i',Js(var.get('i').to_number())+Js(1))-Js(1))
    return var.get('s')
PyJsHoisted_infixToPostfix_.func_name = 'infixToPostfix'
var.put('infixToPostfix', PyJsHoisted_infixToPostfix_)
pass
pass
pass
pass
pass
pass
pass


# Add lib to the module scope
to_postfix = var.to_python()