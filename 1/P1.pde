void drawPage1() {

  image(imgP1, 0, 0);
  fill(169, 132, 198);
  noStroke(); 
rectMode(CORNER);
  rect(p1x, 178, 117, 9);
  p1d();
  if (mouseX>=950&&mouseX<=1050&&mouseY>=120&&mouseY<=180) {
    if (mousePressed) {
      p1x=951;
      p1=2;
    }
  }
  if (mouseX>=1110&&mouseX<=1210&&mouseY>=120&&mouseY<=180) {
    if (mousePressed) {
      p1x=1103;
      p1=3;
    }
  } 
  if (mouseX>=800&&mouseX<=910&&mouseY>=120&&mouseY<=180) {
    if (mousePressed) {
      p1x=799;
      p1=1;
      p11=11;
    }
  }
}




void p1d() {
  fill(169, 132, 198);
  if (p1==1) {
    p11();
  }
  if (p1==2) {
     image(imgP122, 0, 0);
       i=0;
  for (int y=250; y<670; y += step) {
    float sw = map(sin(theta+(TWO_PI/num*i)), -1, 1, 1.5, 12);
    
    stroke(250,240,190);
    strokeWeight(sw*0.7);
    line(820, y, 1230, y);
    i++;
  }
  theta += .0523;
  image(imgP1222, 0, 0);
  }
  if (p1==3) {
    p13();
  }
}

void p13() {
  fill(250,240,190);
rect(780,300,600,700);

rectMode(CENTER);
  drawBlurRect(width*0.5+320, height*0.5+50, r0, r0inc, 200, 255);
  drawBlurRect(width*0.7+150, height*0.5, r1, r1inc, 100, #FF0000);
  drawBlurRect(width*0.6+200, height*0.7, r2, r2inc, 150, #FFCC00);

  r0 += r0inc;
  r1 += r1inc;
  r2 += r2inc;

  image(imgP13, 0, 0);

}

void drawBlurRect(float x, float y, float ang, float anginc, float sz, color col) {
   //rectMode(CENTER);
  pushMatrix();
  translate(x, y);
  rotate(ang);
  for (int c=0; c<10; c++) {
    fill(col, 5 + pow(1-c/10.0, 5) * 250);
    rect(40, 0, sz, sz);
    rotate(-anginc);
  }
  popMatrix();
}


void p11() {
  if (p11==11) {
    //全员
    x += 0.01;
    for (int yRand = 0; yRand < randomPart.length; yRand++) {
      particleY = randomPart[yRand];
      float sine = sin((2*PI*x)/period + randomPart[yRand]);
      amplitude = sqrt(sq(radius) - sq(abs(height/2 - particleY)));
      sineEl = width/2 + sine * amplitude;
      float particleSize = partSize[yRand];
      //rotation
      pushMatrix();
      translate(width/2+370, height/2+50);
      r += 0.005;
      rotate(radians(r));
      translate(-width/2, -height/2);
      stroke(255);
      noStroke();
      fill(255);
      ellipse(sineEl, particleY, particleSize, particleSize);
      popMatrix();
      noFill();
      stroke(255);
      
    } image(imgP11, 0, 0);
  } else {
    image(imgP12, 0, 0);
  }

  if (mouseX>=850&&mouseX<=1150&&mouseY>=270&&mouseY<=570&&mousePressed) {
    p11=12;
  }
}


void judgePage1() {
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
      b = 2;
    }
  }
}