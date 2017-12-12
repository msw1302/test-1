package dev.mvc.sum;
 
interface URL{
  public abstract void connect();
}
 
class Daum implements URL{
  @Override
  public void connect() {
    System.out.println("www.daum.net에 접속합니다.");    
  }
}
 
class KMA implements URL{
  @Override
  public void connect() {
    System.out.println("www.kma.go.kr에 접속합니다.");    
  }
}
 
class Google implements URL{
  @Override
  public void connect() {
    System.out.println("www.google.co.kr에 접속합니다.");
  }
}
 
 
public class InterTest1 {
  public static void main(String[] args) {
    //URL url = new URL();// interface는 객체를 만들 수 없음
    URL url = new Daum();//자기 자신을 구현한 다음에(카멜레온같은.. 다형성) 
    url.connect();
    url = new KMA();
    url.connect();
    url = new Google();
    url.connect();
  }
 
}