.class final Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;
.super Ljava/lang/Thread;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/AsyncPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/AsyncPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncPlayer-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$0(Lcom/ophone/MiniPlayer/AsyncPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    :goto_0
    const/4 v1, 0x0

    .line 63
    .local v1, cmd:Lcom/ophone/MiniPlayer/AsyncPlayer$Command;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #getter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$1(Lcom/ophone/MiniPlayer/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #getter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$1(Lcom/ophone/MiniPlayer/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;

    move-object v1, v0

    .line 63
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget v2, v1, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->code:I

    packed-switch v2, :pswitch_data_0

    .line 84
    :goto_1
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #getter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$1(Lcom/ophone/MiniPlayer/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 85
    :try_start_1
    iget-object v3, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #getter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$1(Lcom/ophone/MiniPlayer/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    const/4 v4, 0x0

    #setter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mThread:Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;
    invoke-static {v3, v4}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$5(Lcom/ophone/MiniPlayer/AsyncPlayer;Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;)V

    .line 88
    iget-object v3, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #calls: Lcom/ophone/MiniPlayer/AsyncPlayer;->releaseWakeLock()V
    invoke-static {v3}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$6(Lcom/ophone/MiniPlayer/AsyncPlayer;)V

    .line 89
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 63
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 70
    :pswitch_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #calls: Lcom/ophone/MiniPlayer/AsyncPlayer;->startSound(Lcom/ophone/MiniPlayer/AsyncPlayer$Command;)V
    invoke-static {v2, v1}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$2(Lcom/ophone/MiniPlayer/AsyncPlayer;Lcom/ophone/MiniPlayer/AsyncPlayer$Command;)V

    goto :goto_1

    .line 74
    :pswitch_1
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #getter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$3(Lcom/ophone/MiniPlayer/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #getter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$3(Lcom/ophone/MiniPlayer/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 76
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #getter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$3(Lcom/ophone/MiniPlayer/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 77
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #setter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2, v4}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$4(Lcom/ophone/MiniPlayer/AsyncPlayer;Landroid/media/MediaPlayer;)V

    goto :goto_1

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->this$0:Lcom/ophone/MiniPlayer/AsyncPlayer;

    #getter for: Lcom/ophone/MiniPlayer/AsyncPlayer;->mTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/AsyncPlayer;->access$0(Lcom/ophone/MiniPlayer/AsyncPlayer;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "STOP command without a player"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    :cond_1
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
