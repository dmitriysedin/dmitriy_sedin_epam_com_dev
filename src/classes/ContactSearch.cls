public class ContactSearch {

    public static Contact[] searchForContacts(String lastName, String postalCode) {
    
    Contact[] ctct= [select Id, Name from Contact where LastName=:lastName and MailingPostalCode=:postalcode];

    return ctct;
    
}
}