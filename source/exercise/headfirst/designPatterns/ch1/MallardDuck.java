public abstract class MallardDuck extends Duck {
	FlyBehavior flyBehavior;
	QuackBehavior quackBehavior;

	public MallardDuck() {
		quackBehavior = new Quack();
		flyBehavior = new FlyWithWings();
	}

	public void performFly() {
		flyBehavior.fly();
	}

	public void performQuack() {
		quackBehavior.quack();
	}

	public void swim() {
		System.out.println("All ducks float, even decoys!");
	}

	public void display() {
		System.out.println("I'm real Mallard duck");
	}
}