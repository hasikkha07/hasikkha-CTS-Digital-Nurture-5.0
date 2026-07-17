using System;

class Report
{
    public string Content { get; set; }

    public Report(string content)
    {
        Content = content;
    }
}

class ReportPrinter
{
    public void Print(Report report)
    {
        Console.WriteLine("Printing Report...");
        Console.WriteLine(report.Content);
    }
}

class Program
{
    static void Main()
    {
        Report report = new Report("Monthly Sales Report");

        ReportPrinter printer = new ReportPrinter();

        printer.Print(report);
    }
}