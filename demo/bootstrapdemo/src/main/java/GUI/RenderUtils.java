package GUI;

import ModelLayer.CartItem;
import java.time.LocalDate;
import java.util.List;

/**
 The purpose of RenderUtils is to...

 @author kasper
 */
public class RenderUtils {

    public static String footer() {
        return "    <footer>\n"
                + "        <div class=\"container\">\n"
                + "            <div class=\"row\">\n"
                + "                <div class=\"col-lg-12 text-center\">\n"
                + "                    <p>Copyright &copy; AP Cupcakes " + LocalDate.now().getYear() + "</p>\n"
                + "                </div>\n"
                + "            </div>\n"
                + "        </div>\n"
                + "    </footer>";
    }

    public static String navBar() {
        return "<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n"
                + "                <ul class=\"nav navbar-nav\">\n"
                + "                    <li>\n"
                + "                        <a href=\"index.jsp\">Home</a>\n"
                + "                    </li>\n"
                + "                    <li>\n"
                + "                        <a href=\"login.jsp\">Login</a>\n"
                + "                    </li>\n"
                + "                    <li>\n"
                + "                        <a href=\"shop.jsp\">Blog</a>\n"
                + "                    </li>\n"
                + "                    <li>\n"
                + "                        <a href=\"contact.html\">Contact</a>\n"
                + "                    </li>\n"
                + "                </ul>\n"
                + "            </div>";
    }

    public static String title() {
        return "<div class=\"brand\">AP Cupcakes</div>\n"
                + "    <div class=\"address-bar\">Nørgaardsvej 30 | "
                + "2800 Kongens Lyngby </div>";
    }
    
    public static String writeShopTable(List<CartItem> elements){
        StringBuilder sb = new StringBuilder();
        for (CartItem item: elements){
            sb.append( "<tr><td>");
            sb.append(item.)
        }
    }
}
