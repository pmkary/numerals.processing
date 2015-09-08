
//
// Copyright 2015 by Pouya Kary <k@arendelle.org>
//


/* ────────────────────────────────────────────────────── *
 * :::::::::::::: K A R Y   N U M E R A L S ::::::::::::: *
 * ────────────────────────────────────────────────────── */


void setup() {
  
  //
  // ─── SETTING UP THE ENVIRONMENT ───────────────────
  //
  
      // • • • • •
      
      pixelDensity(2);
      
      String number = "2340024890249056";

      // • • • • •
      
      int mainWidth = 400;
      
      int mainHeight = 500;
      
      int lineSize = 50;
      
      int startY = 30;
      
      int startX = ( mainWidth - lineSize ) / 2;
      
      // • • • • •
  
      size( 400 , 500 );
      
      background( 0 , 0 , 0 );
      
      stroke(255);
      
  
  //
  // ─── GENERATING THE NUMBER ────────────────────────
  //

      for ( int i = 0; i < number.length(); i++ ) {
        
          // • • • • •
    
          int digit = int( str( number.charAt( i ) ) );
          
          // • • • • •
         
          if ( digit == 0 ) {
            
            // - zero  - - - - - - - - - - - - - - - -
            
              startY -= 15;
         
              line( startX - 10 , startY , startX - 10 , 
                    startY + 10 );
              
              line( startX - 10 , startY + 10 , 
                    startX + lineSize + 10, startY + 10 );
              
              line( startX + lineSize + 10 , startY + 10 , 
                    startX + lineSize + 10 , startY + 20 );
              
              startY += 25;
              
            // - - - - - - - - - - - - - - - - - - - -

          } else {
            
            // - flags - - - - - - - - - - - - - - - -
              
              // • • • • •
            
              int flags = floor( digit / 3 );
              
              int flagX = 0; 
              
              // • • • • •
              
              line( startX , startY , 
                    startX + lineSize  , startY );
              
              // • • • • •
              
              for ( int j = 0; j < flags; j++ ) {
                  
                  line( startX + flagX , startY ,
                        startX + flagX , startY + 15 );
                  
                  flagX += 10;
                  
              }

            
            // - ones  - - - - - - - - - - - - - - - -
            
              for ( int k = 0; k < digit % 3; k++ ) {
              
                  ellipse( startX + 5 + flagX , startY 
                           , 4 , 4 );
                            
                  flagX += 10;
              
              }
            
            // - - - - - - - - - - - - - - - - - - - -
          
              if ( flags > 0 ) {
              
                  startY += 15; 
              
              }
              
              startY += 15;  
         
            // - - - - - - - - - - - - - - - - - - - -
            
          }

      }
      
  
  // ──────────────────────────────────────────────────
  
      // • • • • •
  
      PFont spacium = loadFont( "SPACIUM-BETA-4-80.vlw" );
      
      PFont nahouii = loadFont( "Nahouii-Bold-80.vlw" );
      
      rotate ( PI / 2.0 );
      
      // • • • • •
      
      textFont( nahouii , 20 );
      
      fill( 150 );
      
      text ( "wav'wing nemon mot " , 10 , -17 );
      
      // • • • • •
    
      textFont( spacium , 42 );  
      
      fill( 200 );
      
      text ( number , 268 ,  - 13 );    
      
      // • • • • •
     
      rotate ( - PI / 2.0 ); 
  
  // ──────────────────────────────────────────────────
      
      stroke( 100 );
      
      line( 46 , 0 , 46 , mainHeight );

  // ──────────────────────────────────────────────────
  
      save( number + ".png" );
      
  // ──────────────────────────────────────────────────

}