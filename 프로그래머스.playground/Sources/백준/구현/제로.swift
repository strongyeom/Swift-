import Foundation

func implementation5() {
    let input = Int(readLine()!)!
    var array: [Int] = []

    for _ in 0..<input {
        let money = Int(readLine()!)!
        array.append(money)
        print("array",array)
        
        if let lastNumber = array.last {
            if lastNumber == 0 {
                array.removeLast()
                array.remove(at: array.endIndex-1)
            }
        }
       
    }
    let answer = array.reduce(0) { $0 + $1 }
    print("answer",answer)


}
