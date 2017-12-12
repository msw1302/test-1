package sts.basic.test;
 
public class ELDTO {
  private String movie;
  private String name;
  private int no1;
  private int no2;
  private int no3;
  
 
  // 기본 생성자
  public ELDTO(){
    this.movie = "암살";
    this.name = "전지현";
    this.no1 = 100;
    this.no2 = 130;    
    this.no3 = 150;    
  }
  
  public ELDTO(String movie, String name){
    this.movie = movie;
    this.name = name;
  }
 
  public String getMovie() {
    System.out.println("getMovie() 호출됨");
    return movie;
  }
 
  public void setMovie(String movie) {
    this.movie = movie;
  }
  
  public String getName() {
    System.out.println("getName() 호출됨");
    
    return name;
  }
 
  public void setName(String name) {
    this.name = name;
  }
 
  public int getNo1() {
    return no1;
  }

  public void setNo1(int no1) {
    this.no1 = no1;
  }

  public int getNo2() {
    return no2;
  }

  public void setNo2(int no2) {
    this.no2 = no2;
  }

  public int getNo3() {
    return no3;
  }

  public void setNo3(int no3) {
    this.no3 = no3;
  }
  
  public int getResultTot() {
    int no = this.no1 + this.no2 + this.no3; 
    return no;
  }
  
  public int getResultAvg() {
    int no = getResultTot()/3; 
    return no;
  }
}