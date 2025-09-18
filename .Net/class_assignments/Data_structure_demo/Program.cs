namespace Data_structure_demo
{

    class Student
    {
        public string name { get; set; }
        public int id { get; set; }
        public int marks { get; set; }
        public Student(int student_id ,string name, int marks)
        {
            name = name;
            id = student_id;
            marks = marks;
        }

        public void DisplayInfo()
        {
            Console.WriteLine($"Name: {name}");
            Console.WriteLine($"Student ID: {id}");
            Console.WriteLine($"Mark: {marks}");

        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {

            //List Example
            //List<Student> student_list = new List<Student>();
            List<Student> students = new List<Student>();

            // Add Student objects to the list
            Student first = new Student(1, "Alice", 10);
            Student second = new Student(2, "Bob", 90);
            Student third = new Student(3, "Charlie", 78);
            students.Add(first);
            students.Add(second);
            students.Add(third);


            // Access and display each student using foreach
            Console.WriteLine("Student List:");
            foreach (Student s in students)
            {
                Console.WriteLine($"ID: {s.id}, Name: {s.name}, Marks: {s.marks}");
            }

            // Access a specific object by index
            Console.WriteLine($"\nSecond student is: {students[1].name}");


            //Dictionay Example
            Dictionary<string, Student> students_dict = new Dictionary<string, Student>();
            students_dict.Add("firstStudent", first);
            students_dict.Add("seondStudent", second);
            students_dict.Add("thirdStudent", third);


            foreach (KeyValuePair<string, Student> student in students_dict)
            {
                Console.WriteLine(student.Value.id);
            }


            //Hashset Example
            Console.WriteLine("Hashset demo");
            HashSet<Student> students_hashset = new HashSet<Student>();
            students_hashset.Add(first);
            students_hashset.Add(second);
            students_hashset.Add(first);
            students_hashset.Add(third);

            foreach (Student student in students_hashset)
            {
                Console.WriteLine(student.id);
            }


            //StackDemo


            Stack<Student> students_stack = new Stack<Student>();
            students_stack.Push(first);
            students_stack.Push(second);
            students_stack.Push(third);

            Student pop_stack = students_stack.Pop();
            Console.WriteLine(pop_stack.name);


            //Queue demo
            Console.WriteLine("Queue demo");
            Queue<Student> students_queue = new Queue<Student>();
            students_queue.Enqueue(first);
            students_queue.Enqueue(second);
            students_queue.Enqueue(third);

            Console.WriteLine(students_queue.Dequeue().name);

            // tuple demo
            Console.WriteLine("tuple demo");
            Tuple<Student, Student> student_tuple = new Tuple<Student, Student>(first , second);

            Console.WriteLine(student_tuple.Item1.name, student_tuple.Item2.name);


            // Linked List Demo
            
            Console.WriteLine("\n Linked List demo:");
            LinkedList<Student> students_linkedlist = new LinkedList<Student>();

            // Add Student objects to the linked list
            students_linkedlist.AddLast(first);     // Adds to the end
            students_linkedlist.AddLast(second);
            students_linkedlist.AddLast(third);

            // Add another student at the beginning
            Student fourth = new Student(4, "David", 85);
            students_linkedlist.AddFirst(fourth);

            // Display all students in the linked list
            Console.WriteLine("Students in linked list (in order):");
            foreach (Student student in students_linkedlist)
            {
                Console.WriteLine($"ID: {student.id}, Name: {student.name}, Marks: {student.marks}");
            }

            
            // Add a student after a specific node
            Student fifth = new Student(5, "Eva", 92);
            LinkedListNode<Student> secondNode = students_linkedlist.Find(second);
            if (secondNode != null)
            {
                students_linkedlist.AddAfter(secondNode, fifth); // can also use Addbefore to add after 1st element , before 2nd element
            }

           

            // Display after modifications
            Console.WriteLine("\nLinked list after additions:");
            foreach (Student student in students_linkedlist)
            {
                Console.WriteLine($"ID: {student.id}, Name: {student.name}");
            }

            






        }
    }
}
