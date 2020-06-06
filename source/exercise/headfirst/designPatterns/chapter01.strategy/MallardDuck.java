package headfirst.designPatterns.chapter01.strategy;

public abstract class MallardDuck extends Duck {
	FlyBehavior flyBehavior;
	QuackBehavior quackBehavior;

	public MallardDuck() {
		quackBehavior = new Quack();
		flyBehavior = new FlyWithWings();
	}

	public void display() {
		System.out.println("I'm real Mallard duck");
	}
}