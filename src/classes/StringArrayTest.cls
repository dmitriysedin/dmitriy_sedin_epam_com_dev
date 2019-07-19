public class StringArrayTest {

    public static List<String> generateStringArray(Integer size) {
  
        List<String> listString = new List<String>();
        
        for(Integer i = 0; i < size; i++) {
        
        listString.add('Test ' + i);
    }
    
    return listString;
    
}
}