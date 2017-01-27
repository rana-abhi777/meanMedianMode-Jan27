import Foundation
// project made by using the mac os command line
let numArray = [2, 5, 7, 9, 9, 11, 13, 13]

//function for mean
func meanFinder(myArray: [Int]) -> Float {
    let count = myArray.count
    var sum = 0
    for element in myArray {
        sum += element
    }
    let mean = Float(sum) / Float(count)
    return mean
}

//function for median
func medianFinder(myArray: [Int]) -> Int{
    var count = myArray.count
    var median = 0
    if count % 2 == 0 {
        count /= 2
        median = (myArray[count - 1] + myArray[count]) / 2
    }
    else if count % 2 != 0 {
        count /= 2
        median = myArray[count]
    }
    return median
}

//function for mode
func modeFinder(myArray: [Int]) -> Int {
    var temp = 0, final = 0, myIndex = 0
    for index in 0..<myArray.count {
        for element in myArray {
            if myArray[index] == element {
                temp += 1
            }
        }
        if temp > final {
            final = temp
            temp = 0
            myIndex = index
        }
    }
    return myArray[myIndex]
}

print(meanFinder(myArray: numArray))
print(medianFinder(myArray: numArray))
print(modeFinder(myArray: numArray))










