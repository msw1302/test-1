package dev.mvc.sum;
 
interface Shape{
  public abstract void draw();
}
 
class Circle implements Shape{
  @Override
  public void draw() {
    System.out.println("원을 그립니다.");
  }
}
 
class Square implements Shape{
  @Override
  public void draw() {
    System.out.println("사각형을 그립니다.");
  }
}
 
class Triangle implements Shape{
  @Override
  public void draw() {
    System.out.println("삼각형을 그립니다.");
  }
}
 
public class InterTest2 {
  public static void main(String[] args) {
    Shape shape = new Circle();
    shape.draw();
    shape = new Square();
    shape.draw();
    shape = new Triangle();
    shape.draw();
  }
}