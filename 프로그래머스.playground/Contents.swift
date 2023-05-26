import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    
    var route = [[String]]()
    var start = [0,0]
    var dict = ["E": 1, "S": 1, "W": -1, "N": -1]
    
    for i in 0..<park.count {            // 공원을 2차원배열로 변경 및 시작점 찾기
        let arr = Array(park[i]).map{String($0)}
        print("arr",arr)
        if arr.contains("S") {
            start[0] = i
            for j in 0..<arr.count {
                if arr[j] == "S" {
                    start[1] = j
                }
            }
        }
        route.append(arr)
    }
    
    print("route",route)
    print("start",start)
    
    for i in 0..<routes.count {         //명령들 순회
        var arr = routes[i].split(separator: " ").map{ String($0)}
        var move = dict[arr[0]]! * Int(arr[1])!
        let rowIdx = route[0].count - 1
        let colIdx = route.count - 1
        var check = [String]()
        
        if arr[0] == "E" || arr[0] == "W" {
            var moved = start[1] + move
            if moved < 0 || moved > rowIdx {    // 움직였을때 맵 밖으로 나갔는지 확인
                continue
            }
            if arr[0] == "E" {                  // 움직인 범위의 배열 추출
                for j in start[1]...moved {
                check.append(route[start[0]][j])
                print("check",check)
                }
            } else {
                for j in moved...start[1] {
                check.append(route[start[0]][j])
                    print("check",check)
                }
            }
            if check.contains("X") {
                print("장애물 있으면 통과",check)// 장애물 있는지 확인
                continue
            } else {
                print("장애물 없다면 실행",check)
                start = [start[0], moved]
                print("start",start)
            }
        }
        
        if arr[0] == "S" || arr[0] == "N" {
            var moved = start[0] + move
            print("S,N moved",moved)
            if moved < 0 || moved > colIdx {    // 움직였을때 맵 밖으로 나갔는지 확인
                continue
            }
            if arr[0] == "S" {                  // 움직인 범위의 배열 추출
                for j in start[0]...moved {
                check.append(route[j][start[1]])
                    print("check",check)
                }
            } else {
                for j in moved...start[0] {
                check.append(route[j][start[1]])
                    print("check",check)
                }
            }
            if check.contains("X") {            // 장애물 있는지 확인
                print("장애물 있으면 통과",check)
                continue
            } else {
                start = [moved, start[1]]
                print("start",start)
            }
        }
        
    }
    
    return start
}

let result = solution(["SOO","OXX","OOO"],["E 2","S 2","W 1"])
print(result)

/*
 
 func solution(_ park:[String], _ routes:[String]) -> [Int] {
 
 
 var directionDicque = ["E": 0, "W": 0, "S": 0, "N": 0]
 // 딕셔너리로 만들자
 let routeCompo = routes.map { $0.components(separatedBy: " ")}
 print("routeCompo",routeCompo)
 
 var directionDic: [String:Int] = [:]
 
 for i in routes {
 let routeCompo = i.components(separatedBy: " ")
 var op = routeCompo[0]
 var n = Int(routeCompo[1])!
 
 if directionDic[op] == nil {
 directionDic[op] = n
 } else {
 directionDic[op] = directionDic[op]! + n
 }
 }
 print("directionDic",directionDic)
 
 for o in directionDic {
 
 directionDicque[o.key] = o.value
 }
 print("directionDicque",directionDicque)
 
 
 
 
 // 담아둘 배열
 var startPoint = [0,0]
 var xPoint = [0,0]
 var xPostion : [[Int]] = []
 for j in 0..<park.count {
 // start 포인트 구하는 시점
 if park[j].contains("S") {
 
 for (index,k) in park[j].enumerated() {
 if String(k) == "S" {
 startPoint[1] = index
 }
 }
 }
 // ["OOS","OXX","OOO","OOO"]
 if park[j].contains("X") {
 xPoint[0] = j
 for (index,z) in park[j].enumerated() {
 if String(z) == "X" {
 xPoint[1] = index
 xPostion.append(xPoint)
 }
 }
 }
 }
 print("startPoint",startPoint)
 print("xPoint",xPoint)
 print("xPostion",xPostion)
 
 
 for t in directionDicque{
 switch t.key {
 case "N":
 startPoint[0] -= t.value
 //            if startPoint[0] >= park.first!.count {
 //                startPoint[0] = 0
 //            } else if startPoint[0] < 0 {
 //                startPoint[0] = 0
 //            }
 case "W":
 startPoint[1] -= t.value
 //            if startPoint[0] >= park.first!.count {
 //                startPoint[0] = 0
 //            } else if startPoint[0] < 0 {
 //                startPoint[0] = 0
 //            }
 case "S":
 startPoint[0] += t.value
 //            if startPoint[0] >= park.first!.count {
 //                startPoint[0] = 0
 //            } else if startPoint[0] < 0 {
 //                startPoint[0] = 0
 //            }
 case "E":
 startPoint[1] += t.value
 //            if startPoint[0] >= park.first!.count {
 //                startPoint[0] = 0
 //            } else if startPoint[0] < 0 {
 //                startPoint[0] = 0
 //            }
 default:
 break
 }
 }
 
 if startPoint[0] > park.first!.count {
 startPoint[0] = 0
 } else if startPoint[0] < 0 {
 startPoint[0] = 0
 }
 
 print("startPoint결과",startPoint)
 
 // 명령 무시 조건
 // 1. 이동할 때 공원을 벗어날때
 // 2. 이동할때 장애물을 만나는지
 
 // 결과물
 var result: [Int] = [0,0]
 var qq: [Int] = []
 var aa = 0
 var bb = 0
 for q in xPostion {
 
 
 aa += q[0]
 bb += q[1]
 
 qq = [aa,bb]
 }
 print("qq",qq)
 
 if xPostion.isEmpty {
 result = startPoint
 print("xPostion.isEmpty",result)
 } else {
 for l in 0..<startPoint.count {
 if startPoint[l] >= qq[l] {
 result[l] = 0
 } else {
 result[l] = startPoint[l]
 }
 }
 print("xPostion 있다면",result)
 }
 
 
 
 
 return result
 }
 */
