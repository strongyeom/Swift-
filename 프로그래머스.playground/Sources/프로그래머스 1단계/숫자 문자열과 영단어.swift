import Foundation

func solution숫자문자열과영단어(_ s:String) -> Int {
    
    let arr: [String] = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    var str = s
    for i in 0..<arr.count {
        str = str.replacingOccurrences(of: arr[i], with: String(i))
    }
    return Int(str)!
}
