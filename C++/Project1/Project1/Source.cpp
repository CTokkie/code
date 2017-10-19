#include<iostream>
#include<string>
#include<time.h>

using namespace std;

void DisplayGrid(int grid[10][10], bool endOfGame)
{
	//Now displace for the whole grid
		cout << "  ";  // for display spacing
		for (int x = 0; x < 10; x = x + 1)
		{
			cout << x << " "; //output X-cord
		}
		cout << endl;

		for ( int y = 0; y < 10;  y = y + 1)
		{
			cout << y << " "; // output Y-cord	

			for ( int x = 0; x < 10; x = x + 1)
			{
				if(grid[x][y] == 0)
				{
					cout << "~ ";
				}
				else if (grid[x][y] > 1)
				{
					if (endOfGame == true)
					{
					cout << grid[x][y] << " ";  //reveal the ship at the end of game
					}
					else
					{
						cout << "~ "; // hides the ship during the game
					}
				}
				else if (grid[x][y] < -1)
				{
					cout << "* ";
				}
				else if (grid[x][y] == -1)
				{
					cout << "X ";
				}
			}
			cout << endl;
		}
}

void ShipPlacement(int shipSize , int grid[10][10])
{

srand((unsigned int)time(NULL));
		
	bool collided = true;
	int startX, startY, dir;
	while (collided == true)
	{
		collided = false;  //assume it fits unless told otherwise...
		 dir = rand () % 2; //determine direction first ( 0 = horizonetal , 1 = vertical )

		 if(dir == 0)
			{
		
				 startX = rand() % (11 - shipSize);
				 startY = rand() % 10;
			
				for (int x = startX; x < startX + shipSize; x = x + 1) 
				{
					if( grid[x][startY] > 0) // checks for collision
					{
						collided = true;
					}
				}

				//ship placement
				for (int x = startX; x < startX + shipSize; x = x + 1)
				{
					grid[x][startY] = shipSize; // places ship
				}
			}

			else
			{
				 startX = rand() % 10;
				 startY = rand() % (11 - shipSize);
				for (int y = startY; y < startY + shipSize; y = y + 1)
				{
					if (grid[startX][y] > 0)
					{
						collided = true;
					}
				}
			}

		 

	}

			if(dir == 0)
			{
		
				for (int x = startX; x < startX + shipSize; x = x + 1) 
				{
					grid[x][startY] = shipSize;
				}

				//ship placement
				for (int x = startX; x < startX + shipSize; x = x + 1)
				{
					grid[x][startY] = shipSize; // places ship
				}
			}

			else
			{
				 startX = rand() % 10;
				 startY = rand() % (11 - shipSize);
				for (int y = startY; y < startY + shipSize; y = y + 1)
				{
					grid[startX][y] = shipSize;
				}
			}
	}



int main()	
{
	int grid[10][10];

	for (int y = 0; y < 10; y = y + 1)
	{
		for (int x = 0; x < 10; x = x + 1)
		{
			grid[x][y] = 0;
		}
	}

	ShipPlacement(5,grid);
	ShipPlacement (4,grid);
	ShipPlacement (3,grid);
	ShipPlacement (2,grid);
		

	int ammo = 25; // Starting ammo
	int hits = 0; //Starting  hit

	while (ammo > 0 && hits <5 )
	{
		
		DisplayGrid(grid, true);
			
		
		
		int shotX, shotY;
		
		cout << endl << "Ammo remaining:  " << ammo << endl;
		cout << "Take a shot(X Y):  ";
		cin >> shotX >> shotY;
		cout << endl;
		ammo = ammo -1; 

		if (grid[shotX][shotY] > 1)
		{
			cout << "You hit a ship!" << endl;
			grid[shotX][shotY] = -1 * grid[shotX][shotY];
			hits = hits + 1;
				if ( hits == 1) // Bonus rounds for first hit on a ship, awarded only once
				{
					cout << "Bonus rounds" << endl << endl;
					ammo = ammo + 2; // adds number of bonus rounds
				}
		}
		else if (grid[shotX][shotY] == 0 )
		{
			cout << "You missed!  " << endl << endl;
			grid[shotX][shotY] = -1;
		}
		else if (grid[shotX][shotY] < 0)
		{
			cout << "Just wasting ammo?" << endl << endl;
		}


	} // End of game loop

	if (hits < 5)
	{
		cout << "You lost, better luck next time! :(" << endl << endl;
	}
	else
	{
		cout << "You won!" << endl << endl;
	}	

	DisplayGrid (grid , true);

	system("pause");
}