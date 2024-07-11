class ParkingStall {
  
  boolean occupied;
  Date timeTaken;

  
  float w;
  float h;
  float pX;
  float pY;

  ParkingStall(float x, float y, float a, float b) {
    occupied = false;
    pX = x;
    pY = y;
    w = a;
    h = b;
  }
void setStatus(boolean status, Date time)
  {
    occupied = status;
    if (occupied) 
      timeTaken = new Date(time);
    
  }

  void drawStall() {
    if (occupied)
      fill(200, 0, 0); 
    else
      fill(0, 200, 0);  
    strokeWeight(2);
    stroke(255);
    rect(pX, pY, w, h);
    strokeWeight(1);
  }
String stallstatus(){
  String s="occupied";
return s;
}

}
  