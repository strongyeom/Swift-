import Foundation

func findPrime(_ number: Int) -> [Int] {
    
    // count: number를 넣어봤습니다.
    var isPrime = Array(repeating: true, count: number)
    print(isPrime)
    
    // 소수를 담아줄 배열
    var primes: [Int] = []
    
    for i in 0..<number {
        
        if isPrime[i] == true {
            primes.append(i)
            for j in stride(from: i*i, through: number, by: i) {
                isPrime[j] = false
            }
        }
    }
    return primes
}

let result = findPrime(20)
print(result)



// i가 2일때
// [true, true, true, true, false, true, false, true, false, true, false, true, false, true, false, true, false, true, false, true, false]
// i가 3일때
// [true, true, true, true, false, true, false, true, false, false, false, true, false, true, false, false, false, true, false, true, false]
// i가 4일때
// [true, true, true, true, false, true, false, true, false, false, false, true, false, true, false, false, false, true, false, true, false]
