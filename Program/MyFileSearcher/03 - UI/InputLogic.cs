using System.IO;

namespace MyFileSearchProject
{
    public class InputLogic
    {
        public string CheckMenuChoice(string choice, GUI gui)
        {
            while (choice != "1" && choice != "2" && choice != "3")
            {
                choice = gui.MenuChoiceErrorMessage();
            }
            return choice;
        }

        public string CheckFileNameInput(string input, GUI gui)
        {
            while (string.IsNullOrWhiteSpace(input) || input.Contains("/") || input.Contains("\\") || input.Contains(":") || input.Contains("*") || input.Contains("?") || input.Contains("\"") || input.Contains("<") || input.Contains(">") || input.Contains("|"))
            {
                input = gui.FileNameError();
            }
            return input;
        }

        public string CheckDirectoryExists(string input, GUI gui)
        {
            while (!Directory.Exists(input))
            {
                input = gui.DirectoryInputError();
            }
            return input;
        }
    }
}
