func solution(_ food:[Int]) -> String {
    
    var result = ""
    
         for i in food.indices {
             result += String(repeating: String(i), count: food[i] / 2)
         }
         return result + "0" + result.reversed()
     
}
