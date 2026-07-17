using System;

class Node
{
    public int Data;
    public Node Next;
    public Node Prev;

    public Node(int data)
    {
        Data = data;
        Next = null;
        Prev = null;
    }
}

class CircularDoublyLinkedList
{
    Node head = null;

    // Insert at End
    public void Insert(int data)
    {
        Node newNode = new Node(data);

        if (head == null)
        {
            head = newNode;
            head.Next = head;
            head.Prev = head;
            return;
        }

        Node last = head.Prev;

        last.Next = newNode;
        newNode.Prev = last;
        newNode.Next = head;
        head.Prev = newNode;
    }

    // Display Forward
    public void DisplayForward()
    {
        if (head == null)
            return;

        Node temp = head;

        Console.Write("Forward: ");

        do
        {
            Console.Write(temp.Data + " <-> ");
            temp = temp.Next;
        }
        while (temp != head);

        Console.WriteLine("(Back to Head)");
    }

    // Display Backward
    public void DisplayBackward()
    {
        if (head == null)
            return;

        Node temp = head.Prev;

        Console.Write("Backward: ");

        do
        {
            Console.Write(temp.Data + " <-> ");
            temp = temp.Prev;
        }
        while (temp != head.Prev);

        Console.WriteLine("(Back to Tail)");
    }

    // Search
    public void Search(int key)
    {
        if (head == null)
            return;

        Node temp = head;

        do
        {
            if (temp.Data == key)
            {
                Console.WriteLine($"{key} found.");
                return;
            }

            temp = temp.Next;

        } while (temp != head);

        Console.WriteLine($"{key} not found.");
    }

    // Delete
    public void Delete(int key)
    {
        if (head == null)
            return;

        Node current = head;

        do
        {
            if (current.Data == key)
            {
                if (current.Next == head && current == head)
                {
                    head = null;
                    return;
                }

                current.Prev.Next = current.Next;
                current.Next.Prev = current.Prev;

                if (current == head)
                    head = head.Next;

                return;
            }

            current = current.Next;

        } while (current != head);
    }
}

class Program
{
    static void Main()
    {
        CircularDoublyLinkedList list = new CircularDoublyLinkedList();

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