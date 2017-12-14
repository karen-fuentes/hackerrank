//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let arr = Array(repeating:Array(repeating: 0, count: 6), count: 6)

let testArr = [[1,1,1,0,0,0],
               [0,1,0,0,0,0],
               [1,1,1,0,0,0],
               [0,0,2,4,4,0],
               [0,0,0,2,0,0],
               [0,0,1,2,4,0]]

func maxSumHourGlass(_ input: [[Int]]) -> Int{
    var maxSum = -9 * 7
    for x in 0...3 {
        for y in 0...3{
            let top = input[x][y] + input[x][y+1] + input[x][y+2]
            let middle = input[x][y]
            let bottom = input[x+2][y] + input[x+2][y+1] + input[x+2][y+2]
            
            let sum = top + middle + bottom
            
            if sum > maxSum {
                maxSum = sum
            }
        }
    }
    return maxSum
}


maxSumHourGlass(testArr)
