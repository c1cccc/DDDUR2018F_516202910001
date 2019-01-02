void drawPage4() {
     image(imgP41, x4, 0); 
     image(imgP41, x4-1267, 0); 
  image(imgP4, 0, 0);
x4=x4+1;
if(x4>700){x4=0;}
}


void judgePage4() {
  textSize(32);
  fill(c2);
  text("NEXT >>",660, 700);

  if (mouseX>=570&&mouseX<=670&&mouseY>=670&&mouseY<=720) {
    c2 = color(255);
  } else {
    c2=color(100);
  }
  if (mouseX>=570&&mouseX<=670&&mouseY>=670&&mouseY<=720) {
    if (mousePressed) {
      b = 5;
    }
  }
}