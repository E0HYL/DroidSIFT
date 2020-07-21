.class Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver$1;
.super Ljava/lang/Thread;
.source "PlayingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver$1;->this$1:Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;

    .line 796
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "OnlinePlayer"

    .line 798
    const-string v2, "OnlinePlayer"

    const-string v2, "playinglistActivity thread run"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver$1;->this$1:Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->access$0(Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;)Lcom/ophone/MiniPlayer/PlayingListActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 800
    .local v0, a1:I
    const-string v2, "OnlinePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playinglistActivity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver$1;->this$1:Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->access$0(Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;)Lcom/ophone/MiniPlayer/PlayingListActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$6(Lcom/ophone/MiniPlayer/PlayingListActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 802
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver$1;->this$1:Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->access$0(Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;)Lcom/ophone/MiniPlayer/PlayingListActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$6(Lcom/ophone/MiniPlayer/PlayingListActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    return-void
.end method
