import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var todayTime = today.split(separator:".").map{Int($0)!}
    var termsArr = terms
    var priv = privacies
    var dict = [String: Int]()
    var result = [Int]()
    
    for i in 0..<terms.count {
        var arrs = terms[i].split(separator: " ").map{ String($0)}
        dict[arrs[0]] = Int(arrs[1])
    }
    
    for i in 0..<priv.count {
        var arr = priv[i].split(separator: " ").map{ String($0)}
        var date = arr[0].split(separator: ".").map{ Int($0)!}
        var term = dict[arr[1]]!
        
        date[1] += term
        if date[1] > 12 {
            if date[1] % 12 == 0 {
                date[0] = date[0] + date[1] / 12 - 1
            } else {
                date[0] = date[0] + date[1] / 12
            }
            while date[1] > 12 {
                date[1] -= 12
            }
        }
        if date[0] < todayTime[0] {
            result.append(i + 1)
            continue
        } else if date[0] == todayTime[0] {
            if date[1] < todayTime[1] {
                result.append(i + 1)
                continue
            } else if date[1] == todayTime[1] {
                if date[2] <= todayTime[2] {
                    result.append(i+1)
                    continue
                }
            }
        }
        

    }
    
    return result
}


let result = solution("2022.05.19", ["A 6", "B 12", "C 3"], ["2021.05.02 A", "2021.07.01 B", "2022.02.19 C", "2022.02.20 C"])
print(result)

