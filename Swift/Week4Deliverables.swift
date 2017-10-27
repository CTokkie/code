func BubbleSortAscending(array: [Int]) -> [Int] {

	let numLength = array.count
	var temp:Int
	var array1 = [Int]()
	array1 = array

	for i in 0..<(numLength-1){
		for j in 0..<(numLength-i-1){
			if( array1[j]>array1[j+1]){
				temp = array1[j]
				array1[j] = array1[j+1]
				array1[j+1] = temp 
			}
		}
	}
	return array1
}

//Assessment A

func BubbleSortDecending(array: [Int]) -> [Int] {

	let numLength = array.count
	var temp:Int
	var array1 = [Int]()
	array1 = array

	for i in 0..<(numLength-1){
		for j in 0..<(numLength-i-1){
			if( array1[j]<array1[j+1]){
				temp = array1[j]
				array1[j] = array1[j+1]
				array1[j+1] = temp 
			}
		}
	}
	return array1
}


let assessmentAArray1:[Int] = [ 4, 8 , 2 , 13 , 47 , 99 , 13, 52 , 42, 1]

var assessementAArrayAnswer = BubbleSortDecending(array:assessmentAArray1)
print("Here's the orignal array")
print(assessmentAArray1)
print("Here's the  array sorted in decending order")
print(assessementAArrayAnswer)

//Assessment B



let assessmentBArray:[String] = ["Helen", "Sarah", "Aaron", "Allen", "Chris", "Zac", "David", "Madden"]

print("Here's the original array")
print(assessmentBArray)


let assessementBAnswer:[String] = assessmentBArray.sorted()

print("Here's array after being sorted ascending")
print(assessementBAnswer)


//Assement C

let Helen:[Int] = [100, 90 , 85 , 50, 100, 88 , 20, 92, 95 , 99]
print("Here is the Student's Helen's 10 test scores")
print(Helen)

print("Here is the Student's Helen's top 8 test scores")
print(Helen.sorted{$0 > $1}[0...7])