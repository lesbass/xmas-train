fun main() {
    println("Kt started!")
}

@Retain
fun decrypt(a: Int, b: Int): Int {
    return a + b
}

@Retain
fun encrypt(a: Int, b: Int): Int {
    return a - b
}