// swapping variables


// var a:Int	= 1
// var b:Int	= 2
// var temp:Int = 0

// temp = a
// a = b
// b = temp


// var peanutButter:Int = 1
// var jellyStrawberry:Int = 1
// var bread = 0

// while	( peanutButter + jellyStrawberry > cin )


func CalculateGrossIncome( hourlyRate:Float	, NumHoursWorked:Float) -> Float 
{
let Amount:Float = hourlyRate * NumHoursWorked
return Amount	
}

var salary:Float = CalculateGrossIncome(hourlyRate:37.5, NumHoursWorked:40)
print("Your gross income based on hourly rate is $\(salary)")