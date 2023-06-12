import Foundation

func implementation1() {
    print("Hello, World!")

    let aa = Int(readLine()!)!

    for i in 1...aa {
        var star: String = ""
        for _ in 0..<i {
            star += "*"
        }
        print(star)
    }
}

