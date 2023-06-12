import Foundation

func implementation2() {
    let T = Int(readLine()!)!

    for _ in 1...T {
        let k = Int(readLine()!)!
        let n = Int(readLine()!)!
        var arr = Array(repeating: Array(repeating: 0, count: n + 1), count: k + 1)
        print("arr",arr)
        for i in 0...k {
            for j in 0...n {
                if i == 0 {
                    arr[i][j] = j + 1
                    print("i: 0 일때 arr",arr)
                }else{
                    if j == 0 {
                        arr[i][j] = 1
                        print("i: 0, j: 0일때 arr",arr)
                    }else {
                        arr[i][j] = arr[i][j - 1] + arr[i - 1][j]
                        print("arr",arr)
                    }
                }
            }
        }

        print("\(arr[k][n - 1])")
    }
}

