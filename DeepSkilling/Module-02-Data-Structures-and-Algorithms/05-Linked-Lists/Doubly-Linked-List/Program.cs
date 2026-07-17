using System;

class Node
{
    public int Data;
    public Node Prev;
    public Node Next;

    public Node(int data)
    {
        Data = data;
        Prev = null;
        Next = null;
    }
}

class DoublyLinkedList
{
    Node head = null;

    // Insert at End
    public void Insert(int data)
    {
        Node newNode = new Node(data);

        if (head == null)
        {
            head = newNode;
            return;
        }

        Node temp = head;

        while (temp.Next != null)
            temp = temp.Next;

        temp.Next = newNode;
        newNode.Prev = temp;
    }

    // Display Forward
    public void DisplayForward()
    {
        Node temp = head;

        Console.Write("Forward: ");

        while (temp != null)
        {
            Console.Write(temp.Data + " <-> ");
            if (temp.Next == null)
                break;
            temp = temp.Next;
        }

        Console.WriteLine("NULL");
    }

    // Display Backward
    public void DisplayBackward()
    {
        Node temp = head;

        while (temp.Next != null)
            temp = temp.Next;

        Console.Write("Backward: ");

        while (temp != null)
        {
            Console.Write(temp.Data + " <-> ");
            temp = temp.Prev;
        }

        Console.WriteLine("NULL");
    }

    // Search
    public void Search(int key)
    {
        Node temp = head;

        while (temp != null)
        {
            if (temp.Data == key)
            {
                Console.WriteLine($"{key} found.");
                return;
            }

            temp = temp.Next;
        }

        Console.WriteLine($"{key} not found.");
    }

    // Delete
    public void Delete(int key)
    {
        Node temp = head;

        while (temp != null)
        {
            if (temp.Data == key)
            {
                if (temp.Prev != null)
                    temp.Prev.Next = temp.Next;
                else
                    head = temp.Next;

                if (temp.Next != null)
                    temp.Next.Prev = temp.Prev;

                return;
            }

            temp = temp.Next;
        }
    }
}

class Program
{
    static void Main()
    {
        DoublyLinkedList list = new DoublyLinkedList();

        list.Insert(10);
        list.Insert(20);
        list.Insert(30);
        list.Insert(40);

        list.DisplayForward();
        list.DisplayBackward();

        list.Search(30);

        list.Delete(20);

        Console.WriteLine("\nAfter Deletion:");

        list.DisplayForward();
    }
}