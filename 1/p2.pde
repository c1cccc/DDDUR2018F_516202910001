void drawPage2() {
  image(imgP2, 0, 0);  
  fill(253, 250, 198);
  noStroke();
   rectMode(CORNER);
  rect(39, y2, 36, 197);
  rect(39, y2+254, 36, 197); 
  rect(245, y2, 258, 193);
  rect(245, y2+254, 259, 193);
  if (mouseX>=65&&mouseX<=170&&mouseY>=39&&mouseY<=125) {
    if (mousePressed) {
      y2=-125;
      p2=1; rr2=(n2[0]*n2b[0])*0.8;rr2q=n2[0]*0.8;p2_1=n21[0];p2_2=n22[0];
    }
  }   
  if (mouseX>=65&&mouseX<=170&&mouseY>=130&&mouseY<=174) {
    if (mousePressed) {
      y2=-75;
      p2=2;
      rr2=(n2[1]*n2b[1])*2;rr2q=n2[1]*2;p2_1=n21[0];p2_1=n21[1];p2_2=n22[1];
    }
  }   
  if (mouseX>=65&&mouseX<=170&&mouseY>=179&&mouseY<=220) {
    if (mousePressed) {
      y2=-24;
      p2=3;  rr2=(n2[2]*n2b[2])*2.5; rr2q=n2[2]*2.5;p2_1=n21[2];p2_2=n22[2];
    }
  }         
  if (mouseX>=65&&mouseX<=170&&mouseY>=230&&mouseY<=270) {
    if (mousePressed) {
      y2=25;
      p2=4;rr2=n2[3]*n2b[3];rr2q=n2[3]*1.5;p2_1=n21[3];p2_2=n22[3];
    }
  }   
  if (mouseX>=65&&mouseX<=170&&mouseY>=280&&mouseY<=320) {
    if (mousePressed) {
      y2=75;p2_1=n21[4];p2_2=n22[4];
      p2=5;rr2=n2[4]*n2b[4];rr2q=n2[4]*5;
    }
  }

  translate(300, 500);
  rotate(radians(rot));
  noStroke();
  //fill(25, 160, 255);
  fill(255,109,5);
  ellipseMode(RADIUS);
  for (float i=0; i<500; i = i+0.5) {
    ampli = rr2 + 20*sin(millis()*freq*i);
    ampli2 = rr2+ 20*sin(millis()*freq*i);
    ellipse(ampli*cos(i), ampli2*sin(i), 2, 2);
    rot=rot+0.00005;
  }
  //fill(25, 160, 255);
    fill(255,109,5);
  resetMatrix();
  noFill();
  strokeWeight(6); 
   //stroke(255,75,0);
   stroke(25, 160, 255);
   arc(300,500, rr2q, rr2q,0 , TWO_PI);
    //fill(158,198,199);
    fill(255);
   text("14级次数--"+p2_1,190,381);
text("老生次数--"+p2_2,194,421);
   fill(87,108,129);
   text("14级次数--"+p2_1,188,380);
text("老生次数--"+p2_2,192,420);
  
}


void judgePage2() {
  textSize(32);
  fill(c2);
  text("NEXT >>", 590, 700);

  if (mouseX>=500&&mouseX<=600&&mouseY>=670&&mouseY<=720) {
    c2 = color(0);
  } else {
    c2=color(100);
  }
  if (mouseX>=500&&mouseX<=600&&mouseY>=670&&mouseY<=720) {
    if (mousePressed) {
      b = 3;
    }
  }
}