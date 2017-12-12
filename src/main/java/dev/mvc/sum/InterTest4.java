package dev.mvc.sum;
 
interface Travel{
  public abstract void trip();
}
 
class America implements Travel{
  @Override
  public void trip(){
    System.out.println("미국 예약을 처리 완료 합니다.");
  }
}
 
class  Singpore implements Travel{
  public void trip(){
    System.out.println("싱가폴 예약을 처리 완료 합니다.");
  }
}
 
class Japan implements Travel{
  public void trip(){
    System.out.println("일본 예약을 처리 완료 합니다.");
  }
}
 
class China implements Travel{
  public void trip(){
    System.out.println("중국 예약을 처리 완료 합니다.");
  }
}
 
public class InterTest4 {
 
  public static void main(String[] args) {
    Travel travel = new America();
    travel.trip();
    travel = new America();
    travel.trip();
    travel = new Singpore();
    travel.trip();
    travel = new Japan();
    travel.trip();
    travel = new China();
    travel.trip();
  }
}