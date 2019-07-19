public class ContactAndLeadSearch {

    public static List<List< SObject>> searchContactsAndLeads(String param) {
    
    List<List< SObject>> searchResult = [find :param IN NAME FIELDS Returning Contact, Lead];
    System.debug(searchResult);
    return searchResult ;
}
}