//arrays
//init
var arVar = [1,2,3,4,5,6]
print("arVar: \(arVar)")

var arInt:[Int] = [1,2,3,4,5,6]
print("arInt: \(arInt)")

var arInt2 = [Int]()
print("arInt2: \(arInt2)")

var arFloat:[Float] = [Float](repeating: 3, count: 5)
print("arFloat: \(arFloat)")
//methods
arFloat += [34, 12]
arFloat.append(12);
var isEmpty = arFloat.isEmpty
var count = arFloat.count
print("is empty: \(isEmpty)   count: \(count)")
print("arFloat: \(arFloat)")
print("arFloat: \(arFloat[2])")
//iteration over aray
for (index, item) in arVar.enumerated() {
	print("index: \(index)   item: \(item)")
}

//set
var sett:Set = ["Almaty", "Astana", "Kizilorda"]
var setConst = Set<String>()
print("sett: \(sett)")
//methods
setConst.insert("surprise")
setConst.insert("mother")
setConst.insert("")
setConst.remove("mother")

// odds.union(evens)			//joins sets
// odds.intersection(evens)	//peresechenie
// odds.subtracting(primes)	//minus

var contains = setConst.contains("")
print("contains : \(contains)  setConst: \(setConst)")
print("setConst.sorted(): \(setConst.sorted())")

//Dictionary
var dic = [Int: String]()
var dic2 = [1:"one", 2:"two", 3: "three"]
var dic3 = Dictionary(uniqueKeysWithValues: zip(["Almaty", "Astana", "Kizilorda"], [12, 34, 45]))
//var response = Dictionary<String, Any>()
print("dic3: \(dic3)")
print("dic3: \(dic3.filter{$0.value > 12})")
print("dic3: \(dic3.filter{$0.key == "Almaty"})")
print("dic3: \(dic3["Almaty"])")
dic3.updateValue(6, forKey: "Almaty")
print("dic3: \(dic3)")
dic3["Almaty"] = 13
print("dic3: \(dic3)")
dic3.removeValue(forKey: "Almaty")
print("dic3: \(dic3)")

for (index, keyValue) in dic3.enumerated() {
	print("index: \(index) key : \(keyValue.key) value : \(keyValue.value)")
}

print("keys: \([String](dic3.keys))")
print("values: \([Int](dic3.values))")
print("count: \(dic3.count)")
print("count: \(dic3.isEmpty)")

//methods
func doIt (name: String) -> String {
	return name + " hello"
}
print(doIt(name: "vasya"))

func doIt2 (arra: [Int]) -> (large: Int, small: Int) {
	print(arra.count)
	var la = arra[0];
	var sm = arra[0];
	for i in arra[1..<arra.count] {
		print("i: \(i)")
		if (sm < i) {
			sm = i
		} else {
			la = i 
		}
	}
	return (la, sm)
}
var res = doIt2(arra: [40,12,-5,78,98])
print("min: \(res.large) max: \(res.small)")