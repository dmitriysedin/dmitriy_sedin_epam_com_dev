public class AccountHandler {

    public static Account insertNewAccount(String accName) {
    
    Account acct = new Account(Name=accName);
      try{
        
        insert acct;
        } catch (DmlException e) {
        acct = null;
        System.debug('A DML exception has occurred: ' +
                e.getMessage());
}
    return acct;
    
}
}