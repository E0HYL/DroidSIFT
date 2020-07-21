.class public Lcom/ophone/MiniPlayer/lyricsactivity;
.super Landroid/app/Activity;
.source "lyricsactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;
    }
.end annotation


# static fields
.field public static final OPTION_ITEM_EXIT:I = 0x4

.field public static final OPTION_ITEM_LOCALSONG:I = 0x1

.field public static final OPTION_ITEM_ONLINESONG:I = 0x0

.field public static final OPTION_ITEM_PLAYLIST:I = 0x2

.field public static final OPTION_ITEM_TOMAINMENU:I = 0x3

.field private static final SHOW_EXIT_DIALOG:I = 0x3

.field public static final TAG:Ljava/lang/String; = "MyPlayer"

.field public static final UPDATE:I = 0x2


# instance fields
.field private _artist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _artistcount:I

.field private _songname:Ljava/lang/String;

.field private artist:Landroid/widget/TextView;

.field private bar:Landroid/widget/SeekBar;

.field private connection:Landroid/content/ServiceConnection;

.field private current:Landroid/widget/TextView;

.field private dm:Landroid/util/DisplayMetrics;

.field private duration:J

.field private flag:Ljava/lang/Boolean;

.field private handler:Landroid/os/Handler;

.field private image:Landroid/widget/ImageView;

.field private iv:Landroid/widget/ImageView;

.field private l1:Landroid/widget/LinearLayout;

.field private l5:Landroid/widget/LinearLayout;

.field private liu:Lcom/ophone/MiniPlayer/Loadimageurl;

.field private lyrics:Landroid/widget/TextView;

.field private lyricurlgoogle:Ljava/lang/String;

.field private lyricurllocal:Ljava/lang/String;

.field private mTextView:Lcom/ophone/MiniPlayer/MyView;

.field private nextsongbn:Landroid/widget/Button;

.field private playpausebn:Landroid/widget/Button;

.field private pos:J

.field private presongbn:Landroid/widget/Button;

.field private rString:Ljava/lang/Integer;

.field receiver:Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;

.field private seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field sentencelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Sentence;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/ophone/MiniPlayer/IPlayback;

.field private song:Lcom/ophone/MiniPlayer/provider/Song;

.field private songname:Landroid/widget/TextView;

.field private status:I

.field private total:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->pos:J

    .line 94
    new-instance v0, Lcom/ophone/MiniPlayer/Loadimageurl;

    invoke-direct {v0}, Lcom/ophone/MiniPlayer/Loadimageurl;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->liu:Lcom/ophone/MiniPlayer/Loadimageurl;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->sentencelist:Ljava/util/List;

    .line 122
    new-instance v0, Lcom/ophone/MiniPlayer/lyricsactivity$1;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/lyricsactivity$1;-><init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->handler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/ophone/MiniPlayer/lyricsactivity$2;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/lyricsactivity$2;-><init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->connection:Landroid/content/ServiceConnection;

    .line 362
    new-instance v0, Lcom/ophone/MiniPlayer/lyricsactivity$3;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/lyricsactivity$3;-><init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 74
    return-void
.end method

.method private Init()V
    .locals 3

    .prologue
    .line 301
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x12

    .line 303
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    return-void
.end method

.method private SendIsPlaying()V
    .locals 4

    .prologue
    .line 294
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 296
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v2, "song"

    iget-object v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method private UpdateProgressbar()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-string v2, ""

    .line 524
    :try_start_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    if-eqz v2, :cond_3

    .line 525
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->flag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 527
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getDuration()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    .line 528
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getTime()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->pos:J

    .line 535
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->mTextView:Lcom/ophone/MiniPlayer/MyView;

    iget-wide v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->pos:J

    iget-object v5, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->sentencelist:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5}, Lcom/ophone/MiniPlayer/MyView;->setText(JLjava/util/List;)V

    .line 536
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->mTextView:Lcom/ophone/MiniPlayer/MyView;

    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/MyView;->invalidate()V

    .line 538
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getArtist()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    .line 539
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_songname:Ljava/lang/String;

    .line 540
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->current:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->pos:J

    invoke-static {v3, v4}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->total:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    invoke-static {v3, v4}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-wide v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->bar:Landroid/widget/SeekBar;

    const-wide/16 v3, 0x64

    iget-wide v5, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->pos:J

    mul-long/2addr v3, v5

    iget-wide v5, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 544
    :cond_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 545
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artistcount:I

    .line 547
    :cond_1
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 548
    iget v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artistcount:I

    if-le v2, v7, :cond_4

    .line 549
    iget-object v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->artist:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_songname:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 561
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->songname:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_songname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 597
    :goto_2
    return-void

    .line 550
    :cond_4
    iget v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artistcount:I

    if-gt v2, v7, :cond_2

    .line 551
    iget-object v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->artist:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 595
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 553
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->artist:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 566
    :cond_6
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->songname:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 569
    :cond_7
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->flag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 570
    :cond_8
    const-string v2, "MyPlayer"

    const-string v3, "else  if(!service.isPlaying()||!flag)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getlyricurlgoogle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    .line 572
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getlyricurllocal()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurllocal:Ljava/lang/String;

    .line 575
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 576
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 577
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ophone/MiniPlayer/lyricsactivity;->getLyricsgoogle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->sentencelist:Ljava/util/List;

    goto :goto_2

    .line 578
    :cond_9
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurllocal:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 579
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurllocal:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ophone/MiniPlayer/lyricsactivity;->getLyricslocal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->sentencelist:Ljava/util/List;

    goto :goto_2

    .line 583
    :cond_a
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->sentencelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 584
    new-instance v1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-direct {v1}, Lcom/ophone/MiniPlayer/provider/Sentence;-><init>()V

    .line 585
    .local v1, scnocontent:Lcom/ophone/MiniPlayer/provider/Sentence;
    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u6ca1\u6709\u627e\u5230\u76f8\u5173\u6b4c\u8bcd\uff01"

    invoke-virtual {v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setContent(Ljava/lang/String;)V

    .line 586
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->sentencelist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private UpdateSonginfo()V
    .locals 10

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, ""

    const-string v2, "MyPlayer"

    .line 424
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 425
    iget v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artistcount:I

    if-le v2, v6, :cond_2

    .line 426
    iget-object v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->artist:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_songname:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 434
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->songname:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_songname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    if-eqz v2, :cond_1

    .line 440
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getDuration()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    .line 441
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getTime()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->pos:J

    .line 442
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getlyricurlgoogle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    .line 443
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getlyricurllocal()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurllocal:Ljava/lang/String;

    .line 446
    :cond_1
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lyricurl="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "duration="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pos="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->pos:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->current:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->pos:J

    invoke-static {v3, v4}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->total:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    invoke-static {v3, v4}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-wide v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->pos:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_5

    .line 452
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->bar:Landroid/widget/SeekBar;

    const-wide/16 v3, 0x64

    iget-wide v5, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->pos:J

    mul-long/2addr v3, v5

    iget-wide v5, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->duration:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 455
    :goto_2
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lyricurlgoogle="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lyricurllocal="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurllocal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 458
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 459
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ophone/MiniPlayer/lyricsactivity;->getLyricsgoogle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->sentencelist:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_3
    return-void

    .line 427
    :cond_2
    iget v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artistcount:I

    if-gt v2, v6, :cond_0

    .line 428
    iget-object v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->artist:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 430
    :cond_3
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->artist:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 436
    :cond_4
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->songname:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 453
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->bar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 472
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 460
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurllocal:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 461
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurllocal:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ophone/MiniPlayer/lyricsactivity;->getLyricslocal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->sentencelist:Ljava/util/List;

    goto :goto_3

    .line 465
    :cond_7
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->sentencelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 466
    new-instance v1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-direct {v1}, Lcom/ophone/MiniPlayer/provider/Sentence;-><init>()V

    .line 467
    .local v1, scnocontent:Lcom/ophone/MiniPlayer/provider/Sentence;
    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u6ca1\u6709\u627e\u5230\u76f8\u5173\u6b4c\u8bcd\uff01"

    invoke-virtual {v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setContent(Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->sentencelist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/lyricsactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateProgressbar()V

    return-void
.end method

.method static synthetic access$1(Lcom/ophone/MiniPlayer/lyricsactivity;Lcom/ophone/MiniPlayer/IPlayback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    return-void
.end method

.method static synthetic access$10(Lcom/ophone/MiniPlayer/lyricsactivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artistcount:I

    return-void
.end method

.method static synthetic access$11(Lcom/ophone/MiniPlayer/lyricsactivity;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->status:I

    return v0
.end method

.method static synthetic access$12(Lcom/ophone/MiniPlayer/lyricsactivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->playpausebn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$13(Lcom/ophone/MiniPlayer/lyricsactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateSonginfo()V

    return-void
.end method

.method static synthetic access$2(Lcom/ophone/MiniPlayer/lyricsactivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ophone/MiniPlayer/lyricsactivity;)Lcom/ophone/MiniPlayer/IPlayback;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ophone/MiniPlayer/lyricsactivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->status:I

    return-void
.end method

.method static synthetic access$5(Lcom/ophone/MiniPlayer/lyricsactivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lcom/ophone/MiniPlayer/lyricsactivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_songname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/ophone/MiniPlayer/lyricsactivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/ophone/MiniPlayer/lyricsactivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurllocal:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/ophone/MiniPlayer/lyricsactivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;

    return-object v0
.end method

.method private getLyricsgoogle(Ljava/lang/String;)Ljava/util/List;
    .locals 27
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
    .line 607
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Lcom/ophone/MiniPlayer/provider/Sentence;>;"
    if-eqz p1, :cond_1

    .line 611
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 616
    .local v12, myurl:Ljava/net/URL;
    :goto_0
    if-eqz v12, :cond_2

    .line 618
    :try_start_1
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 619
    .local v3, conn:Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 623
    :goto_1
    if-eqz v3, :cond_3

    .line 624
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 626
    .local v9, is:Ljava/io/InputStream;
    :goto_2
    if-nez v9, :cond_4

    .line 627
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "stream is null"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 731
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v9           #is:Ljava/io/InputStream;
    .end local p0
    .end local p1
    :catch_0
    move-exception v23

    move-object/from16 v7, v23

    .line 733
    .local v7, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 739
    .end local v7           #e:Ljava/io/IOException;
    .end local v12           #myurl:Ljava/net/URL;
    :cond_0
    :goto_3
    return-object v11

    .line 612
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v12, 0x0

    .restart local v12       #myurl:Ljava/net/URL;
    goto :goto_0

    .line 621
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #conn:Ljava/net/URLConnection;
    goto :goto_1

    .line 625
    :cond_3
    const/4 v9, 0x0

    .restart local v9       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 650
    :cond_4
    :try_start_3
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 653
    .local v6, dis:Ljava/io/DataInputStream;
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    const-string v24, "UTF-8"

    move-object/from16 v0, v23

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 656
    .local v13, read:Ljava/io/BufferedReader;
    :cond_5
    :goto_4
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, temp:Ljava/lang/String;
    if-nez v18, :cond_6

    .line 714
    new-instance v23, Lcom/ophone/MiniPlayer/lyricsactivity$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity$6;-><init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 721
    const/4 v8, 0x0

    .local v8, i:I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .end local p0
    .end local p1
    .local v10, j:I
    :goto_5
    const/16 v23, 0x1

    sub-int v23, v10, v23

    move v0, v8

    move/from16 v1, v23

    if-lt v0, v1, :cond_c

    .line 725
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setToTime(J)V

    .line 726
    const/4 v8, 0x0

    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 728
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getToTime()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 726
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 658
    .end local v8           #i:I
    .end local v10           #j:I
    .restart local p0
    .restart local p1
    :cond_6
    new-instance v14, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-direct {v14}, Lcom/ophone/MiniPlayer/provider/Sentence;-><init>()V

    .line 662
    .local v14, sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    new-instance v21, Ljava/util/StringTokenizer;

    const-string v23, "[]"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .local v21, token:Ljava/util/StringTokenizer;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "token.toString()"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    .line 665
    .local v4, count:I
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "count="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 666
    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 668
    .local v16, st:[Ljava/lang/String;
    const/16 v23, 0x2

    move v0, v4

    move/from16 v1, v23

    if-gt v0, v1, :cond_9

    .line 670
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_7
    if-lt v8, v4, :cond_7

    .line 686
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 735
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v4           #count:I
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v8           #i:I
    .end local v9           #is:Ljava/io/InputStream;
    .end local v12           #myurl:Ljava/net/URL;
    .end local v13           #read:Ljava/io/BufferedReader;
    .end local v14           #sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    .end local v16           #st:[Ljava/lang/String;
    .end local v18           #temp:Ljava/lang/String;
    .end local v21           #token:Ljava/util/StringTokenizer;
    .end local p0
    .end local p1
    :catch_1
    move-exception v23

    move-object/from16 v7, v23

    .line 737
    .local v7, e:Ljava/net/MalformedURLException;
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_3

    .line 672
    .end local v7           #e:Ljava/net/MalformedURLException;
    .restart local v3       #conn:Ljava/net/URLConnection;
    .restart local v4       #count:I
    .restart local v6       #dis:Ljava/io/DataInputStream;
    .restart local v8       #i:I
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v12       #myurl:Ljava/net/URL;
    .restart local v13       #read:Ljava/io/BufferedReader;
    .restart local v14       #sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    .restart local v16       #st:[Ljava/lang/String;
    .restart local v18       #temp:Ljava/lang/String;
    .restart local v21       #token:Ljava/util/StringTokenizer;
    .restart local p0
    .restart local p1
    :cond_7
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v16, v8

    .line 673
    aget-object v23, v16, v8

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_8

    aget-object v23, v16, v8

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 675
    aget-object v23, v16, v8

    invoke-static/range {v23 .. v23}, Lcom/ophone/MiniPlayer/lyricsactivity;->transfer(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 677
    .local v19, time:J
    move-object v0, v14

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setFromTime(J)V

    .line 683
    .end local v19           #time:J
    :goto_8
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "st[i]="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v25, v16, v8

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 670
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 680
    :cond_8
    aget-object v23, v16, v8

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Sentence;->setContent(Ljava/lang/String;)V

    goto :goto_8

    .line 688
    .end local v8           #i:I
    :cond_9
    const/16 v23, 0x2

    move v0, v4

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 690
    new-instance v22, Ljava/util/StringTokenizer;

    const-string v23, "[]"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .local v22, tokentemp:Ljava/util/StringTokenizer;
    const/16 v17, 0x0

    .line 692
    .local v17, sti:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    .line 693
    .local v5, counttemp:I
    :goto_9
    if-nez v5, :cond_b

    .line 697
    const-string v23, "MyPlayer"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "STI="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_a
    const/16 v23, 0x1

    sub-int v23, v4, v23

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 700
    new-instance v15, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-direct {v15}, Lcom/ophone/MiniPlayer/provider/Sentence;-><init>()V

    .line 701
    .local v15, sc1:Lcom/ophone/MiniPlayer/provider/Sentence;
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v16, v8

    .line 702
    aget-object v23, v16, v8

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_a

    aget-object v23, v16, v8

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 704
    aget-object v23, v16, v8

    invoke-static/range {v23 .. v23}, Lcom/ophone/MiniPlayer/lyricsactivity;->transfer(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 706
    .restart local v19       #time:J
    move-object v0, v15

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setFromTime(J)V

    .line 707
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Sentence;->setContent(Ljava/lang/String;)V

    .line 710
    .end local v19           #time:J
    :cond_a
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 694
    .end local v8           #i:I
    .end local v15           #sc1:Lcom/ophone/MiniPlayer/provider/Sentence;
    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 695
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 723
    .end local v4           #count:I
    .end local v5           #counttemp:I
    .end local v14           #sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    .end local v16           #st:[Ljava/lang/String;
    .end local v17           #sti:Ljava/lang/String;
    .end local v21           #token:Ljava/util/StringTokenizer;
    .end local v22           #tokentemp:Ljava/util/StringTokenizer;
    .end local p0
    .end local p1
    .restart local v8       #i:I
    .restart local v10       #j:I
    :cond_c
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    add-int/lit8 v23, v8, 0x1

    move-object v0, v11

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setToTime(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 721
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5
.end method

.method private getLyricslocal(Ljava/lang/String;)Ljava/util/List;
    .locals 31
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
    .line 743
    const/4 v9, 0x0

    .line 744
    .local v9, fileEx:Ljava/lang/String;
    const/4 v10, 0x0

    .line 745
    .local v10, fileNa:Ljava/lang/String;
    const/4 v5, 0x0

    .line 746
    .local v5, currentTempFilePath:Ljava/lang/String;
    const-string v27, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    .line 747
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    .line 746
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 747
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 748
    const-string v27, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    .line 749
    const-string v28, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    .line 748
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 752
    new-instance v15, Ljava/io/File;

    const-string v27, "\\sdcard\\myplayer\\lrc"

    move-object v0, v15

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    .local v15, localdirectorylrc:Ljava/io/File;
    new-instance v16, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "lrc"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object v1, v15

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 754
    .local v16, localfilelrc:Ljava/io/File;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v14, list:Ljava/util/List;,"Ljava/util/List<Lcom/ophone/MiniPlayer/provider/Sentence;>;"
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 757
    .local v11, fin:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 760
    .local v6, dis:Ljava/io/DataInputStream;
    :try_start_1
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v27, Ljava/io/InputStreamReader;

    const-string v28, "UTF-8"

    move-object/from16 v0, v27

    move-object v1, v6

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 761
    .local v17, read:Ljava/io/BufferedReader;
    const/16 v22, 0x0

    .line 765
    .local v22, temp:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v22

    if-nez v22, :cond_1

    .line 837
    :goto_1
    const/4 v12, 0x0

    .local v12, i:I
    :try_start_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .end local p1
    .local v13, j:I
    :goto_2
    const/16 v27, 0x1

    sub-int v27, v13, v27

    move v0, v12

    move/from16 v1, v27

    if-lt v0, v1, :cond_7

    .line 842
    new-instance v27, Lcom/ophone/MiniPlayer/lyricsactivity$7;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity$7;-><init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 849
    const/4 v12, 0x0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .end local p0
    :goto_3
    const/16 v27, 0x1

    sub-int v27, v13, v27

    move v0, v12

    move/from16 v1, v27

    if-lt v0, v1, :cond_8

    .line 855
    const/4 v12, 0x0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    :goto_4
    const/16 v27, 0x1

    sub-int v27, v13, v27

    move v0, v12

    move/from16 v1, v27

    if-lt v0, v1, :cond_9

    .line 859
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setToTime(J)V

    .line 860
    const/4 v12, 0x0

    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v27

    move v0, v12

    move/from16 v1, v27

    if-lt v0, v1, :cond_a

    .line 883
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v11           #fin:Ljava/io/FileInputStream;
    .end local v12           #i:I
    .end local v13           #j:I
    .end local v17           #read:Ljava/io/BufferedReader;
    .end local v22           #temp:Ljava/lang/String;
    :goto_6
    return-object v14

    .line 767
    .restart local v6       #dis:Ljava/io/DataInputStream;
    .restart local v11       #fin:Ljava/io/FileInputStream;
    .restart local v17       #read:Ljava/io/BufferedReader;
    .restart local v22       #temp:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_1
    :try_start_4
    new-instance v18, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-direct/range {v18 .. v18}, Lcom/ophone/MiniPlayer/provider/Sentence;-><init>()V

    .line 771
    .local v18, sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    new-instance v25, Ljava/util/StringTokenizer;

    const-string v27, "[]"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v25, token:Ljava/util/StringTokenizer;
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "token.toString()"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 774
    .local v3, count:I
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "count="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 775
    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 777
    .local v20, st:[Ljava/lang/String;
    const/16 v27, 0x2

    move v0, v3

    move/from16 v1, v27

    if-gt v0, v1, :cond_4

    .line 778
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_7
    if-lt v12, v3, :cond_2

    .line 794
    move-object v0, v14

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 832
    .end local v3           #count:I
    .end local v12           #i:I
    .end local v18           #sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    .end local v20           #st:[Ljava/lang/String;
    .end local v25           #token:Ljava/util/StringTokenizer;
    :catch_0
    move-exception v27

    move-object/from16 v7, v27

    .line 834
    .local v7, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 864
    .end local v7           #e:Ljava/io/IOException;
    .end local v17           #read:Ljava/io/BufferedReader;
    .end local v22           #temp:Ljava/lang/String;
    .end local p0
    .end local p1
    :catch_1
    move-exception v27

    move-object/from16 v7, v27

    .line 866
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    :try_start_6
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    .line 870
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    .end local v11           #fin:Ljava/io/FileInputStream;
    :catch_2
    move-exception v27

    move-object/from16 v8, v27

    .line 872
    .local v8, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6

    .line 780
    .end local v8           #e1:Ljava/io/FileNotFoundException;
    .restart local v3       #count:I
    .restart local v6       #dis:Ljava/io/DataInputStream;
    .restart local v11       #fin:Ljava/io/FileInputStream;
    .restart local v12       #i:I
    .restart local v17       #read:Ljava/io/BufferedReader;
    .restart local v18       #sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    .restart local v20       #st:[Ljava/lang/String;
    .restart local v22       #temp:Ljava/lang/String;
    .restart local v25       #token:Ljava/util/StringTokenizer;
    .restart local p0
    .restart local p1
    :cond_2
    :try_start_7
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v20, v12

    .line 781
    aget-object v27, v20, v12

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_3

    aget-object v27, v20, v12

    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 783
    aget-object v27, v20, v12

    invoke-static/range {v27 .. v27}, Lcom/ophone/MiniPlayer/lyricsactivity;->transfer(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .line 785
    .local v23, time:J
    move-object/from16 v0, v18

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setFromTime(J)V

    .line 791
    .end local v23           #time:J
    :goto_8
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "st[i]="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v29, v20, v12

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 778
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 788
    :cond_3
    aget-object v27, v20, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Sentence;->setContent(Ljava/lang/String;)V

    goto :goto_8

    .line 797
    .end local v12           #i:I
    :cond_4
    const/16 v27, 0x2

    move v0, v3

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    .line 800
    new-instance v26, Ljava/util/StringTokenizer;

    const-string v27, "[]"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .local v26, tokentemp:Ljava/util/StringTokenizer;
    const/16 v21, 0x0

    .line 802
    .local v21, sti:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    .line 803
    .local v4, counttemp:I
    :goto_9
    if-nez v4, :cond_6

    .line 807
    const-string v27, "MyPlayer"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "STI="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_a
    const/16 v27, 0x1

    sub-int v27, v3, v27

    move v0, v12

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 810
    new-instance v19, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-direct/range {v19 .. v19}, Lcom/ophone/MiniPlayer/provider/Sentence;-><init>()V

    .line 811
    .local v19, sc1:Lcom/ophone/MiniPlayer/provider/Sentence;
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v20, v12

    .line 812
    aget-object v27, v20, v12

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_5

    aget-object v27, v20, v12

    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 814
    aget-object v27, v20, v12

    invoke-static/range {v27 .. v27}, Lcom/ophone/MiniPlayer/lyricsactivity;->transfer(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .line 816
    .restart local v23       #time:J
    move-object/from16 v0, v19

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setFromTime(J)V

    .line 818
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Sentence;->setContent(Ljava/lang/String;)V

    .line 819
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "time count>2="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 820
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "sti count>2="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 824
    .end local v23           #time:J
    :cond_5
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "st[i] count>2="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v29, v20, v12

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 825
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a

    .line 804
    .end local v12           #i:I
    .end local v19           #sc1:Lcom/ophone/MiniPlayer/provider/Sentence;
    :cond_6
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v21

    .line 805
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_9

    .line 839
    .end local v3           #count:I
    .end local v4           #counttemp:I
    .end local v18           #sc:Lcom/ophone/MiniPlayer/provider/Sentence;
    .end local v20           #st:[Ljava/lang/String;
    .end local v21           #sti:Ljava/lang/String;
    .end local v25           #token:Ljava/util/StringTokenizer;
    .end local v26           #tokentemp:Ljava/util/StringTokenizer;
    .end local p1
    .restart local v12       #i:I
    .restart local v13       #j:I
    :cond_7
    :try_start_8
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "list.get(i).getFromTime()="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "    list.get(i).getContent()="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 837
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 851
    .end local p0
    :cond_8
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "list.get(i).getFromTime()="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "    list.get(i).getContent()="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 849
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 857
    :cond_9
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    add-int/lit8 v27, v12, 0x1

    move-object v0, v14

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Sentence;->setToTime(J)V

    .line 855
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 862
    :cond_a
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "-"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getToTime()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual/range {p0 .. p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .line 860
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5
.end method

.method private sendcancelnotification()V
    .locals 3

    .prologue
    .line 308
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x1c

    .line 310
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 312
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

    .line 886
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_1

    .line 887
    const-string v6, ":"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 888
    .local v3, pos1:I
    if-ne v3, v9, :cond_0

    const-string v6, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 889
    :cond_0
    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, min:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 892
    .local v5, sec:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    .line 893
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    .line 892
    add-int v0, v6, v7

    .line 910
    .local v0, lrc:I
    :goto_0
    return v0

    .line 897
    .end local v0           #lrc:I
    .end local v2           #min:Ljava/lang/String;
    .end local v3           #pos1:I
    .end local v5           #sec:Ljava/lang/String;
    :cond_1
    const-string v6, ":"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 898
    .restart local v3       #pos1:I
    if-ne v3, v9, :cond_2

    const-string v6, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 900
    :cond_2
    const-string v6, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 901
    .local v4, pos2:I
    if-ne v4, v3, :cond_3

    const-string v6, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 903
    :cond_3
    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 904
    .restart local v2       #min:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 905
    .restart local v5       #sec:Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, mil:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    .line 908
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    .line 907
    add-int/2addr v6, v7

    .line 909
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    .line 907
    add-int v0, v6, v7

    .line 910
    .restart local v0       #lrc:I
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, cmd:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 416
    :goto_0
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Myplayer STATUS="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    return-void

    .line 394
    :pswitch_0
    iget v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->status:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 395
    const/4 v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    iget v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->status:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 398
    const/4 v0, 0x2

    goto :goto_0

    .line 400
    :cond_1
    iget v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->status:I

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_2

    .line 401
    const/4 v0, 0x2

    goto :goto_0

    .line 404
    :cond_2
    const/4 v0, 0x2

    .line 406
    goto :goto_0

    .line 408
    :pswitch_1
    const/4 v0, 0x5

    .line 409
    goto :goto_0

    .line 411
    :pswitch_2
    const/4 v0, 0x4

    .line 412
    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x7f080016
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    const-string v6, "MyPlayer"

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->flag:Ljava/lang/Boolean;

    .line 163
    invoke-virtual {p0, v7}, Lcom/ophone/MiniPlayer/lyricsactivity;->requestWindowFeature(I)Z

    .line 166
    const-string v4, "MyPlayer"

    const-string v4, "enter playwithlyricsactivity"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const v4, 0x7f030010

    invoke-virtual {p0, v4}, Lcom/ophone/MiniPlayer/lyricsactivity;->setContentView(I)V

    .line 168
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 169
    .local v1, i:Landroid/content/Intent;
    const-string v4, "song"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    iput-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 170
    iget-object v3, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 171
    .local v3, song1:Lcom/ophone/MiniPlayer/provider/Song;
    const-string v4, "R.string"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->rString:Ljava/lang/Integer;

    .line 172
    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->rString:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 174
    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 175
    const-string v4, "MyPlayer"

    const-string v4, "song.nextSource()==null"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getSource()Lcom/ophone/MiniPlayer/provider/Song$Source;

    move-result-object v4

    iget-object v5, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->rString:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-static {v5, v6}, Lcom/ophone/MiniPlayer/provider/SongManager;->getSongSource(Ljava/lang/Integer;Lcom/ophone/MiniPlayer/provider/Song;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ophone/MiniPlayer/provider/Song$Source;->setLinks(Ljava/util/ArrayList;)V

    .line 179
    :cond_0
    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4, v7}, Lcom/ophone/MiniPlayer/provider/Song;->setTag(Z)V

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->setview()V

    .line 198
    new-instance v4, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;

    invoke-direct {v4, p0}, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;-><init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    iput-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->receiver:Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v0, filter1:Landroid/content/IntentFilter;
    const-string v4, "com.myplayer.servicetoactivity"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->receiver:Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->SendIsPlaying()V

    .line 204
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->Init()V

    .line 205
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/ophone/MiniPlayer/MyPlayerService;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v4, v7}, Lcom/ophone/MiniPlayer/lyricsactivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->finish()V

    .line 211
    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 360
    :goto_0
    return-object v0

    .line 336
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    const v2, 0x7f050068

    .line 336
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 338
    const v2, 0x7f050052

    .line 339
    new-instance v3, Lcom/ophone/MiniPlayer/lyricsactivity$4;

    invoke-direct {v3, p0}, Lcom/ophone/MiniPlayer/lyricsactivity$4;-><init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    .line 337
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 345
    const v2, 0x7f050053

    .line 346
    new-instance v3, Lcom/ophone/MiniPlayer/lyricsactivity$5;

    invoke-direct {v3, p0}, Lcom/ophone/MiniPlayer/lyricsactivity$5;-><init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    .line 345
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 353
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 354
    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x3
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

    .line 915
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 918
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f020019

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 919
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 920
    .local v1, r:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f05003d

    invoke-interface {p1, v4, v4, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 921
    const v3, 0x7f020011

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 922
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 923
    const v3, 0x7f05003e

    invoke-interface {p1, v4, v6, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 924
    const v3, 0x7f020020

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 925
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 926
    const v3, 0x7f05003f

    invoke-interface {p1, v4, v7, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 927
    const v3, 0x7f05002f

    invoke-interface {p1, v4, v8, v8, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020013

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 930
    return v6
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 327
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->flag:Ljava/lang/Boolean;

    .line 328
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->receiver:Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 330
    const-string v0, "debug"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    .line 933
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 934
    .local v4, itemId:I
    packed-switch v4, :pswitch_data_0

    .line 972
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 936
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/MusicFeedActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 937
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->startActivity(Landroid/content/Intent;)V

    .line 938
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->finish()V

    .line 939
    const-string v5, "debug"

    const-string v6, "lyricsactivity.this.finish();"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 943
    .local v1, i1:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->startActivity(Landroid/content/Intent;)V

    .line 944
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->finish()V

    goto :goto_0

    .line 947
    .end local v1           #i1:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 948
    .local v2, i2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/lyricsactivity;->startActivity(Landroid/content/Intent;)V

    .line 949
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->finish()V

    goto :goto_0

    .line 952
    .end local v2           #i2:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/MainActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 953
    .local v3, i3:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/ophone/MiniPlayer/lyricsactivity;->startActivity(Landroid/content/Intent;)V

    .line 954
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->finish()V

    goto :goto_0

    .line 934
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
    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 319
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 315
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 323
    const-string v0, "debug"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method protected setview()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-string v9, "MyPlayer"

    .line 215
    const v6, 0x7f08001a

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/lyricsactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->bar:Landroid/widget/SeekBar;

    .line 216
    const v6, 0x7f080015

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/lyricsactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->current:Landroid/widget/TextView;

    .line 218
    const v6, 0x7f080019

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/lyricsactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->total:Landroid/widget/TextView;

    .line 219
    const v6, 0x7f080017

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/lyricsactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->playpausebn:Landroid/widget/Button;

    .line 220
    const v6, 0x7f080018

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/lyricsactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->nextsongbn:Landroid/widget/Button;

    .line 221
    const v6, 0x7f080016

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/lyricsactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->presongbn:Landroid/widget/Button;

    .line 222
    const v6, 0x7f080011

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/lyricsactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->artist:Landroid/widget/TextView;

    .line 224
    const v6, 0x7f080013

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/lyricsactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->songname:Landroid/widget/TextView;

    .line 226
    const v6, 0x7f08002d

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/lyricsactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/ophone/MiniPlayer/MyView;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->mTextView:Lcom/ophone/MiniPlayer/MyView;

    .line 230
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->dm:Landroid/util/DisplayMetrics;

    .line 231
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/lyricsactivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iget-object v7, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 232
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->dm:Landroid/util/DisplayMetrics;

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 233
    .local v1, dmwidth:I
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->dm:Landroid/util/DisplayMetrics;

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 257
    .local v0, dmheight:I
    const-string v6, "MyPlayer"

    invoke-virtual {p0, v9, v8}, Lcom/ophone/MiniPlayer/lyricsactivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 258
    .local v4, settings:Landroid/content/SharedPreferences;
    const-string v6, "statusBarHeight"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 259
    .local v5, statusBarHeight:I
    const-string v6, "MyPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "statusBarHeight="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const v6, 0x7f08002c

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/lyricsactivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->l5:Landroid/widget/LinearLayout;

    .line 265
    const/16 v6, 0x28

    sub-int v6, v0, v6

    const/16 v7, 0x1c

    sub-int/2addr v6, v7

    const/16 v7, 0x6e

    sub-int/2addr v6, v7

    sub-int v2, v6, v5

    .line 268
    .local v2, l5height:I
    const-string v6, "MyPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "l5height="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 272
    .local v3, param:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->l5:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->mTextView:Lcom/ophone/MiniPlayer/MyView;

    invoke-virtual {v6, v1}, Lcom/ophone/MiniPlayer/MyView;->setWidth(I)V

    .line 274
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->mTextView:Lcom/ophone/MiniPlayer/MyView;

    invoke-virtual {v6, v2}, Lcom/ophone/MiniPlayer/MyView;->setHeight(I)V

    .line 276
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->presongbn:Landroid/widget/Button;

    const v7, 0x7f020022

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 277
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->nextsongbn:Landroid/widget/Button;

    const v7, 0x7f020017

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 278
    iget v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->status:I

    const/16 v7, 0x6f

    if-ne v6, v7, :cond_0

    .line 279
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->playpausebn:Landroid/widget/Button;

    const v7, 0x7f02001c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 282
    :goto_0
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->bar:Landroid/widget/SeekBar;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 283
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 284
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->playpausebn:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->nextsongbn:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->presongbn:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->bar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 291
    return-void

    .line 281
    :cond_0
    iget-object v6, p0, Lcom/ophone/MiniPlayer/lyricsactivity;->playpausebn:Landroid/widget/Button;

    const v7, 0x7f02001b

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
