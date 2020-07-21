.class public Lcom/ophone/MiniPlayer/MyPlayer;
.super Landroid/app/Activity;
.source "MyPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;
    }
.end annotation


# static fields
.field public static final OPTION_ITEM_LOCALSONG:I = 0x1

.field public static final OPTION_ITEM_ONLINESONG:I = 0x0

.field public static final OPTION_ITEM_PLAYLIST:I = 0x2

.field public static final OPTION_ITEM_TOMAINMENU:I = 0x3

.field public static final SHOW_CANNOTPLAY_DIALOG:I = 0x4

.field private static final SHOW_PLAYSONG_DIALOG:I = 0x3

.field public static final TAG:Ljava/lang/String; = "MyPlayer"

.field public static final UPDATE:I = 0x2


# instance fields
.field _album:Ljava/lang/String;

.field _artist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _artistcount:I

.field _imageurlgoogle:Ljava/lang/String;

.field _songname:Ljava/lang/String;

.field album:Landroid/widget/TextView;

.field artist:Landroid/widget/TextView;

.field private bar:Landroid/widget/SeekBar;

.field bitmap:Landroid/graphics/Bitmap;

.field private connection:Landroid/content/ServiceConnection;

.field current:Landroid/widget/TextView;

.field duration:J

.field flagrandom:I

.field flagrandomr:I

.field flagrepeat:I

.field flagrepeatr:I

.field private handler:Landroid/os/Handler;

.field private image:Landroid/widget/ImageView;

.field jumpbn:Landroid/widget/Button;

.field private liu:Lcom/ophone/MiniPlayer/Loadimageurl;

.field nextsongbn:Landroid/widget/Button;

.field playpausebn:Landroid/widget/Button;

.field pos:J

.field presongbn:Landroid/widget/Button;

.field private rString:Ljava/lang/Integer;

.field randombn:Landroid/widget/Button;

.field receiver:Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;

.field repeatbn:Landroid/widget/Button;

.field private seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private service:Lcom/ophone/MiniPlayer/IPlayback;

.field private song:Lcom/ophone/MiniPlayer/provider/Song;

.field songname:Landroid/widget/TextView;

.field private songservice:Lcom/ophone/MiniPlayer/provider/Song;

.field status:I

.field stopbn:Landroid/widget/Button;

.field total:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->duration:J

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->pos:J

    .line 86
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeat:I

    .line 87
    iput v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeatr:I

    .line 88
    iput v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandom:I

    .line 89
    iput v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandomr:I

    .line 97
    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 98
    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->songservice:Lcom/ophone/MiniPlayer/provider/Song;

    .line 101
    new-instance v0, Lcom/ophone/MiniPlayer/Loadimageurl;

    invoke-direct {v0}, Lcom/ophone/MiniPlayer/Loadimageurl;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->liu:Lcom/ophone/MiniPlayer/Loadimageurl;

    .line 118
    new-instance v0, Lcom/ophone/MiniPlayer/MyPlayer$1;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/MyPlayer$1;-><init>(Lcom/ophone/MiniPlayer/MyPlayer;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->connection:Landroid/content/ServiceConnection;

    .line 313
    new-instance v0, Lcom/ophone/MiniPlayer/MyPlayer$2;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/MyPlayer$2;-><init>(Lcom/ophone/MiniPlayer/MyPlayer;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 451
    new-instance v0, Lcom/ophone/MiniPlayer/MyPlayer$3;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/MyPlayer$3;-><init>(Lcom/ophone/MiniPlayer/MyPlayer;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->handler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method private Init()V
    .locals 3

    .prologue
    .line 269
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x12

    .line 271
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MyPlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method private Initrandom()V
    .locals 3

    .prologue
    .line 261
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x11

    .line 263
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MyPlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method private Initrepeat()V
    .locals 3

    .prologue
    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x10

    .line 255
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MyPlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method private SendIsPlaying()V
    .locals 4

    .prologue
    .line 245
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 248
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string v2, "song"

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MyPlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method private UpdateProgressbar()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v1, ""

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    if-eqz v1, :cond_3

    .line 469
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v1}, Lcom/ophone/MiniPlayer/IPlayback;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v1}, Lcom/ophone/MiniPlayer/IPlayback;->getDuration()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->duration:J

    .line 472
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v1}, Lcom/ophone/MiniPlayer/IPlayback;->getTime()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->pos:J

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v1}, Lcom/ophone/MiniPlayer/IPlayback;->getArtist()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    .line 476
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v1}, Lcom/ophone/MiniPlayer/IPlayback;->getAlbum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_album:Ljava/lang/String;

    .line 477
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v1}, Lcom/ophone/MiniPlayer/IPlayback;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_songname:Ljava/lang/String;

    .line 481
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->current:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->pos:J

    invoke-static {v2, v3}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->total:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->duration:J

    invoke-static {v2, v3}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->bar:Landroid/widget/SeekBar;

    const-wide/16 v2, 0x64

    iget-wide v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->pos:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->duration:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 484
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artistcount:I

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 493
    iget v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artistcount:I

    if-le v1, v6, :cond_4

    .line 494
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->artist:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_album:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 501
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->album:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_album:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :goto_1
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_songname:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 505
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->songname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_songname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 527
    :goto_3
    return-void

    .line 495
    :cond_4
    iget v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artistcount:I

    if-gt v1, v6, :cond_2

    .line 496
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->artist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 525
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 498
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->artist:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 503
    :cond_6
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->album:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 507
    :cond_7
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->songname:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private UpdateSonginfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v1, "MyPlayer"

    const-string v5, ""

    .line 529
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 530
    iget v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artistcount:I

    if-le v1, v4, :cond_2

    .line 531
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->artist:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_album:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 538
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->album:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_album:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :goto_1
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_songname:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 542
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->songname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_songname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v1}, Lcom/ophone/MiniPlayer/IPlayback;->getDuration()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->duration:J

    .line 564
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v1}, Lcom/ophone/MiniPlayer/IPlayback;->getTime()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->pos:J

    .line 566
    :cond_1
    const-string v1, "MyPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duration="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v1, "MyPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->pos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->current:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->pos:J

    invoke-static {v2, v3}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->total:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->duration:J

    invoke-static {v2, v3}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->bar:Landroid/widget/SeekBar;

    const-wide/16 v2, 0x64

    iget-wide v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->pos:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->duration:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_3
    return-void

    .line 532
    :cond_2
    iget v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artistcount:I

    if-gt v1, v4, :cond_0

    .line 533
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer;->artist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 535
    :cond_3
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->artist:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 540
    :cond_4
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->album:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 544
    :cond_5
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->songname:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 571
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 573
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/MyPlayer;Lcom/ophone/MiniPlayer/IPlayback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    return-void
.end method

.method static synthetic access$1(Lcom/ophone/MiniPlayer/MyPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ophone/MiniPlayer/MyPlayer;)Lcom/ophone/MiniPlayer/IPlayback;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ophone/MiniPlayer/MyPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayer;->UpdateProgressbar()V

    return-void
.end method

.method static synthetic access$4(Lcom/ophone/MiniPlayer/MyPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayer;->UpdateSonginfo()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-string v5, "flagrandom"

    const-string v4, "flagrepeat"

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, cmd:I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.myplayer.toService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 446
    :goto_0
    const-string v3, "MyPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Myplayer STATUS="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/ophone/MiniPlayer/MyPlayer;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v3, "cmd"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/MyPlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    return-void

    .line 353
    :sswitch_0
    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->status:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 354
    const/4 v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->status:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    .line 361
    const/4 v0, 0x2

    goto :goto_0

    .line 363
    :cond_1
    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->status:I

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_2

    .line 364
    const/4 v0, 0x2

    goto :goto_0

    .line 367
    :cond_2
    const/4 v0, 0x2

    .line 372
    goto :goto_0

    .line 377
    :sswitch_1
    const/4 v0, 0x5

    .line 378
    goto :goto_0

    .line 380
    :sswitch_2
    const/4 v0, 0x4

    .line 381
    goto :goto_0

    .line 383
    :sswitch_3
    const/4 v0, 0x3

    .line 384
    goto :goto_0

    .line 393
    :sswitch_4
    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandom:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 395
    :pswitch_0
    const/16 v0, 0x9

    .line 396
    const-string v3, "flagrandom"

    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandom:I

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandom:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandom:I

    goto :goto_0

    .line 401
    :pswitch_1
    const/16 v0, 0xa

    .line 402
    const-string v3, "flagrandom"

    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandom:I

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const/16 v3, 0xa

    iput v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandom:I

    goto :goto_0

    .line 411
    :sswitch_5
    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeat:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 413
    :pswitch_2
    const/16 v0, 0xc

    .line 414
    const-string v3, "flagrepeat"

    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeat:I

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeat:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeat:I

    goto :goto_0

    .line 420
    :pswitch_3
    const/16 v0, 0xb

    .line 421
    const-string v3, "flagrepeat"

    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeat:I

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeat:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeat:I

    goto/16 :goto_0

    .line 428
    :pswitch_4
    const/16 v0, 0xd

    .line 429
    const-string v3, "flagrepeat"

    iget v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeat:I

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    const/4 v3, 0x0

    iput v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeat:I

    goto/16 :goto_0

    .line 439
    :sswitch_6
    const/4 v0, 0x7

    .line 440
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MyPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 351
    :sswitch_data_0
    .sparse-switch
        0x7f08000d -> :sswitch_6
        0x7f08000e -> :sswitch_4
        0x7f08000f -> :sswitch_5
        0x7f080016 -> :sswitch_1
        0x7f080017 -> :sswitch_0
        0x7f080018 -> :sswitch_2
        0x7f080024 -> :sswitch_3
    .end sparse-switch

    .line 393
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 411
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0, v7}, Lcom/ophone/MiniPlayer/MyPlayer;->requestWindowFeature(I)Z

    .line 134
    const v4, 0x7f030008

    invoke-virtual {p0, v4}, Lcom/ophone/MiniPlayer/MyPlayer;->setContentView(I)V

    .line 137
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MyPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 138
    .local v1, i:Landroid/content/Intent;
    const-string v4, "song"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 139
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayer;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 140
    .local v3, song1:Lcom/ophone/MiniPlayer/provider/Song;
    const-string v4, "R.string"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->rString:Ljava/lang/Integer;

    .line 141
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->rString:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 145
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 146
    const-string v4, "MyPlayer"

    const-string v5, "song.nextSource()==null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getSource()Lcom/ophone/MiniPlayer/provider/Song$Source;

    move-result-object v4

    iget-object v5, p0, Lcom/ophone/MiniPlayer/MyPlayer;->rString:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyPlayer;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-static {v5, v6}, Lcom/ophone/MiniPlayer/provider/SongManager;->getSongSource(Ljava/lang/Integer;Lcom/ophone/MiniPlayer/provider/Song;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ophone/MiniPlayer/provider/Song$Source;->setLinks(Ljava/util/ArrayList;)V

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4, v7}, Lcom/ophone/MiniPlayer/provider/Song;->setTag(Z)V

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MyPlayer;->setview()V

    .line 172
    new-instance v4, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;

    invoke-direct {v4, p0}, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;-><init>(Lcom/ophone/MiniPlayer/MyPlayer;)V

    iput-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->receiver:Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, filter1:Landroid/content/IntentFilter;
    const-string v4, "com.myplayer.servicetoactivity"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->receiver:Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayer;->SendIsPlaying()V

    .line 191
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyPlayer;->Init()V

    .line 197
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/ophone/MiniPlayer/MyPlayerService;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayer;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v4, v7}, Lcom/ophone/MiniPlayer/MyPlayer;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MyPlayer;->finish()V

    .line 203
    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f050001

    const v2, 0x1080001

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 311
    :goto_0
    return-object v0

    .line 297
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 299
    const v2, 0x7f05002a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 301
    goto :goto_0

    .line 303
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 304
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 305
    const v2, 0x7f05004f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 307
    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MyPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 721
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f020019

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 722
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 723
    .local v1, r:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f05003d

    invoke-interface {p1, v4, v4, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 724
    const v3, 0x7f020011

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 725
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 726
    const v3, 0x7f05003e

    invoke-interface {p1, v4, v6, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 727
    const v3, 0x7f020020

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 728
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 729
    const v3, 0x7f05003f

    invoke-interface {p1, v4, v7, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 730
    const v3, 0x7f05002f

    invoke-interface {p1, v4, v8, v8, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020013

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 732
    return v6
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->receiver:Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->unbindService(Landroid/content/ServiceConnection;)V

    .line 292
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 735
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 736
    .local v4, itemId:I
    packed-switch v4, :pswitch_data_0

    .line 756
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 738
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/MusicFeedActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 742
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 743
    .local v1, i1:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MyPlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 746
    .end local v1           #i1:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 747
    .local v2, i2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/MyPlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 750
    .end local v2           #i2:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/MainActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 751
    .local v3, i3:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/ophone/MiniPlayer/MyPlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 287
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 282
    return-void
.end method

.method protected setview()V
    .locals 2

    .prologue
    .line 208
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->playpausebn:Landroid/widget/Button;

    .line 210
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->jumpbn:Landroid/widget/Button;

    .line 211
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->nextsongbn:Landroid/widget/Button;

    .line 212
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->presongbn:Landroid/widget/Button;

    .line 213
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->randombn:Landroid/widget/Button;

    .line 214
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->repeatbn:Landroid/widget/Button;

    .line 215
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->artist:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->album:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->songname:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->bar:Landroid/widget/SeekBar;

    .line 219
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->current:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->total:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->image:Landroid/widget/ImageView;

    .line 222
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->randombn:Landroid/widget/Button;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 223
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->jumpbn:Landroid/widget/Button;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 224
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->presongbn:Landroid/widget/Button;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 225
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->nextsongbn:Landroid/widget/Button;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 226
    iget v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->status:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->playpausebn:Landroid/widget/Button;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->repeatbn:Landroid/widget/Button;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 231
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->image:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 232
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->bar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 233
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->bar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 234
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->playpausebn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->nextsongbn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->presongbn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->randombn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->repeatbn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->jumpbn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->bar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer;->seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 242
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer;->playpausebn:Landroid/widget/Button;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
