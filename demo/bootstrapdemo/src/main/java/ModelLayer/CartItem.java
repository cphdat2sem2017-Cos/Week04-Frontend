package ModelLayer;

/**
 * The purpose of CartItem is to...
 * @author kasper
 */
public class CartItem {
    private Topping topping;
    private Bottom bottom;
    private int number;    

    public Topping getTopping() {
        return topping;
    }

    public void setTopping( Topping topping ) {
        this.topping = topping;
    }

    public Bottom getBottom() {
        return bottom;
    }

    public void setBottom( Bottom bottom ) {
        this.bottom = bottom;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber( int number ) {
        this.number = number;
    }
}
