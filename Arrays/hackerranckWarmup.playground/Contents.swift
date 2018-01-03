//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// diagonal difference
 let arr = [[1,2,5], [1,3,4], [2,4,5]]
var lDiagonalSum = 0
var rDiagonalSum = 0
let n = 3

for index in 0..<arr.count {
    lDiagonalSum += arr[index][index]
    //print(lDiagonalSum)
    rDiagonalSum += arr[index][n-index-1]
   // print(rDiagonalSum)
}

// print(abs(lDiagonalSum - rDiagonalSum))


// percentage of positive negative and zero elements in arr
let numberArr = [-4, 3 ,-9 ,0 ,4 ,1]
var positiveNumbCounter = 0.0
var negativeNumbCounter = 0.0
var zeroCounter = 0.0


for i in 0..<numberArr.count {
    if numberArr[i] == 0 {
        //print("number is zero at index: \(i) and has a value of:\(numberArr[i])")
        zeroCounter += 1
    }else if numberArr[i] > 0 {
        positiveNumbCounter += 1
    }else {
        negativeNumbCounter += 1
    }

        
}

print("""
    \(positiveNumbCounter/Double(numberArr.count))
    \(negativeNumbCounter/Double(numberArr.count))
    \(zeroCounter/Double(numberArr.count))
""")

// printing hashtag staircase
var hash = "#"
for i in 0..<4 {

    let spaces = (String(repeatElement(" ", count: 4-i-1)))
    print(spaces + hash)
    hash += "#"
}
