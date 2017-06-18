/*
   Given an array of strings, return another array containing all of its longest strings.

   Example

   For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be
   allLongestStrings(inputArray) = ["aba", "vcd", "aba"].

   Input/Output

   [time limit] 2000ms (d)
   [input] array.string inputArray

   A non-empty array.

   Guaranteed constraints:
   1 ≤ inputArray.length ≤ 10,
   1 ≤ inputArray[i].length ≤ 10.

   [output] array.string

   Array of the longest strings, stored in the same order as in the inputArray.
 */

import std.stdio;

string[] allLongestStrings(string[] inputArray) {
	if(inputArray.length <= 1)return inputArray;
	string[] ret;
	int len = cast(int)inputArray.length;
	for(int i=0;i<len;i++){
		if(i==0){
			ret ~= inputArray[0];
			continue;
		}
		if(inputArray[i].length > ret[0].length){
			ret = []; 
			ret ~= inputArray[i];
			continue;
		}
		if(inputArray[i].length == ret[0].length){
			ret ~= inputArray[i];
		}
	}
	return ret;
}
