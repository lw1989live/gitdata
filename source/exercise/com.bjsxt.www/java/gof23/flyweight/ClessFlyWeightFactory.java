public class ClessFlyWeightFactory {
    private static Map<String,ChessFlyWeight> map = new HashMap<String, ChessFlyWeight>();

    public static ChessFlyWeight getChess(String color) {
        
        if(map.get(color) != null) {
            return map.get(color);
        } else {
            ChessFlyWeight cfw = new ChessFlyWeight(color);
        };

    }
}
