using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Class_object_app
{
    internal class Student
    {
        private int Student_id;
        public string name;
        int age;
        string contact_no;
        string email_id;


        public void initialize()
        {
            Student_id = 10;
            name = "random";
        }

        public void showDisplay()
        {
            Console.WriteLine(" displaying information:  ");
            Console.WriteLine(name);
        }

        public Student() // default constructor (needs to be defined to handel empty cases) 
        {
            // if we make another constructor taking only 3 arguments , it will be 
            // activate if while initializing i only give 3 arguments 
            // that is known as constructor overloading
        }
        public Student(int id, string std_name, int age, string contact_no, string email_id) // coonstructor (parameterized)
        {
            Student_id = id;
            name = std_name;
        }

        public int get_total()
        {
            return age;
        }

        public string get_email()
        {
            return email_id;
        }

        public int get_age()
        {
            return age;
        } 
        

    }
}
