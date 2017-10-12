
// // On the topi ofwhile loop

// var increment:Int = 0

// while( increment < 11)
// {
// 	print( "My  increment is \(increment)")
// 	increment = increment + 1
// }

// repeat
// {
// 	print ("While repeat-while is on \(increment)")
// 	increment = increment + 1
// }	while ( increment < 13)


func SayHello() {
	print("Hello")
}

func AddIntergers(i1:Int, i2:Int) -> Int {
	let output: Int = i1 + i2
	return output
}

// we store the reuslt prduce by addinteregers
// inside a vairable created out of the function itself

var outlet:Int = AddIntergers (i1:1, i2:2)
print ("\(outlet)")


