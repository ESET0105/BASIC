namespace ConsoleApp1
{
    internal class Program
    {

        static string[] bookTitles = new string[50];
        static string[] bookAuthors = new string[50];
        static decimal[] bookPrices = new decimal[50];
        static int[] bookQuantities = new int[50];
        static int bookCount = 0; // Tracks the number of books in inventory.

        // Arrays to store sales report.
        static string[] customerNames = new string[100];
        static string[] soldBookTitles = new string[100];
        static int[] soldQuantities = new int[100];
        static decimal[] soldAmounts = new decimal[100];
        static int salesCount = 0;
        static void Main(string[] args)
        {
            
            Console.WriteLine("====== BOOK SHOP MENU ======");
            Console.WriteLine("1. Add Book");
            Console.WriteLine("2. Sell Book");
            Console.WriteLine("3. View Books");
            Console.WriteLine("4. View Sales Report");
            Console.WriteLine("5. Exit");
            Console.WriteLine("=============================");

            string choice = Console.ReadLine();

            if (choice == "1")
            { Add_Book(); }
            else if (choice == "2") { Sell_book(); }
            else if (choice == "3") { View_books(); }
            else if (choice == "4") { View_report(); }



        }

        static void Add_Book()
        {
            Console.WriteLine("Enter Book Title : ");
            string title = Console.ReadLine();
            Console.WriteLine("Enter Author : ");
            string author = Console.ReadLine();
            Console.WriteLine("Enter price : ");
            decimal price = Convert.ToDecimal(Console.ReadLine());
            Console.WriteLine("Enter quantity : ");
            int quantity = Convert.ToInt32(Console.ReadLine()); //num1 = Convert.ToInt32(Console.ReadLine());

            bookTitles[bookCount] = title;
            bookAuthors[bookCount] = author;
            bookPrices[bookCount] = price;
            bookQuantities[bookCount] = quantity;
            bookCount++;
            Console.WriteLine("Book added successfully.");

        }

        static void Sell_book()
        {
            Console.WriteLine("Enter Book Title to sell : ");
            string title = Console.ReadLine();
            Console.WriteLine("Enter Quantity to sell : ");
            int quantity = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter Seller name : ");
            string name = Console.ReadLine();

            Console.WriteLine("Sold 3 Copies of ", title); // incomplete logic 







        }

        static void View_books()
        {
            Console.WriteLine("--- Book Inventory ---");
            if (bookCount == 0)
            {
                Console.WriteLine("No books in inventory.");
                return;
            }

            Console.WriteLine( "Title", "Author", "Price", "Quantity");
            for (int i = 0; i < bookCount; i++)
            {
                Console.WriteLine( bookTitles[i], bookAuthors[i], bookPrices[i], bookQuantities[i]);
            }
        }

        static void View_report()
        {
            Console.WriteLine( "Customer Name", "Book", "Quantity Purchased", "Amount");
            decimal totalAmountSpent = 0;
            for (int i = 0; i < salesCount; i++)
            {
                Console.WriteLine( customerNames[i], soldBookTitles[i], soldQuantities[i], soldAmounts[i]);
                totalAmountSpent += soldAmounts[i];
            }
            Console.WriteLine();
            Console.WriteLine($"Total Amount Spent: ${totalAmountSpent:N2}");

        }

    }
}
