
import java.util.Date;

public class Client {
    public static void main(String[] args) {
        Date date = new Date(12312321331L);
        Sheep s1 = new Sheep("少利", date);
        System.out.println(s1);

        Sheep s2 = (Sheep) s1.clone();

    }
}
