//Variables
int qButX1 = 300; 
int qButY = 850; 
int qButX2 = 1200; 


//Basic photo area and black bar
void basicSetup() {
  fill(0); 
  rect(0, 800, 1800, 200); 
  fill(255); 
  rect(0, 0, 1800, 800); 
}


//Basic question set up 
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


//Each screen
void intro() {
  basicSetup(); 
  imageMode(CORNER);
  image(intro, 0, 0, 1800, 800);
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
  rect(1150, 850, 250, 75);
  
  fill(0); 
  textSize(50);
  textAlign(CENTER);
  text("Cafe", 525, 910); 
  text("Cafeteria", 1275, 910);
}


  //Cafe
void cafeSceneOne() {
  basicSetup(); 
  caf1Play = true;
  imageMode(CORNER); 
  image(ceoCafe, 0, 0, 1800, 800);
  writeText(cafeOneDialogue[0]); 
}

void cafeQuestion() {
  questionSetup("How should you reply?");
  image(ceoCafe, 0, 0, 1800, 750);
  text("Apologize and offer\nto pay", 475, 890); 
  text("Tell him to watch \nwhere he's going", 1375, 890);
}

void cafeSorry() {
  basicSetup();
  image(ceoCafe, 0, 0, 1800, 800);
  writeText(cafeSorryDialogue[0]); 
}


  //Cafeteria
void cafeteriaPartOne() {
  basicSetup(); 
  imageMode(CORNER);
  image(cafDoctor, 0, 0, 1800, 800); 
  writeText(cafPartOneDialogue[0]); 
}

void cafQuestion() {
  questionSetup("What would you like to do?"); 
  image(cafDoctor, 0, 0, 1800, 750);
  text("Eat lunch outside\nwith her", qButX1 + 180, qButY + 40); 
  text("Tell her that you\ndespise the sun", qButX2 + 180, qButY + 40);  
}

void cafOutside() {
  basicSetup(); 
  image(cafDoctor, 0, 0, 1800, 800); 
  writeOtherText(cafOutsideDialogue[0]); 
}


void messScene() {
  fill(0); 
  rect(0, 0, 1800, 1000); 
  
  //Option buttons 
  fill(255, 74, 152); 
  rect(400, 850, 250, 75);
  rect(1150, 850, 250, 75);
  
  fill(0); 
  textSize(40);
  textAlign(CENTER); 
  text("Lobby", 525, 905); 
  text("Room 2324", 1275, 905);
  
  fill(255); 
  textSize(50); 
  text("You are informed that you need to clean up messes at the lobby and in Room 2324.\nWhere do you want to go first?", width/2, 600);
}


  //Cart Scene
void cartScene() {
  basicSetup(); 
  imageMode(CORNER);
  image(cartNurse, 0, 0, 1800, 800); 
  writeText(cartDialogue[0]); 
}


  //Patient Scene 
void patientRoomOne() {
  basicSetup(); 
  imageMode(CORNER);
  image(patient, 0, 0, 1800, 800); 
  writeText(patientRoomOneDialogue[0]); 
}

void patientQuestion() {
  questionSetup("What do you want to do?");
  imageMode(CORNER);
  image(patient, 0, 0, 1800, 750); 
  textAlign(CENTER);
  text("Pretend you're not\nthere", qButX1 + 175, qButY + 45); 
  text("Say hi", qButX2 + 175, qButY + 60);  
}

void patientRoomTwo() {
  basicSetup();
  imageMode(CORNER);
  image(patient, 0, 0, 1800, 800); 
  writeText(patientRoomTwoDialogue[0]); 
}


  //Announcement 
void announcementScene() {
  fill(0); 
  rect(0, 0, 1800, 1000); 
  writeText(announcementDialogue[0]); 
}


  //Final decision 
void decision() {
  fill(0);    
  rect(0, 0, 1800, 1000); 
    
  fill(255); 
  
  textSize(50); 
  textAlign(CENTER); 
  text("Where do you go?", width/2, 100); 
  
  fill(255, 74, 152); 
  rect(700, 250, 400, 125); 
  rect(700, 425, 400, 125); 
  rect(700, 600, 400, 125); 
  rect(700, 775, 400, 125); 
  
  fill(0); 
  textSize(30);
  text("PA room: with the CEO", 900, 312); 
  text("Lobby: with the nurse", 900, 497); 
  text("Room 2324: with your ex", 900, 662); 
  text("Cafeteria: with your best friend", 900, 837); 
}


  //CEO Special Scene 
void paSceneOne() {
  basicSetup();
  image(ceoSpecial, 0, 0, 1800, 800); 
  writeText(paOneDialogue[0]); 
}

void paQuestion() {
  questionSetup("What do you do?"); 
  image(ceoSpecial, 0, 0, 1800, 750); 
  textAlign(CENTER);
  text("Leave and hide\nsomewhere else", qButX1 + 175, qButY + 45); 
  text("Stay with him", qButX2 + 175, qButY + 55); 
}

void paSceneTwo() {
  basicSetup(); 
  image(ceoSpecial, 0, 0, 1800, 800); 
  writeText(paTwoDialogue[0]); 
}

void finalScene() {
  questionSetup("What should you do?"); 
  image(ceoSpecial, 0, 0, 1800, 750); 
  textAlign(CENTER);  
  text("Reach for his hand\nfor support", qButX1 + 175, qButY + 50);
  text("Ignore him", qButX2 + 175, qButY + 55); 
}
