func search(in array: [Int], for number: Int) -> Int{    
    // lower index
    var lowerIndex = 0
    // higher index
    var higherIndex = array.count - 1

    while lowerIndex <= higherIndex{

        let middleIndex = (lowerIndex + higherIndex) / 2

        if number > array[middleIndex]{
            lowerIndex = middleIndex + 1
        }else if number < array[middleIndex]{
            higherIndex = middleIndex - 1
        }else{
            return middleIndex
        }

    }

    return -1

}

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print(search(in: array, for: 4))
print(search(in: array, for: 12))