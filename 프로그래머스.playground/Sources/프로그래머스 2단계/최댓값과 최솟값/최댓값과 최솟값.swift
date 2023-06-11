import Foundation

func solution최댓값과최솟값(_ s:String) -> String {
    
    // 문자열로 되어있는 것을 Int배열로 바꿔주기
    let sArray: [Int] = s.components(separatedBy: " ").map { Int(String($0))! }
    print("sArray",sArray)
    print(type(of: sArray))
    // 👉sort를 사용하여 정렬을 한다음 sArray[0] + " " + sArray[count-1]을 하면 쉽게 구할 수있음
    
    // 최댓값과 최솟값 구하기
    let min = sArray.min()!
    let max = sArray.max()!
    
    let arrayResult : [String] = [String(min), String(max)]
    let result = arrayResult.joined(separator: " ")
    print("result",result)
    return ""
}
