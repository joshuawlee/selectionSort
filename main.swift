// Add your code below:
var unsortedArray = [String]()
while let line = readLine() {
    unsortedArray.append(line)
}

func lowercase(array: inout [String]) {
    for i in 0..<array.count {
        array[i] = array[i].lowercased()
    }
}
func swap(array: inout [String], firstIndex: Int, secondIndex: Int) {
    let swaps = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = swaps
}

func selectionSort(array: inout [String]) {
    lowercase(array: &array)
    for i in 0..<array.count {
        var min = i
        for x in i + 1..<array.count {
            if array[x] < array[min] {
                min = x
                
            }
        }
        
        swap(array: &array, firstIndex: i, secondIndex: min)
        
    }
    print(array)
}

selectionSort(array: &unsortedArray)
