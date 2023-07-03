import Foundation


func solution(_ s:String) -> Int{
    var exampleS: [String] = s.map { String($0)}
    var empty: [String] = []
    
    for i in 0..<exampleS.count {
        empty.append(exampleS[i])
        if empty.count > 1 {
            print(empty.count-1)
            print(empty.count-2)
            
            if empty[empty.count-2] == empty[empty.count-1] {
                empty.removeLast()
                empty.removeLast()
            }
           
        }
        print("empty",empty)
    }
    
    if empty.isEmpty {
        return 1
    } else {
        return 0
    }
}


let result = solution("cdcd")
print(result)

