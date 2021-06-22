using System.Collections.Generic;

namespace MyFileSearchProject
{
    public class SearchResultsLogic : BaseLogic
    {
        public void AddSearchResults(int id, List<string> results, SearchQuery searchQuery)
        {
            foreach (string result in results)
            {
                SearchResult searchResult = new SearchResult
                {
                    SearchQueryID = searchQuery.SearchQueryID,
                    FullFilePath = result
                };
                DB.SearchResults.Add(searchResult);
                DB.SaveChanges();
            }
        }
    }
}
