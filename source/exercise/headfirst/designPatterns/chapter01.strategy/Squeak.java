package headfirst.designPatterns.chapter01.strategy;

public class Squeak implements QuackBehavior {
    public void quack() {
        System.out.println("Squeak");
    }
}