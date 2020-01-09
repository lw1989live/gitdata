using System;

namespace designPatterns
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Cat cat = new Cat();
            Console.WriteLine(cat.Shout());
        }
    }
}
