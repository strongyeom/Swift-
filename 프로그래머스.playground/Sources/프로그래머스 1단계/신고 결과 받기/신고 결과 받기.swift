import Foundation

func solution신고결과받기(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    // 값을 더할 때 필요한 결과값
    var count = Array(repeating: 0, count: id_list.count)
    print("count",count)
    
    var idx: [String:Int] = [:]
    // 해당 문자가 들어오면 count 인덱스 올려주기 위한 변수
    for (index, value) in id_list.enumerated() {
        idx[value] = index
    }
    print("idx",idx)
    
    // 신고당한 사람 key, 신고한 사람 value, 중복 값 제거를 위해 Set활용
    var dic: [String:Set<String>] = [:]
    
    for i in report {
        let components = i.components(separatedBy: " ")
        // 신고 한 사람
        let personSingoed = components[0]
        // 신고 당한사람
        let singo = components[1]
        
        if dic[singo] == nil {
            dic[singo] = [personSingoed]
        } else {
            dic[singo]?.insert(personSingoed)
        }
    }
    print("dic",dic)
    
    for j in dic {
        if j.value.count >= k {
            for z in j.value {
                count[idx[z]!] += 1
            }
        }
    }
    print("count",count)
    return count
    
}
/*
 코드 실행은 되지만 시간 초과로 인해 실패
 func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
     
     var id_list = id_list
     print("id_list",id_list)
     
     var report = report
     print("report",report)
     var result: [Int] = []
     
     var reportCom = Array(Set(report.map { $0.components(separatedBy: " ")}))
     print("reportCom",reportCom)
     print(type(of: reportCom))

     
     for i in id_list {
         var count = 0
         var empty: [String] = []
         for j in reportCom {
             if j[0].contains(i) {
                 
                 empty.append(j[1])
             }
            
             
         }
         print("\(i):",empty)
         
         for z in empty {
           
             for j in 0..<reportCom.count {
                 if z.contains(reportCom[j][1]) {
                     count += 1
                 }
             }
             print("count",count)
         }
         result.append(count/k)
         print("result",result)
         
     }
     return result
 }
 */

/*
 func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
     
     var reported_report: [String:Set<String>] = [:]
     var idIdx:[String:Int] = [:]
     var count = Array(repeating: 0, count: id_list.count)
     print("count",count)
     for (index,id) in id_list.enumerated() {
             idIdx[id] = index
     }
     print("idIdx",idIdx)
     
     for r in report {
         let split = r.split(separator: " ")
         // split 0번째 인덱스
         let report = String(split[0])
         // split 첫번째 인덱스
         let reported = String(split[1])

         if reported_report[reported] == nil {
             reported_report[reported] = [report]
         } else {
             reported_report[reported]!.insert(report)
         }
        
     }
     
     print("reported_report 최종 ",reported_report)
     
     for r in reported_report {
             if r.value.count >= k {
                 for i in r.value {
                     count[idIdx[i]!] += 1
                 }
             }
         }
     
     return count
 }
 */
