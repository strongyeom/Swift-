import Foundation

func solution(_ new_id:String) -> String {
    
    var id: String = new_id
    // 1단계
    id = id.lowercased()

    // 2단계
    var temp = ""
    for char in id {
        if char.isLetter || char.isNumber || char == "-" || char == "_" || char == "." {
            temp += String(char)
        }
    }
    
    id = temp
    
    // 3단계
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    
    // 4단계 - 1
    while id.hasPrefix(".") {
        id.removeFirst()
    }
    
    // 4단계 - 2
    while id.hasSuffix(".") {
        id.removeLast()
    }
    
    // 5단계
    if id.isEmpty {
        id = "a"
    }
    
    // 6 단계
    if id.count >= 16 {
        id = String(id.prefix(15))
        while id.last == "." {
            id.removeLast()
        }
    }
    
    while id.count <= 2 {
        id += String(id.last!)
    }
    
    return id
}
