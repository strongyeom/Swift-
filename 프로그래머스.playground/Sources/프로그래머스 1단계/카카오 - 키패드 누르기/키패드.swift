import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
  enum KeypadHand {
    case left
    case right
  }
  
  var result = ""
  var leftHand = 10 // 왼손이 누른 키패드 숫자를 저장할 변수 선언 (* = 10)
  var rightHand = 12 // 오른손이 누른 키패드 숫자를 저장할 변수 선언 (# = 12)
  
  for i in numbers {
    let number = i == 0 ? 11 : i // 키패드 숫자가 0일 경우 11로 바꿔준다
    var tapHand: KeypadHand = .left // 사용한 손을 저장할 변수 선언
    
    switch number {
    case 1, 4, 7:   // 1, 4, 7인 경우
      tapHand = .left
      
    case 3, 6, 9:   // 3, 6, 9인 경우
      tapHand = .right
      
    case 2, 5, 8, 11: // 2, 5, 8, 0인 경우
      let leftTemp = (number - leftHand).magnitude    // 눌러야 할 숫자와 왼손이 눌렀던 숫자의 차이 절대값
      let rightTemp = (number - rightHand).magnitude    // 눌러야 할 숫자와 오른손이 눌렀던 숫자의 차이 절대값
      
      let leftDistance = (leftTemp / 3) + (leftTemp % 3) // 왼손과 눌러야 할 숫자간의 거리
      let rightDistance = (rightTemp / 3) + (rightTemp % 3) // 오른손과 눌러야 하 숫자간의 거리
      
      if leftDistance == rightDistance { // 왼손과 오른손 거리값이 같은 경우
        tapHand = hand == "left" ? .left : .right  // 어느 손 잡이 인지에 따라 사용할 손 결정 됨
      } else {  // 그 외
        tapHand = leftDistance < rightDistance ? .left : .right  // 거리값이 작은 손으로 결정됨
      }
      
    default:
      break
    }
    
    // 선택된 손에 따라 결과 값 저장하고 누른 숫자 update해주기
    if tapHand == .left {
      result.append("L")
      leftHand = number
    } else {
      result.append("R")
      rightHand = number
    }
  }
  
  return result
} 


/*
 다른 풀이
 func solution(_ numbers:[Int], _ hand:String) -> String {
     //1, 4, 7은 왼손
     // 3, 6, 9는 오른손
     //2, 5, 8, 0은 가까운 손가락(거리가 같다면 오른손잡이는 오른손, 왼손잡이는 왼손)
     let left = [1, 4, 7]
     let right = [3, 6, 9]
     
     var result = ""
     
     //숫자 마다의 위치인덱스를 생성합니다.
     let numposition = [
         1: [0, 0], 2: [0, 1], 3: [0, 2],
         4: [1, 0], 5: [1, 1], 6: [1, 2],
         7: [2, 0], 8: [2, 1], 9: [2, 2],
                    0: [3, 1]
     ]
     
     //왼손과 오른손의 시작 위치는 다음과 같다
     var L = [3, 0]
     var R = [3, 2]
     
     for number in numbers {
         //왼손에 해당하는 숫자면 L과 왼손의 위치를 바꿔줌
         if left.contains(number){
             result += "L"
             L = numposition[number]!
             //오른손에 해당하는 숫자면 R과 오른손의 위치를 업데이트
         }else if right.contains(number){
             result += "R"
             R = numposition[number]!
         }else{
             //왼, 오른손과 타겟의 거리차이를 구하는데 행 열 1칸당 1이므로 행의 차이, 열의 차이를 더해줌
             let farL = abs(L[0] - numposition[number]![0]) + abs(L[1] - numposition[number]![1])
             let farR = abs(R[0] - numposition[number]![0]) + abs(R[1] - numposition[number]![1])
             
             //거리가 같을경우
             if farL == farR{
                 //오른손 잡이인경우 오른손이 움직이고 아닐경우 왼손이 움직임.
                 if hand == "right"{
                     result += "R"
                     R = numposition[number]!
                 }else{
                     result += "L"
                     L = numposition[number]!
                 }
                 //다를 경우 거리가 더 짧은 쪽이 움직임
             }else{
                 if farL < farR{
                     result += "L"
                     L = numposition[number]!
                 }else{
                     result += "R"
                     R = numposition[number]!
                 }
             }
         }
     }
     
     
     return result
 }
 */
