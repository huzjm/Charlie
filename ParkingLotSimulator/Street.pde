class Street{
  String name;
  float sx;
  float sy;
  Street (String a, float b, float c){
    sx=b;
    sy=c;
    name=a;  
}
void drawstreet(){
  fill(50,50,50);
  stroke(255);
  strokeWeight(3);
rect(sx,sy,950,50);
fill(255);
text(name+" City Street",430, sy+30);
}
}