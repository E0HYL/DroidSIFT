.class public Lcom/ophone/MiniPlayer/IntentParam;
.super Ljava/lang/Object;
.source "IntentParam.java"


# static fields
.field public static final CMDS_FOURPARAM:I = 0x11

.field public static final CMDS_SIXPARAM:I = 0x10

.field public static final CMDS_TWOPARAM:I = 0xf

.field public static final CMD_ADDALLLOCALSONG:I = 0x14

.field public static final CMD_ADDSELECTEDSONG:I = 0x16

.field public static final CMD_CANCELNOTIFICATION:I = 0x1c

.field public static final CMD_CLEARSONGLIST:I = 0xe

.field public static final CMD_CONTINUE:I = 0x2

.field public static final CMD_DELETEPLAYLIST:I = 0x1e

.field public static final CMD_DELETESONG:I = 0x15

.field public static final CMD_GETSONGLIST:I = 0x6

.field public static final CMD_INIT:I = 0x12

.field public static final CMD_INITRANDOM:I = 0x11

.field public static final CMD_INITREPEAT:I = 0x10

.field public static final CMD_JUDGEPLAY:I = 0xf

.field public static final CMD_JUDGEPLAYONLINE:I = 0x1a

.field public static final CMD_JUMP:I = 0x7

.field public static final CMD_NEXT:I = 0x4

.field public static final CMD_NEXTSONGINFO:I = 0x13

.field public static final CMD_PAUSE:I = 0x1

.field public static final CMD_PLAY:I = 0x0

.field public static final CMD_PREVIOUS:I = 0x5

.field public static final CMD_RANDOMCLOSE:I = 0xa

.field public static final CMD_RANDOMOPEN:I = 0x9

.field public static final CMD_REPEATALLSONG:I = 0xc

.field public static final CMD_REPEATCANCLE:I = 0xd

.field public static final CMD_REPEATCURRENTSONG:I = 0xb

.field public static final CMD_SAVESONGLIST:I = 0x17

.field public static final CMD_SEEKTIME:I = 0x8

.field public static final CMD_SELECTFILE:I = 0x1d

.field public static final CMD_SENDISPLAYING:I = 0x18

.field public static final CMD_SENDSONGLISTSERVICE:I = 0x19

.field public static final CMD_SENDURLTOSERVICE:I = 0x1b

.field public static final CMD_STOP:I = 0x3

.field public static final STATUS_CANNOTPLAY:I = 0x73

.field public static final STATUS_CLEARSONGLIST:I = 0x74

.field public static final STATUS_DELETEPLAYLIST:I = 0x7b

.field public static final STATUS_DELETESONG:I = 0x75

.field public static final STATUS_GETSONGLIST:I = 0x76

.field public static final STATUS_IDLE:I = 0x71

.field public static final STATUS_IDLEONLINE:I = 0x78

.field public static final STATUS_INTI:I = 0x6f

.field public static final STATUS_INTIRANDOM:I = 0x70

.field public static final STATUS_LYRICSYNCHRONOUS:I = 0x79

.field public static final STATUS_NEXT:I = 0x67

.field public static final STATUS_NONRANDOM:I = 0x6a

.field public static final STATUS_PAUSED:I = 0x65

.field public static final STATUS_PLAYING:I = 0x64

.field public static final STATUS_PREVIOUS:I = 0x68

.field public static final STATUS_RANDOM:I = 0x69

.field public static final STATUS_READFROMFILE:I = 0x7a

.field public static final STATUS_REPEAT:I = 0x72

.field public static final STATUS_REPEATALLSONG:I = 0x6c

.field public static final STATUS_REPEATCANCLE:I = 0x6d

.field public static final STATUS_REPEATCURRENTSONG:I = 0x6b

.field public static final STATUS_SONGISPLAYING:I = 0x6e

.field public static final STATUS_SONGISPLAYINGONLINE:I = 0x77

.field public static final STATUS_STOPPED:I = 0x66

.field public static final TO_ACTIVITY:Ljava/lang/String; = "com.myplayer.servicetoactivity"

.field public static final TO_ACTIVITY_LOCAL:Ljava/lang/String; = "com.myplayer.servicetoactivitylocal"

.field public static final TO_ACTIVITY_ONLINE:Ljava/lang/String; = "com.myplayer.servicetoactivityonline"

.field public static final TO_ACTIVITY_SONGLIST:Ljava/lang/String; = "com.myplayer.servicetoactivitysonglist"

.field public static final TO_SERVICE:Ljava/lang/String; = "com.myplayer.toService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
