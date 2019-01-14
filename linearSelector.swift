//import Foundation
class Params {

	var learningRate = 0.5;
	var levelUpRate = 0.1;
	var epsilon = 0.1;
	var rows = [Row]()
	var testRows = [Row]()
	
	init() {
		self.rows.append(Row(3.0, 1.0, "божья коровка"))
		self.rows.append(Row(1, 3, "гусеница"))

		self.testRows.append(Row(3.0, 1.0, ""))
		self.testRows.append(Row(0.5, 2.0, ""))
		self.testRows.append(Row(8.0, 2.0, ""))
	}
}

class Row {
	var width:  Double;
	var length: Double;
	var beetle: String;

	init(_ width: Double,_ length:  Double,_ beetle: String){
		self.width = width
		self.length = length
		self.beetle = beetle
		
	}
}

func getInputParams () -> Params {
	return Params()
}

func main () -> Int {
	print ("starting the programm ... ")
	print ("loadinginput params ... ")
	let params = getInputParams()
	print ("learningRate is \(params.learningRate)")
	print ("levelUpRate is \(params.levelUpRate)")
	print ("epsilon is \(params.epsilon)")
	for element in params.rows {
		print ("beetle is \(element.beetle)")
		print ("width is \(element.width)")
		print ("length is \(element.length)")
	}

	var k = Double.random(in: 0 ..< 1);
	print("random k is ", k)

	var y = k * params.rows[0].width
	var e = params.rows[0].length - y + params.levelUpRate
	var dk = params.learningRate * e / params.rows[0].width
	 
	print("y = \(k) * \(params.rows[0].width) = \(y)")
	print("e = \(params.rows[0].length) + \(params.levelUpRate) - \(y) = \(e)")
	print("dk = \(params.learningRate) * \(e) / \(params.rows[0].width) = \(dk)")
	print("k = \(dk) + \(k) = \(k + dk)")
	k = k + dk
	print("y = \(k) * \(params.rows[0].width) = \(k * params.rows[0].width)")

	var y2 = k * params.rows[1].width;
	print("y2 = \(k) * \(params.rows[1].width) = \(k * params.rows[1].width)")

	var e2 = params.rows[1].length - params.levelUpRate - y2
 	print("e2 = \(params.rows[1].length) - \(params.levelUpRate) - \(y2) = \(e2)")

	var dk2 = params.learningRate * e2 / params.rows[1].width
 	print("dk2 = \(params.learningRate) * \(e2) / \(params.rows[1].width) = \(dk2)")

	print("k2 = \(dk2) + \(k) = \(k + dk2)")
	k = k + dk2
	print("__________________________________________")

	print("k is  \(k)")

	for item in params.testRows {
		print("check")
		print("width is \(item.width)")
		print("length is \(item.length)")

		if (item.length / item.width < k) {
			print("божья коровка")
		} else {
			print("гусеница")
		}
	}

	return 4;
}

main() //enter point