using System.Collections.Generic;

namespace MyFileSearchProject
{
    public class SearchQueriesLogic : BaseLogic
    {
        public void AddSearchQuery(string textToSearch, string rootDirectory, List<string> results, SearchResultsLogic searchResultsLogic)
        {
            SearchQuery searchQuery = new SearchQuery
            {
                TextToSearch = textToSearch,
                RootDirectory = rootDirectory
            };
            DB.SearchQueries.Add(searchQuery);
            DB.SaveChanges();

            searchResultsLogic.AddSearchResults(searchQuery.SearchQueryID, results, searchQuery);
        }
    }
}

