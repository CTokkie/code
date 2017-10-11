#include<iostream>
#include<string>


using namespace std;

int main()
{
	int grid[50];
	for (int x = 0; x < 50; x++)
	{
		grid[x] = 0;
	}
	int startX = rand() %46;
		for (int x = startX; x < startX+5; x++)
		{
			grid[x] = 5;
		}

		for (int x = 0; x < 50; x++)
		{
			if (grid[x] == 0)
			{
				cout << "~" ;
			}
			else
			{
				if (grid[x] == 5)
			
				cout << "C" ;
			}
		}


	system("pause");
}