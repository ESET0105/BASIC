namespace Data_structure_demo
{
    class Student
    {
        public string Names { get; set; }
        public int Student_id { get; set; }
        public int Age { get; set; }
        public Student(string name, int student_id, int age)
        {
            Names = name;
            Student_id = student_id;
            Age = age;
        }

        public void DisplayInfo()
        {
            Console.WriteLine($"Name: {Names}");
            Console.WriteLine($"Student ID: {Student_id}");
            Console.WriteLine($"Age: {Age}");

        }
    }

    class Data
    {
        static void Main(string[] args)
        {

            List<Student> student_list = new List<Student>();

            
            student_list.Add(new Student("Milan Roat", 1001, 22));
            student_list.Add(new Student("KP", 1002, 23));
            student_list.Add(new Student("Nishtha", 1003, 22));

            

            foreach (Student student in student_list)
            {
                student.DisplayInfo();
            }

        }
    }

}




