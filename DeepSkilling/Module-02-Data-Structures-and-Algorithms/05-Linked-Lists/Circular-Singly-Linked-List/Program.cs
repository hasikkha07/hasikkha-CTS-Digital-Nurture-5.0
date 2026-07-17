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

class CircularLinkedList
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
            return;
        }

        Node temp = head;

        while (temp.Next != head)
            temp = temp.Next;

        temp.Next = newNode;
        newNode.Next = head;
    }

    // Display
    public void Display()
    {
        if (head == null)
            return;

        Node temp = head;

        do
        {
            Console.Write(temp.Data + " -> ");
            temp = temp.Next;
        }
        while (temp != head);

        Console.WriteLine("(Back to Head)");
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
        Node previous = null;

        do
        {
            if (current.Data == key)
            {
                // Delete Head
                if (current == head)
                {
                    Node last = head;

                    while (last.Next != head)
                        last = last.Next;

                    if (head.Next == head)
                    {
                        head = null;
                    }
                    else
                    {
                        head = head.Next;
                        last.Next = head;
                    }
                }
                else
                {
                    previous.Next = current.Next;
                }

                return;
            }

            previous = current;
            current = current.Next;

        } while (current != head);
    }
}

class Program
{
    static void Main()
    {
        CircularLinkedList list = new CircularLinkedList();

        list.Insert(10);
        list.Insert(20);
        list.Insert(30);
        list.Insert(40);

        Console.WriteLine("Circular Linked List:");
        list.Display();

        list.Search(30);

        list.Delete(20);

        Console.WriteLine("\nAfter Deletion:");
        list.Display();
    }
}