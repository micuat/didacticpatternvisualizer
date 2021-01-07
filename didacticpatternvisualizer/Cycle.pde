class Cycle {
   PVector position, velocidad;
   float grosor = 1.5;
   float genPos = 0;
   
   Cycle(String n) {
     position = new PVector((frameCount-lastPos)*movSequenser, 0);
     velocidad = new PVector(movSequenser, 0.0);
     grosor = (n.equals("1")) ? 1.5 : 0.5;
     genPos = lastPos;
   }
   
   void draw() {
     noFill();
     stroke(0);
     //position.add(velocidad);
     strokeWeight(grosor);
     line(position.x, position.y, position.x, height);
     if ((frameCount-genPos)*movSequenser>width) {
       cycles.remove(this);
     }
   }
}
