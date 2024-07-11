class ParkingLot {
  float plx;
  float ply;
  ParkingStallSection[][] a = new ParkingStallSection[2][3];
  ;  ParkingLot(float x, float y) {
    plx = x;
    ply = y;
  }
  void drawlot() {
    float psx = plx;
    float psy = ply;
    Gate c=new Gate (psx+400,psy+505,false); 
    c.drawGate();
    Gate b=new Gate (psx+400,psy+50,true);
    b.drawGate();
    
    for (int i = 0; i <3; i++) {
      for (int j = 0; j <2; j++) {
        a[j][i] = new ParkingStallSection(psx, psy);
        a[j][i].drawsection();
        psx += 450;
      }
      psx = plx;
     psy += 140;
    }
   fill(255);
    stroke(0);
    strokeWeight(3);
    rect(psx+300,175,90,20);
    fill(0,0,250);
    rect(psx+300,195,90,20);
    fill(0);
    text("Entrace",psx+325,190);
    text("Spaces:  60",psx+315,210);
    fill(255);
    stroke(0);
    strokeWeight(3);
    rect(psx+300,psy+80,90,20);
    fill(0,0,250);
    rect(psx+300,psy+100,90,20);
    fill(0);
    text("Exit",psx+335,psy+95);
    text("Fee:    $0",psx+320,psy+115);
  }
  void drawdesign(){
    float psx = plx;
    float psy = ply;
    Street n= new Street("North",0,100);
    n.drawstreet();
    Street s= new Street("South",0,640);
    s.drawstreet();
    fill(0,100,0);
    stroke(255);
    strokeWeight(3);
    rect(0,psy+50,950,490);
    fill(50,50,50);
    stroke(255);
    strokeWeight(3);
    rect(psx-30, psy+85, 910, 420);
    fill(50,50,50);
    stroke(50,50,50);
    rect(psx+400,psy+50,50,35);
    rect(psx+400,psy+505,50,35);
    stroke(255);
    line(psx+400,psy+50,psx+400,psy+85);
    line(psx+450,psy+50,psx+450,psy+85);
    line(psx+400,psy+505,psx+400,psy+540);
    line(psx+450,psy+505,psx+450,psy+540);
    fill(255);
    text("Parking",psx+405,psy+65);
    
    
  }
}