package dev.mvc.sum;
 
abstract class Fruit{
  public abstract void sale();
  public void start(){
    System.out.println("판매 게시");
  };
}
 
class Apple extends Fruit{
  @Override
  public void sale() {
    System.out.println("사과를 판매합니다.");    
  }
  @Override
  public void start() {
    System.out.println("사과 게시");    
  }
}
class Banana extends Fruit{
  //오버라이드를 명시하지 않은 상태에서 start 함수명 오타 발생
  public void sale() {
    System.out.println("바나나를 판매합니다.");    
  }
  public void starts() {
    System.out.println("바나나 게시");    //바나나 게시를 정의 했지만 판매게시로 나옴
  }
}
class Grape extends Fruit{
  @Override
  public void sale() {
    System.out.println("포도를 판매합니다.");    
  }
  /*@Override//오버라이드를 정의하여 부모 클래스에 해당 함수가 있는지 확인하고 없기 때문에 오류 발생 
  public void starts() {
    System.out.println("포도 게시");    
  }*/
}
 
public class InterTest3 {
  public static void main(String[] args) {
    Fruit fruit = new Apple();
    fruit.start();fruit.sale();
    fruit = new Banana();
    fruit.start();fruit.sale();
    fruit = new Grape();
    fruit.start();fruit.sale();
  }
 
}