class NetworkWord {
 
  String word;
  int count;
  IntDict linkMap = new IntDict();
  
  PVector pos = new PVector();
  float rot = 0;
  
  void update() {
    
  }

  void render() {
    pushMatrix();
      translate(pos.x,pos.y);
      rotateZ(rot);
      fill(0);
      ellipse(0,0,sqrt(count) * 0.3,sqrt(count) * 0.3);
      text(word, 5, 5);
    popMatrix();
  }  
  
  void renderLinks() {
    //Go through the words stored in the IntDict
   for(String w:linkMap.keys()) {
    NetworkWord nw = wordMap.get(w);
    if (displayWords.contains(nw)) {
      strokeWeight(sqrt(linkMap.get(w)) * 0.9);
      stroke(232,12,100);
      line(pos.x,pos.y, nw.pos.x, nw.pos.y);
    }
   } 
  }
}
