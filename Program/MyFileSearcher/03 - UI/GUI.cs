using System;

namespace MyFileSearchProject
{
    public class GUI
    {
        //Menu:

        public void DisplayMenu()
        {
            Console.WriteLine("Choose one of the following:");
            Console.WriteLine("1. Enter file name only.");
            Console.WriteLine("2. Enter file name and root directory.");
            Console.WriteLine("3. Exit.");
        }

        public string GetMenuChoice()
        {
            string userChoice = Console.ReadLine();
            return userChoice;
        }

        public string MenuChoiceErrorMessage()
        {
            Console.WriteLine("Error! Please enter 1, 2 or 3.");
            string userChoice = Console.ReadLine();
            return userChoice;
        }

        public void DisplayActionText()
        {
            Console.WriteLine("Searching...");
        }

        //File name:

        public string GetFileName()
        {
            Console.WriteLine("Enter file name to search:");
            string fileName = Console.ReadLine();
            return fileName;
        }

        public string FileNameError()
        {
            Console.WriteLine("Error. Please enter a valid file name to search.");
            string directoryName = Console.ReadLine();
            return directoryName;
        }

        public string NoResultsFileNameError()
        {
            Console.WriteLine("No search results were found.");
            string fileName = Console.ReadLine();
            return fileName;
        }

        //Directory:

        public string GetDirectoryName()
        {
            Console.WriteLine("Enter root directory.  Entry example: C:\\Users\\John");
            string directoryName = Console.ReadLine();
            return directoryName;
        }

        public string DirectoryInputError()
        {
            Console.WriteLine("Error. Bad file path. Please try again. Example: C:\\A\\MyFile.txt");
            string directoryName = Console.ReadLine();
            return directoryName;
        }

        public string NoResultsDirectoryError()
        {
            Console.WriteLine("No search results were found.");
            string directoryName = Console.ReadLine();
            return directoryName;
        }

        //Display Results:

        public void DisplayFile(object sender, FileEventArgs e)
        {
            Console.WriteLine(e.File);
        }
    }
}
