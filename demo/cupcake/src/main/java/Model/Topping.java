package Model;

/**
 The purpose of Topping is to...

 @author kasper
 */
public class Topping {

    private String name;
    private double price;

    public Topping( String name, double price ) {
        this.name = name;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName( String name ) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice( double price ) {
        this.price = price;
    }
}
