//Variables
int qButX1 = 300; 
int qButY = 850; 
int qButX2 = 1200; 

void basicSetup() {
  fill(0); 
  rect(0, 800, 1800, 200); 
  fill(255); 
  rect(0, 0, 1800, 800); 
}

void questionSetup(String question) {
  fill(0); 
  rect(0, 750, 1800, 300); 
  fill(255); 
  rect(0, 0, 1800, 750); 
  fill(255); 
  textAlign(CENTER); 
  textSize(60); 
  text(question, width/2, 820);
  
  fill(255, 74, 152); 
  rect(300, 850, 350, 100);
  rect(1200, 850, 350, 100);
  
  fill(0); 
  textSize(30);
}

void intro() {
  basicSetup(); 
  writeText(sceneOneDialogue[0]); 
}

void lunchScene() {
  fill(0); 
  rect(0, 800, 1800, 200); 
  fill(255); 
  textAlign(CENTER); 
  textSize(60); 
  text("Where do you want to go first?", width/2, 750);
  
  //Option buttons 
  fill(255, 74, 152); 
  rect(400, 850, 250, 75);
  rect(1300, 850, 250, 75);
  
  fill(0); 
  textSize(50);
  text("Cafe", 520, 905); 
  text("Cafeteria", 1410, 910);
}

void cafeSceneOne() {
  basicSetup(); 
  caf1Play = true;
  writeText(cafeOneDialogue[0]); 
}

void cafeQuestion() {
  questionSetup("How should you reply?");
  text("Apologize and offer\nto pay", 480, 890); 
  text("Tell him to watch \nwhere he's going", 1390, 890);
}

void cafeSorry() {
  basicSetup();
  writeText(cafeSorryDialogue[0]); 
}

void cafeteriaPartOne() {
  basicSetup(); 
  writeText(cafPartOneDialogue[0]); 
}

void cafQuestion() {
  questionSetup("What would you like to do?"); 
  text("Eat lunch outside\nwith her", qButX1 + 180, qButY + 40); 
  text("Tell her that you\ndespise the sun", qButX2 + 180, qButY + 40);  
}

void cafOutside() {
  basicSetup(); 
  writeText(cafOutsideDialogue[0]); 
}
