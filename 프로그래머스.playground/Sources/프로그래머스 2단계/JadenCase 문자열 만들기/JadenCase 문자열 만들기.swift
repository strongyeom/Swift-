import Foundation

func solutionJadenCase문자열(_ s:String) -> String {
    
    // 반복문을 사용하여 " " 를 확인하고, 앞 문자를 대문자로 만들어주기
    var result: String = ""
    
    //👉 첫번째만 대문자를 만들어줘야 되기 때문에, 분별할 수있게 설정, true, false로도 설정 가능
    var count = 0
    for i in s {
      
        if i != " " {
            if count == 0 {
                result += String(i).uppercased()
            } else {
                result += String(i).lowercased()
            }
          count += 1
            
        } else {
            count = 0
            result += " "
        }
    }
    
    print("result",result)
    return ""
}
let result = solution("3people unFollowed me")
