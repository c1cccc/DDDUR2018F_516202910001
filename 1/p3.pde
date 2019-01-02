void drawPage3() {
    image(imgP3, 0, 0);
     if(j%2 == 0) {
      i3 = i3 - 3;
    } else {
      i3 = i3 + 3;
    }
    
    if(i3 <= 0) {
      j++;
    } else if (i3 >= 185) {
      j++;
    }
    noStroke();
    cx = 640;
    cy = 625;
    //fill(100,200,i3);
    fill(i3,150,180);
    if(sqrt(sq(cx-mouseX)+sq(cy-mouseY))<cr) {
      qIncreasing = true;
      qDecreasing = false;
    } else {
      qIncreasing = false;
      qDecreasing = true;
    }      
    int sizeChangeFrames = 10;
    float sizeup = 40.0/sizeChangeFrames;
    
    if(qIncreasing && q < sizeChangeFrames) {
      q++;
    }
    if(qDecreasing && q >0) {
      q--;
    }   
    ellipse(cx,cy,(1.5*cr+sizeup*q)*0.8,(1.5*cr+sizeup*q)*0.7);
    ellipse(cx+190,cy,(1.5*(cr-20)-sizeup*q)*0.8,(1.5*(cr-20)-sizeup*q)*0.7);
    ellipse(cx-190,cy,(1.5*(cr-20)-sizeup*q)*0.8,(1.5*(cr-20)-sizeup*q)*0.7);

     image(imgP31, 0, 4);   
     p33();
}

void p33(){
if (mouseX>=500&&mouseX<=770&&mouseY>=500&&mouseY<=700) {
  fill(255);
  textSize(40);
text(num3[1],640,693);
fill(147,97,168);
text(num3[2],329,675);
text(num3[3],945,675);
}
if (mouseX>=180&&mouseX<=350&&mouseY>=450&&mouseY<=600) {
fill(147,97,168);text(num3[4],249,609);
}
if (mouseX>=950&&mouseX<=1100&&mouseY>=450&&mouseY<=600) {
fill(147,97,168);text(num3[5],1030,609);
}
if (mouseX>=50&&mouseX<=200&&mouseY>=315&&mouseY<=455) {
fill(147,97,168);text(num3[6],124,450);
}
if (mouseX>=1070&&mouseX<=1220&&mouseY>=315&&mouseY<=455) {
fill(147,97,168);text(num3[7],1150,450);
}
if (mouseX>=125&&mouseX<=270&&mouseY>=55&mouseY<=190) {
fill(147,97,168);text(num3[8],201,200);
}
if (mouseX>=1036&&mouseX<=1366&&mouseY>=55&mouseY<=190) {
fill(147,97,168);text(num3[9],1096,64);
}

}

void judgePage3() {
  textSize(32);
  fill(c2);
  text("NEXT >>", 1190, 700);

  if (mouseX>=1100&&mouseX<=1200&&mouseY>=670&&mouseY<=720) {
    c2 = color(0);
  } else {
    c2=color(100);
  }
  if (mouseX>=1100&&mouseX<=1200&&mouseY>=670&&mouseY<=720) {
    if (mousePressed) {
      b = 4;
    }
  }
}