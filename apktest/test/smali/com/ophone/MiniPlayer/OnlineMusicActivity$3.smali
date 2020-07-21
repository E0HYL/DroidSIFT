.class Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;
.super Ljava/lang/Thread;
.source "OnlineMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/OnlineMusicActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    .line 640
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "OnlinePlayer"

    .line 642
    const-string v2, "OnlinePlayer"

    const-string v2, "thread run"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f05004d

    if-eq v2, v3, :cond_0

    .line 644
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f05004c

    if-ne v2, v3, :cond_3

    .line 645
    :cond_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/ophone/MiniPlayer/provider/SongManager;->getSongList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$11(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Ljava/util/ArrayList;)V

    .line 665
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 666
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 667
    .local v0, a:I
    const-string v2, "OnlinePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get songlist size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v0           #a:I
    :cond_2
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$12(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 670
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$12(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 671
    return-void

    .line 646
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f050049

    if-eq v2, v3, :cond_4

    .line 647
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f050048

    if-eq v2, v3, :cond_4

    .line 648
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f05004a

    if-eq v2, v3, :cond_4

    .line 649
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f05004b

    if-ne v2, v3, :cond_1

    .line 651
    :cond_4
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/ophone/MiniPlayer/provider/SongManager;->getSongListGoogle(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$11(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
