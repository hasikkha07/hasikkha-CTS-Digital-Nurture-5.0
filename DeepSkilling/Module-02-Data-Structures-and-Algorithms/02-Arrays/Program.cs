using System;

class Program
{
    static void Main()
    {
        int[] numbers = { 10, 20, 30, 40, 50 };

        Console.WriteLine("Original Array:");

        // Traversal
        foreach (int num in numbers)
        {
            Console.Write(num + " ");
        }

        Console.WriteLine();

        // Searching
        int key = 30;
        bool found = false;

        foreach (int num in numbers)
        {
            if (num == key)
            {
                found = true;
                break;
            }
        }

        if (found)
            Console.WriteLine($"{key} found in the array.");
        else
            Console.WriteLine($"{key} not found.");
    }
}