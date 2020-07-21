.class public Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MusicActivity;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    const-string v5, "OnlinePlayer"

    .line 817
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    const-string v3, "status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/ophone/MiniPlayer/MusicActivity;->status:I
    invoke-static {v2, v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$7(Lcom/ophone/MiniPlayer/MusicActivity;I)V

    .line 818
    const-string v2, "position"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 819
    .local v1, position:I
    const-string v2, "OnlinePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->status:I
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$8(Lcom/ophone/MiniPlayer/MusicActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v2, "OnlinePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "position="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->status:I
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$8(Lcom/ophone/MiniPlayer/MusicActivity;)I

    move-result v2

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_1

    .line 822
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    const v3, 0x7f050059

    .line 823
    const/4 v4, 0x0

    .line 822
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 823
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->status:I
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$8(Lcom/ophone/MiniPlayer/MusicActivity;)I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_0

    .line 826
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    const-class v3, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 827
    .local v0, i:Landroid/content/Intent;
    const-string v3, "song"

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$0(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 830
    const-string v2, "R.string"

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$9(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 831
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-virtual {v2, v0}, Lcom/ophone/MiniPlayer/MusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
