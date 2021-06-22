using System;
using System.Collections.Generic;
using System.IO;

namespace MyFileSearchProject
{
    public delegate void FilesHandler(object sender, FileEventArgs e);

    public class FileSearch
    {
        public event FilesHandler FoundFile;
        public List<string> results = new List<string>();

        public void Search(string folder, string textToSearch)
        {
            try
            {
                //Gets files
                string[] files = Directory.GetFiles(folder, "*" + textToSearch + "*");

                //Displays files
                foreach (string item in files)
                {
                    FoundFile(this, new FileEventArgs(item));
                    results.Add(item);
                }

                //Gets directories
                string[] directories = Directory.GetDirectories(folder);

                //Recursion for subdirectories
                foreach (string item in directories)
                    Search(item, textToSearch);
            }
            catch (UnauthorizedAccessException) { }
        }
    }
}
