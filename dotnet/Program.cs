using System;
using System.Runtime.InteropServices.JavaScript;

Console.WriteLine("Dotnet started!");

public partial class MyClass
{
    [JSExport]
    internal static double Decrypt(double a, double b)
    {
        return a / b;
    }

    [JSExport]
    internal static double Encrypt(double a, double b)
    {
        return a * b;
    }
}
