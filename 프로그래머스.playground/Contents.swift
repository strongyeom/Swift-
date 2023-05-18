import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    // 모든 달은 28일까지 있다고 가정합니다.
    
    
    // 일단 1달 2달 이렇게 주어지니, 1달은 28일로 계산
    
    // ex) 1월 1일 -> 2달 뒤.  3월 1일
    /*
     1 + 28 + 28
     
     28일때 몫을 달에 + 1, 나머지는 일수로
     
     
     */
    
    // 하나씩 비교 하고 일수가 28 넘어가면 달수 올려주고 달수가 12를 넘어가면 년수 올려주고 해서
    
    
    // 문자(A) 가 몇달인지 확인
    // 해당 문자가 있는 달력에 해당 년도에 달수 더하기
    // 달수를 더한 년도를 today와 비교
    // 년, 달, 일 이 년 먼저 비교하고 작으면 인덱스 추가, 같으면 다음 달 비교 작으면 인덱스 추가 같으면 continue 일수 비교 ...

    // 달수에 문자의 숫자를 더하고
    // 일수에 -1 을 해준 값을
    // 현재 날짜와 비교
    
    var today = today.components(separatedBy: ".").map { Int($0)! }
    var terms = terms.map { $0.components(separatedBy: " ") }
    
    print("today",today)
    print("terms",terms)
    
//    var aa = "2022.02.20 A".components(separatedBy: [".", " "])
//    var array: [Int] = []
//    if aa.contains("A") {
//        aa.remove(at: 3)
//
//        var bb = aa.map { Int($0)! }
//        print("Int버젼",bb)
//
//        bb[1] = bb[1] + 3
//        bb[2] -= 1
//
//        print("더한 버젼 ",bb)
//
//        if bb[1] > 12 {
//            bb[0] += 1
//            bb[1] -= 12
//        }
//
//        print("달수 12넘어갈때 버젼 ",bb)
//
//        if today[0] > bb[0] {
//            array.append(privacies.startIndex+1)
//        } else if today[1] > bb[1] {
//            array.append(privacies.startIndex+1)
//        } else if today[2] > bb[2] {
//            array.append(privacies.startIndex+1)
//        }
//        print("array",array)
//    }
    
    var answer: [Int] = []
    var finalArray : [Int] = []
    for i in privacies {
        
        // "2020.01.01",
        // ["Z 3", "D 5"],
        // ["2019.01.01 D", "2019.11.15 Z", "2019.08.02 D", "2019.07.01 D", "2018.12.28 Z"]
        print("privacies i", i)
        for j in terms {
            print("terms: j",j)
            if i.contains(j[0]) {
                var arrayI = i.components(separatedBy: [".", " "])
                arrayI.remove(at: 3)
                print("arrayI",arrayI)
                var result = arrayI.map{ Int($0)! }
                print("result",result)
                
                var count = result[1]+Int(j[1])!

                if count < 12 {
                    result[2] -= 1
                    print("더했을때 달이 12를 안넘어갈때: ",result)
                    
                    if result[2] == 0 {
                        result[1] += Int(j[1])!
                        result[2] = 28
                        print("일수가 0일때",result)
                    }
                } else if count > 12 {
                    print("달이 12를 넘어갈때: ",result)
                    result[2] -= 1
                   
                    if result[2] == 0 {
                        
                        result[0] += 1
                        result[1] -= 1
                        result[2] = 28
                        
                        print("일수가 0일때",result)
                        
                    } else {
                        result[0] += 1
                        result[1] -= 12
                        print("일수가 0아닐때 ",result)
                    }
                    
                } else {
                    result[2] -= 1
                    if result[2] == 0 {
                        result[1] -= 1
                        result[2] = 28
                        print("달이 12이고 일이 0일때",result)
                    }
                }
                
//                if result[2] == 0 {
//                    result[1] -= 1
//                    result[2] = 28
//
//
//                    print("일수가 0일때",result)
//                }
               // print("result",result)
                answer = result
            }
           
        }
        print("answer",answer)
        
        for k in 0..<today.count {
            if today[k] > answer[k] {
                if let number = privacies.firstIndex(of: i) {
                    finalArray.append(number+1)
                    print("finalArray",finalArray)
                    break
                }
            } else {
                continue
            }
        }
        
        
    }
    
    
    return finalArray
}


let result = solution("2020.01.01", ["Z 3", "D 5"], ["2019.01.01 D", "2019.11.15 Z", "2019.08.02 D", "2019.07.01 D", "2018.12.28 Z"])
print(result)
