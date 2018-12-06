//variable declarations
var str:String = String("hello world");
var pi:Float = 3.1415914159;
var m:Int? = 3;
var n:Int!;

//constants
let const = 32;
print ("\(const)");
let constf:Float = 32;
print ("\(constf)");

//print 
print("print string \(str)")
print(pi)

//if statment
if true {
	print("print true")
}

//if
var res = (true) ? "true" : "false0";
print(res) 

//switch
var switchParam = "";
switch (switchParam) {
	case "one": print(1); break;
	case "two": print(2); break;
	default : print(-1);
}

//auto unwrap
var orig:String? = "sdsdd";
if let newString = orig {
	print(newString)
} else {
	print("nill")
}

//auto unwrap
var myString:String! = "Hello, Swift 4!"
if myString != nil {
   print(myString)
} else {
   print("myString has nil value")
}

//for in
var list = [12, 34, 54, 12, 32, 67, -45];
for index in list{
	print(index)
}

//for in
var listString:[String] = ["a", "b", "c", "d", "e", "f", "g"];
for index in listString{
	print(index)
}

//while
var iter = 0;
while iter < 10 {
	print("while not enoth \(iter)")
	iter += 1;
}

//repeat
var iter2 = 0; 
repeat{
	print("repeat not enoth \(iter2)")
	iter2 += 1;
} while (iter2 < 10)

//string operators
var strEx = String();
if strEx.isEmpty{
	print("isEmpty");
}
else {
	print("strEx");
}

//string modifying
strEx = "p" + " added";
print("before strEx \(strEx)");

//string legth
print(strEx.count)
if "dd" == "dd"{
	print("dd")
}
//iterating over array
for char in "helloworld"{
	print(char, terminator: "#")
}

var row = "row";
print(Int(row))
print(row.reversed())

print(row + "d")

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
var resp = doIt2(arra: [40,12,-5,78,98])
print("min: \(resp.large) max: \(resp.small)")



func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

//var mathFunction: (Int, Int) -> Int = addTwoInts

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)