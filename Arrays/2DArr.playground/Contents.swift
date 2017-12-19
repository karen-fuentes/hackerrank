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



//class Node {
//    var key: Int
//    var next: Node?
//    init(key: Int) {
//        self.key = key
//    }
//}
//struct Stack<Element> {
//
//    private var arr = [Element]()
//
//   mutating func push(input:Element) -> Void {
//    arr.append(input)
//
//    }
//
//    mutating func pop() -> Element? {
//
//        return arr.popLast()
//
//    }
//
//    mutating func peek() -> Element? {
//
//        return arr.last
//
//    }
//
//    var isEmpty: Bool {
//        return self.arr.count == 0
//    }
//
//}
class Node {
    var key: Int
    var next: Node?
    init(key: Int) {
        self.key = key
    }
}
func sumOfNodes(from node: Node) -> Int {
    
    var sum = 0
    
    while (node.next != nil) {
        
        sum += node.key
        
    }
    
    return sum
    
}


let nodeOne = Node(key: 3)
//nodeOne.next = Node(key: 3)
sumOfNodes(from: nodeOne)
struct Medium_031_Next_Permutation {
    static func reverseInPlace(nums: inout [Int], start: Int, end: Int) {
        if start > end {
            return
        }
        for i in start ... (start + end)/2 {
            nums.swapAt(i, start + end - i)
        }
    }
    static func nextPermutation(_ nums: inout [Int]) {
        let length: Int = nums.count
        if length < 2 {
            return
        }
        var index: Int = length - 1
        while index > 0 {
            if nums[index - 1] < nums[index] {
                break
            }
            index -= 1
        }
        if index == 0 {
            reverseInPlace(nums: &nums, start: 0, end: length - 1)
        } else {
            let value: Int = nums[index - 1]
            var i: Int = length - 1
            while i >= index {
                if nums[i] > value {
                    break
                }
                i -= 1
            }
            nums.swapAt(i, index-1)
            reverseInPlace(nums: &nums, start: index, end: length - 1)
        }
    }
}
