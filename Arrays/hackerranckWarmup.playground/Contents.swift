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

 print(abs(lDiagonalSum - rDiagonalSum))
