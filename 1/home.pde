PFont fontHY;
int a =0;//主页判断
int b = 1; //翻页判断
//ZHUYE
ArrayList<PVector> circle = new ArrayList<PVector>();
ArrayList<PVector> square = new ArrayList<PVector>();
ArrayList<PVector> morph = new ArrayList<PVector>();
boolean state = false;
//end
float YY=-720;

int size=66;//ZI
color c = color(247, 239, 144); 
//p1
float circleSize = 400;
float radius = circleSize/2;
int period = 3; //speed
float x = 0;
float particleY;
float amplitude;
float sineEl;
float r = 0.;
int randomPart[] = new int[300];
int partSize[] = new int[300];
int p1x=799;
  color c2=color(100);
  int p1=1;int p11=11;
  //sanggefang
  float r0 = 0, r0inc =  PI/90;
float r1 = 0, r1inc = -PI/100;
float r2 = 0, r2inc =  PI/70;
int step, i=0, num=26;//BAIYECHUANG
float theta;
//p2
float ampli = 200;
float ampli2 = 200;
float Mag01;
float Mag02;
float rot;
float bgC = 50;
float freq = 0.000005; //0.189 | 0.438
float cont = 0;

int y2=-125;
int p2=1;
int []n2 = new int[5];float []n2b = new float[5];int []n21 = new int[5];int []n22 = new int[5];
float rr2=126.48;
float rr2q=40.8;
int p2_1=673;int p2_2=1396;
//P3
float i3 = 185;
float j = 0;
float tr = 5;
float mr = 12;
int initial = 1;
float cx,cy,cr=100;
float q=0;
boolean qIncreasing = false;
boolean qDecreasing = false;
int []num3 = new int[54];

//p4
int x4=0;

//P5
int y5=481;
int p5=1;
String []riq = new String[27];
float []rqe = new float[27];
float []rqenv = new float[27];
float []sje = new float[8];
float []m5 = new float[27];
float []m5nv = new float[27];
float sj5=24.84;
int []res5=new int[8]; 
int margin5= width/10;
float d5 = (width-2*width/10) * 0.66667;
int res = 4;
float a1 = -PI;
float  a2 = PI/2;
color c5 = color(86,106,162);
int x55=790;int y55=470;
//bgm
import ddf.minim.*;
Minim minim;
AudioPlayer song;

//图片
PImage imgZY;
PImage imgP1;PImage imgP11;PImage imgP12;PImage imgP13;PImage imgP122;PImage imgP1222;
PImage imgP2;PImage imgP3;PImage imgP31;PImage imgP4;PImage imgP41;PImage imgP5;PImage imgP51;PImage imgP52;PImage imgPEND;PImage imgPEDDOWN;

//表格
Table table2;Table table3;Table table51;Table table52;

void setup() { 
  size(1280, 720);

  fontHY = createFont("HYHeiLiZhiTiJ", 240);
  smooth();
  imgZY = loadImage("zhuye.png"); 
  imgP1 = loadImage("P1.png"); imgP11 = loadImage("P1-11.png"); imgP12 = loadImage("P1-2.png"); imgP13 = loadImage("P1-3.png");imgP122 = loadImage("P1-22.png");imgP1222 = loadImage("P1-222.png");  
  imgP2 = loadImage("P2.png");imgP3 = loadImage("P3.png");imgP31 = loadImage("P31.png");imgP4 = loadImage("P4.png");imgP41= loadImage("P41.png");imgP5 = loadImage("P5.png");imgP51 = loadImage("P51.png");imgP52 = loadImage("P52.png");imgPEND = loadImage("END.png");imgPEDDOWN = loadImage("ENDDOWN.png");
  minim = new Minim(this);
  //song = minim.loadFile("song.mp3", 2048);
  //MORPH
  for (int angle = 0; angle < 360; angle += 9) {
    PVector v = PVector.fromAngle(radians(angle-135));
    v.mult(90);
    circle.add(v);
    morph.add(new PVector());
  }
  for (int x = -50; x < 50; x += 10) {
    square.add(new PVector(x, -50));
  }
  for (int y = -50; y < 50; y += 10) {
    square.add(new PVector(50, y));
  }
  for (int x = 50; x > -50; x -= 10) {
    square.add(new PVector(x, 50));
  }
  for (int y = 50; y > -50; y -= 10) {
    square.add(new PVector(-50, y));
  }
 
  //p1
    for (int i = 0; i < randomPart.length; i++) {
    randomPart[i] = int(random(100, 500));
    partSize[i] = int(random(2, 11));
  }  step=height/num;
  //p2
   table2 = loadTable("tansuo.csv");
//p3
  table3 = loadTable("canyinxiaofei.csv");
//p5
  table51 = loadTable("riqi.csv");
table52 = loadTable("shijian.csv");
   getData();
}


void getData(){
  //p2
  for (int i=0; i<5; i++) {
    TableRow b=table2.getRow(i+13);
    n2[i]=b.getInt(6);n2b[i]=b.getFloat(5);n21[i]=b.getInt(1);n22[i]=b.getInt(2);
  }
//p3
for (int i=0; i<54; i++) {
    TableRow a=table3.getRow(i);
    num3[i]=a.getInt(2);
  }
//p5
for (int i=0; i<27; i++) {
    TableRow c=table51.getRow(i);
    riq[i]=c.getString(0);
  }
  for (int i=0; i<27; i++) {
    TableRow c=table51.getRow(i);
    rqe[i]=c.getFloat(1);rqenv[i]=c.getFloat(2);
    m5[i]=map(rqe[i],0,103165,52,245);
    m5nv[i]=map(rqenv[i],0,103165,52,245);
  }
    for (int i=0; i<8; i++) {
    TableRow c=table52.getRow(i);
    sje[i]=c.getFloat(1);
    res5[i] =c.getInt(2) ;
  }
}

void draw() {
  if (a == 0 ) {
    zhuye();
  } else {
    judge();
  }
}

void zhuye() {

  image(imgZY, 0, 0);
  textFont(fontHY);
  textSize(size);
  fill(c);
  textAlign(CENTER);
  text("GO", 610, 470);

  //fang-yuan
  float totalDistance = 0;
  for (int i = 0; i < circle.size(); i++) {
    PVector v1;

    if (mouseX>=580&&mouseX<=640&&mouseY>=420&&mouseY<=480) {
      size=78;
      c = color(169, 232, 220);
      v1 = circle.get(i);

      if (mousePressed) {
        a = 1;
      }
    } else {
      v1 = square.get(i);
      size=68;
      c = color(247, 239, 144);
    }
    PVector v2 = morph.get(i);
    v2.lerp(v1, 0.1);
    totalDistance += PVector.dist(v1, v2);
  }
  translate(width/2-30, height/2+90);
  strokeWeight(5);
  beginShape();
  noFill();
  stroke(255);
  for (PVector v : morph) {
    vertex(v.x, v.y);
  }
  endShape(CLOSE);

}




void judge() {

  if (b == 1) {
    page1();
  }
   else if(b == 2){  
       page2();
   }
   else if(b == 3){  
       page3();
   }
   else if(b == 4){
       page4();
   }
   else if(b == 5){
       page5();
   }
      else if(b == 6){
      bye();
   }
}

void bye(){

 image(imgPEND, 0, 0);
  image(imgPEDDOWN, 0, YY);
  YY=YY+1.7;
  if (YY>-200){
    textSize(32);
  fill(c2);
  text("<< BACK",120, 700);

  if (mouseX>=0&&mouseX<=250&&mouseY>=670&&mouseY<=720) {
    c2 = color(0);
  } else {
    c2=color(100);
  }
  if (mouseX>=0&&mouseX<=250&&mouseY>=670&&mouseY<=720) {
    if (mousePressed) {
      a=0;
      b=1;
    }
  }
  }
}

void page1() {
  drawPage1();
  judgePage1();
}

void page2(){
  drawPage2();
  judgePage2();  
}

void page3(){
  drawPage3();
  judgePage3();  
}

void page4(){
  drawPage4();
  judgePage4();  
}

void page5(){
  drawPage5();
  judgePage5();  
}
