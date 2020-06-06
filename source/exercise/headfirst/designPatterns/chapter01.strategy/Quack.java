package headfirst.designPatterns.chapter01.strategy;

public class Quack implements QuackBehavior {
    public void quack() {
        System.out.println("Quack");
    }
}