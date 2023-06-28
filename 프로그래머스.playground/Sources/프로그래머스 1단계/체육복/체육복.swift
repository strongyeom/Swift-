import Foundation

func solution체육복(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
  
    // 기본적으로 1벌씩 갖고 있음
    var students: [Int] = [Int](repeating: 1, count: n)
    // 체육복을 빌리지 못한 학생 수
    var count = 0
    
    
    // lost라면 0
    for i in lost {
        // 인덱스를 넣기위해서
        students[i-1] = 0
    }
    print(students)
    
    // 여벌 옷을 가져온 사람 + 1
    for j in reserve {
        students[j-1] += 1
    }
    print(students)
    
    for i in 0..<n {
        if students[i] == 0 {
            // 앞 번호 학생에게 빌리려면 해당 인덱스의 -1이 2일때만 가능하기 때문에 > 1 크다는 조건식
            // student[0]일때 에러발생하기 때문에 i>0 이라는 조건 추가
            if i>0 && students[i-1] > 1 {
                // 앞 번호 학생에게 빌린다.
                students[i] = 1
                students[i-1] = 1
                print("앞 번호 학생에게 빌린다 :",students)
                // 뒷 번호가 2일때 빌릴 수있도록 하는 조건
                // 뒷 번호이기 때문에 n-1번까지만 가능하다 i는 4일때 i<n-1 조건이 없으면 student[5]가 되기 때문에 에러 발생 4<5-1 조건을 생성해서 막아준다.
            } else if i<n-1 && students[i+1] > 1 {
                // 뒷 번호 학생에게 빌린다.
                students[i] = 1
                students[i+1] = 1
                print("뒤 번호 학생에게 빌린다 :",students)
                // 앞 뒤 2가 없을 경우
            } else {
                count += 1
                print("count:",count)
            }
        }
    }
    
    
    return n - count
}
