using System;

class Program
{
    // Linear Search
    static int LinearSearch(int[] arr, int key)
    {
        for (int i = 0; i < arr.Length; i++)
        {
            if (arr[i] == key)
                return i;
        }
        return -1;
    }

    // Binary Search
    static int BinarySearch(int[] arr, int key)
    {
        int left = 0;
        int right = arr.Length - 1;

        while (left <= right)
        {
            int mid = (left + right) / 2;

            if (arr[mid] == key)
                return mid;

            if (arr[mid] < key)
                left = mid + 1;
            else
                right = mid - 1;
        }

        return -1;
    }

    static void Main()
    {
        int[] numbers = { 10, 20, 30, 40, 50, 60, 70 };

        int key = 40;

        int linearResult = LinearSearch(numbers, key);
        int binaryResult = BinarySearch(numbers, key);

        Console.WriteLine("Linear Search:");
        if (linearResult != -1)
            Console.WriteLine($"{key} found at index {linearResult}");
        else
            Console.WriteLine("Element not found");

        Console.WriteLine();

        Console.WriteLine("Binary Search:");
        if (binaryResult != -1)
            Console.WriteLine($"{key} found at index {binaryResult}");
        else
            Console.WriteLine("Element not found");
    }
}