RAND8
         LDX   #8         
         LDA   RNDL+0     
:A
         ASL              ;SHIFT THE REG
         ROL   RNDL+1     
         BCC   :B         
         EOR   #$2D       
:B
         DEX   
         BNE   :A         
         STA   RNDL+0     
         STA   RETURN     
         LDY   #1         
         STY   RETLEN     
         CMP   #0         
         RTS
