import Hw2._
import scala.collection.immutable.HashMap 


class Hw2Test extends org.scalatest.funsuite.AnyFunSuite {
  test("Hw2.IntInterpreter") {
    val testCases = List(
      ("1 + 1", 2)
      ,("pow 2 2",4)
      ,("sigma 1 1 2",2)
      ,("sigma 1 2 x+1",5)
      ,("sigma 1 10 x",55)
      ,("sigma 1 10 x + x",110)
      ,("sigma 1 10 1",10)
      ,("pi 1 1 2",2)
      ,("pi 1 2 x+1",6)
      ,("pi 1 10 x",3628800)
      ,("pi 1 3 x + x",48)
      ,("pi 1 10 1",1)
      ,("pow 2 10",1024)
      ,("sigma 1 2 pow x 2",5)
      ,("pi 1 2 pow x 2",4)
      // Additional test cases
      ,("7 * 2", 14)
      ,("2 * 3 + 1",7)
    )
    val a: List[Int] = testCases.map((a: (String, Int)) => {assert(IntInterpreter(a._1) === a._2); 0} )
  }
val letRecTestCases = List(
      ("1",IntVal(1))
      ,("1 + 1", IntVal(2))
      ,("1 == 1", BoolVal(true))
      ,("iszero 1",BoolVal(false))
      ,("if iszero 0 then 1 else 2",IntVal(1))
      ,("if 3 == 4 then 1 else 2",IntVal(2))
      ,("let x = 1 in x+1",IntVal(2))
      ,("proc x x + 10",ProcVal(Var("x"),Add(Var("x"),Const(10)),Env(new HashMap[Var,Val]())))
      ,("proc x x + 1 1",IntVal(2))
      ,("letrec f(x) = if iszero x then 0 else x + (f x-1) in (f 1)",IntVal(1))
      ,("proc x x - 8 5",IntVal(-3))
      // Additional test cases
      ,("let x = 5 in (6 - x)",IntVal(1))
      ,("let x = 200 in let f = proc z z - x in let x = 100 in let g = proc z z - x in (f 1) - (g 1)",IntVal(-100))
      ,("letrec double(x) = if iszero x then 0 else (double x-1) - (0-2) in (double 6)",IntVal(12))
      ,("1 + 2 - 3", IntVal(0))
      ,("let sqr = proc x letrec mul(y) = if iszero y then 0 else x + (mul y - 1) in (mul x) in (sqr 13)",IntVal(169))
      ,("let sqr = proc x letrec mul(y) = if y == 0 then y else x + (mul y - 1) in (mul x) in let p = proc x (sqr x) + x - 1 in p 3",IntVal(11))
    )
  test("Hw2.LetRecInterpreter") {
    
    letRecTestCases.foreach((a: (String, Val)) => {assert(LetRecInterpreter(a._1) === a._2)} )
    assertThrows[Exception] {
      LetRecInterpreter("proc x y - 7 4")
    }
    assertThrows[Exception] {
      LetRecInterpreter("x + 1")
    }
    // Additional test cases
    assertThrows[Exception] {
      LetRecInterpreter("(iszero 1) == 0")
    }
    assertThrows[Exception] {
      LetRecInterpreter("x 1")
    }

    assertThrows[Exception] {
      LetRecInterpreter("(1+1) 1")
    }
  }

  test("Hw.aa") {
    letRecTestCases.foreach(((a: (String, Val))) => {
      //println(a._1)
      val program = LetRecParserDriver(a._1)
      //println(LetRecToString(program))
      assert(program === LetRecParserDriver(LetRecToString(program)))
      })
    
  }

}
