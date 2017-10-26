//Assement A

let term:Int = 50
var counter:Int = 0
var t1:Double = 0
var t2:Double = 1
var t3:Double = 0
var Fibonacci = [Double]()

while	( counter <= term )
	{
		
		t3 = t1 + t2
		Fibonacci.append (t3)
		t1 = t2
		t2 = t3 
		// print( "The Fibonacci Term \(counter) value is \(t3)")
		
		counter = counter + 1
	}
print (Fibonacci)
	
var goldenRatio = [Double]()

for i in 1..<(Fibonacci.count-1) {
	goldenRatio.append(Fibonacci[i+1]/Fibonacci[i])
}

print(goldenRatio)
// // var array:[Int] = [5, 15, 3, 7, -2]

// var num = Fibonacci.count
// print ("This is how many elements I have in my Fibonacci array \(num)")

// var goldenRatio = [Double]()

// goldenRatio.append(Fibonacci[num-1]/Fibonacci[num-2])

// var gold = goldenRatio.count
// print("Here's the Golden Ratio for the Fibonacci's \(num-1), \(goldenRatio[gold-1]) ")




//Assement B

var hoursWorked:[Double] = [40 , 35 , 30 , 28 , 20, 8]
var hourlyRate:[Double] = [3.50 , 20 , 42, 10.50 , 11.75, 22.22]
var taxPercentage:[Double] = [5 , 10, 25, 8.75, 15, 30]

var grossIncome = [Double]()
var netIncome = [Double]()

for i in 0..<hoursWorked.count {
	grossIncome.append(hoursWorked[i]*hoursWorked[i])
	netIncome.append(grossIncome[i]*(1 - taxPercentage[i]/100))
}
print("Here's my grossIncome array elements")
print(grossIncome)
print("Here's my netIncome array elements")
print(netIncome)


//Assement C

func ArrayCombiner(a1: [Int], a2: [Int]) -> [Int]
{

let c1 = a1.count
let c2 = a2.count
var Totalclass = [Int]()

for i in 0..<c1{
Totalclass.append(a1[i])
	}
for i in 0..<c2{
	Totalclass.append(a2[i])
}

return Totalclass
}

let class1:[Int] = [4, 5, 6]
let class2:[Int] = [1, 2, 3]

var giggles = [Int]()

 var classSize = ArrayCombiner (a1:class1, a2:class2)
 print(classSize)

 giggles.append(contentsOf: class2)
 giggles.append(contentsOf: class1)
 giggles.append(contentsOf: classSize)

print("Easier command merging arrays, arrayName1.append(contentsOf: arrayName2)")
 print(giggles)