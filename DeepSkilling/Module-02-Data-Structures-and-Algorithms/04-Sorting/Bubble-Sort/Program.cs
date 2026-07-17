using System;

class Program
{
    static void BubbleSort(int[] arr)
    {
        int n = arr.Length;

        for (int i = 0; i < n - 1; i++)
        {
            for (int j = 0; j < n - i - 1; j++)
            {
                if (arr[j] > arr[j + 1])
                {
                    // Swap
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }

    static void Main()
    {
        int[] numbers = { 64, 34, 25, 12, 22, 11, 90 };

        Console.WriteLine("Original Array:");
        foreach (int num in numbers)
            Console.Write(num + " ");

        BubbleSort(numbers);

        Console.WriteLine("\n\nSorted Array:");
        foreach (int num in numbers)
            Console.Write(num + " ");
    }
}