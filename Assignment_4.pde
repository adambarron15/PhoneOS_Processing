  
PImage background,ytapp,fbapp,twapp,spapp,soapp,skapp,inapp,liapp;
PImage gmail,maps,setting,google,playstore,calendar,phone,folder,battery,vibr,weather,wifi;
PImage ytscr,phonescr,notifscr;
PImage la,ra,backa,backspace,enter,home,notification,list;

PFont font,clockfont;

int hour,minute,month,day,pinlength;

boolean main_page,lock_screen,page_two,yt,notif;
String Day,Month,Minute,lockpin;

void setup(){
  size(600,900);
  background = loadImage("images.png");
  ytapp =loadImage("youtube.png");
  twapp =loadImage("twitter.png");
  spapp =loadImage("spotify.png");
  soapp =loadImage("soundcloud.png");
  skapp =loadImage("skype.png");
  inapp =loadImage("instagram.png");
  fbapp =loadImage("facebook.png");
  liapp =loadImage("linkedin.png");
  
  gmail =loadImage("001-gmail.png");
  maps =loadImage("002-maps.png");
  setting =loadImage("003-admin.png");
  google =loadImage("004-google.png");
  playstore =loadImage("005-playstore.png");
  calendar =loadImage("calendar.png");
  phone =loadImage("telephone.png");
  folder =loadImage("visualization-2.png");
  battery =loadImage("003-battery.png");
  vibr =loadImage("002-phone-vibration.png");
  weather =loadImage("001-contrast.png");
  wifi =loadImage("wifi.png");
  
  la = loadImage("larr.png");
  ra = loadImage("rarr.png");
  backa = loadImage("backarr.png");
  backspace = loadImage("backspace (2).png");
  enter = loadImage("enter.png");
  home = loadImage("home.png");
  list = loadImage("moreapp.png");
  notification = loadImage("notif.png");
  
  ytscr = loadImage("ytscreen2.png");
  notifscr = loadImage("notifscr.png");

  
  main_page = false;
  lock_screen = true;
  page_two = false;
  yt = false;
  notif = false;
  
  hour = hour();
  minute = minute();
  month = month();
  day = day();


  pinlength = 0;
  
  lockpin = "";
  
  switch (month){
    
    case 1:
      Month = "January";
    break;
    
    case 2:
      Month = "Feburary";
    break;
    
    case 3:
      Month = "March";
    break;
    
    case 4:
      Month = "April";
    break;
    
    case 5:
      Month = "May";
    break;
    
    case 6:
      Month = "June";
    break;
    
    case 7:
      Month = "July";
    break;
    
    case 8:
      Month = "August";
    break;
    
    case 9:
      Month = "September";
    break;
    
    case 10:
      Month = "October";
    break;
    
    case 11:
      Month = "November";
    break;
    
    case 12:
      Month = "December";
    break;
  }
  
    switch (day){
    
    case 1:
      Day = "Sun";
    break;
    
    case 2:
      Day = "Mon";
    break;
    
    case 3:
       Day = "Tue";
    break;
    
    case 4:
       Day = "Wed";
    break;
    
    case 5:
       Day = "Thur";
    break;
    
    case 6:
       Day = "Fri";
    break;
    
    case 7:
       Day = "Sat";
    break;
    

  }
  
   switch (minute){
    
    case 1:
      Minute = "01"; 
    break;
    
    case 2:
       Minute = "02"; 
    break;
    
    case 3:
        Minute = "03"; 
    break;
    
    case 4:
        Minute = "04"; 
    break;
    
    case 5:
        Minute = "05"; 
    break;
    
    case 6:
        Minute = "06"; 
    break;
    
    case 7:
        Minute = "07"; 
    break;
    case 8:
        Minute = "05"; 
    break;
    
    case 9:
        Minute = "06"; 
    break;
   
    default:
      Minute = String.valueOf(minute);
    break;

  }

  
  clockfont = createFont("Microsoft Sans Serif",100);
  font = createFont("Microsoft Sans Serif",40);
  textFont(clockfont);

  }
  
void draw(){
    println(mouseX+" "+mouseY);

  if(lock_screen){
    background(background);
    fill(100,100,100,200);
    rect(0,0,width,height);
    
    stroke(255);
    line(125,350,450,350);
    
    textFont(font);
    textAlign(CENTER);
    fill(255,255,255,255);
    
    text("1",135,450);
    text("2",285,450);
    text("3",435,450);
    text("4",135,550);
    text("5",285,550);
    text("6",435,550);
    text("7",135,650);
    text("8",285,650);
    text("9",435,650);
    text("0",285,750);
    
    text(lockpin,0,300,width,350);
    
    image(backspace,460,300,40,40);
    image(enter,415,715,40,40);
    
    
  }
  else if(main_page){
  background(background);
  fill(255,255,255,255);
  
  textFont(clockfont);
  textAlign(LEFT);
  text(hour+":"+Minute,175,300);
  
  textFont(font);
  text("Thu,"+Month+" "+day+" | "+ "54F",130,150);
  image(weather,460,115,40,40);
  fill(190,190,190,190);

  rect(0,400,600,400);
  
  image(vibr,450,0,40,40);
  image(battery,540,0,34,34);
  image(wifi,500,0,35,35);
  
  image(ytapp,110,450,80,80);
  image(twapp,260,450,80,80);
  image(phone,410,450,80,80);
  image(gmail,110,625,80,80);
  image(playstore,260,625,80,80);
  image(setting,410,625,80,80);
  
  
  image(ra,560,550,40,40);
  image(notification,290,0,40,40);
  image(home,280,825,50,50);

  
  }
  else if(page_two){
    background(background);
    fill(255,255,255,255);
    
    textFont(clockfont);
    textAlign(LEFT);
    text(hour+":"+Minute,175,300);
    
    textFont(font);
    text("Thu,"+Month+" "+day+" | "+ "54F",130,150);
    image(weather,460,115,40,40);
    fill(190,190,190,190);
  
    rect(0,400,600,400);
    
    image(vibr,450,0,40,40);
    image(battery,540,0,34,34);
    image(wifi,500,0,35,35);
    
    image(liapp,110,450,80,80);
    image(soapp,260,450,80,80);
    image(skapp,410,450,80,80);
    image(spapp,110,625,80,80);
    image(inapp,260,625,80,80);
    image(folder,410,625,80,80);
    
    image(la,0,550,40,40);
    image(ra,560,550,40,40);
    image(notification,290,0,40,40);
    image(home,280,825,50,50);

  }
  else if(yt){
    image(ytscr,0,0,width,height);
    fill(190,190,190,190);
    rect(0,800,width,height);
    image(home,280,825,50,50);

  }
    else if(notif){
   image(notifscr,0,0,width,height+400);
   image(notification,290,860,40,40);
  }
  

  }
  
  void mouseClicked(){
    
    if((mouseX<=320 && mouseX>=280)&&(mouseY<=875 && mouseY>=825)){
      main_page = true;
      page_two = false;
      lock_screen = false;
      
    }
      if(lock_screen){
       lockScreenAction();
      }
      else if(main_page){
        if((mouseX<=600 && mouseX>=560)&&(mouseY<=590 && mouseY>=550)){
          page_two = true;
          main_page = false;
          notif = false;
        }
        else if((mouseX<=190 && mouseX>=110)&&(mouseY<=530 && mouseY>=480)){
          yt = true;
          main_page = false;
          notif = false;
        }
          else if((mouseX<=330 && mouseX>=290)&&(mouseY<=40 && mouseY>0)){
          notif = true;
          main_page = false;
          yt = false;
        }
      }
      else if(page_two){
        if((mouseX<=40 && mouseX>=0)&&(mouseY<=590 && mouseY>=550)){
          main_page = true;
          page_two = false;
        }
        
      }
  }
  
  void lockScreenAction(){
     if(pinlength < 4){
     if((mouseX<=150 && mouseX>=120)&&(mouseY<=450 && mouseY>=400)){
       lockpin = lockpin + "1";
       pinlength++;
      }
      else if((mouseX<=300 && mouseX>=270)&&(mouseY<=450 && mouseY>=400)){
        lockpin = lockpin + "2";
        pinlength++;
      }
       else if((mouseX<=450 && mouseX>=420)&&(mouseY<=450 && mouseY>=400)){
        lockpin = lockpin + "3";
        pinlength++;
      }
       else if((mouseX<=150 && mouseX>=120)&&(mouseY<=550 && mouseY>=500)){
        lockpin = lockpin + "4";
        pinlength++;
      }
       else if((mouseX<=300 && mouseX>=270)&&(mouseY<=550 && mouseY>=500)){
        lockpin = lockpin + "5";
        pinlength++;
      }
       else if((mouseX<=450 && mouseX>=420)&&(mouseY<=550 && mouseY>=500)){
        lockpin = lockpin + "6";
        pinlength++;
      }
       else if((mouseX<=150 && mouseX>=120)&&(mouseY<=650 && mouseY>=600)){
        lockpin = lockpin + "7";
        pinlength++;
      }
       else if((mouseX<=300 && mouseX>=270)&&(mouseY<=650 && mouseY>=600)){
        lockpin = lockpin + "8";
        pinlength++;
      }
       else if((mouseX<=450 && mouseX>=420)&&(mouseY<=650 && mouseY>=600)){
        lockpin = lockpin + "9";
        pinlength++;
      }
       else if((mouseX<=300 && mouseX>=270)&&(mouseY<=750 && mouseY>=700)){
        lockpin = lockpin + "0";
        pinlength++;
      }
     }
     if(pinlength > 0){
       if((mouseX<=500 && mouseX>=460)&&(mouseY<=340 && mouseY>=300)){
         lockpin = lockpin.substring(0,lockpin.length()-1);
         pinlength--;
       }
       
       if((mouseX<=455 && mouseX>=415)&&(mouseY<=755 && mouseY>=715)){
         if(pinlength == 4){
           lock_screen = false;
           main_page = true;
         }
       }
     }
  }
  
  
  
  