package hello.world

import hello.world.fallbean.FallBean
import hello.world.ClassScanner

@FallBean
class Foo()
{
  init {
    println("Foo::init()")
  }
  fun name() {
    println("HI. I am class foo")
  }
}

fun main() {
  println("Starting...")
  val foo = Foo()

    try {
      val classNames = ClassScanner.findClasses("hello.world")
        classNames.forEach { println(it) }
    } catch(e: Exception) {
  println("Exception $e")  
  }
  
}
