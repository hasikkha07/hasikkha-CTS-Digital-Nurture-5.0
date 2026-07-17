using System;

class Program
{
    // Recursive Function
    static int Factorial(int n)
    {
        if (n == 0 || n == 1)
            return 1;

        return n * Factorial(n - 1);
    }

    static void Main()
    {
        int[] numbers = { 10, 20, 30, 40, 50 };

        Console.WriteLine("Array Traversal:");

        // Iterative Algorithm
        for (int i = 0; i < numbers.Length; i++)
        {
            Console.Write(numbers[i] + " ");
        }

        Console.WriteLine();

        int n = 5;
        Console.WriteLine($"Factorial of {n} = {Factorial(n)}");
    }
}