class ParkingStallSection {
  float pssx;
  float pssy;
  ParkingStall[][] a = new ParkingStall[5][2];
  ParkingStallSection(float x, float y) {
   pssx = x;
   pssy = y;
  }
  void drawsection() {
    float posx = pssx;
    float posy = pssy;
    for (int i = 0; i <a[i].length; i++) {
      for (int j = 0; j <a.length; j++) {
        a[j][i] = new ParkingStall(posx, posy+105, 80, 50);
        a[j][i].drawStall();
        posx += 80;
      }
      posx = pssx;
      posy += 50;
    }
  }

}