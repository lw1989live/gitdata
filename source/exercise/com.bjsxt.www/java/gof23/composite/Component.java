public interface Component {
    void operation();
}

public interface Leaf extends Component {
    
}

public interface Composite extends Component {
    void add(Component c);
    void remove(Component c);
    Component getChild(int index);

}
