using System;

interface IMessageService
{
    void SendMessage(string message);
}

class EmailService : IMessageService
{
    public void SendMessage(string message)
    {
        Console.WriteLine("Email Sent: " + message);
    }
}

class SMSService : IMessageService
{
    public void SendMessage(string message)
    {
        Console.WriteLine("SMS Sent: " + message);
    }
}

class Notification
{
    private readonly IMessageService _messageService;

    public Notification(IMessageService messageService)
    {
        _messageService = messageService;
    }

    public void Notify(string message)
    {
        _messageService.SendMessage(message);
    }
}

class Program
{
    static void Main()
    {
        IMessageService email = new EmailService();
        Notification emailNotification = new Notification(email);
        emailNotification.Notify("Welcome to Cognizant!");

        IMessageService sms = new SMSService();
        Notification smsNotification = new Notification(sms);
        smsNotification.Notify("Your OTP is 123456.");
    }
}