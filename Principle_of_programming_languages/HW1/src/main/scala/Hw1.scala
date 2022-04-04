/*********************************************
* CSE271: Principle of programming languages *
*               Assignment 1                 *
*                                            *
*          Student ID: 20202026              *
*          Student Name: Nguyen Minh Duc     *
**********************************************
*/


sealed trait IntList
case object Nil extends IntList
case class Cons(v: Int, t: IntList) extends IntList

sealed trait BTree
case object Leaf extends BTree
case class IntNode(v: Int, left: BTree, right: BTree)
extends BTree

sealed trait Formula
case object True extends Formula
case object False extends Formula
case class Not(f: Formula) extends Formula
case class Andalso(left: Formula, right: Formula) extends Formula
case class Orelse(left: Formula, right: Formula)  extends Formula
case class Implies(left: Formula, right: Formula) extends Formula

object Hw1 extends App {

  println("Hw1!")

  /* Problem 1. Write a function gcd that evaluates to the greatest common divisor.
                            *****************************
                            * Using Euclid Algorithm    *
                            * gcd(a, b) = gcd(b, a % b) *
                            *****************************
  */
  def gcd(a: Int, b: Int): Int = {
    if(b == 0) a else gcd(b, a % b)
  }

  /* --------------------------------------------------------------------------------------------- */

  /* Problem 2. Write a function that takes another function f and a positive integer n as arguments 
  * and computes the sum of the numbers obtained by applying the odd numbers <= n  to f
              *********************************************************************************
              * Using Recursion                                                               *
              * If n = 1, return f(n)                                                         *
              * If n is even, minus 1 from n so that it goes to the odd number smaller than n *
              * Otherwise compute f(n) + oddSum(n - 2) that goes to the next odd number       *
              *********************************************************************************
  */
  def oddSum(f: Int=>Int, n: Int): Int = {
    if(n == 1) f(n)
    else if(n % 2 == 0) oddSum(f, n - 1)
    else f(n) + oddSum(f, n - 2)
  }

  /* --------------------------------------------------------------------------------------------- */

  /* Problem 3. Write a function that takes a function from integers to integers and a list 
  * as an input, and folds to right
                              ************************************
                              * Similar to the reversing problem *
                              ************************************
  */

  def foldRight(init: Int, ftn: (Int, Int)=>Int, list: IntList): Int = {
    list match {
      case Nil => init
      case Cons(h, t) => ftn(foldRight(init, ftn, t), h)
    }
  }

  /* --------------------------------------------------------------------------------------------- */

  /* Problem 4. Write a function with type that construct a list from another list by applying function.
                      *******************************************************
                      * Iterate through each element and apply the function *
                      *******************************************************
  */

  def map(f: Int=>Int, list: IntList): IntList = {
    list match {
      case Nil => list
      case Cons(h, t) => Cons(f(h), map(f, t))
    }
  }

  /* --------------------------------------------------------------------------------------------- */

  /* Problem 5. Write a function with type that computes a composition of another function 
  * by the given number of times
              **************************************************************
              * Create new method that compute composition of two function *
              * Recursively apply composition                              *
              **************************************************************
  */

  // New method that returns (f composite g) as a function
  def composition[A](f: A => A, g: A => A): A => A = { x => f(g(x)) }

  def iter[A](f: A => A, n: Int): A => A = {
    if(n == 1) f
    else composition(f, iter[A](f, n - 1))
  }

  /* --------------------------------------------------------------------------------------------- */

  /* Problem 6. Write a function that inserts a new integer to a binary search tree. Assume that 
  * the input tree (i.e.,t) does not have any duplicate nodes and the number to be inserted (i.e., n) 
  * does not exist in the input tree (t).
  *****************************************************************************************************
  * Depth First Search                                                                                *
  * Base case: If the node is null, then create a new node at that position                           *
  * Recursion: If the {current value of the node} < {the inserted value}, go to the right child       *
  *            Otherwise, go to the left child                                                        *
  *****************************************************************************************************
  */
  
  def insert(t: BTree, a: Int): BTree = {
    t match {
      case Leaf => IntNode(a, Leaf, Leaf)
      case IntNode(v, left, right) => {
        if(v < a) IntNode(v, left, insert(right, a))
        else IntNode(v, insert(left, a), right)
      }
    }
  }

  /* --------------------------------------------------------------------------------------------- */

  /* Problem 7. Write a function that evaluates a formula into a truth value.
                  *********************************
                  * Just implement the definition *
                  *********************************
  */

  def eval(f: Formula): Boolean = {
    f match {
      case True => true
      case False => false
      case Not(x) => !eval(x)
      case Andalso(x, y) => eval(x) && eval(y)
      case Orelse(x, y) => eval(x) || eval(y)
      case Implies(x, y) => !eval(x) || eval(y)
    }
  }

}