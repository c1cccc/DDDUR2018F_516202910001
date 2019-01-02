void drawPage5() {
  image(imgP5, 0, 0);
  noStroke();
   rectMode(CORNER);
  fill(255, 188, 141);
  rect(82, y5, 64, 62);
  if (mouseX>=120&&mouseX<=250&&mouseY>=400&&mouseY<=477&&mousePressed) {   
    y5=481;
    p5=1;
  }
  if (mouseX>=120&&mouseX<=250&&mouseY>=483&&mouseY<=550&&mousePressed) {   
    y5=409;
    p5=2;
  }
  p5d();
}


void p5d() {
  if (p5==1) {
    image(imgP51, 0, 0);
    drawCurve();
    drawPoints();
  }

  if (p5==2) {
    image(imgP52, 0, 0);
    ui52();
    noFill();
    stroke (c5);
    strokeWeight(0.3);
    pushMatrix();
    translate (785, 694); 
    scale(5);
    float x1=-d5/2 + cos (0)*d5/2, y1 = -d5/2 + sin (0)*d5/2;
    float x2, y2;
    for (int j = 0; j < 1; j++)
    {
      x1= -d5/2 + cos ((j == 0 ? a2 : a1))*d5/2;
      y1 = -d5/2 + sin ((j == 0 ? a2 : a1))*d5/2;
      for (int i = 0; i < res; i++)
      {
        x2 = -d5/2 + cos ((j == 0 ? a2 : a1)+TWO_PI/res*i)*d5/2; 
        y2 = -d5/2 + sin ((j == 0 ? a2 : a1)+TWO_PI/res*i)*d5/2; 
        line (x1, y1, x2, y2);
      }

      popMatrix();
    }
    noStroke();
    fill(255, 180);
    rect(530, 640, 220, 40);
    fill(252, 75, 13);
    text(sj5, 640, 670);
    shapeMode(CENTER);
    noFill();
    strokeWeight(3); 
    stroke(25, 160, 255);
    arc(x55,y55, 18, 18, 0, TWO_PI);
  }
}

void ui52() {
  if (mouseX>=333&&mouseX<=541&mouseY>=444&&mouseY<=496&&mousePressed) {   
    res=res5[7];
    sj5=sje[7];
    c5= color(232, 170, 174);
    x55=506;y55=470;
  }
  if (mouseX>=177&&mouseX<474&mouseY>=519&&mouseY<=566&&mousePressed) {   
    res=res5[6];
    sj5=sje[6];
    c5= color(248, 74, 10);
    x55=451;y55=537;
  }
  if (mouseX>=177&&mouseX<474&mouseY>=580&&mouseY<=633&&mousePressed) {   
    res=res5[5];
    sj5=sje[5];
    c5= color(255, 177, 109); x55=451;y55=604;
  }
  if (mouseX>=333&&mouseX<=541&mouseY>=640&&mouseY<=693&&mousePressed) {   
    res=res5[4];
    sj5=sje[4];
    c5= color(247, 212, 37); x55=506;y55=671;
  }
  if (mouseX>=766&&mouseX<=947&mouseY>=444&&mouseY<=496&&mousePressed) {   
    res=res5[0];
    sj5=sje[0]; 
    c5= color(88, 140, 210); x55=790;y55=470;
    
  }
  if (mouseX>=811&&mouseX<990&mouseY>=519&&mouseY<=566&&mousePressed) {   
    res=res5[1];
    sj5=sje[1];
    c5= color(86, 107, 162); x55=844;y55=537;
  }
  if (mouseX>=811&&mouseX<990&mouseY>=580&&mouseY<=633&&mousePressed) {   
    res=res5[2];
    sj5=sje[2];
    c5=color(138, 171, 236);x55=844;y55=604;
  }
  if (mouseX>=766&&mouseX<=947&mouseY>=640&&mouseY<=693&&mousePressed) {   
    res=res5[3];
    sj5=sje[3];
    c5= color(210, 211, 248);x55=791;y55=671;
  }
}

void drawCurve() {
  strokeWeight(3);
  fill(255,229,220);
  stroke(170, 172, 232);
  noFill();
 
  beginShape();
  curveVertex(310, 720-m5[0]);
  for (int i = 0; i < m5.length; i++) {
    float xxx = 310 +27 * i;
    curveVertex(xxx, 720-m5[i]);
  }
  curveVertex(310 + 27 * (m5.length - 1), m5[m5.length-1]);
  endShape();
  
  
  strokeWeight(1);
  stroke(255,188,165);
  noFill();

  beginShape();
  curveVertex(310, 720-m5nv[0]);
  for (int i = 0; i < m5nv.length; i++) {
    float xxx = 310 +27 * i;
    curveVertex(xxx, 720-m5nv[i]);
  }
  curveVertex(310 + 27 * (m5nv.length - 1), m5nv[m5nv.length-1]);
  endShape();
}

void drawPoints() {
  for (int i = 0; i < m5.length; i++) {
    float xx =310 + 27* i;
    strokeWeight(8);
    stroke(86, 106, 162);
    point(xx, 720-m5[i]);
    if (mouseX>=xx-10&&mouseX<=xx+10&&mouseY>=720-m5[i]-10&&mouseY<=720-m5[i]+10) {
      //textSize(30);
      //fill(210,211,248);
      //text(riq[i]+"-"+rqe[i],xx+11,720-m5[i]-9);
      noStroke();
      fill(255, 180);
      rect(xx-90, 685-m5[i], 230, 40);
      textSize(30);
      fill(252, 75, 13);//255,171,109
      text(riq[i]+" - "+rqe[i], xx+19, 720-m5[i]-10);
    }
  }
}




void judgePage5() {
  textSize(32);
  fill(c2);
  text("NEXT >>", 1190, 700);

  if (mouseX>=1100&&mouseX<=1200&&mouseY>=670&&mouseY<=720) {
    c2 = color(255);
  } else {
    c2=color(100);
  }
  if (mouseX>=1100&&mouseX<=1200&&mouseY>=670&&mouseY<=720) {
    if (mousePressed) {
      b = 6;
    }
  }
}