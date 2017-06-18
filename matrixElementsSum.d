/*
   After becoming famous, CodeBots decided to move to a new building and live together. The building is represented by a rectangular matrix of rooms, each cell containing an integer - the price of the room. Some rooms are free (their cost is 0), but that's probably because they are haunted, so all the bots are afraid of them. That is why any room that is free or is located anywhere below a free room in the same column is not considered suitable for the bots.

   Help the bots calculate the total price of all the rooms that are suitable for them.

   Example

   For

   matrix = [[0, 1, 1, 2], 
   [0, 5, 0, 0], 
   [2, 0, 3, 3]]
   the output should be
   matrixElementsSum(matrix) = 9.

   Here's the rooms matrix with unsuitable rooms marked with 'x':

   [[x, 1, 1, 2], 
   [x, 5, x, x], 
   [x, x, x, x]]
   Thus, the answer is 1 + 5 + 1 + 2 = 9.

   Input/Output

   [time limit] 2000ms (d)
   [input] array.array.integer matrix

   2-dimensional array of integers representing a rectangular matrix of the building.

   Guaranteed constraints:
   1 ≤ matrix.length ≤ 5,
   1 ≤ matrix[i].length ≤ 5,
   0 ≤ matrix[i][j] ≤ 10.

   [output] integer
 */

import std.stdio;

int matrixElementsSum(int[][] matrix) {
	int row = cast(int)matrix.length;
	int sum;
	for(int i = 0;i<matrix.length;i++)
	{
		for(int j=0;j<matrix[i].length;j++)
		{
			if(matrix[i][j] == 0){
				int tmp = i;
				while(tmp < row){
					matrix[tmp][j]=0;
					tmp++;
				}
			}
			sum += matrix[i][j];
		}
	}
	return sum;
}

