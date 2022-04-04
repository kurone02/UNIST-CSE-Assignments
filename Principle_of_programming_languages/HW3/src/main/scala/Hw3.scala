package hw3

import scala.collection.immutable.HashMap 
import hw3._


package object hw3 {
  type Env = HashMap[Var,Val]
  type Loc = Int
  
}

case class Mem(m: HashMap[Loc,Val], top: Loc) {
  def apply(key: Loc): Val = m(key)
  def exists(key: Loc): Boolean = m.exists((x: (Loc, Val)) => x._1 == key)
  def add(value: Val) = Mem(m + (top -> value), top + 1)
  def update(location: Loc, value: Val) = Mem(m + (location -> value), top)
}

sealed trait Val
case class IntVal(n: Int) extends Val
case class IntListVal(n: List[IntVal]) extends Val
case class BoolVal(b: Boolean) extends Val
case class ProcVal(v: Var, expr: Expr, env: Env) extends Val
case class RecProcVal(fv: Var, av: Var, body: Expr, env: Env) extends Val
case class LocVal(l: Loc) extends Val


sealed trait Program
sealed trait Expr extends Program
case class ConstI(n: Int) extends Expr
case class ConstB(n: Boolean) extends Expr
case class ConstIL(n: List[IntVal]) extends Expr
case class Var(s: String) extends Expr
case class Add(l: Expr, r: Expr) extends Expr
case class Sub(l: Expr, r: Expr) extends Expr
case class Mul(l: Expr, r: Expr) extends Expr
case class Div(l: Expr, r: Expr) extends Expr
case class Rem(l: Expr, r: Expr) extends Expr
case class Cons(l: Expr, r: Expr) extends Expr
case class GTExpr(l: Expr, r: Expr) extends Expr
case class GEQExpr(l: Expr, r: Expr) extends Expr
case class Iszero(c: Expr) extends Expr
case class Ite(c: Expr, t: Expr, f: Expr) extends Expr
case class ValExpr(name: Var, value: Expr, body: Expr) extends Expr
case class VarExpr(name: Var, value: Expr, body: Expr) extends Expr
case class Proc(v: Var, expr: Expr) extends Expr
case class DefExpr(fname: Var, aname: Var, fbody: Expr, ibody: Expr) extends Expr
case class Asn(v: Var, e: Expr) extends Expr
case class Paren(expr: Expr) extends Expr
case class Block(f: Expr, s: Expr) extends Expr
case class PCall(ftn: Expr, arg: Expr) extends Expr







object MiniScalaInterpreter {

  case class Result(v: Val, m: Mem)
  case class UndefinedSemantics(msg: String = "", cause: Throwable = None.orNull) extends Exception("Undefined Semantics: " ++ msg, cause)
  
  
  def eval(env: Env, mem: Mem, expr: Expr): Result = expr match {
    case ConstI(n) => Result(IntVal(n), mem)

    case ConstB(b) => Result(BoolVal(b), mem)

    case ConstIL(n) => Result(IntListVal(n), mem)

    case Var(s) => {
      if(env.exists((x: (Var, Val)) => x._1 == Var(s))){
        val p = env(Var(s))
        p match {
          case LocVal(x) => Result(mem.apply(x), mem)
          case _ => Result(p, mem)
        }
      } else throw new UndefinedSemantics(s"${s} is not defined")
    }

    case Add(l, r) => {
      val LHS = eval(env, mem, l)
      val RHS = eval(env, LHS.m, r)
      val x = LHS.v
      val y = RHS.v
      val new_mem = RHS.m
      (x, y) match {
        case (IntVal(left), IntVal(right)) => Result(IntVal(left + right), new_mem)
        case _ => throw new UndefinedSemantics("Integer is expected when doing addition")
      }
    }

    case Sub(l, r) => {
      val LHS = eval(env, mem, l)
      val RHS = eval(env, LHS.m, r)
      val x = LHS.v
      val y = RHS.v
      val new_mem = RHS.m
      (x, y) match {
        case (IntVal(left), IntVal(right)) => Result(IntVal(left - right), new_mem)
        case _ => throw new UndefinedSemantics("Integer is expected when doing subtraction")
      }
    }

    case Mul(l, r) => {
      val LHS = eval(env, mem, l)
      val RHS = eval(env, LHS.m, r)
      val x = LHS.v
      val y = RHS.v
      val new_mem = RHS.m
      (x, y) match {
        case (IntVal(left), IntVal(right)) => Result(IntVal(left * right), new_mem)
        case _ => throw new UndefinedSemantics("Integer is expected when doing multiplication")
      }
    }

    case Div(l, r) => {
      val LHS = eval(env, mem, l)
      val RHS = eval(env, LHS.m, r)
      val x = LHS.v
      val y = RHS.v
      val new_mem = RHS.m
      (x, y) match {
        case (IntVal(left), IntVal(right)) => {
          if(right == 0) throw new UndefinedSemantics("Divided by zero")
          else Result(IntVal(left / right), new_mem)
        }
        case _ => throw new UndefinedSemantics("Integer is expected when doing division")
      }
    }

    case Rem(l, r) => {
      val LHS = eval(env, mem, l)
      val RHS = eval(env, LHS.m, r)
      val x = LHS.v
      val y = RHS.v
      val new_mem = RHS.m
      (x, y) match {
        case (IntVal(left), IntVal(right)) => {
          if(right == 0) throw new UndefinedSemantics("Divided by zero")
          else Result(IntVal(left % right), new_mem)
        }
        case _ => throw new UndefinedSemantics("Integer is expected when doing modulo")
      }
    }

    case Cons(l, r) => {
      val LHS = eval(env, mem, l)
      val RHS = eval(env, LHS.m, r)
      val x = LHS.v
      val y = RHS.v
      val new_mem = RHS.m
      (x, y) match {
        case (IntVal(left), IntListVal(right)) => Result(IntListVal(IntVal(left)::right), new_mem)
        case _ => throw new UndefinedSemantics("IntList is expected when concatenating")
      }
    }

    case GTExpr(l, r) => {
      val LHS = eval(env, mem, l)
      val RHS = eval(env, LHS.m, r)
      val x = LHS.v
      val y = RHS.v
      val new_mem = RHS.m
      (x, y) match {
        case (IntVal(left), IntVal(right)) => Result(BoolVal(left > right), new_mem)
        case _ => throw new UndefinedSemantics("Integer is expected when comparing")
      }
    }

    case GEQExpr(l, r) => {
      val LHS = eval(env, mem, l)
      val RHS = eval(env, LHS.m, r)
      val x = LHS.v
      val y = RHS.v
      val new_mem = RHS.m
      (x, y) match {
        case (IntVal(left), IntVal(right)) => Result(BoolVal(left >= right), new_mem)
        case _ => throw new UndefinedSemantics("Integer is expected when comparing")
      }
    }

    case Iszero(c) => {
      val res = eval(env, mem, c)
      res.v match {
        case IntVal(x) => Result(BoolVal(x == 0), res.m)
        case _ => throw new UndefinedSemantics("Integer is expected when checking Iszero")
      }
    }

    case Ite(c, t, f) => {
      val res = eval(env, mem, c)
      res.v match {
        case BoolVal(x) => {
          if(x) eval(env, res.m, t)
          else eval(env, res.m, f)
        }
        case _ => throw new UndefinedSemantics("Boolean is expected when doing conditional expression")
      }
    }

    case ValExpr(name, value, body) => {
      val E_1 = eval(env, mem, value)
      eval(env + (name -> E_1.v), E_1.m, body)
    }

    case VarExpr(name, value, body) => {
      val E_1 = eval(env, mem, value)
      val location = LocVal(E_1.m.top)
      eval(env + (name -> location), E_1.m.add(E_1.v), body)
    }

    case Proc(v, e) => Result(ProcVal(v, e, env), mem)

    case DefExpr(fname, aname, fbody, ibody) => eval(env + (fname -> RecProcVal(fname, aname, fbody, env)), mem, ibody)
    
    case Asn(v, e) => {
      val temp = eval(env, mem, e)
      val new_mem = temp.m
      val assigned_value = temp.v
      if(env.exists((x: (Var, Val)) => x._1 == v)){
        val p = env(v)
        p match {
          case LocVal(x) => Result(assigned_value, new_mem.update(x, assigned_value))
          case _ => throw new UndefinedSemantics(s"${v.s} is not mutable")
        }
      } else throw new UndefinedSemantics(s"${v.s} is not defined")
    }

    case Paren(e) => eval(env, mem, e)
    
    case Block(f, s) => eval(env, eval(env, mem, f).m, s)

    case PCall(ftn, arg) => {
      val temp1 = eval(env, mem, ftn)
      val function_mem = temp1.m
      val function_data = temp1.v

      val temp2 = eval(env, function_mem, arg)
      val new_mem = temp2.m
      val arg_data = temp2.v
      function_data match {
        case ProcVal(v, e, p) => eval(p + (v -> arg_data), new_mem, e)
        case RecProcVal(fv, av, body, p) => {
          val assign = p + (av -> arg_data)
          eval(assign + (fv -> RecProcVal(fv, av, body, p)), new_mem, body)
        }
        case _ => throw new UndefinedSemantics("Function is expected")
      }
    }
  }
  
  def apply(program: String): Val = {
    val parsed = MiniScalaParserDriver(program)
    eval(new Env(), Mem(new HashMap[Loc,Val],0), parsed).v
  }

}


object Hw3App extends App {
  
  println("Hello from Hw3!")

  println(MiniScalaInterpreter.apply("""{
          val sqr = {
            (x) => {def mul(y) = if iszero y then 0 else x + (mul y-1); mul x}
          };{
            val p = {
              (x) => {(sqr x) + x - 1}
            }; p 3
          }
        }
      """))

}
/*
ValExpr(Var(sqr),
        Proc(Var(x),DefExpr(Var(mul),Var(y),Ite(Iszero(Var(y)),ConstI(0),Add(Var(x),PCall(Var(mul),Sub(Var(y),ConstI(1))))),PCall(Var(mul),Var(x)))),
        ValExpr(Var(p),Proc(Var(x),PCall(Var(sqr),Sub(Add(Var(x),Var(x)),ConstI(1)))),PCall(Var(p),ConstI(3))))
*/