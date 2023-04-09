import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    
    let array: [String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    
    let days: [Int] = [31,29,31,30,31,30,31,31,30,31,30,31]
    
    var count = 0
    // a-1해준 이유 b가 주어지기 때문에 그전의 달까지 모두 합하고 이번달 일수를 더하면 됨
    for i in 0..<a-1 {
        count += days[i]
    }
    
    let dayIndex = (count + b)%7
    let result = array[dayIndex]
    return result
    
    /*
     var array: [String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
     
     var days: [Int] = [31,29,31,30,31,30,31,31,30,31,30,31]
     
     var dayIndex = days[0..<a-1].reduce(0) { $0 + $1 } % 7
     
     return array[dayIndex]
     */

}

/*
 2023.04.09 풀이

 func solution(_ a:Int, _ b:Int) -> String {
    
     // 1일이 금요일이니까
     var weeks: [String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
     
     // 1월 1일부터 더하자
     // 월이 1월 2월 일때 일수를 switch문으로 만들어주고 총 일수를 더하면?
     // 2월 3월 4월 5월 24일
     // 29 31 30 24 1 = 115
     // 몫: 16 나머지 : 3
     // 1월달의 요일 구하는 식을 만들어 보자
     
     /*
      1월 0일 : 목 1월 7일 1월 14일 1월 21일
      1월 1일 : 금 1월 8일 1월 15일 1월 22일
      1월 2일 : 토 1월 9일 1월 16일 1월 23일
      1월 3일 : 일 1월 10일 1월 17일 1월 24일
      1월 4일 : 월 1월 11일 1월 18일 1월 25일
      1월 5일 : 화 1월 12일 1월 19일 1월 26일
      1월 6일 : 수 1월 13일 1월 20일 1월 27일
      
      나머지가 0이면 목
      ...
      나머지가 6이면 수
      
      2016년 1월 25일 일때 요일은?
     
      b = 25
      b%7 = 4
      week[4] = "MON
      
      b = 31
      b%7 = 3
      week[3] = "SUN"
      
      31 + 29 + 30 + 31 + 24 = 145
      20 나머지 5
     */
     var days: Int = 0
     for i in 1..<a {
         switch i {
         case 1:
             days += 31
         case 2:
             days += 29
         case 3:
             days += 31
         case 4:
             days += 30
         case 5:
             days += 31
         case 6:
             days += 30
         case 7:
             days += 31
         case 8:
             days += 31
         case 9:
             days += 30
         case 10:
             days += 31
         case 11:
             days += 30
         case 12:
             days += 31
         default:
             break
         }
     }
     
     var a1 = days + b
     
     var result = ""
     result = weeks[a1%7]
     print(result)
     
     return ""
 }
 */
