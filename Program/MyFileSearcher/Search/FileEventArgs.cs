using System;

namespace MyFileSearchProject
{
    public class FileEventArgs : EventArgs
    {
        public string File;

        public FileEventArgs(string file)
        {
            File = file;
        }
    }
}
