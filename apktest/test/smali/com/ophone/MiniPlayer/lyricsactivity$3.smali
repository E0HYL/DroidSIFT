.class Lcom/ophone/MiniPlayer/lyricsactivity$3;
.super Ljava/lang/Object;
.source "lyricsactivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/lyricsactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/lyricsactivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$3;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const-string v2, "MyPlayer"

    .line 365
    if-eqz p3, :cond_0

    .line 367
    :try_start_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity$3;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$3(Lcom/ophone/MiniPlayer/lyricsactivity;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getDuration()I

    move-result v2

    mul-int/2addr v2, p2

    div-int/lit8 v1, v2, 0x64

    .line 368
    .local v1, media:I
    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity$3;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$3(Lcom/ophone/MiniPlayer/lyricsactivity;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ophone/MiniPlayer/IPlayback;->seek(I)V

    .line 369
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "progress="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "media="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v2, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "service.getDuration()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ophone/MiniPlayer/lyricsactivity$3;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$3(Lcom/ophone/MiniPlayer/lyricsactivity;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v4

    invoke-interface {v4}, Lcom/ophone/MiniPlayer/IPlayback;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1           #media:I
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 374
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 380
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 383
    return-void
.end method
