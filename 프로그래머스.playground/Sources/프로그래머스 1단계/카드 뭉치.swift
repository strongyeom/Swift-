import Foundation

func solution카드뭉치(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1, cards2 = cards2
 
    for s in goal{
        if !cards1.isEmpty && cards1[0] == s {
            cards1.removeFirst()
            print(cards1)
        }else if !cards2.isEmpty && cards2[0] == s {
            cards2.removeFirst()
            print(cards2)
        }else{
            return "No"
        }
    }
    return "Yes"
}
