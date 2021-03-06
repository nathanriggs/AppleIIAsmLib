*
*``````````````````````````````*
* HOOKS.FILEIO                 *
*                              *
* THIS FILE CONTAINS MANY OF   *
* THE HOOKS RELATED TO FILE    *
* INPUT AND OUTPUT.            *
*                              *
* AUTHOR:    NATHAN RIGGS      *
* CONTACT:   NATHAN.RIGGS@     *
*            OUTLOOK.COM       *
*                              *
* DATE:      21-SEP-2019       *
* ASSEMBLER: MERLIN 8 PRO      *
* OS:        DOS 3.3           *
*,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*
*
STEP00 EQU $C080 ; DISK STEPPER PHASE 0 OFF
STEP01 EQU $C081 ; DISK STEPPER PHASE 0 ON
STEP10 EQU $C082 ; DISK STEPPER PHASE 1 OFF
STEP11 EQU $C083 ; DISK STEPPER PHASE 1 ON
STEP20 EQU $C084 ; DISK STEPPER PHASE 2 OFF
STEP21 EQU $C085 ; DISK STEPPER PHASE 2 ON
STEP30 EQU $C086 ; DISK STEPPER HAPSE 3 OFF
STEP31 EQU $C087 ; DISK STEPPER PHASE 3 ON
MOTON EQU $C088 ; DISK MAIN MOTOR OFF
MOTOFF EQU $C089 ; DISK MAIN MOTOR ON
DRV0EN EQU $C08A ; DISK ENABLE DRIVE 1
DRV1EN EQU $C08B ; DISK ENABLE DRIVE 2
Q6CLR EQU $C08C ; DISK Q6 CLEAR
Q6SET EQU $C08D ; DISK Q6 SET
Q7CLR EQU $C08E ; DISK Q7 CLEAR
Q7SET EQU $C08F ; DISK Q7 SET
CWRITE EQU $FECD ; WRITE TO CASSETTE TAPE
CREAD EQU $FEFD ; READ FROM CASSETTE TAPE
IOB EQU $B7E8 ; INPUT/OUTPUT AND CONTROL
; BLOCK TABLE
IOB_SLOT EQU $B7E9 ; SLOT NUMBER
IOB_DRIV EQU $B7EA ; DRIVE NUMBER
IOB_EVOL EQU $B7EB ; EXPECTED VOLUME NUMBER
IOB_TRAK EQU $B7EC ; DISK TRACK
IOB_SECT EQU $B7ED ; DISK SECTOR
IOB_DCTL EQU $B7EE ; LOW ORDER BYTE OF THE
; DEVICE CHARACTERISTIC TBL
IOB_DCTH EQU $B7EF ; HIGH ORDER OF DCT
IOB_BUFL EQU $B7F0 ; LOW ORDER OF BUFFER
IOB_BUFH EQU $B7F1 ; HIGH
IOB_COMM EQU $B7F4 ; COMMAND CODE; READ/WRITE
IOB_ERR EQU $B7F5 ; ERROR CODE
IOB_AVOL EQU $B7F6 ; ACTUAL VOL NUMBER
IOB_PRES EQU $B7F7 ; PREVIOUS SLOT ACCESSED
IOB_PRED EQU $B7F8 ; PREVIOUS DRIVE ACCESSED
RWTS EQU $3D9 ; DOS RWTS ROUTINE
FCOUT EQU $FDED ; COUT SUBROUTINE
LANG EQU $AAB6 ; DOS LANGUAGE INDICATOR
CURLIN EQU $75
PROMPT EQU $33
FGET EQU $FD0C ; MONITOR GETKEY ROUTINE
FGETLN EQU $FD6F ; MON GETLN ROUTINE
DOSERR EQU $DE ; DOS ERROR LOC
