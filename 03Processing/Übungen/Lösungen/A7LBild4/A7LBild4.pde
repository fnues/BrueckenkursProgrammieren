void setup(){
  size(400, 400);
  background(255);
  
  stroke(50, 50, 255);
  line(100, 350, 0, 0);
  line(100, 350, 200, 0);
  line(100, 350, 400, 0);
  line(100, 350, 400, 200);
  line(100, 350, 400, 400);
  line(100, 350, 200, 400);
  line(100, 350, 0, 400);
  line(100, 350, 0, 200);
  
  
  // Zusatz 1
  /*
  int startX = 100;
  int startY = 350;
  int zero   = 0;
  int end    = 400;
  int middle = 200;
  line( startX, startY, zero,   zero );
  line( startX, startY, middle, zero );
  line( startX, startY, end,    zero );
  line( startX, startY, end,    middle );
  line( startX, startY, end,    end );
  line( startX, startY, middle, end );
  line( startX, startY, zero,   end );
  line( startX, startY, zero,   middle );
  */
  
  // Zusatz 2
  /*
  int startX = 100;
  int startY = 350;
  int zero   = 0;
  int end    = 400;
  int middle = 200;
  
  for( int i = 0; i <= 1; i++ ){
    for( int j = 0; j <= 2; j++ ){
      line( startX, startY, i*end, j*middle );
    }
    line( startX, startY, middle, i*end );
  }
  */
  
}
