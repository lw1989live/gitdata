/**
 * 自定义的聚合类
 */
public class ConcreteMyAggregate {
    private List<Object> list = new ArrayList<Object>();

    public ConcreteMyAggregate(List<Object> list) {
        this.list = list;
    }

    public List<Object> getList() {
        return list;
    }

    public void setList(List<Object> list) {
        this.list = list;
    }

    private class ConcreteIterator implements MyIterator {
        private int index;
    }
}
