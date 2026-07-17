using System;
using System.Collections.Generic;

interface IObserver
{
    void Update(string message);
}

class Subscriber : IObserver
{
    public string Name { get; }

    public Subscriber(string name)
    {
        Name = name;
    }

    public void Update(string message)
    {
        Console.WriteLine($"{Name} received notification: {message}");
    }
}

class YouTubeChannel
{
    private List<IObserver> subscribers = new List<IObserver>();

    public void Subscribe(IObserver observer)
    {
        subscribers.Add(observer);
    }

    public void Unsubscribe(IObserver observer)
    {
        subscribers.Remove(observer);
    }

    public void UploadVideo(string title)
    {
        Console.WriteLine($"New Video Uploaded: {title}");

        foreach (var subscriber in subscribers)
        {
            subscriber.Update(title);
        }
    }
}

class Program
{
    static void Main()
    {
        YouTubeChannel channel = new YouTubeChannel();

        Subscriber user1 = new Subscriber("Alice");
        Subscriber user2 = new Subscriber("Bob");

        channel.Subscribe(user1);
        channel.Subscribe(user2);

        channel.UploadVideo("Observer Pattern in C#");
    }
}