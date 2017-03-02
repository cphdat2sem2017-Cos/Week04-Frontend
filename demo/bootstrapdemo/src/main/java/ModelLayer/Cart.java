package ModelLayer;

import java.util.HashMap;
import java.util.Map;

/**
 * The purpose of Cart is to...
 * @author kasper
 */
public class Cart {

    Map<String, CartItem> items = new HashMap<>();
    
    public void add( String topping, String bottom ) {
        String name = bottom +"-"+topping;
        CartItem item = items.getOrDefault( name, defaultValue )
    }

}
