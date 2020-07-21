.class Lcom/ophone/MiniPlayer/MyPlayer$2;
.super Ljava/lang/Object;
.source "MyPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MyPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MyPlayer;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MyPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayer$2;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 316
    if-eqz p3, :cond_0

    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer$2;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MyPlayer;->access$2(Lcom/ophone/MiniPlayer/MyPlayer;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v2

    invoke-interface {v2}, Lcom/ophone/MiniPlayer/IPlayback;->getDuration()I

    move-result v2

    mul-int/2addr v2, p2

    div-int/lit8 v1, v2, 0x64

    .line 322
    .local v1, media:I
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayer$2;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayer;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MyPlayer;->access$2(Lcom/ophone/MiniPlayer/MyPlayer;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ophone/MiniPlayer/IPlayback;->seek(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v1           #media:I
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 332
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 335
    return-void
.end method
