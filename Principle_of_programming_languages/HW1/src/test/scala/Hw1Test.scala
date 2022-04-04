class Hw1Test extends org.scalatest.funsuite.AnyFunSuite {
  test("Hw1.gcd") {
    assert(Hw1.gcd(16273,12873) === 1)
    assert(Hw1.gcd(281333, 72267) === 221)
    assert(Hw1.gcd(172, 54) === 2)
    assert(Hw1.gcd(12431234, 23412) === 2)
    assert(Hw1.gcd(12431, 23412) === 1)
    assert(Hw1.gcd(24, 12) === 12)
    assert(Hw1.gcd(19028, 0) === 19028)
    assert(Hw1.gcd(12334000, 23300000) === 2000)
  }

  test("Hw1.oddSum") {
    def constant(x: Int) = x
    def square(x: Int) = x * x
    def f(x: Int) = square(x) + constant(x)
    def g(x: Int) = -x
    def u(x: Int) = x * x * x
    def v(x: Int) = 2

    assert(Hw1.oddSum(constant,10) === 25)
    assert(Hw1.oddSum(square,20) === 1330)
    assert(Hw1.oddSum(constant,21) === 121)
    assert(Hw1.oddSum(f,111) === 237272)
    assert(Hw1.oddSum(g,11) === -36)
    assert(Hw1.oddSum(u,102) === 13527801)
    assert(Hw1.oddSum(v,200) === 200)
  }

  test("Hw1.foldRight") {
    assert(Hw1.foldRight(100, (x: Int, y:Int) => x % y, Cons(5,Cons(3,Nil))) === 1)
    assert(Hw1.foldRight(100, (x: Int, y:Int) => x % y, Cons(3,Cons(5,Nil))) === 0)

    val lst = Cons(1, Cons(2, Cons(3, Cons(4, Cons(5, Cons(6, Cons(7, Cons(8, Cons(9, Cons(10, Nil))))))))))

    assert(Hw1.foldRight(321, (x: Int, y:Int) => x + y, lst) === 376)
    assert(Hw1.foldRight(123, (x: Int, y:Int) => x - y, lst) === 68)
    assert(Hw1.foldRight(23, (x: Int, y:Int) => x * y, lst) === 83462400)
    assert(Hw1.foldRight(1, (x: Int, y:Int) => x / y, lst) === 0)
    assert(Hw1.foldRight(39916800, (x: Int, y:Int) => x / y, lst) === 11)
  }

  test("Hw1.map") {
    assert(Hw1.map((x: Int) => x % 3, Cons(5,Cons(3,Cons(6,Nil)))) === Cons(2,Cons(0,Cons(0,Nil))))
    assert(Hw1.map((x: Int) => x % 5, Cons(5,Cons(3,Cons(6,Nil)))) === Cons(0,Cons(3,Cons(1,Nil))))
    assert(Hw1.map((x: Int) => x * 3, Nil) === Nil)
  }

  test("Hw1.iter") {
    def constant(x: Int) = x
    def square(x: Int) = x * x
    assert(Hw1.iter[Int](constant, 10)(10) === 10)
    assert(Hw1.iter[Int](square, 3)(2) === 256)
    assert(Hw1.iter[Int](constant, 100)(2) === 2)
    assert(Hw1.iter[Int](square, 4)(2) === 65536)
    assert(Hw1.iter[Int](x => 3 * x, 10)(1) === 59049)
    assert(Hw1.iter[Int](x => x + 10, 10000)(132) === 100132)
  }

  test("Hw1.insert") {
    val step_0 = IntNode(10,IntNode(9,IntNode(8,Leaf,Leaf),Leaf),Leaf)
    val step_1 = Hw1.insert(step_0, 11)
    val step_2 = Hw1.insert(step_1, 12)
    val step_3 = Hw1.insert(step_0, 1)
    val step_4 = Hw1.insert(step_3, 3)
    val step_5 = Hw1.insert(step_4, 0)
    assert(step_1 === IntNode(10,IntNode(9,IntNode(8,Leaf,Leaf),Leaf),IntNode(11,Leaf,Leaf)))
    assert(step_2 === IntNode(10,IntNode(9,IntNode(8,Leaf,Leaf),Leaf),IntNode(11,Leaf,IntNode(12,Leaf,Leaf))))
    assert(step_3 === IntNode(10,IntNode(9,IntNode(8, IntNode(1, Leaf, Leaf), Leaf),Leaf),Leaf))
    assert(step_4 === IntNode(10,IntNode(9,IntNode(8, IntNode(1, Leaf, IntNode(3, Leaf, Leaf)), Leaf),Leaf),Leaf))
    assert(step_5 === IntNode(10,IntNode(9,IntNode(8, IntNode(1, IntNode(0, Leaf, Leaf), IntNode(3, Leaf, Leaf)), Leaf),Leaf),Leaf))
  }

  test("Hw1.eval") {
    assert(Hw1.eval(True) === true)
    assert(Hw1.eval(Andalso(Orelse(True,False),True)) === true)
    assert(Hw1.eval(Implies(True, False)) === false)
    assert(Hw1.eval(Orelse(Not(True), False)) === Hw1.eval(Implies(True, False)))
    assert(Hw1.eval(Implies(Implies(True, False), Implies(False, True))) === true)
    assert(Hw1.eval(Implies(Orelse(Andalso(True, True), False), Orelse(False, Implies(Andalso(False, False), True)))) === true)
  }


}
