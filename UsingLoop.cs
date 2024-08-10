using System;
using System.Collections.Generic;

class UsingLoop
{
    static void Main()
    {
        //prompt the user to enter a list of intergers
        Console.WriteLine("Type in a list of integers, separated by commas:");
        //remove the unwanted spaces and store the entered string in the enteredNumbers string variable
        string enteredNumbers = Console.ReadLine().Replace(" ", "");
        //HashSet stores only distinct items it does not contain duplicates so this helps in removing the duplicate
        var uniqueNumbers = new HashSet<int>();
        // we loop through the uniqueNumbers spliting the string into substrings
        foreach (var number in enteredNumbers.Split(','))
        {
            //Here we try to convert the substrings to integers and store them in a list named uniqueNumbers
            if (int.TryParse(number, out int parsedNumber))
            {
                uniqueNumbers.Add(parsedNumber);
            }
            else
            { //the else statement gets executed if there are substrings that cannot be converted to integers for example letters and unsupported characters
                Console.WriteLine($"'{number}' is not a valid integer.");
            }
        }

        var sortedNumbers = new List<int>(uniqueNumbers);
        //sorting the converted integers in the list from largest to smallest
        sortedNumbers.Sort((a, b) => b.CompareTo(a));

        Console.WriteLine("Sorted list in descending order:");
        Console.WriteLine( sortedNumbers);
    }
}

//Time Complexity: O(n log n)
//The most expensive operation is sorting, which is O(n log n).
//Space Complexity: O(n)
//The space used is proportional to the number of unique integers stored in the HashSet and then the list.