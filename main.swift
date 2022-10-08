var array = [String]()// = unsortedIntegers

while let line = readLine() {
    array.append(line)
}

func swap(integers:inout [String], firstIndex: Int, secondIndex: Int){
    let heldValue = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = heldValue
}

func selectionSort(array:inout [String]){

    var smallest = 0
    for i in 0..<array.count-1{
        smallest = i
        var swaps = 0
        for j in i..<array.count {
            if (array[j] < array[smallest]){
                smallest = j
            }
        }

        swap(integers:&array, firstIndex:i, secondIndex:smallest)
    }
    
    
}

selectionSort(array: &array)

for string in array
{
    print(string)
}
