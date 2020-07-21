.class Lcom/ophone/MiniPlayer/MusicActivity$3;
.super Ljava/lang/Thread;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/MusicActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MusicActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    .line 420
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ophone/MiniPlayer/MusicActivity;->access$10(Lcom/ophone/MiniPlayer/MusicActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 429
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ophone/MiniPlayer/MusicActivity;->access$10(Lcom/ophone/MiniPlayer/MusicActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    return-void
.end method
