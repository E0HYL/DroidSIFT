.class Lcom/ophone/MiniPlayer/lyricsactivity$2;
.super Ljava/lang/Object;
.source "lyricsactivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$2;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$2;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-static {p2}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v1

    #setter for: Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$1(Lcom/ophone/MiniPlayer/lyricsactivity;Lcom/ophone/MiniPlayer/IPlayback;)V

    .line 153
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$2;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$2(Lcom/ophone/MiniPlayer/lyricsactivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$2;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$2(Lcom/ophone/MiniPlayer/lyricsactivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$2;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    const/4 v1, 0x0

    #setter for: Lcom/ophone/MiniPlayer/lyricsactivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$1(Lcom/ophone/MiniPlayer/lyricsactivity;Lcom/ophone/MiniPlayer/IPlayback;)V

    .line 157
    return-void
.end method
