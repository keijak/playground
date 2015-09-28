object P1 {
  def main(args: Array[String]) {
    println((1 until 10).filter(x => x % 3 == 0 || x % 5 == 0).sum)
  }
}
