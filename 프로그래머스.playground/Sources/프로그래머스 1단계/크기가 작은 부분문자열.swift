import Foundation

func solution크기가작은부분문자열(_ t:String, _ p:String) -> Int {
    
    var result: [Int] = []
    let tmap = t.map { String($0) }  // for문으로도 만들어보기
    
    for i in 0...tmap.count - p.count {
        var str = ""
        for j in 0..<p.count {
            str += tmap[i + j]
        }
        result.append(Int(str)!)
    }
    print(result)
    var res = 0
    for j in result {
        if j <= Int(p)! {
            res += 1
        }
    }
    
    return res
}

/*
 다른 풀이
 func solution(_ t:String, _ p:String) -> Int {
     
     
     var a1 = t.map { $0 }
     var b1: String = ""
     var result: Int = 0
     // t.count - p.count : 3
     //"1"0"2"0"3"
     for i in 0...t.count - p.count {
         
         // 한번씩 돌떄마다 초기화 시켜줘야함
         b1 = ""
         for j in 0..<p.count {
             b1 += String(a1[i+j])
         }
         
         print(b1)
         
         if Int(b1)! <= Int(p)! {
             result += 1
         }
         
     }
     return result
 }
 */
