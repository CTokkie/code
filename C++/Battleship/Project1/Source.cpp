#include<iostream>
#include<string>
#include<time.h>  //required for the rand() to work

using namespace std;

int main()
{
	int grid[50];  //declaring the size grid
	for (int x = 0 ; x < 50; x = x + 1)  //assigning array to a value of 0 of all locations
	{
		grid[x] = 0;
	}

	srand((unsigned int)time(NULL)); //required for the rand() to work

	int startX = rand() % 46;  // For Rand 


		for (int x = startX; x < startX + 5; x = x + 1)  //places ship
		{
			grid[x] = 5;
		}

		int ammo = 12; //starting ammo
		int hits = 0;  //hit counter will track when sunk

		while (ammo > 0 && hits < 5 )  //Main game oot begins here
		{
			
			for (int x = 0; x < 50; x = x + 1) // For loop display for game
			{
				if (grid[x] == 0) // Water Value
				{
					cout << "~ " ; //  Water display
				}
				else if (grid[x] == 5) // Carrier Value
				{
					cout << "C " ; // Carrier sign, change to ~
				}
				else if (grid[x] == -5) // Hit on Carrier
				{
					cout << "* " ;  // Note hit location on ship
				}
				else if (grid[x] == -1) // Missed shot
				{
					cout << "X " ; // Display missed shot
				}
			}
			cout << endl; 

			//begin fire sequence
			int shotX;
			cout << "Ammo remaing:  "  << ammo << endl;
			cout << "Take a shot:  ";
			cin >> shotX; //store the user shot coor in the variable
			ammo = ammo -1; //decreases ammo count
			if (grid[shotX] > 1)  // check if hit carrier
			{
				cout << "You hit a ship!" << endl;
				grid[shotX] = -1 * grid[shotX]; //register the "hit" by changing to -5
				hits = hits + 1; // increase the hit
			}
			else if (grid[shotX] == 0)
			{
				cout << "You missed!  " << endl;
				grid[shotX] = -1;   
			}
			else if (grid[shotX] < 0)
			{
				cout << "Just burning ammo?" << endl;
			}

	
		} // End of game loop

		if (hits < 5)
		{
			cout << "You lost"  << endl;
		}
		else
		{
			cout << "You sank my battleship" << endl;
		}

		for (int x = 0; x < 50; x = x + 1) // For loop display for game
			{
				if (grid[x] == 0) // Water Value
				{
					cout << "~ " ; //  Water display
				}
				else if (grid[x] == 5) // Carrier Value
				{
					cout << "C " ; // Carrier sign, change to ~
				}
				else if (grid[x] == -5) // Hit on Carrier
				{
					cout << "* " ;  // Note hit location on ship
				}
				else if (grid[x] == -1) // Missed shot
				{
					cout << "X " ; // Display missed shot
				}
			}
		cout <<  endl;
	system("pause");
}