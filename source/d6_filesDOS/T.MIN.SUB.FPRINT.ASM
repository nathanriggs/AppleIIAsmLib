FPRINT
         PLA   
         STA   RETADR     
         PLA   
         STA   RETADR+1   
         LDY   #$01       
:LP
         LDA   (RETADR),Y 
         BEQ   :DONE      
         JSR   FCOUT      
         INY   
         BNE   :LP        
:DONE
         CLC   
         TYA   
         ADC   RETADR     
         STA   RETADR     
         LDA   RETADR+1   
         ADC   #$00       
         PHA   
         LDA   RETADR     
         PHA   
         RTS
