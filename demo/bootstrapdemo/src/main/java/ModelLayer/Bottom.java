package ModelLayer;

public class Bottom {
    private String name;
    private double price;

    public Bottom( String name, double price ) {
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
