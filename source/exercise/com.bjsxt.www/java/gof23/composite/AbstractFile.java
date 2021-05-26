public interface AbstractFile {
    void killVirus();
}

class ImageFile implements AbstractFile{
    private String name;

    public ImageFile(String name) {
        this.name = name;
    }

    @Override
    public void killVirus() {
        // TODO Auto-generated method stub
        System.out.println("");
    }
    
}

class Folder implements AbstractFile{
    private String name;
    private List<AbstractFile> list = new ArrayList<AbstractFile>();
    
    public Folder(String name) {
        this.name = name;
    }

    void add(AbstractFile c) {
        list.add(c);
    }

    void remove(AbstractFile c) {
        list.remove(c);
    }

    Component getChild(int index) {
        return list;
    }

    @Override
    public void killVirus() {
        // TODO Auto-generated method stub
        
    }
    
}

