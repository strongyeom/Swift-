import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
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
