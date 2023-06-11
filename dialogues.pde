// Global arrays 
String[] introDialogue; 
String[] sceneOneDialogue = new String [9];
String[] cafe1D; 
String[] cafeOneDialogue = new String [5]; 
String[] cafeSD; 
String[] cafeSorryDialogue = new String [13]; 
String[] cafPartOne; 
String[] cafPartOneDialogue = new String [7]; 
String[] cafOut; 
String[] cafOutsideDialogue = new String [18]; 
String[] cart; 
String[] cartDialogue = new String [12]; 
String[] patientOne; 
String[] patientRoomOneDialogue = new String [12]; 
String[] patientTwo; 
String[] patientRoomTwoDialogue = new String [10]; 
String[] announcement;
String[] announcementDialogue = new String [9]; 
String[] paOne; 
String[] paOneDialogue = new String [11]; 
String[] paTwo; 
String[] paTwoDialogue = new String [29]; 


//Loading each scene 
void loadSceneOne() {
  for(int i = 0; i < sceneOneDialogue.length; i++) {
    String line = introDialogue[i]; 
    sceneOneDialogue[i] = line; 
  }
}

void loadCafeOne() {
  for(int i = 0; i < cafeOneDialogue.length; i++) {
    String line = cafe1D[i]; 
    cafeOneDialogue[i] = line; 
  }
}

void loadCafeSorry() {
  for(int i = 0; i < cafeSorryDialogue.length; i++) {
   String line = cafeSD[i]; 
   cafeSorryDialogue[i] = line; 
  }
}

void loadCafPartOne() {
  for(int i = 0; i < cafPartOneDialogue.length; i++) {
    String line = cafPartOne[i];
    cafPartOneDialogue[i] = line; 
  }
}

void loadCafOut() {
  for(int i = 0; i < cafOutsideDialogue.length; i++) {
    String line = cafOut[i]; 
    cafOutsideDialogue[i] = line; 
  }
}

void loadCart() {
  for(int i = 0; i < cartDialogue.length; i++) {
    String line = cart[i]; 
    cartDialogue[i] = line; 
  }
}

void loadPatientRoomOne() {
  for(int i = 0; i < patientRoomOneDialogue.length; i++) {
    String line = patientOne[i]; 
    patientRoomOneDialogue[i] = line; 
  }
}

void loadPatientRoomTwo() {
  for(int i = 0; i < patientRoomTwoDialogue.length; i++) {
    String line = patientTwo[i]; 
    patientRoomTwoDialogue[i] = line; 
  }
}

void loadAnnouncement() {
  for(int i = 0; i < announcementDialogue.length; i++) {
    String line = announcement[i]; 
    announcementDialogue[i] = line; 
  }
}

void loadPaOne() {
  for(int i = 0; i < paOneDialogue.length; i++) {
    String line = paOne[i]; 
    paOneDialogue[i] = line; 
  }
} 

void loadPaTwo() {
  for(int i = 0; i < paTwoDialogue.length; i++) {
    String line = paTwo[i];
    paTwoDialogue[i] = line; 
  }
}


//Writing each bottom text
void writeText(String text) {
  nextButton(); 
  fill(255); 
  textSize(40); 
  textAlign(LEFT);
  text(text, 80, 850); 
}


//Writing each coloured bottom text 
void writeOtherText(String text) {
  nextButton(); 
  fill(230, 172, 67); 
  textSize(40); 
  textAlign(LEFT); 
  text(text, 80, 850); 
}


//Next button each scene 
void nextButton() {
  fill(0); 
  rect(0, 800, 1800, 200); 
  
  fill(255, 74, 152);
  rect(1630, 890, 150, 60); 
  
  fill(0); 
  textAlign(LEFT);
  textSize(40); 
  text("Next", 1665, 930);
}
