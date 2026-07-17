using System;

class Node
{
    public int Data;
    public Node Next;

    public Node(int data)
    {
        Data = data;
        Next = null;
    }
}

class SinglyLinkedList
{
    Node head;

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
    }

    // Display List
    public void Display()
    {
        Node temp = head;

        while (temp != null)
        {
            Console.Write(temp.Data + " -> ");
            temp = temp.Next;
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
        if (head == null)
            return;

        if (head.Data == key)
        {
            head = head.Next;
            return;
        }

        Node temp = head;

        while (temp.Next != null && temp.Next.Data != key)
            temp = temp.Next;

        if (temp.Next != null)
            temp.Next = temp.Next.Next;
    }
}

class Program
{
    static void Main()
    {
        SinglyLinkedList list = new SinglyLinkedList();

        list.Insert(10);
        list.Insert(20);
        list.Insert(30);
        list.Insert(40);

        Console.WriteLine("Linked List:");
        list.Display();

        list.Search(30);

        list.Delete(20);

        Console.WriteLine("\nAfter Deletion:");
        list.Display();
    }
}