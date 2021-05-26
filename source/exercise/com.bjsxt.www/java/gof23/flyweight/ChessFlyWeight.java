public interface ChessFlyWeight {
    void setColor();
    String getColor();
    void display(Coordinate c);
}

class ConcreteChess implements ChessFlyWeight {
    private String color;

    public ConcreteChess(String color) {
        super();
        this.color = color;
    }

    @Override
    public void display(Coordinate c) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public String getColor() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void setColor() {
        // TODO Auto-generated method stub
        
    }
    
}
