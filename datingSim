//Global variables 
int textSwitch = 0; 
int cafNum = 0; 
int cartNum = 0; 
int patientNum = 0; 

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

void setup() {
  size(1800,1000);  
  mainScreen = true;
  introDialogue = loadStrings("intro/intro.txt"); 
  cafe1D = loadStrings("cafePartOne/cafePartOne.txt"); 
  cafeSD = loadStrings("cafePartTwo/cafeSorry.txt"); 
  cafPartOne = loadStrings("cafeteriaPartOne/cafeteriaPartOne.txt"); 
  cafOut = loadStrings("cafeteriaPartTwo/cafeteriaOutside.txt"); 
  cart = loadStrings("cartScene/cart.txt"); 
  patientOne = loadStrings("patientRoomPartOne/patientRoomPartOne.txt"); 
  loadSceneOne();
  loadCafeOne(); 
  loadCafeSorry(); 
  loadCafPartOne(); 
  loadCafOut(); 
  loadCart(); 
  loadPatientRoomOne(); 
  
  //Starting screen 
  fill(255); 
  rect(0, 0, 1800, 1000); 
  
    // Title 
  fill(255, 74, 152);
  textSize(100); 
  textAlign(CENTER);
  text("Hospital Dating Sim", width/2, 100); 
  
    // Start button
    int xBut = 700; 
    int yBut = 450;
    
    rect(xBut, yBut, 400, 100);
    fill(0); 
    textSize(50); 
    textAlign(CENTER); 
    text("Start", xBut + 190, yBut + 60); 
    
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
  
  if (firstScene == true) {
    if (dist(1670, 925, mouseX, mouseY) < 100) {
      
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
  
  if(cafePartOne == true) {
    
    if(dist(1670, 925, mouseX, mouseY) < 100) {
      if(textSwitch < 15) {
        int num = textSwitch - 10; 
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
      writeText(cafeSorryDialogue[num]); 
      textSwitch += 4;
    }
  }
  
  if(cafeSorry == true) {
    
    if(dist(1670, 925, mouseX, mouseY) < 100) {
      if(textSwitch < 29) {
        int num = textSwitch - 16; 
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
  
  if(cafeteriaPartOne == true) {
    
    if(dist(1670, 925, mouseX, mouseY) < 100) {
      if(cafNum < 7) {
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
      writeText("'Oh, okay thats fine no worries! We can eat in the staff room'"); 
      cafNum += 1; 
    }
  }
  
  if(cafOutside == true) {
    
    if(dist(1670, 925, mouseX, mouseY) < 100) {
      if(cafNum < 26) {
        int num = cafNum - 8; 
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
      patientRoomOne():
    }
  }
  
  if(cartScreen == true) {
    
    if(dist(1670, 925, mouseX, mouseY) < 100) {
      if(cartNum < 12)
        writeText(cartDialogue[cartNum]);  
    }
    cartNum += 1; 
    
    if(cartNum == 13) {
      cartScreen = false; 
      
      if(patientRoomDone == false) 
        patientRoomOne = true; 
        patientRoomOne(); 
      
    }
  }
  
  if(patientRoomOne == true) {
    
    if(dist(1670, 925, mouseX, mouseY) < 100) {
      if(patientNum < 12)
        writeText(patientRoomOneDialogue[patientNum]);  
    }
    patientNum += 1; 
    
    if(patientNum == 13) {
      patientRoomOne = false; 
      patientRoomQuestion = true; 
      patientQuestion(); 
      
      if(cartScreen == false) 
        cartScreen = true; 
        cartScene(); 
    }    
  }
}
