fn main {
  println(@lib.hello())
  // --------------------------------
  let x = 1
  println(x)
  // --------------------------------
  let f = fn(x) { x + 1 }
  let g = fn(x) { x * 2 }
  // --------------------------------
  let z = if true { f } else { g }
  let x = 10
  println(z(x))
  // --------------------------------
  println(f(x) |> g)
  // --------------------------------
  let arg1 = 10
  let z = add(arg2=10, ~arg1)
  println(z)
  // --------------------------------
  println(default())
  println(default(d=100))
  // --------------------------------
  println(inc())
  println(inc())
  println(inc())
}

fn add(~arg1 : Int, ~arg2 : Int) -> Int {
  arg1 + arg2
}

fn default(~d : Int = 10) -> Int {
  d
}

let counter : Ref[Int] = { val: 9023 }

fn inc() -> Int {
  counter.val = counter.val + 1
  counter.val
}
