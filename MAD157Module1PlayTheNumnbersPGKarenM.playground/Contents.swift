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

print("*** Array Unsorted ***\n")
for item in array1 {
    print("---> \(item)")
}

array1.sort(){ $0 < $1 }

print("\n*** Array Sorted ***\n")
for item in array1 {
    print("***> \(item)")
}

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

print("\n*** Dictionary Unsorted\n")
for (k, v) in dictionary1 {
    print("key: \(k) \t\t value: \(v)")
}

//et sortedMovieDictionary = movieDictionary.sorted(by: {$0.value.movieName < $1.value.movieName})
let sortedDictionary1 = dictionary1.sorted(by: {$0.value < $1.value})

print("\n*** Dictionary Sorted by Value\n")
for (k, v) in sortedDictionary1 {
    print("key: \(k) \t\t value: \(v)")
}

let maxValue = sortedDictionary1.map { $1 }.max()!
print("\nMaximum value in Dictionary = \(maxValue)")

let minValue = sortedDictionary1.map { $1 }.min()!
print("\nMinimum value in Dictionary = \(minValue)")

