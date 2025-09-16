namespace Class_object_app
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Console.WriteLine("Hello, World!");

            Student first = new Student();
            first.initialize();
            first.showDisplay();
            first.name = "Test_name";
        }
    }
}
