.class public Lcom/ophone/MiniPlayer/MyPlayerService;
.super Landroid/app/Service;
.source "MyPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MyPlayer"

.field public static final UPDATEPROGRESSUI:I = 0x2

.field public static final UPDATERANDOMSONG:I = 0x3

.field private static bw:Ljava/io/BufferedReader;


# instance fields
.field private binder:Landroid/os/Binder;

.field bitmap:Landroid/graphics/Bitmap;

.field commandReceiver:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

.field completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private countDownload:I

.field private countdefaultplay:I

.field private countexception:I

.field private currentFilePath:Ljava/lang/String;

.field private currentFilePathlrc:Ljava/lang/String;

.field private currentTempFilePath:Ljava/lang/String;

.field private currentTempFilePathlrc:Ljava/lang/String;

.field private cursong:Lcom/ophone/MiniPlayer/provider/Song;

.field private fileEx:Ljava/lang/String;

.field private fileExlrc:Ljava/lang/String;

.field private fileNa:Ljava/lang/String;

.field private fileNalrc:Ljava/lang/String;

.field flag:I

.field flagrandom:I

.field flagrepeat:I

.field private handler:Landroid/os/Handler;

.field private nMgr:Landroid/app/NotificationManager;

.field private next:I

.field player:Landroid/media/MediaPlayer;

.field playmodel:I

.field private pos:I

.field private pre:I

.field private settings:Landroid/content/SharedPreferences;

.field private song:Lcom/ophone/MiniPlayer/provider/Song;

.field public songlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ">;"
        }
    .end annotation
.end field

.field public songlistfile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ">;"
        }
    .end annotation
.end field

.field private songnext:Lcom/ophone/MiniPlayer/provider/Song;

.field private songpre:Lcom/ophone/MiniPlayer/provider/Song;

.field status:I

.field private strURL:Ljava/lang/String;

.field private strURLlrc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    iput-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 58
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->playmodel:I

    .line 60
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->flag:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrepeat:I

    .line 62
    const/16 v0, 0xb

    iput v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrandom:I

    .line 65
    iput-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->nMgr:Landroid/app/NotificationManager;

    .line 66
    iput-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlistfile:Ljava/util/ArrayList;

    .line 70
    iput-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 72
    iput-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songnext:Lcom/ophone/MiniPlayer/provider/Song;

    .line 73
    iput-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songpre:Lcom/ophone/MiniPlayer/provider/Song;

    .line 74
    iput-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    .line 76
    iput-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->bitmap:Landroid/graphics/Bitmap;

    .line 77
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 78
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    .line 80
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countexception:I

    .line 81
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countdefaultplay:I

    .line 82
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    .line 88
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->strURL:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->fileEx:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->fileNa:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentFilePath:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentTempFilePath:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->strURLlrc:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->fileExlrc:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->fileNalrc:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentFilePathlrc:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentTempFilePathlrc:Ljava/lang/String;

    .line 98
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I

    .line 99
    new-instance v0, Lcom/ophone/MiniPlayer/MyPlayerService$1;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/MyPlayerService$1;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->binder:Landroid/os/Binder;

    .line 1421
    new-instance v0, Lcom/ophone/MiniPlayer/MyPlayerService$2;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/MyPlayerService$2;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->handler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method private SendFlagrandomValue()V
    .locals 3

    .prologue
    .line 2070
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.myplayer.servicetoactivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2071
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "flagrandom"

    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrandom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2072
    const-string v1, "status"

    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2082
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2083
    return-void
.end method

.method private SendFlagrepeatValue()V
    .locals 4

    .prologue
    const-string v3, "status"

    .line 1878
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.myplayer.servicetoactivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1879
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "flagrepeat"

    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrepeat:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1881
    const-string v1, "status"

    iget v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1887
    const-string v1, "status"

    iget v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1891
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1892
    return-void
.end method

.method private SendInitValue()V
    .locals 8

    .prologue
    .line 2022
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.myplayer.servicetoactivity"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2023
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "flagrepeat"

    iget v7, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrepeat:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2024
    const-string v6, "flagrandom"

    iget v7, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrandom:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2025
    const/16 v6, 0x6f

    iput v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 2026
    const/4 v1, 0x0

    .line 2027
    .local v1, artist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2028
    .local v0, album:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2029
    .local v5, songname:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2030
    .local v3, lyricurlgoogle:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2031
    .local v4, lyricurllocal:Ljava/lang/String;
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    if-eqz v6, :cond_1

    .line 2032
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v1

    .line 2034
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->getAlbum()Ljava/lang/String;

    move-result-object v0

    .line 2035
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2036
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2038
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->getLyrics()Ljava/lang/String;

    move-result-object v3

    .line 2040
    :cond_0
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->isTag()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2042
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 2048
    :cond_1
    const-string v6, "lyricurlgoogle"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2049
    const-string v6, "lyricurllocal"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    const-string v6, "status"

    iget v7, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2051
    const-string v6, "artist"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2052
    const-string v6, "album"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2053
    const-string v6, "songname"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2054
    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2055
    return-void
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->nextSong()V

    return-void
.end method

.method static synthetic access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2290
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V

    return-void
.end method

.method static synthetic access$11(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2226
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->updateUi()V

    return-void
.end method

.method static synthetic access$12(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2312
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->cancelNotification()V

    return-void
.end method

.method static synthetic access$13(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1379
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->updatenextui()V

    return-void
.end method

.method static synthetic access$14(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->updatepreui()V

    return-void
.end method

.method static synthetic access$15(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2084
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->updateSonglistUI()V

    return-void
.end method

.method static synthetic access$16(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2069
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->SendFlagrandomValue()V

    return-void
.end method

.method static synthetic access$17(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1877
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->SendFlagrepeatValue()V

    return-void
.end method

.method static synthetic access$18(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2204
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->clearSonglistUI()V

    return-void
.end method

.method static synthetic access$19(Lcom/ophone/MiniPlayer/MyPlayerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2191
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendJudgePlayresultonline(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/ophone/MiniPlayer/MyPlayerService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->nMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$20(Lcom/ophone/MiniPlayer/MyPlayerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2197
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendJudgePlayresult(I)V

    return-void
.end method

.method static synthetic access$21(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2021
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->SendInitValue()V

    return-void
.end method

.method static synthetic access$22(Lcom/ophone/MiniPlayer/MyPlayerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2212
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/MyPlayerService;->deletesongUI(I)V

    return-void
.end method

.method static synthetic access$23(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1801
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/MyPlayerService;->saveSonglist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1440
    invoke-direct {p0, p1, p2}, Lcom/ophone/MiniPlayer/MyPlayerService;->downloadfromurl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1210
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/MyPlayerService;->readfromfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1195
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/MyPlayerService;->deletefromfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27(Lcom/ophone/MiniPlayer/MyPlayerService;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countdefaultplay:I

    return v0
.end method

.method static synthetic access$28(Lcom/ophone/MiniPlayer/MyPlayerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countdefaultplay:I

    return-void
.end method

.method static synthetic access$29(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1578
    invoke-direct {p0, p1, p2}, Lcom/ophone/MiniPlayer/MyPlayerService;->getDataSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->previousSong()V

    return-void
.end method

.method static synthetic access$30(Lcom/ophone/MiniPlayer/MyPlayerService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ophone/MiniPlayer/MyPlayerService;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I

    return v0
.end method

.method static synthetic access$5(Lcom/ophone/MiniPlayer/MyPlayerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I

    return-void
.end method

.method static synthetic access$6(Lcom/ophone/MiniPlayer/MyPlayerService;Lcom/ophone/MiniPlayer/provider/Song;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    return-void
.end method

.method static synthetic access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V

    return-void
.end method

.method static synthetic access$9(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->adjustnextpresong()V

    return-void
.end method

.method private adjustnextpresong()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "songlist.get(j).getName():"

    const-string v4, "MyPlayer"

    .line 640
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 641
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 642
    .local v0, count:I
    const-string v2, "MyPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "count"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    if-lez v0, :cond_1

    .line 644
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 660
    :goto_1
    if-le v0, v5, :cond_6

    .line 661
    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    if-nez v2, :cond_4

    .line 664
    sub-int v2, v0, v5

    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 665
    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    .line 684
    :goto_2
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songpre:Lcom/ophone/MiniPlayer/provider/Song;

    .line 686
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songnext:Lcom/ophone/MiniPlayer/provider/Song;

    .line 687
    :cond_0
    const-string v2, "MyPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "songnext:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songnext:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v0           #count:I
    .end local v1           #j:I
    :cond_1
    return-void

    .line 647
    .restart local v0       #count:I
    .restart local v1       #j:I
    :cond_2
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "songlist.get(j).getName():"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    if-eqz v2, :cond_3

    .line 650
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 651
    iput v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    .line 652
    const-string v2, "MyPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v2, "MyPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "song.getName()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "songlist.get(j).getName():"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 655
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 644
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 666
    :cond_4
    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int v3, v0, v5

    if-ne v2, v3, :cond_5

    .line 669
    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 670
    iput v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 674
    :cond_5
    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 675
    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 681
    :cond_6
    iput v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 682
    iput v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->nMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->nMgr:Landroid/app/NotificationManager;

    const v1, 0x7f05003a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2315
    :cond_0
    return-void
.end method

.method private clearSonglistUI()V
    .locals 3

    .prologue
    .line 2205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.myplayer.servicetoactivitysonglist"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2206
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2208
    const-string v1, "status"

    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2209
    const-string v1, "songlist"

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2210
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2211
    return-void
.end method

.method private deletefromfile(Ljava/lang/String;)V
    .locals 5
    .parameter "filename"

    .prologue
    .line 1197
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.myplayer.servicetoactivitysonglist"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/myplayer/playlist/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, filedirectory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1204
    const-string v3, "songlist"

    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1205
    const-string v3, "status"

    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1208
    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1209
    return-void
.end method

.method private deletesongUI(I)V
    .locals 4
    .parameter "posdelete"

    .prologue
    const-string v3, "MyPlayer"

    .line 2213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.myplayer.servicetoactivitysonglist"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2215
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "status"

    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2216
    const-string v1, "MyPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "posdelete:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    const-string v1, "MyPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "songlist.size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2219
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->adjustnextpresong()V

    .line 2221
    const-string v1, "songlist"

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2222
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2223
    return-void
.end method

.method private downloadfromurl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "strURL"
    .parameter "strURLlrc"

    .prologue
    const-string v3, "."

    .line 1442
    const-string v0, "MyPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strURL="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    if-eqz p1, :cond_0

    .line 1445
    const-string v0, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1446
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1445
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1445
    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->fileEx:Ljava/lang/String;

    .line 1447
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1448
    const-string v1, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1447
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->fileNa:Ljava/lang/String;

    .line 1455
    :cond_0
    if-eqz p2, :cond_1

    .line 1456
    const-string v0, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1457
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1456
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1456
    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->fileExlrc:Ljava/lang/String;

    .line 1473
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ophone/MiniPlayer/MyPlayerService;->getFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    return-void
.end method

.method private getDataSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .parameter "strPath"
    .parameter "strPathlrc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1579
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 1581
    const v21, 0x7f05005b

    .line 1582
    const/16 v22, 0x0

    .line 1581
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v21

    .line 1582
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1587
    .local v17, myURL:Ljava/net/URL;
    if-eqz p2, :cond_5

    const-string v21, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 1588
    const-string v21, "MyPlayer"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, " strPathlrc = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1594
    .local v18, myURLlrc:Ljava/net/URL;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 1595
    .local v6, conn:Ljava/net/URLConnection;
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 1596
    const/4 v7, 0x0

    .line 1597
    .local v7, connlrc:Ljava/net/URLConnection;
    if-eqz v18, :cond_2

    .line 1598
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 1599
    :cond_2
    if-eqz v7, :cond_3

    .line 1600
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 1603
    :cond_3
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 1604
    .local v11, is:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 1605
    .local v12, islrc:Ljava/io/InputStream;
    if-eqz v7, :cond_4

    .line 1606
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 1607
    :cond_4
    if-nez v11, :cond_6

    .line 1608
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "stream is null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1592
    .end local v6           #conn:Ljava/net/URLConnection;
    .end local v7           #connlrc:Ljava/net/URLConnection;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #islrc:Ljava/io/InputStream;
    .end local v18           #myURLlrc:Ljava/net/URL;
    :cond_5
    const/16 v18, 0x0

    .restart local v18       #myURLlrc:Ljava/net/URL;
    goto :goto_1

    .line 1610
    .restart local v6       #conn:Ljava/net/URLConnection;
    .restart local v7       #connlrc:Ljava/net/URLConnection;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v12       #islrc:Ljava/io/InputStream;
    :cond_6
    if-nez v12, :cond_7

    .line 1611
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "lyrics was not found"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1614
    :cond_7
    new-instance v13, Ljava/io/File;

    const-string v21, "\\sdcard\\myplayer"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1615
    .local v13, localdirectory:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    const-string v21, "\\sdcard\\myplayer\\lrc"

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1616
    .local v14, localdirectorylrc:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_8

    .line 1617
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 1618
    :cond_8
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_9

    .line 1619
    invoke-virtual {v14}, Ljava/io/File;->mkdir()Z

    .line 1620
    :cond_9
    new-instance v15, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->fileNa:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->fileEx:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v15

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1622
    .local v15, localfile:Ljava/io/File;
    new-instance v16, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->fileNa:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, ".lrc"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1635
    .local v16, localfilelrc:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->currentTempFilePath:Ljava/lang/String;

    .line 1636
    if-eqz v14, :cond_c

    .line 1637
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->currentTempFilePathlrc:Ljava/lang/String;

    .line 1643
    :goto_2
    const-string v21, "MyPlayer"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, " currentTempFilePath = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentTempFilePath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const-string v21, "MyPlayer"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, " currentTempFilePathlrc = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentTempFilePathlrc:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1648
    .local v9, fos:Ljava/io/FileOutputStream;
    const/16 v21, 0x80

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v4, v0

    .line 1650
    .local v4, buf:[B
    :goto_3
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v19

    .line 1651
    .local v19, numread:I
    if-gtz v19, :cond_d

    .line 1659
    if-eqz v14, :cond_e

    .line 1660
    new-instance v10, Ljava/io/FileOutputStream;

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1662
    .local v10, foslrc:Ljava/io/FileOutputStream;
    :goto_4
    const/16 v21, 0x80

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v5, v0

    .line 1664
    .local v5, buflrc:[B
    :goto_5
    if-eqz v12, :cond_a

    .line 1665
    invoke-virtual {v12, v5}, Ljava/io/InputStream;->read([B)I

    move-result v20

    .line 1666
    .local v20, numreadlrc:I
    if-gtz v20, :cond_f

    .line 1678
    .end local v20           #numreadlrc:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentTempFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->fileScan(Ljava/lang/String;)V

    .line 1680
    :try_start_0
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1681
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 1682
    if-eqz v10, :cond_b

    .line 1683
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1684
    :cond_b
    if-eqz v12, :cond_0

    .line 1685
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1690
    :catch_0
    move-exception v21

    move-object/from16 v8, v21

    .line 1691
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1692
    const-string v21, "MyPlayer"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "error: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1638
    .end local v4           #buf:[B
    .end local v5           #buflrc:[B
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v10           #foslrc:Ljava/io/FileOutputStream;
    .end local v19           #numread:I
    :cond_c
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->currentTempFilePathlrc:Ljava/lang/String;

    goto/16 :goto_2

    .line 1654
    .restart local v4       #buf:[B
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #numread:I
    :cond_d
    const/16 v21, 0x0

    move-object v0, v9

    move-object v1, v4

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 1661
    :cond_e
    const/4 v10, 0x0

    .restart local v10       #foslrc:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1669
    .restart local v5       #buflrc:[B
    .restart local v20       #numreadlrc:I
    :cond_f
    if-eqz v10, :cond_a

    .line 1670
    const/16 v21, 0x0

    move-object v0, v10

    move-object v1, v5

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5
.end method

.method private getFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "strPath"
    .parameter "strURLlrc"

    .prologue
    const/4 v5, 0x1

    .line 1485
    :try_start_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentFilePathlrc:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1486
    invoke-direct {p0, p1, p2}, Lcom/ophone/MiniPlayer/MyPlayerService;->getDataSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_0
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentFilePath:Ljava/lang/String;

    .line 1492
    iput-object p2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->currentFilePathlrc:Ljava/lang/String;

    .line 1493
    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I

    .line 1494
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DOWNLOAG="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    new-instance v1, Lcom/ophone/MiniPlayer/MyPlayerService$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/ophone/MiniPlayer/MyPlayerService$6;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    .local v1, r:Ljava/lang/Runnable;
    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 1514
    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I

    .line 1515
    const v2, 0x7f050063

    .line 1516
    const/4 v3, 0x1

    .line 1515
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1516
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1529
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 1518
    .restart local v1       #r:Ljava/lang/Runnable;
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1522
    .end local v1           #r:Ljava/lang/Runnable;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1523
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getFilelist(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2177
    .local v0, d:Ljava/io/File;
    const/4 v1, 0x0

    check-cast v1, [Ljava/io/File;

    .line 2178
    .local v1, fl:[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 2179
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2180
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2181
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 2182
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-lt v2, v6, :cond_2

    .line 2189
    .end local v2           #i:I
    :cond_1
    return-object v3

    .line 2184
    .restart local v2       #i:I
    :cond_2
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2185
    .local v4, st:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2186
    .local v5, st1:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getLyrics(Ljava/lang/String;)Ljava/util/List;
    .locals 26
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Sentence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1895
    const/4 v8, 0x0

    .line 1896
    .local v8, fileEx:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1897
    .local v9, fileNa:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1898
    .local v5, currentTempFilePath:Ljava/lang/String;
    const-string v22, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    .line 1899
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v23

    .line 1898
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 1899
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1900
    const-string v22, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    .line 1901
    const-string v23, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    .line 1900
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1902
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1904
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/ophone/MiniPlayer/provider/Sentence;>;"
    :try_start_0
    new-instance v14, Ljava/net/URL;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1907
    .local v14, myurl:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 1908
    .local v3, conn:Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 1909
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 1910
    .local v11, is:Ljava/io/InputStream;
    if-nez v11, :cond_1

    .line 1911
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "stream is null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1983
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v11           #is:Ljava/io/InputStream;
    .end local p0
    .end local p1
    :catch_0
    move-exception v22

    move-object/from16 v7, v22

    .line 1985
    .local v7, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1991
    .end local v7           #e:Ljava/io/IOException;
    .end local v14           #myurl:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v13

    .line 1934
    .restart local v3       #conn:Ljava/net/URLConnection;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v14       #myurl:Ljava/net/URL;
    .restart local p0
    .restart local p1
    :cond_1
    :try_start_3
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1937
    .local v6, dis:Ljava/io/DataInputStream;
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    const-string v23, "UTF-8"

    move-object/from16 v0, v22

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1942
    .local v15, read:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, temp:Ljava/lang/String;
    if-nez v18, :cond_2

    .line 1973
    const/4 v10, 0x0

    .local v10, i:I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    .end local p0
    .end local p1
    .local v12, j:I
    :goto_2
    const/16 v22, 0x1

    sub-int v22, v12, v22

    move v0, v10

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    .line 1977
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setToTime(J)V

    .line 1978
    const/4 v10, 0x0

    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1980
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getToTime()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1978
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1945
    .end local v10           #i:I
    .end local v12           #j:I
    .restart local p0
    .restart local p1
    :cond_2
    new-instance v16, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-direct/range {v16 .. v16}, Lcom/ophone/MiniPlayer/provider/Sentence;-><init>()V

    .line 1949
    .local v16, sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    new-instance v21, Ljava/util/StringTokenizer;

    const-string v22, "[]"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    .local v21, token:Ljava/util/StringTokenizer;
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "token.toString()"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1951
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    .line 1952
    .local v4, count:I
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "count="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1953
    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1954
    .local v17, st:[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-lt v10, v4, :cond_3

    .line 1970
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 1987
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v4           #count:I
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v10           #i:I
    .end local v11           #is:Ljava/io/InputStream;
    .end local v14           #myurl:Ljava/net/URL;
    .end local v15           #read:Ljava/io/BufferedReader;
    .end local v16           #sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    .end local v17           #st:[Ljava/lang/String;
    .end local v18           #temp:Ljava/lang/String;
    .end local v21           #token:Ljava/util/StringTokenizer;
    .end local p0
    .end local p1
    :catch_1
    move-exception v22

    move-object/from16 v7, v22

    .line 1989
    .local v7, e:Ljava/net/MalformedURLException;
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 1956
    .end local v7           #e:Ljava/net/MalformedURLException;
    .restart local v3       #conn:Ljava/net/URLConnection;
    .restart local v4       #count:I
    .restart local v6       #dis:Ljava/io/DataInputStream;
    .restart local v10       #i:I
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v14       #myurl:Ljava/net/URL;
    .restart local v15       #read:Ljava/io/BufferedReader;
    .restart local v16       #sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    .restart local v17       #st:[Ljava/lang/String;
    .restart local v18       #temp:Ljava/lang/String;
    .restart local v21       #token:Ljava/util/StringTokenizer;
    .restart local p0
    .restart local p1
    :cond_3
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v17, v10

    .line 1957
    aget-object v22, v17, v10

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1959
    aget-object v22, v17, v10

    invoke-static/range {v22 .. v22}, Lcom/ophone/MiniPlayer/MyPlayerService;->transfer(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 1961
    .local v19, time:J
    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setFromTime(J)V

    .line 1967
    .end local v19           #time:J
    :goto_5
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "st[i]="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v24, v17, v10

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1954
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1964
    :cond_4
    aget-object v22, v17, v10

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Sentence;->setContent(Ljava/lang/String;)V

    goto :goto_5

    .line 1975
    .end local v4           #count:I
    .end local v16           #sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    .end local v17           #st:[Ljava/lang/String;
    .end local v21           #token:Ljava/util/StringTokenizer;
    .end local p0
    .end local p1
    .restart local v12       #j:I
    :cond_5
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    add-int/lit8 v22, v10, 0x1

    move-object v0, v13

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setToTime(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1973
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2
.end method

.method private nextSong()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-string v4, "MyPlayer"

    .line 341
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 345
    :try_start_0
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songnext:Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 346
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    .line 347
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendlyricsynchronous()V

    .line 348
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 349
    .local v0, count:I
    const-string v4, "MyPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "count ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-lt v2, v0, :cond_3

    .line 362
    :goto_1
    if-le v0, v7, :cond_7

    .line 363
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    if-nez v4, :cond_5

    .line 366
    sub-int v4, v0, v7

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 367
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    .line 384
    :goto_2
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 385
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songpre:Lcom/ophone/MiniPlayer/provider/Song;

    .line 386
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songnext:Lcom/ophone/MiniPlayer/provider/Song;

    .line 389
    :cond_0
    const/4 v3, 0x0

    .line 390
    .local v3, songPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTag()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 391
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 393
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 394
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v3

    .line 404
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 405
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 406
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 407
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 408
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/ophone/MiniPlayer/MyPlayerService$4;

    invoke-direct {v5, p0}, Lcom/ophone/MiniPlayer/MyPlayerService$4;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 475
    .end local v0           #count:I
    .end local v2           #j:I
    .end local v3           #songPath:Ljava/lang/String;
    :cond_2
    :goto_4
    return-void

    .line 354
    .restart local v0       #count:I
    .restart local v2       #j:I
    :cond_3
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 355
    const-string v5, "MyPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "songlist.get(j).getName():"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    .line 358
    const-string v4, "MyPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "POS="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 451
    .end local v0           #count:I
    .end local v2           #j:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 469
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->nextSong()V

    .line 470
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V

    goto :goto_4

    .line 350
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v2       #j:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 368
    :cond_5
    :try_start_1
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int v5, v0, v7

    if-ne v4, v5, :cond_6

    .line 371
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 372
    const/4 v4, 0x0

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 376
    :cond_6
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 377
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 382
    :cond_7
    const/4 v4, 0x0

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 383
    const/4 v4, 0x0

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 396
    .restart local v3       #songPath:Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getGooglepath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 399
    :cond_9
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_3
.end method

.method private playSong()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 478
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    .line 481
    :try_start_0
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 482
    .local v0, count:I
    if-lez v0, :cond_0

    .line 483
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 493
    :goto_1
    if-le v0, v6, :cond_6

    .line 494
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    if-nez v4, :cond_4

    .line 497
    sub-int v4, v0, v6

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 498
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    .line 516
    :goto_2
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 517
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songpre:Lcom/ophone/MiniPlayer/provider/Song;

    .line 518
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songnext:Lcom/ophone/MiniPlayer/provider/Song;

    .line 520
    .end local v2           #j:I
    :cond_0
    const/4 v3, 0x0

    .line 521
    .local v3, songPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTag()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 522
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 524
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 525
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v3

    .line 534
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 535
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 536
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 537
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 540
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/ophone/MiniPlayer/MyPlayerService$5;

    invoke-direct {v5, p0}, Lcom/ophone/MiniPlayer/MyPlayerService$5;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 587
    .end local v0           #count:I
    .end local v3           #songPath:Ljava/lang/String;
    :goto_4
    return-void

    .line 488
    .restart local v0       #count:I
    .restart local v2       #j:I
    :cond_2
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 489
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 570
    .end local v0           #count:I
    .end local v2           #j:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 582
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->nextSong()V

    .line 583
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V

    goto :goto_4

    .line 483
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v2       #j:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 499
    :cond_4
    :try_start_1
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int v5, v0, v6

    if-ne v4, v5, :cond_5

    .line 502
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 503
    const/4 v4, 0x0

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 507
    :cond_5
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 508
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 514
    :cond_6
    const/4 v4, 0x0

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 515
    const/4 v4, 0x0

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 527
    .end local v2           #j:I
    .restart local v3       #songPath:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getGooglepath()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 530
    :cond_8
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 531
    const-string v4, "MyPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "songPath = song.getPath()"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private previousSong()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 278
    :try_start_0
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songpre:Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 279
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    .line 280
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 281
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 290
    :goto_1
    if-le v0, v6, :cond_6

    .line 291
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    if-nez v4, :cond_4

    .line 294
    sub-int v4, v0, v6

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 295
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    .line 312
    :goto_2
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 313
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songpre:Lcom/ophone/MiniPlayer/provider/Song;

    .line 314
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songnext:Lcom/ophone/MiniPlayer/provider/Song;

    .line 317
    :cond_0
    const/4 v3, 0x0

    .line 318
    .local v3, songPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTag()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 319
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 321
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 322
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v3

    .line 329
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 330
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 332
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 338
    .end local v0           #count:I
    .end local v2           #j:I
    .end local v3           #songPath:Ljava/lang/String;
    :goto_4
    return-void

    .line 285
    .restart local v0       #count:I
    .restart local v2       #j:I
    :cond_2
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 286
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 333
    .end local v0           #count:I
    .end local v2           #j:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 335
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->nextSong()V

    goto :goto_4

    .line 281
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v2       #j:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 296
    :cond_4
    :try_start_1
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int v5, v0, v6

    if-ne v4, v5, :cond_5

    .line 299
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 300
    const/4 v4, 0x0

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 304
    :cond_5
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 305
    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 310
    :cond_6
    const/4 v4, 0x0

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->pre:I

    .line 311
    const/4 v4, 0x0

    iput v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->next:I

    goto/16 :goto_2

    .line 324
    .restart local v3       #songPath:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getGooglepath()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 327
    :cond_8
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_3
.end method

.method private readfromfile(Ljava/lang/String;)V
    .locals 14
    .parameter "filename"

    .prologue
    .line 1213
    new-instance v5, Landroid/content/Intent;

    const-string v11, "com.myplayer.servicetoactivitysonglist"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v5, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1215
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/sdcard/myplayer/playlist/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".txt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1216
    .local v4, fn:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v11, Lcom/ophone/MiniPlayer/MyPlayerService;->bw:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1226
    const/4 v10, 0x0

    .line 1231
    .local v10, ss:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    sget-object v11, Lcom/ophone/MiniPlayer/MyPlayerService;->bw:Ljava/io/BufferedReader;

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1265
    const-string v11, "songlist"

    iget-object v12, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1271
    :goto_1
    :try_start_2
    sget-object v11, Lcom/ophone/MiniPlayer/MyPlayerService;->bw:Ljava/io/BufferedReader;

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1373
    .end local v10           #ss:Ljava/lang/String;
    :goto_2
    const-string v11, "status"

    iget v12, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1375
    iget-object v11, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1376
    .local v0, a:I
    const-string v11, "MyPlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "songlist size():"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-virtual {p0, v5}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1378
    return-void

    .line 1234
    .end local v0           #a:I
    .restart local v10       #ss:Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1235
    .local v7, mark:[Ljava/lang/String;
    new-instance v8, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-direct {v8}, Lcom/ophone/MiniPlayer/provider/Song;-><init>()V

    .line 1236
    .local v8, song:Lcom/ophone/MiniPlayer/provider/Song;
    array-length v11, v7

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    .line 1237
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setName(Ljava/lang/String;)V

    .line 1240
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    invoke-virtual {v8, v6}, Lcom/ophone/MiniPlayer/provider/Song;->setSinger(Ljava/util/ArrayList;)V

    .line 1243
    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setPath(Ljava/lang/String;)V

    .line 1245
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setTagfile(Z)V

    .line 1246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 1247
    iget-object v11, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1266
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #mark:[Ljava/lang/String;
    .end local v8           #song:Lcom/ophone/MiniPlayer/provider/Song;
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 1268
    .local v2, e1:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1283
    .end local v2           #e1:Ljava/io/IOException;
    .end local v10           #ss:Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object v1, v11

    .line 1285
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 1249
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v7       #mark:[Ljava/lang/String;
    .restart local v8       #song:Lcom/ophone/MiniPlayer/provider/Song;
    .restart local v10       #ss:Ljava/lang/String;
    :cond_2
    :try_start_5
    array-length v11, v7

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    .line 1250
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setName(Ljava/lang/String;)V

    .line 1253
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    invoke-virtual {v8, v6}, Lcom/ophone/MiniPlayer/provider/Song;->setSinger(Ljava/util/ArrayList;)V

    .line 1256
    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setPath(Ljava/lang/String;)V

    .line 1258
    const/4 v11, 0x3

    aget-object v11, v7, v11

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setDuration(Ljava/lang/String;)V

    .line 1260
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setTagfile(Z)V

    .line 1261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 1262
    iget-object v11, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1272
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #mark:[Ljava/lang/String;
    .end local v8           #song:Lcom/ophone/MiniPlayer/provider/Song;
    :catch_2
    move-exception v11

    move-object v1, v11

    .line 1274
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1289
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fn:Ljava/lang/String;
    .end local v10           #ss:Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v9, songlist1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/sdcard/myplayer/playlist/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".txt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1291
    .restart local v4       #fn:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1300
    .restart local v3       #file:Ljava/io/File;
    :try_start_7
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v11, Lcom/ophone/MiniPlayer/MyPlayerService;->bw:Ljava/io/BufferedReader;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1301
    const/4 v10, 0x0

    .line 1306
    .restart local v10       #ss:Ljava/lang/String;
    :cond_4
    :goto_3
    :try_start_8
    sget-object v11, Lcom/ophone/MiniPlayer/MyPlayerService;->bw:Ljava/io/BufferedReader;

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 1348
    const-string v11, "songlist"

    invoke-virtual {v5, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1354
    :goto_4
    :try_start_9
    sget-object v11, Lcom/ophone/MiniPlayer/MyPlayerService;->bw:Ljava/io/BufferedReader;

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_2

    .line 1355
    :catch_3
    move-exception v11

    move-object v1, v11

    .line 1357
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    .line 1366
    .end local v1           #e:Ljava/io/IOException;
    .end local v10           #ss:Ljava/lang/String;
    :catch_4
    move-exception v11

    move-object v1, v11

    .line 1368
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 1309
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v10       #ss:Ljava/lang/String;
    :cond_5
    :try_start_b
    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1310
    .restart local v7       #mark:[Ljava/lang/String;
    new-instance v8, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-direct {v8}, Lcom/ophone/MiniPlayer/provider/Song;-><init>()V

    .line 1311
    .restart local v8       #song:Lcom/ophone/MiniPlayer/provider/Song;
    array-length v11, v7

    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    .line 1312
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setName(Ljava/lang/String;)V

    .line 1315
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    invoke-virtual {v8, v6}, Lcom/ophone/MiniPlayer/provider/Song;->setSinger(Ljava/util/ArrayList;)V

    .line 1318
    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setPath(Ljava/lang/String;)V

    .line 1320
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setTagfile(Z)V

    .line 1321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 1322
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 1349
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #mark:[Ljava/lang/String;
    .end local v8           #song:Lcom/ophone/MiniPlayer/provider/Song;
    :catch_5
    move-exception v11

    move-object v2, v11

    .line 1351
    .restart local v2       #e1:Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_4

    .line 1324
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v7       #mark:[Ljava/lang/String;
    .restart local v8       #song:Lcom/ophone/MiniPlayer/provider/Song;
    :cond_6
    :try_start_d
    array-length v11, v7

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    .line 1325
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setName(Ljava/lang/String;)V

    .line 1328
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    invoke-virtual {v8, v6}, Lcom/ophone/MiniPlayer/provider/Song;->setSinger(Ljava/util/ArrayList;)V

    .line 1331
    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setPath(Ljava/lang/String;)V

    .line 1333
    const/4 v11, 0x3

    aget-object v11, v7, v11

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setDuration(Ljava/lang/String;)V

    .line 1335
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setTagfile(Z)V

    .line 1336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 1337
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_3
.end method

.method private saveSonglist(Ljava/lang/String;)V
    .locals 14
    .parameter "st"

    .prologue
    .line 1802
    const/4 v6, 0x0

    .line 1804
    .local v6, id:I
    const-string v1, ""

    .line 1805
    .local v1, buf1:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v11, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v5, v11, :cond_0

    .line 1844
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1846
    .local v0, buf:[B
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/ophone/MiniPlayer/MyPlayerService;->saveToDirectory([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1853
    :goto_1
    return-void

    .line 1806
    .end local v0           #buf:[B
    :cond_0
    const-string v9, ""

    .line 1807
    .local v9, temp:Ljava/lang/String;
    iget-object v11, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ophone/MiniPlayer/provider/Song;

    .line 1808
    .local v8, songtemp:Lcom/ophone/MiniPlayer/provider/Song;
    const-string v7, ""

    .line 1809
    .local v7, path:Ljava/lang/String;
    const-string v10, ""

    .line 1810
    .local v10, time:Ljava/lang/String;
    iget-object v11, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/provider/Song;->isTag()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1812
    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1813
    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v7

    .line 1823
    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1824
    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->getDuration()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1826
    .local v2, duration:F
    const/high16 v11, 0x447a

    mul-float/2addr v11, v2

    float-to-long v11, v11

    invoke-static {v11, v12}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 1839
    .end local v2           #duration:F
    :cond_2
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1840
    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1841
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1839
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1842
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1805
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1814
    :cond_3
    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1815
    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->getGooglepath()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1819
    :cond_4
    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 1820
    const-string v11, "MyPlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "path="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1830
    :cond_5
    :try_start_2
    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1831
    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/provider/Song;->getDuration()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1832
    .local v2, duration:J
    invoke-static {v2, v3}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    goto/16 :goto_3

    .line 1835
    .end local v2           #duration:J
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 1836
    .local v4, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_3

    .line 1847
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #songtemp:Lcom/ophone/MiniPlayer/provider/Song;
    .end local v9           #temp:Ljava/lang/String;
    .end local v10           #time:Ljava/lang/String;
    .restart local v0       #buf:[B
    :catch_1
    move-exception v4

    .line 1849
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private saveToDirectory([BLjava/lang/String;)V
    .locals 9
    .parameter "buf"
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v8, "/sdcard/myplayer/playlist/"

    const-string v7, ".txt"

    .line 1856
    const-string v5, "defaultplaylist"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1857
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1858
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "/sdcard/myplayer/playlist"

    invoke-direct {p0, v5}, Lcom/ophone/MiniPlayer/MyPlayerService;->getFilelist(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1859
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1860
    .local v0, a:I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/sdcard/myplayer/playlist/"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1861
    .local v3, playlistname:Ljava/lang/String;
    const-string v5, "MyPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "playlistname="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v4, textFile_2:Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1864
    .local v1, fos_2:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1865
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1874
    .end local v0           #a:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 1867
    .end local v1           #fos_2:Ljava/io/FileOutputStream;
    .end local v3           #playlistname:Ljava/lang/String;
    .end local v4           #textFile_2:Ljava/io/File;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/sdcard/myplayer/playlist/"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1868
    .restart local v3       #playlistname:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1869
    .restart local v4       #textFile_2:Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1870
    .restart local v1       #fos_2:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1871
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0
.end method

.method private sendJudgePlayresult(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 2198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.myplayer.servicetoactivitylocal"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2199
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2200
    const-string v1, "status"

    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2201
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2202
    return-void
.end method

.method private sendJudgePlayresultonline(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 2192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.myplayer.servicetoactivityonline"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2194
    const-string v1, "status"

    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2195
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2196
    return-void
.end method

.method private sendlyricsynchronous()V
    .locals 5

    .prologue
    .line 2239
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.myplayer.servicetoactivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2241
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "status"

    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2242
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    if-eqz v3, :cond_2

    .line 2243
    const/4 v1, 0x0

    .line 2244
    .local v1, lyricurlgoogle:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2245
    .local v2, lyricurllocal:Ljava/lang/String;
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2247
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getLyrics()Ljava/lang/String;

    move-result-object v1

    .line 2249
    :cond_0
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->isTag()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2251
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2253
    :cond_1
    const-string v3, "lyricurlgoogle"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2254
    const-string v3, "lyricurllocal"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2256
    .end local v1           #lyricurlgoogle:Ljava/lang/String;
    .end local v2           #lyricurllocal:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2257
    return-void
.end method

.method private showNotification()V
    .locals 8

    .prologue
    const v7, 0x7f05003a

    const/4 v6, 0x0

    .line 2291
    invoke-virtual {p0, v7}, Lcom/ophone/MiniPlayer/MyPlayerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2292
    .local v2, text:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f020018

    .line 2293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2292
    invoke-direct {v0, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2296
    .local v0, notifi:Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2295
    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2299
    .local v1, pIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    if-eqz v3, :cond_1

    .line 2302
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->getartist()Ljava/lang/String;

    move-result-object v4

    .line 2301
    invoke-virtual {v0, p0, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2305
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->nMgr:Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    .line 2306
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/ophone/MiniPlayer/MyPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->nMgr:Landroid/app/NotificationManager;

    .line 2308
    :cond_0
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->nMgr:Landroid/app/NotificationManager;

    invoke-virtual {v3, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2310
    :cond_1
    return-void
.end method

.method public static transfer(Ljava/lang/String;)I
    .locals 12
    .parameter "time"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const-string v11, ":"

    const-string v8, "."

    .line 1994
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_1

    .line 1995
    const-string v6, ":"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1996
    .local v3, pos1:I
    if-ne v3, v9, :cond_0

    const-string v6, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1997
    :cond_0
    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1998
    .local v2, min:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2000
    .local v5, sec:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    .line 2001
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    .line 2000
    add-int v0, v6, v7

    .line 2018
    .local v0, lrc:I
    :goto_0
    return v0

    .line 2005
    .end local v0           #lrc:I
    .end local v2           #min:Ljava/lang/String;
    .end local v3           #pos1:I
    .end local v5           #sec:Ljava/lang/String;
    :cond_1
    const-string v6, ":"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2006
    .restart local v3       #pos1:I
    if-ne v3, v9, :cond_2

    const-string v6, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2008
    :cond_2
    const-string v6, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2009
    .local v4, pos2:I
    if-ne v4, v3, :cond_3

    const-string v6, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 2011
    :cond_3
    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2012
    .restart local v2       #min:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2013
    .restart local v5       #sec:Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2015
    .local v1, mil:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    .line 2016
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    .line 2015
    add-int/2addr v6, v7

    .line 2017
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    .line 2015
    add-int v0, v6, v7

    .line 2018
    .restart local v0       #lrc:I
    goto :goto_0
.end method

.method private updateNextsongstatus()V
    .locals 3

    .prologue
    .line 2232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.myplayer.servicetoactivitysonglist"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2233
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "status"

    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2234
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2235
    return-void
.end method

.method private updateSonglistUI()V
    .locals 14

    .prologue
    const/4 v12, 0x3

    const-string v13, "songlist"

    .line 2086
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.myplayer.servicetoactivitysonglist"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2087
    .local v5, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2088
    const-string v10, "songlist"

    iget-object v10, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2168
    :goto_0
    const-string v10, "status"

    iget v11, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2170
    iget-object v10, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2171
    .local v0, a:I
    const-string v10, "MyPlayer"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "songlist size():"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    invoke-virtual {p0, v5}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2173
    return-void

    .line 2090
    .end local v0           #a:I
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v10, "/sdcard/myplayer/playlist/defaultplaylist.txt"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2098
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2099
    .local v4, fin:Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v10, Lcom/ophone/MiniPlayer/MyPlayerService;->bw:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2100
    const/4 v9, 0x0

    .line 2105
    .local v9, ss:Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    sget-object v10, Lcom/ophone/MiniPlayer/MyPlayerService;->bw:Ljava/io/BufferedReader;

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    if-nez v9, :cond_2

    .line 2144
    :goto_2
    :try_start_2
    sget-object v10, Lcom/ophone/MiniPlayer/MyPlayerService;->bw:Ljava/io/BufferedReader;

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2150
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2160
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v9           #ss:Ljava/lang/String;
    :goto_4
    const-string v10, "songlist"

    iget-object v10, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 2108
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v9       #ss:Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2109
    .local v7, mark:[Ljava/lang/String;
    new-instance v8, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-direct {v8}, Lcom/ophone/MiniPlayer/provider/Song;-><init>()V

    .line 2110
    .local v8, song:Lcom/ophone/MiniPlayer/provider/Song;
    array-length v10, v7

    if-ne v10, v12, :cond_3

    .line 2111
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Lcom/ophone/MiniPlayer/provider/Song;->setName(Ljava/lang/String;)V

    .line 2114
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2115
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    invoke-virtual {v8, v6}, Lcom/ophone/MiniPlayer/provider/Song;->setSinger(Ljava/util/ArrayList;)V

    .line 2117
    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Lcom/ophone/MiniPlayer/provider/Song;->setPath(Ljava/lang/String;)V

    .line 2119
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/ophone/MiniPlayer/provider/Song;->setTagfile(Z)V

    .line 2120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 2121
    iget-object v10, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2139
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #mark:[Ljava/lang/String;
    .end local v8           #song:Lcom/ophone/MiniPlayer/provider/Song;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 2141
    .local v2, e1:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2156
    .end local v2           #e1:Ljava/io/IOException;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v9           #ss:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 2158
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 2123
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v7       #mark:[Ljava/lang/String;
    .restart local v8       #song:Lcom/ophone/MiniPlayer/provider/Song;
    .restart local v9       #ss:Ljava/lang/String;
    :cond_3
    :try_start_6
    array-length v10, v7

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 2124
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Lcom/ophone/MiniPlayer/provider/Song;->setName(Ljava/lang/String;)V

    .line 2127
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2128
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2129
    invoke-virtual {v8, v6}, Lcom/ophone/MiniPlayer/provider/Song;->setSinger(Ljava/util/ArrayList;)V

    .line 2130
    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Lcom/ophone/MiniPlayer/provider/Song;->setPath(Ljava/lang/String;)V

    .line 2132
    const/4 v10, 0x3

    aget-object v10, v7, v10

    invoke-virtual {v8, v10}, Lcom/ophone/MiniPlayer/provider/Song;->setDuration(Ljava/lang/String;)V

    .line 2134
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/ophone/MiniPlayer/provider/Song;->setTagfile(Z)V

    .line 2135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 2136
    iget-object v10, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 2145
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #mark:[Ljava/lang/String;
    .end local v8           #song:Lcom/ophone/MiniPlayer/provider/Song;
    :catch_2
    move-exception v10

    move-object v1, v10

    .line 2147
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 2151
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 2153
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4
.end method

.method private updateUi()V
    .locals 3

    .prologue
    .line 2227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.myplayer.servicetoactivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "status"

    iget v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2229
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2230
    return-void
.end method

.method private updatenextui()V
    .locals 5

    .prologue
    .line 1381
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.myplayer.servicetoactivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1382
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    if-eqz v3, :cond_2

    .line 1384
    const/4 v1, 0x0

    .line 1385
    .local v1, lyricurlgoogle:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1386
    .local v2, lyricurllocal:Ljava/lang/String;
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1388
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getLyrics()Ljava/lang/String;

    move-result-object v1

    .line 1390
    :cond_0
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->isTag()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1392
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1394
    :cond_1
    const-string v3, "lyricurllocal"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1395
    const-string v3, "lyricurlgoogle"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    .end local v1           #lyricurlgoogle:Ljava/lang/String;
    .end local v2           #lyricurllocal:Ljava/lang/String;
    :cond_2
    const-string v3, "status"

    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1398
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1399
    return-void
.end method

.method private updatepreui()V
    .locals 5

    .prologue
    .line 1402
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.myplayer.servicetoactivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1403
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    if-eqz v3, :cond_2

    .line 1405
    const/4 v1, 0x0

    .line 1406
    .local v1, lyricurlgoogle:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1407
    .local v2, lyricurllocal:Ljava/lang/String;
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1409
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getLyrics()Ljava/lang/String;

    move-result-object v1

    .line 1411
    :cond_0
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->isTag()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1413
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1415
    :cond_1
    const-string v3, "lyricurllocal"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1416
    const-string v3, "lyricurlgoogle"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1418
    .end local v1           #lyricurlgoogle:Ljava/lang/String;
    .end local v2           #lyricurllocal:Ljava/lang/String;
    :cond_2
    const-string v3, "status"

    iget v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1419
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1420
    return-void
.end method


# virtual methods
.method public SongRandom()V
    .locals 7

    .prologue
    const-string v6, "MyPlayer"

    .line 594
    const/4 v2, 0x1

    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->playmodel:I

    .line 597
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 598
    .local v0, count:I
    if-lez v0, :cond_0

    .line 599
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 600
    .local v1, random:I
    const-string v2, "MyPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "random:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 602
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    .line 603
    const-string v2, "MyPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "random songname\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v1           #random:I
    :goto_0
    return-void

    .line 605
    :cond_0
    const v2, 0x7f05005c

    .line 606
    const/4 v3, 0x0

    .line 605
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 606
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public SongRandomClosed()V
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    iput v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->playmodel:I

    .line 591
    return-void
.end method

.method public fileScan(Ljava/lang/String;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1576
    .local v0, data:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1577
    return-void
.end method

.method public getartist()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2281
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v1}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2282
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v1}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2283
    .local v0, a:I
    if-le v0, v4, :cond_0

    .line 2284
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v1}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2288
    .end local v0           #a:I
    :goto_0
    return-object v1

    .line 2286
    .restart local v0       #a:I
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v1}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_0

    .line 2288
    .end local v0           #a:I
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const-string v3, "com.myplayer.toService"

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    .line 232
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    .line 234
    const/16 v2, 0x66

    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 236
    new-instance v2, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    iput-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->commandReceiver:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, filter1:Landroid/content/IntentFilter;
    const-string v2, "com.myplayer.toService"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v2, "http"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 241
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v1, filter2:Landroid/content/IntentFilter;
    const-string v2, "com.myplayer.toService"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->commandReceiver:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->commandReceiver:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    new-instance v2, Lcom/ophone/MiniPlayer/MyPlayerService$3;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/MyPlayerService$3;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    iput-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 255
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->commandReceiver:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->nMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->nMgr:Landroid/app/NotificationManager;

    const v1, 0x7f05003a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 265
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startid"

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayerService;->updateUi()V

    .line 274
    return-void
.end method
