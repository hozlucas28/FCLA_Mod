
/* ----------------------------------------------------------------------------
Defines: "Camera mode"

Content:
    Definiciones del dialog 'modo cámara'.
---------------------------------------------------------------------------- */

#define CFMOVE 0.8
#define CFTRK 0.3
#define CFWHEEL 0.3
#define LISTFRIENDLY true
#define LISTENEMY true
#define LISTCIVILIAN true
#define LISTANIMAL true
#define DETECTOBJECTDISTANCE viewDistance
#define SHOWNOTICETEXT true
#define SHOWUNITNAME true
#define RADIOMESSAGE false
#define SWITCHSMOOTH true
#define SWITCHADJDIS true
#define SWITCHCENTER false
#define SHOWTIMEACC true
#define SHOWTRIGGER true
#define CHASECAMERASHAKE true
#define CHASEACCTIME 1.0
#define LIMITQUIT false

#define KEYMOVEFRONT 17
#define KEYMOVEBACK 31
#define KEYMOVELEFT 30
#define KEYMOVERIGHT 32
#define KEYMOVEUP 16
#define KEYMOVEDOWN 44
#define KEYMOVESTRFRONT 3
#define KEYMOVESTRBACK 45
#define KEYMODEFOLLOW 33
#define KEYMODEBEHIND 48
#define KEYMODEFOCUS 46
#define KEYMODETRIGGER 20
#define KEYMODEVIEW 47
#define KEYUNITNEXT 200
#define KEYUNITPREVIOUS 208
#define KEYGROUPNEXT 205
#define KEYGROUPPREVIOUS 203
#define KEYFLIR 49
#define KEYLIST 38
#define KEYQUIT 57
#define KEYPTMCOM1 59
#define KEYPTMCOM2 60
#define KEYPTMCOM3 61
#define KEYPTMCOM4 62

#define INITFOLLOWMODE true
#define INITBEHINDMODE true
#define INITFOCUSMODE true
#define INITCAMDISY 7.5
#define INITCAMDISZ 2.5
#define INITCAMAGL -8
#define INITCAMZOOM 0.7
#define MOUSEMOVEACCX 0.9
#define MOUSEMOVEACCY 2.6
#define MOUSEDRAGACCX 1.35
#define MOUSEDRAGACCY 3.9
#define MOVEATTEN 0.8
#define TURNATTEN 0.8
#define ZOOMATTEN 0.8
#define BEHINDSPDAROUND 0.056
#define BEHINDSPDROTATE 2.7
#define SWITCHSPEED 510
#define MAPUPDATEINTERVAL 20
#define PARAMTRACKINTERVAL 7
#define PARAMTRACKINITCODE1 "setAccTime 0"
#define PARAMTRACKINITCODE2 "setAccTime 1"
#define PARAMTRACKINITCODE3 "copyToClipboard ctrlText(findDisplay 5100 displayCtrl 25)"
#define PARAMTRACKINITCODE4 ""

#define OUTFRAME 0.025
#define SPACE 0.01
#define LISTWIDTH 0.2735
#define LISTHEIGHT 0.2735
#define COLORLISTFOLLOWGROUP [0.8, 0.8, 0.7, 1.00]
#define COLORLISTFRIENDLY [0.259, 0.663, 0.953, 1.000]
#define COLORLISTENEMY [0.95, 0.48, 0.38, 1.00]
#define COLORLISTCIVILIAN [0.85, 0.65, 0.30, 1.0]
#define COLORLISTANIMAL [0.35,0.75,0.35,1]

#define INITMAPSIZE 0.2735
#define COLORSCANAREA "ColorOrange"
#define COLORICONCAMERA "ColorBlack"
#define COLORICONFRIENDLY "ColorBlue"
#define COLORICONENEMY "ColorRed"
#define COLORICONCIVILIAN "ColorOrange"
#define COLORICONANIMAL "ColorGreen"

#define BUTTONWIDTH 0.0845
#define BUTTONWIDTH2 0.0283
#define EDITWIDTH ((SafeZoneW - OUTFRAME*2)/4 - SPACE*3/4)
#define COMBOWIDTH (BUTTONWIDTH*2 + SPACE)
#define BUTTONHEIGHT 0.0350
#define BUTTONHEIGHT2 0.0175
#define EDITHEIGHT 0.032
#define COMBOHEIGHT 0.035
#define COMBOWHOLEHEIGHT (0.0385*5)
#define TEXTHEIGHT BUTTONHEIGHT
#define BUTTONFONTSIZE 0.0350
#define TEXTWIDTH 0.05
#define COLORBUTTONTEXTOFF [1, 0, 0, 1]
#define COLORBUTTONTEXTON [0, 1, 0, 1]
