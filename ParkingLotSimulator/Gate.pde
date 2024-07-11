class Gate{
 
 float gx;
 float gy;
 boolean gateStatus;
 float fee;
 
 Gate(float x, float y,boolean z){
  gx=x;
  gy=y;
 gateStatus=z;
 }
 
 void openGate(){
   
   fill(0);
   stroke(0);
   strokeWeight(5);
   line(gx,gy,gx,gy+35);
   
 }
 void closeGate(){
   strokeWeight(5);
   stroke(0);
   line(gx,gy,gx+50,gy);
 }
 void drawGate(){
   if (gateStatus==true)
  { 
    openGate();
  }
  else{
  closeGate();}
 strokeWeight(0);
 fill(0,100,0);
 ellipse(gx,gy,10,10);
 
 }
 }