int a, b, c, d, e, f, g, h;
boolean direction;
PFont q;

void setup() {
  size(960, 540);
  colorMode(RGB);
  a = 0;
  b = width;
  direction = true;
  frameRate(25);
  q = createFont("Gothic", 16, true);
}

void keyPressed() {

  if (key == 'q' || key == 'Q') {
    fill(250, 56, 5);
    textFont(q, 30);
    text ("Keeping it 100!", random(0, 320), random(0, 180));
  } else if (key == 'w' || key == 'W') {
    fill(242, 1, 108);
    textFont(q, 32);
    text ("Weird Flex, but Okay!", random(0, 960), random(0, 540));
  } else if (key == 'e' || key == 'e') {
    fill(32, 17, 131);
    textFont(q, 45);
    text ("TFW", random(641, 960), random(361, 540));
  } else if (key == 'r' || key == 'R') {
    fill(254, 125, 25);
    textFont(q, 33);
    text ("The Struggle is Real", random(321, 640), random(181, 360));
  } else if (key == 't' || key == 'T') {
    fill(255, 144, 105);
    textFont(q, 35);
    text ("Thank U, Next", random(300, 960), random(361, 540));
  } else if (key == 'y' || key == 'Y') {
    fill(112, 71, 71);
    textFont(q, 30);
    text ("Yaaaas!", random(100, 200), random(0, 180));
  } else if (key == 'u' || key == 'U') {
    fill(211, 14, 43);
    textFont(q, 40);
    text ("ICYMI", random(400, 800), random(120, 400));
  } else if (key == 'i' || key == 'I') {
    fill(145, 23, 135);
    textFont(q, 30);
    text ("I can't even", random(321, 640), random(181, 360));
  } else if (key == 'o' || key == 'O') {
    fill(0, 160, 198);
    textFont(q, 30);
    text ("Bye Felicia", random(641, 960), random(0, 180));
  } else if (key == 'p' || key == 'P') {
    fill(13, 43, 136);
    textFont(q, 30);
    text ("Pics or didn't happen", random(100, 320), random(0, 540));
  } else {
    textFont(q, 25);
    fill(255, 255, 0);
    text ("Press Key Q to P to interact. Click Mouse to Reset.", 50, height-20);
  }
}
void draw() {  
  noStroke();
  a++;
  if (a > width) {
    a = 0;
    direction = !direction;
  }
  if (direction == true) {
    fill(random(255), random(255), random(255), 10);
    rect(random(0, 960), random(0, 540), a, a);
  } else {
    fill(random(255), random(255), random(255), 10);
    ellipse(random(0, 960), random(0, 540), a, a);
  }
  b--;
  if (b < 0) {
    b = width;
  }
  if (direction == true) {
    fill(random(255), random(255), random(255), 10);
    ellipse(random(0, 960), random(0, 540), b, b);
  } else {
    fill(random(255), random(255), random(255), 10);
    rect(random(0, 960), random(0, 540), b, b);
  }

}

void mouseReleased() {
  clear();
  background(150);
}
