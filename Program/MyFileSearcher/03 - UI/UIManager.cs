using System;

namespace MyFileSearchProject
{
    class UIManager
    {
        public GUI gui { get; set; }
        public InputLogic logic { get; set; }
        public FileSearch fileSearch { get; set; }
        static SearchQueriesLogic searchQueriesLogic = new SearchQueriesLogic();
        static SearchResultsLogic searchResultsLogic = new SearchResultsLogic();


        public void StartSearchProgram()
        {
            while (true)
            {
                GUI gui = new GUI();
                InputLogic logic = new InputLogic();

                gui.DisplayMenu();

                //Get Menu Choice
                string choice = logic.CheckMenuChoice(gui.GetMenuChoice(), gui);

                //Menu Choices
                if (choice == "1")
                {
                    string fileName = logic.CheckFileNameInput(gui.GetFileName(), gui);

                    gui.DisplayActionText();

                    FileSearch fileSearch = new FileSearch();
                    fileSearch.FoundFile += gui.DisplayFile;
                    fileSearch.Search("C:\\", fileName);

                    if (fileSearch.results.Count != 0)
                    {
                        searchQueriesLogic.AddSearchQuery(fileName, "C:\\", fileSearch.results, searchResultsLogic);
                    }
                    else
                    {
                        Console.WriteLine("No search results found.");
                    }
                }

                if (choice == "2")
                {
                    string fileName = logic.CheckFileNameInput(gui.GetFileName(), gui);
                    string directory = logic.CheckDirectoryExists(gui.GetDirectoryName(), gui);

                    gui.DisplayActionText();

                    FileSearch fileSearch = new FileSearch();
                    fileSearch.FoundFile += gui.DisplayFile;
                    fileSearch.Search(directory, fileName);

                    if (fileSearch.results.Count != 0)
                    {
                        searchQueriesLogic.AddSearchQuery(fileName, directory, fileSearch.results, searchResultsLogic);
                    }
                    else
                    {
                        Console.WriteLine("No search results found.");
                    }
                }

                if (choice == "3")
                {
                    return;
                }
            }
        }
    }
}
