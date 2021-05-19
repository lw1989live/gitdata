/**
 * 适配器(类适配器方式)
 */
public class Adapter extends Adpatee implements Target {
    
    @Override
    public void handleReq() {
        super.request();
    }

}
