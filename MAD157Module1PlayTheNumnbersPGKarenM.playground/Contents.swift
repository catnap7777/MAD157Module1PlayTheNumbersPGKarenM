//import Cocoa

var str = "Hello, playground"

var variable1 = 71
var variable2 = 82
var variable3 = 93
var variable4 = 54
var variable5 = 25

let constant1 = 11
let constant2 = 22
let constant3 = 33
let constant4 = 44
let constant5 = 55

var array1 = [Int]()

array1.append(variable1)
array1.append(variable2)
array1.append(variable3)
array1.append(variable4)
array1.append(variable5)
array1.append(constant1)
array1.append(constant2)
array1.append(constant3)
array1.append(constant4)
array1.append(constant5)

var dictionary1: [String:Int] = [:]

dictionary1["var1  "] = variable1
dictionary1["var2  "] = variable2
dictionary1["var3  "] = variable3
dictionary1["var4  "] = variable4
dictionary1["var5  "] = variable5
dictionary1["const1"] = constant1
dictionary1["const2"] = constant2
dictionary1["const3"] = constant3
dictionary1["const4"] = constant4
dictionary1["const5"] = constant5

//.....................................................................................
func printSortArray() {
    
    print("\n*** Array Unsorted ***\n")
    for item in array1 {
        print("---> \(item)")
    }
    
    array1.sort(){ $0 < $1 }
    
    print("\n*** Array Sorted ***\n")
    for item in array1 {
        print("***> \(item)")
    }
    
}
//.....................................................................................
func printSortDictionary() {
    
    print("\n*** Dictionary Unsorted\n")
    for (k, v) in dictionary1 {
        print("key: \(k) \t\t value: \(v)")
    }
    
    let sortedDictionary1 = dictionary1.sorted(by: {$0.value < $1.value})
    
    print("\n*** Dictionary Sorted by Value\n")
    for (k, v) in sortedDictionary1 {
        print("key: \(k) \t\t value: \(v)")
    }
    
}
//.....................................................................................
func printMaxMin() {
    
    let maxValue = dictionary1.map { $1 }.max()!
    print("\nMaximum value in Dictionary = \(maxValue)")
    
    let minValue = dictionary1.map { $1 }.min()!
    print("\nMinimum value in Dictionary = \(minValue)")
    
}

//.....................................................................................

printSortArray()
printSortDictionary()
printMaxMin()

//***** Changing array values
variable1 = 999
variable2 = 348

for (item, index) in array1.enumerated() {
    if item == 71 || item == 82 {
        print("/nfound it")
        array1.remove(at: index)
    }
}
    
array1.append(variable1)
array1.append(variable2)

//***** Changing dictionary values
dictionary1["var1  "] = 999
dictionary1["var2  "] = 348

//***** Print everything out again with new values
print("\n................................................................................")
print("........................ Printing out with new values now ......................")
print("................................................................................\n")
printSortArray()
printSortDictionary()
printMaxMin()
