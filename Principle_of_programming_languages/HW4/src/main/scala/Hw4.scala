package hw4

import scala.collection.immutable.HashMap 
import hw4._


package object hw4 {
  type Env = HashMap[Var,LocVal]
}

case class Mem(m: HashMap[LocVal,Val], top: Int) {
  def extended(v: Val): (Mem, LocVal) = {
    val new_mem = Mem(m.updated(LocVal(top),v), top+1)
    (new_mem,LocVal(top))
  }
  def updated(l: LocVal, new_val: Val): Option[Mem] = {
    m.get(l) match {
      case Some(v) => Some(Mem(m.updated(l, new_val), top))
      case None => None
    }
  }
  def get(l: LocVal): Option[Val] = m.get(l)
  def getLocs(): List[LocVal] = m.keySet.toList
}

sealed trait Val
case object SkipVal extends Val
case class IntVal(n: Int) extends Val
case class BoolVal(b: Boolean) extends Val
case class ProcVal(args: List[Var], expr: Expr, env: Env) extends Val
case class LocVal(l: Int) extends Val
sealed trait RecordValLike extends Val
case object EmptyRecordVal extends RecordValLike
case class RecordVal(field: Var, loc: LocVal, next: RecordValLike) extends RecordValLike


sealed trait Program
sealed trait Expr extends Program
case object Skip extends Expr
case object False extends Expr
case object True extends Expr
case class NotExpr(expr: Expr) extends Expr
case class Const(n: Int) extends Expr
case class Var(s: String) extends Expr {
  override def toString = s"Var(${"\""}${s}${"\""})"
}
case class Add(l: Expr, r: Expr) extends Expr
case class Sub(l: Expr, r: Expr) extends Expr
case class Mul(l: Expr, r: Expr) extends Expr
case class Div(l: Expr, r: Expr) extends Expr
case class LTEExpr(l: Expr, r: Expr) extends Expr
case class EQExpr(l: Expr, r: Expr) extends Expr
case class Iszero(c: Expr) extends Expr
case class Ite(c: Expr, t: Expr, f: Expr) extends Expr
case class Let(i: Var, v: Expr, body: Expr) extends Expr
case class Proc(args: List[Var], expr: Expr) extends Expr
case class Asn(v: Var, e: Expr) extends Expr
case class BeginEnd(expr: Expr) extends Expr
case class FieldAccess(record: Expr, field: Var) extends Expr
case class FieldAssign(record: Expr, field: Var, new_val: Expr) extends Expr
case class Block(f: Expr, s: Expr) extends Expr
case class PCallV(ftn: Expr, arg: List[Expr]) extends Expr
case class PCallR(ftn: Expr, arg: List[Var]) extends Expr
case class WhileExpr(cond: Expr, body: Expr) extends Expr
sealed trait RecordLike extends Expr
case object EmptyRecordExpr extends RecordLike
case class RecordExpr(field: Var, initVal: Expr, next: RecordLike) extends RecordLike








object MiniCInterpreter {

  case class Result(v: Val, m: Mem)
  case class UndefinedSemantics(msg: String = "", cause: Throwable = None.orNull) extends Exception("Undefined Semantics: " ++ msg, cause)
    
  
  def eval(env: Env, mem: Mem, expr: Expr): Result = expr match{
    //  Constants and Variables
    case Skip => Result(SkipVal, mem)
    case False => Result(BoolVal(false), mem)
    case True => Result(BoolVal(true), mem)
    case Const(n) => Result(IntVal(n), mem)
    case Var(s) => {
      if(env.exists((x: (Var, LocVal)) => x._1 == Var(s))){
        val p = env(Var(s))
        p match {
          case LocVal(x) => {
            val value = mem.get(LocVal(x))
            value match {
              case Some(n) => Result(n, mem)
              case None => throw new UndefinedSemantics(s"'${s}' does not have an address in the memory")
            }
          }
          case _ => throw new UndefinedSemantics(s"'${s}' should be LocVal in the environment")
        }
      } else throw new UndefinedSemantics(s"'${s}' is not defined")
    }
    case Proc(args, expr) => Result(ProcVal(args, expr, env), mem)
    
    //  Unary and Binary Operations
    case Add(l, r) => { // Addition
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
    case Sub(l, r) => { // Subtraction
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
    case Mul(l, r) => { // Multiplication
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
    case Div(l, r) => { // Division
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
    case LTEExpr(l, r) => { // Less than or equal
      val LHS = eval(env, mem, l)
      val RHS = eval(env, LHS.m, r)
      val x = LHS.v
      val y = RHS.v
      val new_mem = RHS.m
      (x, y) match {
        case (IntVal(left), IntVal(right)) => Result(BoolVal(left <= right), new_mem)
        case _ => throw new UndefinedSemantics("Integer is expected when comparing")
      }
    }
    case EQExpr(l, r) => { // Equality
      val LHS = eval(env, mem, l)
      val RHS = eval(env, LHS.m, r)
      val x = LHS.v
      val y = RHS.v
      val new_mem = RHS.m
      (x, y) match {
        case (IntVal(left), IntVal(right)) => Result(BoolVal(left == right), new_mem)
        case (BoolVal(left), BoolVal(right)) => Result(BoolVal(left == right), new_mem)
        case (SkipVal, SkipVal) => Result(BoolVal(true), new_mem)
        case _ => Result(BoolVal(false), new_mem)
      }
    }
    case NotExpr(expr) => { // Not
      val evaluated = eval(env, mem, expr)
      val value = evaluated.v
      val new_mem = evaluated.m
      value match {
        case BoolVal(c) => Result(BoolVal(!c), new_mem)
        case _ => throw new UndefinedSemantics("Boolean is expected when using not expression.")
      }
    }
    case Iszero(c) => { // Is zero
      val res = eval(env, mem, c)
      res.v match {
        case IntVal(x) => Result(BoolVal(x == 0), res.m)
        case _ => throw new UndefinedSemantics("Integer is expected when checking Iszero")
      }
    }

    //  Flow Control
    case Ite(c, t, f) => { // If then else
      val res = eval(env, mem, c)
      res.v match {
        case BoolVal(x) => {
          if(x) eval(env, res.m, t)
          else eval(env, res.m, f)
        }
        case _ => throw new UndefinedSemantics("Boolean is expected when doing conditional expression")
      }
    }
    case WhileExpr(cond, body) => { // While loop
      val res = eval(env, mem, cond)
      res.v match {
        case BoolVal(x) => {
          if(x) eval(env, eval(env, res.m, body).m, WhileExpr(cond, body))
          else Result(SkipVal, res.m)
        }
        case _ => throw new UndefinedSemantics("Boolean is expected in condition when doing while loop")
      }
    }
    case Block(f, s) => eval(env, eval(env, mem, f).m, s) // Block of 2 commands
    case BeginEnd(expr) => eval(env, mem, expr) // Begin end block


    //  Records
    case EmptyRecordExpr => Result(EmptyRecordVal, mem) // Empty record
    case RecordExpr(field, initVal, next) => { // Non-empty record
      val res = eval(env, mem, initVal)
      val (new_mem, location) = res.m.extended(res.v)
      val next_member = eval(env, new_mem, next)
      next_member.v match {
        case rec: RecordValLike => Result(RecordVal(field, location, rec), next_member.m)
        case _ => throw new UndefinedSemantics("Type error in record")
      }
    }
    case FieldAccess(record, field) => { // Access a field in a record
      val record_data = eval(env, mem, record)
      val rec_mem = record_data.m
      val rec_val = record_data.v
      def iterate(rec: RecordValLike): Option[Result] = rec match {
        case EmptyRecordVal => None
        case RecordVal(f, v, n) => {
          if(field.s == f.s) rec_mem.get(v) match {
            case Some(value) => Some(Result(value, rec_mem))
            case None => throw new UndefinedSemantics(s"The location '${v}' does not exist in the memory")
          } else iterate(n)
        }
      }
      rec_val match{
        case rec: RecordValLike => {
          val res = iterate(rec)
          res match {
            case Some(r) => r
            case None => throw new UndefinedSemantics(s"The field '${field}' does not exist")
          }
        }
        case _ => throw new UndefinedSemantics("Record is expected when accessing a field")
      }
    }
    case FieldAssign(record, field, new_val) => { // Assign a field in a record
      val record_data = eval(env, mem, record)
      val rec_mem = record_data.m
      val rec_val = record_data.v
      def iterate(rec: RecordValLike): Option[Result] = rec match {
        case EmptyRecordVal => None
        case RecordVal(f, v, n) => {
          if(field.s == f.s) rec_mem.get(v) match {
            case Some(value) => {
              val v2 = eval(env, rec_mem, new_val)
              val new_mem = v2.m.updated(v, v2.v)
              new_mem match {
                case Some(sigma) => Some(Result(v2.v, sigma))
                case None => throw new UndefinedSemantics(s"The location '${v}' does not exist in the memory")
              }
            }
            case None => throw new UndefinedSemantics(s"The location '${v}' does not exist in the memory")
          } else iterate(n)
        }
      }
      rec_val match{
        case rec: RecordValLike => {
          val res = iterate(rec)
          res match {
            case Some(r) => r
            case None => throw new UndefinedSemantics(s" The field '${field}' does not exist")
          }
        }
        case _ => throw new UndefinedSemantics("Record is expected when accessing a field")
      }
    }

    //  Assignments
    case Asn(v, e) => { // Assignment
      val temp = eval(env, mem, e)
      val new_mem = temp.m
      val assigned_value = temp.v
      if(env.exists((x: (Var, LocVal)) => x._1 == v)){
        val p = env(v)
        p match {
          case LocVal(x) => {
            new_mem.updated(LocVal(x), assigned_value) match {
              case Some(sigma) => Result(assigned_value, sigma)
              case _  => throw new UndefinedSemantics(s" The location '${v}' does not exist in the memory")
            }
          }
          case _ => throw new UndefinedSemantics(s"'${v.s}' should be LocVal in the environment")
        }
      } else throw new UndefinedSemantics(s"${v.s} is not defined")
    }
    case Let(i, v, body) => {
      val v1 = eval(env, mem, v)
      eval(env + (i -> LocVal(v1.m.top)), v1.m.extended(v1.v)._1, body)
    }

    //  Procedure Calls
    case PCallV(ftn, arg) => { // Call by value
      val function_data = eval(env, mem, ftn)
      function_data.v match {
        case ProcVal(args, e, p) => {
          if(arg.length != args.length) throw new UndefinedSemantics("Number of arguments mismatch")
          else{
            val n = arg.length
            def iterate(index: Int, current_env: Env, current_mem: Mem, iter_mem: Mem): (Env, Mem) = {
              if(index == n) (current_env, current_mem)
              else{
                val called_value = eval(env, iter_mem, arg(index))
                iterate(index + 1, current_env + (args(index) -> LocVal(current_mem.top)), current_mem.extended(called_value.v)._1, called_value.m)
              }
            }
            val (new_env, new_mem) = iterate(0, p, function_data.m, function_data.m)
            eval(new_env, new_mem, e)
          }
        }
        case _ => throw new UndefinedSemantics("Function is expected")
      }
    }
    case PCallR(ftn, arg) => { // Call by reference
      val function_data = eval(env, mem, ftn)
      function_data.v match {
        case ProcVal(args, e, p) => {
          if(arg.length != args.length) throw new UndefinedSemantics("Number of arguments mismatch")
          else{
            val n = arg.length
            def iterate(index: Int, current_env: Env): Env = {
              if(index == n) current_env
              else{
                if(env.exists((x: (Var, LocVal)) => x._1 == arg(index))) iterate(index + 1, current_env + (args(index) -> env(arg(index))))
                else throw new UndefinedSemantics(s"Variable '${arg(index)}' is not defined")
              }
            }
            val new_env = iterate(0, p)
            eval(new_env, function_data.m, e)
          }
        }
        case _ => throw new UndefinedSemantics("Function is expected")
      }
    }

  }

  def dfs(l: LocVal, sigma: Mem, reach: List[LocVal]): List[LocVal] = {
    val new_reach = l::reach
    sigma.get(l) match { // Edge 1
      case Some(LocVal(l_prime)) => {
        if(new_reach.exists(x => x == LocVal(l_prime))) new_reach
        else dfs(LocVal(l_prime), sigma, new_reach)
      }
      case Some(RecordVal(field, l_prime, next)) => { // Edge 2
        if(new_reach.exists(x => x == l_prime)) new_reach
        else{
          def iterate(rec: RecordValLike, new_reach_prime: List[LocVal]): List[LocVal] = {
            rec match{
              case EmptyRecordVal => new_reach_prime
              case RecordVal(f, l_i, n) => iterate(n, dfs(l_i, sigma, new_reach_prime))
            }
          }
          iterate(RecordVal(field, l_prime, next), new_reach)
        }
      }
      case Some(ProcVal(args, expr, env)) => { // Edge 3
        def iterate(loc_list: List[Var], new_reach_prime: List[LocVal]): List[LocVal] = {
          loc_list match {
            case h::t => iterate(t, dfs(env(h), sigma, new_reach_prime))
            case Nil => new_reach_prime
          }
        }
        iterate(env.keySet.toList, new_reach)
      }
      case _ => new_reach // Cannot reach further
    }
  }

  def gc(env: Env, mem: Mem): Mem = {
    def iterate_1(loc_list: List[Var], new_reach: List[LocVal]): List[LocVal] = {
      loc_list match {
        case h::t => iterate_1(t, dfs(env(h), mem, new_reach))
        case Nil => new_reach
      }
    }
    def iterate_2(loc_list: List[LocVal], collected: HashMap[LocVal, Val]): HashMap[LocVal, Val] = {
      loc_list match {
        case h::t => mem.get(h) match{
          case Some(random_value) => iterate_2(t, collected + (h -> random_value))
          case None => throw new UndefinedSemantics("The state of the program is not consistant")
        }
        case Nil => collected
      }
    }
    val garbage_collected = iterate_2(iterate_1(env.keySet.toList, List()), HashMap[LocVal, Val]())
    Mem(garbage_collected, mem.top)
  }
  
  def apply(program: String): (Val, Mem) = {
    val parsed = MiniCParserDriver(program)
    val res = eval(new Env(), Mem(new HashMap[LocVal,Val],0), parsed)
    (res.v, res.m)
  }

}


object Hw4App extends App {
  
  println("Hello from Hw4!")
  val parsed = MiniCParserDriver("{x:=2}.x")
  println(parsed)
  println(MiniCInterpreter.apply("let r = {x:=1,y:=2} in r.x"))

}