oid setup (){
size(500,500);
}

void draw () {
  //this is space
background(125);
fill(0);
ellipse(250,250,400,400);
stroke(100);
//this is the brackets of the window
strokeWeight(10);
point(100,120);
point(100,380);
point(400,120);
point(400,380);
line(100,120,400,380);
line(100,380,400,120);

strokeWeight(4);
stroke(255);
//northern stars
point(160,100);
point(200,150);
point(240,100);
point(275,110);
point(220,130);
point(290,175);
point(250,200);
point(320,145);
point(350,100);
//western stars
point(120,215);
point(163,211);
point(90,260);
point(130,280);
point(190,250);
point(80,300);
//southern stars
point(315,411);
point(295,361);
point(255,300);
point(230,330);
point(190,380);
point(220,390);
//eastern stars
point(390,190);
point(400,250);
point(420,200);
point(335,230);
point(400,320);
point(375,260);
//control pannel
stroke(125);
fill(100);
strokeJoin(ROUND);
rect(420,410,50,70);
}
