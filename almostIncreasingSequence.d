/*
   ven a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

   Example

   For sequence = [1, 3, 2, 1], the output should be
   almostIncreasingSequence(sequence) = false;

   There is no one element in this array that can be removed in order to get a strictly increasing sequence.

   For sequence = [1, 3, 2], the output should be
   almostIncreasingSequence(sequence) = true.

   You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

   Input/Output

   [time limit] 2000ms (d)
   [input] array.integer sequence

   Guaranteed constraints:
   2 ≤ sequence.length ≤ 105,
   -105 ≤ sequence[i] ≤ 105.

   [output] boolean

   Return true if it is possible to remove one element from the array in order to get a strictly increasing sequence, otherwise return false.

 */

bool almostIncreasingSequence(int[] sequence) {
	int len = cast(int)sequence.length;
	if(len <= 1)return true;
	if(len == 2 && sequence[0] < sequence[1])return true;
	int i = 0;
	int j = len - 1;
	while(i < len && j > 0)
	{
		if(sequence[i] < sequence[i+1]){
			i++;continue;
		}
		if(sequence[j] > sequence[j-1])
		{
			j--;continue;
		}
		if(i==j)return true;
		if(j-i < 2){
			if((i==0 || j==len-1 ))return true;
			if(sequence[i-1] < sequence[j])return true;
			if(sequence[i] < sequence[j+1])return true;
		}
		return false;
	}
	return false;
}
