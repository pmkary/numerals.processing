
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
      
      String number = "2340024890249056";

      // • • • • •
      
      int mainWidth = 400;
      
      int mainHeight = 500;
      
      int lineSize = 60;
      
      int startY = 30;
      
      int startX = ( mainWidth - lineSize ) / 2;
      
      // • • • • •
  
      size( mainWidth , mainHeight );
      
      background( 0 , 0 , 0 );
      
      stroke(255);
      
  
  //
  // ─── GENERATING THE NUMBER ────────────────────────
  //

      for ( int i = 0; i < number.length(); i++ ) {
        
          // • • • • •
    
          int digit = int( str( number.charAt( i ) ) );
          
          print( " |" + digit );
          
          // • • • • •
         
          if ( number.charAt( i ) == '0' ) {
            
            // - zero  - - - - - - - - - - - - - - - -
            
              startY -= 5;
         
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
              
              print( " >" + flags );
              
              int flagX = 0; 
              
              // • • • • •
              
              line( startX , startY , 
                    startX + lineSize  , startY );
              
              // • • • • •
              
              for ( int j = 0; j < flags; j++ ) {
                  
                  line( startX + flagX , startY ,
                        startX + flagX , startY + 20 );
                  
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
              
                  startY += 20; 
              
              }
              
              startY += 15;  
         
            // - - - - - - - - - - - - - - - - - - - -
            
          }

      }
      
  
  // ──────────────────────────────────────────────────
  
      PFont didot = loadFont( "Avenir-Book-30.vlw" );
      
      textFont( didot , 24 );

      rotate ( PI / 2.0 );
      
      text ( "Kary Numeral Of: " + number , 10 , -10 );      

  // ──────────────────────────────────────────────────
  
      save( number + ".png" );
      
  // ──────────────────────────────────────────────────

}
