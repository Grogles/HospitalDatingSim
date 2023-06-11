//Global variables 
int textSwitch = 0; 
int cafNum = 0; 
int cartNum = 0; 
int patientNum = 0; 
int announcementNum = 0; 
int paNum = 0; 

  //Screens
Boolean mainScreen; 
Boolean firstScene = false; 
Boolean lunchScreen = false; 
Boolean cafePartOne = false; 
Boolean cafeSorry = false; 
Boolean cafeteriaPartOne = false; 
Boolean cafeQuestion = false; 
Boolean cafeDone = false; 
Boolean caf1Play = false;
Boolean cafeterialPartTwo = false; 
Boolean cafeteriaQuestion = false;
Boolean cafOutside = false; 
Boolean cafDone = false;
Boolean messScreen = false; 
Boolean cartScreen = false; 
Boolean cartDone = false; 
Boolean patientRoomOne = false; 
Boolean patientRoomQuestion = false; 
Boolean patientRoomTwo = false; 
Boolean patientRoomDone = false; 
Boolean announcementScreen = false; 
Boolean decisionScreen = false; 
Boolean paScreenOne = false;
Boolean paQuestion = false;
Boolean paScreenTwo = false; 
Boolean finalScreen = false; 

  //Images
PImage heart; 
PImage plus; 
PImage ceoCafe; 
PImage cafDoctor;
PImage cartNurse; 
PImage patient; 
PImage ceoSpecial; 

void setup() {
  size(1800,1000);  
  mainScreen = true;
  
  //loading all text files
  introDialogue = loadStrings("intro/intro.txt"); 
  cafe1D = loadStrings("cafe/cafePartOne.txt"); 
  cafeSD = loadStrings("cafe/cafeSorry.txt"); 
  cafPartOne = loadStrings("cafeteria/cafeteriaPartOne.txt"); 
  cafOut = loadStrings("cafeteria/cafeteriaOutside.txt"); 
  cart = loadStrings("cartScene/cart.txt"); 
  patientOne = loadStrings("patientRoom/patientRoomPartOne.txt"); 
  patientTwo = loadStrings("patientRoom/patientRoomTwo.txt"); 
  announcement = loadStrings("announcement/announcement.txt"); 
  paOne = loadStrings("paScene/paSceneOne.txt"); 
  paTwo = loadStrings("paScene/paSceneTwo.txt"); 
  loadSceneOne();
  loadCafeOne(); 
  loadCafeSorry(); 
  loadCafPartOne(); 
  loadCafOut(); 
  loadCart(); 
  loadPatientRoomOne(); 
  loadPatientRoomTwo(); 
  loadAnnouncement(); 
  loadPaOne();
  loadPaTwo();
  
  //Loading images
  imageMode(CENTER);
  heart = loadImage("heart.png"); 
  heart.resize(100, 100); 
  plus = loadImage("redPlus.png");
  plus.resize(100, 100); 
  ceoCafe = loadImage("cafe/ceoCafe.png"); 
  cafDoctor = loadImage("cafeteria/cafDoctor.png"); 
  cartNurse = loadImage("cartScene/cartNurse.png"); 
  patient = loadImage("patientRoom/patient.png"); 
  ceoSpecial = loadImage("paScene/ceoSpecial.png");
  
  //Starting screen 
  fill(255); 
  rect(0, 0, 1800, 1000); 
  
    // Title 
  fill(255, 74, 152);
  textSize(120); 
  textAlign(CENTER);
  text("The Good Janitor", width/2, 400); 
  
    // Start button
  int xBut = 700; 
  int yBut = 650;
   
  rect(xBut, yBut, 400, 100);
  fill(0);    
  textSize(50); 
  textAlign(CENTER);     
  text("Start", xBut + 190, yBut + 60); 
  
    //Displaying images
  image(heart, 200, 150);
  image(heart, 500, 800); 
  image(heart, 1200, 200);
  image(heart, 1700, 850);
  image(plus, 250, 600);
  image(plus, 1200, 850);
  image(plus, 700, 50);
  image(plus, 1650, 100);
    
}


void draw() {
  if (firstScene == true && textSwitch == 0) 
    intro(); 
    
  if (cafePartOne == true && caf1Play == false) {
    cafeSceneOne(); 
  }
}


void mousePressed() {
  
  //Main screen 
  if(mainScreen == true) {
    if (dist(900, 500, mouseX, mouseY) < 400) {
      mainScreen = false; 
      firstScene = true; 
    }
  }
  
  //Backstory scene 
  if (firstScene == true) {
    if (dist(1700, 925, mouseX, mouseY) < 100) {
      
      if(textSwitch < (sceneOneDialogue.length)) {
        writeText(sceneOneDialogue[textSwitch]); 
        if(textSwitch == 8) {
          fill(0); 
          rect(0, 0, 1800, 1000); 
          writeText("It's lunch time. YAYY! You desperately crave coffee, but you remember that you have to \nmeet your bestie in the cafeteria."); 

        }
      }
      if(textSwitch == 9) {
        firstScene = false;
        lunchScreen = true;
        lunchScene(); 
      }
      textSwitch += 1;
    }
  }
  
  
  //Caf vs cafe decision 
  if(lunchScreen == true) {
    
    if (dist(525, 890, mouseX, mouseY) < 200) {
      cafePartOne = true; 
      cafeDone = true; 
      lunchScreen = false; 
    }
      
    else if (dist(1425, 890, mouseX, mouseY) < 200) {
      cafeteriaPartOne = true;
      cafDone = true; 
      lunchScreen = false;
      cafeteriaPartOne(); 
    }
  }
  
  
  //Cafe
  if(cafePartOne == true) {
    
    if(dist(1700, 925, mouseX, mouseY) < 100) {
      if(textSwitch < 15) {
        int num = textSwitch - 10; 
        if(num == 2 || num == 4)
          writeOtherText(cafeOneDialogue[num]);
        else
          writeText(cafeOneDialogue[num]);
      }
    }   
    textSwitch += 1; 
    
    if(textSwitch == 16) {
      cafeQuestion(); 
      cafePartOne = false; 
      cafeQuestion = true;
    }
  }
  
  if(cafeQuestion == true) {
    
    if(dist(475, 900, mouseX, mouseY) < 100) {
      cafeQuestion = false; 
      cafeSorry = true; 
      cafeSorry();  
    }
    if(dist(1375, 900, mouseX, mouseY) < 100) {
      cafeQuestion = false;
      basicSetup(); 
      cafeSorry = true; 
      int num = textSwitch - 12; 
      image(ceoCafe, 0, 0, 1800, 800); 
      writeText(cafeSorryDialogue[num]); 
      textSwitch += 4;
    }
  }
  
  if(cafeSorry == true) {
    
    if(dist(1700, 925, mouseX, mouseY) < 100) {
      if(textSwitch < 29) {
        int num = textSwitch - 16; 
        if(num == 1 || num == 5 || num == 6)
          writeOtherText(cafeSorryDialogue[num]); 
        else
          writeText(cafeSorryDialogue[num]); 
      }
    }
    
    textSwitch += 1; 
    
    if(textSwitch == 30) {
      cafeSorry = false; 
      
      if(cafDone == false) {
        cafeteriaPartOne = true; 
        cafeteriaPartOne(); 
      }
      
      else {
        messScreen = true;
        messScene(); 
      }
    }
  }
  
  
  //Cafeteria
  if(cafeteriaPartOne == true) {
    
    if(dist(1700, 925, mouseX, mouseY) < 100) {
      if(cafNum < 7) {
        if(cafNum == 2 || cafNum == 5)
          writeOtherText(cafPartOneDialogue[cafNum]);  
        else
          writeText(cafPartOneDialogue[cafNum]);
      }
    }
    cafNum += 1; 
    
    if(cafNum == 8) {
      cafeteriaPartOne = false; 
      cafeteriaQuestion = true; 
      cafQuestion(); 
    }
  }
  
  if(cafeteriaQuestion == true) {
    if(dist(475, 900, mouseX, mouseY) < 100) {
      cafeteriaQuestion = false; 
      cafOutside = true; 
      cafOutside(); 
      
    }
    if(dist(1375, 900, mouseX, mouseY) < 100) {
      cafeteriaQuestion = false; 
      cafOutside = true; 
      basicSetup(); 
      image(cafDoctor, 0, 0, 1800, 800); 
      writeText("'Oh, okay thats fine no worries! We can eat in the staff room'"); 
      cafNum += 1; 
    }
  }
  
  if(cafOutside == true) {
    
    if(dist(1700, 925, mouseX, mouseY) < 100) {
      if(cafNum < 26) {
        int num = cafNum - 8; 
        if(num == 3 || num == 5 || num == 9 || num == 15)
          writeOtherText(cafOutsideDialogue[num]); 
        else
          writeText(cafOutsideDialogue[num]); 
      }
    }
    cafNum += 1; 
    
    if(cafNum == 27) {
      cafOutside = false; 
      
      if(cafeDone == false) {
        cafePartOne = true; 
        cafeDone = true; 
        cafOutside = false;  
      }
      else {
        messScreen = true;
        messScene();
      }
    }
  }
  
  
  //Patient vs lobby decision
  if(messScreen == true) {
    
    if (dist(525, 890, mouseX, mouseY) < 200) {
      cartScreen = true; 
      cartDone = true; 
      messScreen = false; 
      cartScene();
    }
      
    else if (dist(1425, 890, mouseX, mouseY) < 200) {
      patientRoomOne = true; 
      patientRoomDone = true; 
      messScreen = false;
      patientRoomOne();
    }
  }
  
  
  //Nurse with cart 
  if(cartScreen == true) {
    
    if(dist(1700, 925, mouseX, mouseY) < 100) {
      if(cartNum < 12)
        if(cartNum == 6 || cartNum == 10)
          writeOtherText(cartDialogue[cartNum]);  
        else 
          writeText(cartDialogue[cartNum]); 
    }
    cartNum += 1; 
    
    if(cartNum == 13) {
      cartScreen = false; 
      
      if(patientRoomDone == false) {
        patientRoomOne = true; 
        patientRoomOne(); 
      }
      
      else {
        announcementScreen = true; 
        announcementScene(); 
      }
    }
  }
  
  
  //Patient Room
  if(patientRoomOne == true) {
    
    if(dist(1700, 925, mouseX, mouseY) < 100) {
      if(patientNum < 12)
          writeText(patientRoomOneDialogue[patientNum]); 
    }
    patientNum += 1; 
    
    if(patientNum == 13) {
      patientRoomOne = false; 
      patientRoomQuestion = true; 
      patientQuestion(); 
    }    
  }
  
  if(patientRoomQuestion == true) {
    if(dist(475, 900, mouseX, mouseY) < 100) {
      patientRoomQuestion = false; 
      patientRoomTwo = true; 
      patientRoomTwo(); 
      
    }
    if(dist(1375, 900, mouseX, mouseY) < 100) {
      patientRoomQuestion = false; 
      patientRoomTwo = true; 
      basicSetup(); 
      image(patient, 0, 0, 1800, 800);
      writeText("Hi…old friend");
      patientNum += 3;
    }
  }
  
  if(patientRoomTwo == true) {
    if(dist(1700, 925, mouseX, mouseY) < 100) {
      int num = patientNum - 13;
      if(num < 10) {
        if(num == 1 || num == 4 || num == 6)
          writeOtherText(patientRoomTwoDialogue[num]);  
        else 
          writeText(patientRoomTwoDialogue[num]);  
      }
    }
    patientNum += 1; 
    
    if(patientNum == 24) {
      patientRoomTwo = false; 

      if(cartDone == false) {
        cartScreen = true; 
        cartScene(); 
      }    
      else {
        announcementScreen = true; 
        announcementScene(); 
      }
    }
  }
  
  
  //PA Announcement 
  if(announcementScreen == true) {
    if(dist(1700, 925, mouseX, mouseY) < 100) {
      if(announcementNum < 9)
        if(announcementNum == 1 || announcementNum == 3)
          writeOtherText(announcementDialogue[announcementNum]);  
        else
          writeText(announcementDialogue[announcementNum]); 
    }
    announcementNum += 1;  
    
    if(announcementNum == 10) {
      announcementScreen = false; 
      decisionScreen = true; 
      decision(); 
    }
  }
  
  
  //Main decision
  if(decisionScreen == true) {
    if(dist(900, 312, mouseX, mouseY) < 100) {
      decisionScreen = false; 
      paScreenOne = true; 
      paSceneOne(); 
    }
  }
  
  
  //CEO Special scene 
  if(paScreenOne == true) {
    if(dist(1700, 925, mouseX, mouseY) < 100) {
      if(paNum < 11)
        if(paNum == 3 || paNum == 5 || paNum == 8)
          writeOtherText(paOneDialogue[paNum]);  
        else
          writeText(paOneDialogue[paNum]); 
    }
    paNum += 1;  
    
    if(paNum == 12) {
      paScreenOne = false; 
      paQuestion = true; 
      paQuestion(); 
    }
  }
  
  if(paQuestion == true) {
    if(dist(475, 900, mouseX, mouseY) < 100) {
      paQuestion = false; 
      paScreenTwo = true; 
      paSceneTwo(); 
    }
    if(dist(1375, 900, mouseX, mouseY) < 100) {
      paQuestion = false; 
      paScreenTwo = true; 
      basicSetup(); 
      image(ceoSpecial, 0, 0, 1800, 800);
      writeText("*He rolls his eyes, loosens his tie,*");
      paNum += 4;
    }
    println(paNum); 
  }
  
  if(paScreenTwo == true) {
    if(dist(1700, 925, mouseX, mouseY) < 100) {
      int num = paNum - 13;
      if(num < 29)
        if(num == 9 || num == 11 || num == 13 || num == 21)
          writeOtherText(paTwoDialogue[num]);
        else
          writeText(paTwoDialogue[num]);
    }
    paNum += 1; 
    
    if(paNum == 30) {
      paScreenTwo = false; 
      finalScreen = true; 
      finalScene(); 
    }
  }
}
