.class public Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "lyricsactivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/lyricsactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/lyricsactivity;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/ophone/MiniPlayer/lyricsactivity;->status:I
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$4(Lcom/ophone/MiniPlayer/lyricsactivity;I)V

    .line 481
    iget-object v1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    const-string v0, "artist"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$5(Lcom/ophone/MiniPlayer/lyricsactivity;Ljava/util/List;)V

    .line 482
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    const-string v1, "songname"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/ophone/MiniPlayer/lyricsactivity;->_songname:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$6(Lcom/ophone/MiniPlayer/lyricsactivity;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    const-string v1, "lyricurlgoogle"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurlgoogle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$7(Lcom/ophone/MiniPlayer/lyricsactivity;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    const-string v1, "lyricurllocal"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/ophone/MiniPlayer/lyricsactivity;->lyricurllocal:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$8(Lcom/ophone/MiniPlayer/lyricsactivity;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$9(Lcom/ophone/MiniPlayer/lyricsactivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->_artist:Ljava/util/List;
    invoke-static {v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$9(Lcom/ophone/MiniPlayer/lyricsactivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    #setter for: Lcom/ophone/MiniPlayer/lyricsactivity;->_artistcount:I
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$10(Lcom/ophone/MiniPlayer/lyricsactivity;I)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->status:I
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$11(Lcom/ophone/MiniPlayer/lyricsactivity;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 519
    :goto_0
    const-string v0, "MyPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateReceiver STATUS="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->status:I
    invoke-static {v2}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$11(Lcom/ophone/MiniPlayer/lyricsactivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void

    .line 489
    :sswitch_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->playpausebn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$12(Lcom/ophone/MiniPlayer/lyricsactivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 490
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #calls: Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateProgressbar()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$0(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    .line 491
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #calls: Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateSonginfo()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$13(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    goto :goto_0

    .line 494
    :sswitch_1
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #getter for: Lcom/ophone/MiniPlayer/lyricsactivity;->playpausebn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$12(Lcom/ophone/MiniPlayer/lyricsactivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 497
    :sswitch_2
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #calls: Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateSonginfo()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$13(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    .line 498
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #calls: Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateProgressbar()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$0(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    goto :goto_0

    .line 501
    :sswitch_3
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #calls: Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateSonginfo()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$13(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    .line 502
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #calls: Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateProgressbar()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$0(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    goto :goto_0

    .line 508
    :sswitch_4
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #calls: Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateSonginfo()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$13(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    .line 509
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #calls: Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateProgressbar()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$0(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    goto :goto_0

    .line 487
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x6f -> :sswitch_4
    .end sparse-switch
.end method
