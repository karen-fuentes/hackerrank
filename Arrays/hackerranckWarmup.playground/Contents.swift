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

//print("""
//    \(positiveNumbCounter/Double(numberArr.count))
//    \(negativeNumbCounter/Double(numberArr.count))
//    \(zeroCounter/Double(numberArr.count))
//""")

// printing hashtag staircase
var hash = "#"
let n2 = 3
for i in 0..<n {

    let _ = (String(repeatElement(" ", count: n2-i-1)))
   // print(spaces + hash)
    hash += "#"
}


// mini max sum
let numbArr = [1,2,3,4,5]
var largestElement = Int.min
var smallestElement = Int.max
var totalSum = 0

for i in 0..<numbArr.count {
    totalSum += numbArr[i]
    if numberArr[i] > largestElement {
        largestElement = numbArr[i]
    }
    if numbArr[i] < smallestElement {
        smallestElement = numbArr[i]
    }
}

//print(totalSum - largestElement, totalSum - smallestElement)

//// candles
let arrCandle = [3,2,1,3]
//let numbers = readLine()!.components(separatedBy: " ").map{ Int($0) }
let maxNumber = arrCandle.max()
let occurrences = arrCandle.filter { $0 == maxNumber }
//print(occurrences.count)


var input = "12:45:54PM"
var s = "hello:bob:how"
//s.split(separator: {$0 == ":"}).map(String.init)
let q = s.split{$0 == ":"}.map(String.init)
print(q)


let amPmSliceEnd = input.endIndex
let amPmSliceStart = input.index(amPmSliceEnd, offsetBy: -2)
    //amPmSliceEnd.advancedBy(-2)
let amPm = input[amPmSliceStart..<amPmSliceEnd]
var time = input[input.startIndex..<amPmSliceStart]
var hrsMinSecArray = time.split{$0 == ":"}.map(String.init)
print(hrsMinSecArray)
var hr = hrsMinSecArray[hrsMinSecArray.startIndex]
var hrInt: Int = Int(hr)!

if amPm == "PM" && hrInt != 12 {
    hrInt += 12
    hrsMinSecArray[0] = String(hrInt)
    time = hrsMinSecArray[0] + ":" + hrsMinSecArray[1] + ":" + hrsMinSecArray[2]
} else if amPm == "AM" && hrInt == 12 {
    hrsMinSecArray[0] = "00"
    time = hrsMinSecArray[0] + ":" + hrsMinSecArray[1] + ":" + hrsMinSecArray[2]
}


print(time)
//let trimmedInput = input[input.startIndex...input.index(input.endIndex, offsetBy: -3)]
//print(trimmedInput)

