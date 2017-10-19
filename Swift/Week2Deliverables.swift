

//Assignment - Part A

var	increment:Int = 0

while (increment < 11)
{
	print ("My increment is \(increment)")
	increment = increment + 1
}

//Assignment - Part B

var	cnt:Int = 0

while	(cnt > 0)
{
	print ("Hello world!")
}


//Assessment - Part A

func CalculateGrossIncome(hourlyRate:Double , NumHoursWorked:Double) -> Double 
{
	let amount:Double = hourlyRate * NumHoursWorked
	return amount	
}

var salary:Double = CalculateGrossIncome (hourlyRate:37.5 , NumHoursWorked:40)
print ("Your gross income on hourly rate is $\(salary)")

//Assessment - Part B

func CalculateNetIncome(hourlyRateNet:Double , NumHoursWorkedNet:Double , TaxPercentageNet:Double) -> Double 
{
	let temp:Double = CalculateGrossIncome( hourlyRate: hourlyRateNet, NumHoursWorked: NumHoursWorkedNet)
	let net:Double = temp * (1 - TaxPercentageNet / 100)
	return net		
}

var salaryNet:Double = CalculateNetIncome (hourlyRateNet: 37.5 , NumHoursWorkedNet: 40 ,TaxPercentageNet: 36)
print ("Your net income on hourly rate is $\(salaryNet)")

// Assessment - Part C

// func simulatedBankReturnOnInterest(  initalInvestment:Int , numberYears:Int, interestRate:Int , interestEarned:Int) -> Int
// {
	 
// 		for simulatedBankReturnOnInterest 1...numberYears 
// 			{
// 			(  interestEarned = initalInvestment + interestEarned ) * (1 + interestRate) / 100 
// 			}
			

// 	return initalInvestment:Int + interestEarned:Int
// }

// var feelsLikeThisDoneIncorrectly:Int = simulatedBankReturnOnInterest ( initalInvestment: 1000 , numberYears: 10 , interestRate: 20, InterestEarned: 0)
// print ( "Your total balance \(feelsLikeThisDoneIncorrectly)")


func FibonacciSequence(Rank:Double) -> Double 
{
	var term:Double = 5
	var counter:Double = 0
	var t1:Double = 1
	var t2:Double = 1
	var t3:Double = 0
	while	( counter <= term )
		{
			// if (term < 2)
			// {
			// 	term50 = 1
			
			// }
			// else if ( term < 3)
			// {
			// 	term50 = 2
			// 	break
			// }
			
			
			t3 = t1 + t2
			t1 = t2
			t2 = t3 
			term = t3

		

			counter = counter + 1
		}
	let result	= term
	return result	
}
var term50:Double = FibonacciSequence( Rank:50)

print("The fib number at the 50th position = \(term50)")