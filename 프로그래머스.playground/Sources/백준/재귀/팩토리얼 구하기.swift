import Foundation

func recrusive1() {
    let input = Int(readLine()!)!

    func factorial(_ input: Int) -> Int {
        if input == 1 {
            return 1
        }
        return input * factorial(input-1)
    }

    let result = factorial(input)
    print(result)

}
