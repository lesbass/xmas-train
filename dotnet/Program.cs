using System;
using System.Runtime.InteropServices.JavaScript;

Console.WriteLine("Dotnet started!");

public partial class MyClass
{
    [JSExport]
    internal static double Divide(double a, double b)
    {
        return a / b;
    }
}
