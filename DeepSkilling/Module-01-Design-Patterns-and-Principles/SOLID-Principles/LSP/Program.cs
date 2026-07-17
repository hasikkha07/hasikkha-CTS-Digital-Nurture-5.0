using System;

abstract class Bird
{
    public abstract void Move();
}

class Sparrow : Bird
{
    public override void Move()
    {
        Console.WriteLine("Sparrow is flying.");
    }
}

class Penguin : Bird
{
    public override void Move()
    {
        Console.WriteLine("Penguin is swimming.");
    }
}

class Program
{
    static void Main()
    {
        Bird bird1 = new Sparrow();
        Bird bird2 = new Penguin();

        bird1.Move();
        bird2.Move();
    }
}