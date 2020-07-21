.class public Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnlineMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/OnlineMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 897
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    const-string v4, "OnlinePlayer"

    .line 900
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    const-string v3, "status"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->status:I
    invoke-static {v2, v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$9(Lcom/ophone/MiniPlayer/OnlineMusicActivity;I)V

    .line 901
    const-string v2, "position"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 902
    .local v1, position:I
    const-string v2, "OnlinePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->status:I
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$10(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v2, "OnlinePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "position="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->status:I
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$10(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_1

    .line 906
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    const v3, 0x7f050064

    .line 907
    const/4 v4, 0x0

    .line 906
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 907
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->status:I
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$10(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)I

    move-result v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_0

    .line 911
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    const-class v3, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 912
    .local v0, i:Landroid/content/Intent;
    const-string v3, "song"

    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 913
    const-string v2, "OnlinePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "songlist.get(position)"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 913
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v2, "R.string"

    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 918
    const-string v2, "OnlinePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rString="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    invoke-virtual {v2, v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
