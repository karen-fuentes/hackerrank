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
    var maxSum = Int.min
    for x in 0...3 {
        for y in 0...3{
            let top = input[x][y] + input[x][y+1] + input[x][y+2]
            let middle = input[x][y]
            let bottom = input[x+2][y] + input[x+2][y+1] + input[x+2][y+2]

            let sum = top + middle + bottom
            maxSum = max(maxSum, sum)
        }
    }
    return maxSum
}



//maxSumHourGlass(testArr)
var square =
    
    [[1,2,3],
     
     [4,5,6],
     
     [7,8,9]]



//func sumOfSquare(of arr: [[Int]]) -> Int {
//
//    var sum = 0
//
//    for x in 0..<arr.count {
//        for y in 0..<arr[x].count {
//            if (x,y) != (0,0) && (x,y) != (0,arr.count-1) && (x,y) != (arr.count-1,0) && (x,y) != (arr.count-1,arr.count-1) {
//
//                sum += arr[x][y]
//                print(arr[x][y])
//
//            }
//
//        }
//
//    }
//    return sum
//}





//the sum of an array elements
func sumOfElements( n: Int , arr: [Int]) -> Int {
    var sum = 0
    for i in 0..<n {
        sum += arr[i]
    }
    return sum
}


//compare triplets problem

// MAX THREE NUMBER PRODUCT
func maximumProduct(_ nums: [Int]) -> Int {
    
    var largest = Int.min
    var secondLargest = Int.min
    var thirdLargest = Int.min
    var smallest = Int.max
    var secondSmallest = Int.max
    
    for numb in nums {
        
        if numb > largest {
            thirdLargest = secondLargest
            secondLargest = largest
            largest = numb
        }else if numb > secondLargest {
            thirdLargest = secondLargest
            secondLargest = numb
        }else if numb > thirdLargest{
            thirdLargest = numb
        }
        
        if numb < smallest {
            secondSmallest = smallest
            smallest = numb
        } else if numb < secondSmallest {
            secondSmallest = numb
        }
    }
    return max( (largest * secondLargest * thirdLargest) , (largest * secondSmallest * smallest))
}
//PANGRAM
func pangram(_ str: String) -> Bool {
    var set = Set<Character>()
    
    for c in str.lowercased() {
        if CharacterSet.lowercaseLetters.contains(UnicodeScalar(String(c))!) {
            set.insert(c)
        }
    }
    
    return set.count == 26
}
