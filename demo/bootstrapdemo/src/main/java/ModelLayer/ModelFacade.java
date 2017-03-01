package ModelLayer;

/**
 The purpose of ModelFacade is to...

 @author kasper
 */
public class ModelFacade {

    public static void validate( String username, String password ) throws LoginError {
        if ( "sesam".equals( password ) ) {
            return;
        }
        throw new LoginError();
    }

    public static String[] getToppings() {
        String[] toppings = { "Chocolate", "Blueberry", "Rasberry", "Crispy", "Strawberry", "Rum/Raisin", "Orange", "Lemon", "Blue cheese" };
        return toppings;
    }

    public static String[] getBottoms() {
        String[] bottoms = { "Chocolate", "Vanilla", "Nutmeg", "Pistacio", "Almond" };
        return bottoms;
    }

}
