import Foundation

func solution(_ X:String, _ Y:String) -> String {
    
    var answer: [Int] = []
    var arr = Array(repeating: 0, count: 10)
    print("arr: ",arr)
    
    var bb = X.map { Int(String($0))! }
    print("X의 map:",bb)
    
    for i in X.map({ Int(String($0))! }) {
        arr[i] += 1
    }
    
    print("arr의 배열:",arr)
    
    for j in Y.map({ Int(String($0))! }) {
        if arr[j] > 0 {
            answer.append(j)
            arr[j] -= 1
            print("arr[j]:",arr[j])
        }
    }
    print("answer배열:",answer)
    
    if answer.isEmpty {
        return "-1"
    }
    
    if answer.count == answer.filter({ $0 == 0 }).count {
        return "0"
    }
    
    return answer.sorted(by: >).map { String($0) }.joined()
    
}

/*
 var aa: [Int] = []
 
 for i in notPartner {
 aa.append(Int(String(i))!)
 }
 print(aa)
 
 
 if bb < 1 {
 return "0"
 }
 */

/*
 첫번째 실패 케이스
 import Foundation
 
 func solution(_ X:String, _ Y:String) -> String {
 
 
 // x,y의 짝꿍이 존재하지 않는다면 -1 즉, 포함되어 있지 않다면
 var notPartner = X.map { $0 }.filter { Y.contains($0)}
 if notPartner.isEmpty {
 return "-1"
 }
 
 // x,y의 짝꿍이 0 이라면
 var bb = notPartner.map { Int(String($0))! }.reduce(0,+)
 if bb < 1 {
 return "0"
 }
 
 // 탈락시키는 방법은 어떰??
 
 var cc: [String] = []
 var y = Y
 
 for i in X {
 if y.contains(String(i)) {
 if let number = y.firstIndex(of: i) {
 
 var result = y.remove(at: number)
 cc.append(String(result))
 }
 }
 }
 var finalResult = cc.sorted(by: >).joined()
 return finalResult
 }
 
 두번째 케이스
 func solution(_ X:String, _ Y:String) -> String {
 
 
 //    // x,y의 짝꿍이 존재하지 않는다면 -1 즉, 포함되어 있지 않다면
 //    var notPartner: [String] = X.map { String($0) }.filter { Y.contains($0)}
 //    print("notPartner :",notPartner)
 //    if notPartner.isEmpty {
 //        return "-1"
 //    } else if notPartner.count == notPartner.filter({ $0 == "0"}).count {
 //        return "0"
 //    }
 //    print(type(of: notPartner))
 //
 //    // x,y의 짝꿍이 0 이라면
 //    var bb = notPartner.map { Int($0)! }.reduce(0,+)
 //    if bb < 1 {
 //        return "0"
 //    }
 //    print("x와 y의 합계 : ",bb)
 
 
 // 탈락시키는 방법은 어떰??
 
 var cc: [String] = []
 var y = Y
 
 for i in X {
 if y.contains(String(i)) {
 if let number = y.firstIndex(of: i) {
 
 var result = y.remove(at: number)
 cc.append(String(result))
 }
 }
 }
 cc.sort(by: >)
 
 print(cc)
 
 if cc.isEmpty {
 return "-1"
 } else {
 if cc.count == cc.filter ({ $0 == "0"}).count {
 return "0"
 } else {
 return cc.joined()
 }
 }
 }
 
 let result = solution("100", "2345")
 print(result)
 */
