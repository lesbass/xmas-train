fun main() {
    println("Kt started!")
}

@Retain
fun add(a: Int, b: Int): Int {
    return a + b
}

@Retain
fun hello() {
    println("Hello from Kotlin")
}