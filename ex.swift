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

//function with optioanal return type
func optionall(a :Int, b :Int) -> (a: Int, b: Int)?{
	return (a, b)
}

var respon = optionall(a:2, b:4);
print(respon)//prints optional

//lyambda
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

//var mathFunction: (Int, Int) -> Int = addTwoInts

func printMathResult(_ mathFunction: (Int, Int) -> Int) {
	var a = 2;
	var b = 3;
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts)

//inout
var a = 3;
var b = 2;
func swap(_ a: inout Int, _ b: inout Int) {
	let reg = a;
	a = b;
	b = reg;	
}

print("a: \(a) + b: \(b)")
swap(&a, &b)
print("a: \(a) + b: \(b)")

//lyamda sort//Closures
func order (_ a :Int, b :Int) -> Bool{
	return a > b;
}
let array = [2,4,7,2,5,7,3,5,8,9,3,6,2,1]; 
print("sorted1: \(array.sorted(by: order))")

print("sorted2: \(array.sorted(by: {(a :Int, b :Int) -> Bool in return a > b}))")


<<<<<<< HEAD
var opt = Int(row)

print("Int(row) = ", opt)



func quickSort(_ A: inout [Int], _ left:Int, _ right:Int){

	if(right - left <= 0 ){
		return;
	}
	else {
		print("-----------------------")
		print("A= ", A)

		print("hello there", left, right)
		var pivot:Int = A[right]
		var pivotIndex:Int = partition(&A, left, right, pivot);
		print("pivotIndex: ", pivotIndex)


		quickSort(&A, left, pivotIndex - 1)
		quickSort(&A, pivotIndex + 1, right)
	}
	//quickSort(arInt, )	
}


func partition(_ A: inout [Int], _ left:Int, _ right:Int, _ pivot:Int) -> Int {
	
	var leftTemp = left - 1;
	var rightTemp = right;

	while true {
	
		while(A[++leftTemp] < pivot){}

		while(A[--rightTemp] > pivot && rightTemp > 0){}


		if(leftTemp >= rightTemp){
			break;
		} else {
			print("2 swap(\(leftTemp),\(rightTemp))")
			swap(&A, leftTemp, rightTemp)

		}


	print("A= ", A)
	}

	print("1 swap(\(leftTemp),\(right))")
	swap(&A, leftTemp, right)

	return leftTemp;
}

prefix operator ++
prefix operator --

extension Int {
	prefix static func ++(_ val: inout Int) -> Int {
		val += 1
		return val;
	}
}


extension Int {
	prefix static func --(_ val: inout Int) -> Int {
		val -= 1
		return val;
	}
}


func swap(_ A: inout [Int], _ ind1:Int, _ ind2:Int){
	let temp = A[ind1];
	A[ind1] = A[ind2];
	A[ind2] = temp;
}

print("----quickSort-implementation-----")
var quickSortArray = [3,7,4,2,5];
quickSort(&quickSortArray, 0, quickSortArray.count-1)
print("quickSortArray= ", quickSortArray)

//---	swift enums  --------



enum CardType{

	case DEBET
	case CREDIT
	case VIRTUAL
	case DEFAULT

}

var en = CardType.DEBET;
print(en)



switch en {

	case .DEBET: print(en)
	case .CREDIT: print(en)

	default : print ("default \(en)")
	
}


//------swift - struct - class 



struct Structure {

	var name:String;
	init(name:String) {
		self.name = name;
	}	
}


class Class {

	var name:String;	
	init(name:String) {
		self.name = name;
	}
}

var struc = Structure(name:"Structure");
var cl  = Class(name:"Class");



print(struc)
print(cl)

func dooo (_ va: Class) {

	va.name = "ddd";
}



