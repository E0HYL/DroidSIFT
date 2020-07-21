.class public Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MyPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MyPlayerService;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;
    .locals 1
    .parameter

    .prologue
    .line 693
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 697
    const-string v21, "cmd"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 698
    .local v4, cmd:I
    packed-switch v4, :pswitch_data_0

    .line 1192
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 702
    .restart local p1
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const-string v22, "song"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    #setter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$6(Lcom/ophone/MiniPlayer/MyPlayerService;Lcom/ophone/MiniPlayer/provider/Song;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 708
    .local v5, count:I
    const/4 v9, 0x1

    .line 709
    .local v9, flag:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-lt v10, v5, :cond_2

    .line 719
    :goto_2
    if-eqz v9, :cond_6

    .line 720
    if-nez v5, :cond_4

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v22, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v22 .. v22}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 758
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 764
    .end local v5           #count:I
    .end local v9           #flag:Z
    .end local v10           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->updateUi()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$11(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 714
    .restart local v5       #count:I
    .restart local v9       #flag:Z
    .restart local v10       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3

    .line 715
    const/4 v9, 0x0

    .line 716
    goto :goto_2

    .line 709
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 726
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v22, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v22 .. v22}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->adjustnextpresong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$9(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_3

    .line 731
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v22, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v22 .. v22}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    goto/16 :goto_3

    .line 738
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    goto/16 :goto_3

    .line 769
    .end local v5           #count:I
    .end local v9           #flag:Z
    .end local v10           #i:I
    .restart local p1
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->pause()V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->cancelNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$12(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x65

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 781
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->updateUi()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$11(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 776
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->start()V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    goto :goto_4

    .line 786
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->pause()V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->cancelNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$12(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x65

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->updateUi()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$11(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 807
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->nextSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$1(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->cancelNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$12(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x67

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->updatenextui()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$13(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 825
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->previousSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$3(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->cancelNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$12(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x68

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->updatepreui()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$14(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 841
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 842
    .local v3, a:I
    const-string v21, "MyPlayer"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "songlist.size():"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x76

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->updateSonglistUI()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$15(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 848
    .end local v3           #a:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const v22, 0x7f05005d

    .line 849
    const/16 v23, 0x0

    .line 848
    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v21

    .line 849
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const-string v22, "flagrandom"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrandom:I

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    new-instance v22, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$1;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)V

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 868
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->SendFlagrandomValue()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$16(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 862
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->SongRandom()V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    goto :goto_5

    .line 873
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const v22, 0x7f05005e

    .line 874
    const/16 v23, 0x0

    .line 873
    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v21

    .line 874
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const-string v22, "flagrandom"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrandom:I

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    new-instance v22, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$2;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)V

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 890
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->SendFlagrandomValue()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$16(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 886
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->SongRandomClosed()V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto :goto_6

    .line 896
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const v22, 0x7f05005f

    .line 897
    const/16 v23, 0x0

    .line 896
    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v21

    .line 897
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const-string v22, "flagrepeat"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrepeat:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrepeat:I

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    new-instance v22, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$3;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)V

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 922
    .end local p1
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->SendFlagrepeatValue()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$17(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 915
    .restart local p1
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_a

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    #setter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$6(Lcom/ophone/MiniPlayer/MyPlayerService;Lcom/ophone/MiniPlayer/provider/Song;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto :goto_7

    .line 927
    .restart local p1
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const-string v22, "\u6b63\u5728\u91cd\u590d\u64ad\u653e\u5f53\u524d\u7684\u6b4c\u66f2"

    .line 928
    const/16 v23, 0x0

    .line 927
    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    .line 928
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const-string v22, "flagrepeat"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrepeat:I

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    new-instance v22, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)V

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 960
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->SendFlagrepeatValue()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$17(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 966
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const-string v22, "\u91cd\u590d\u64ad\u653e\u5df2\u5173\u95ed"

    .line 967
    const/16 v23, 0x0

    .line 966
    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    .line 967
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const-string v22, "flagrepeat"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrepeat:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->flagrepeat:I

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    new-instance v22, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$5;-><init>(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)V

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 988
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->SendFlagrepeatValue()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$17(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 980
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 981
    .restart local v5       #count:I
    if-lez v5, :cond_d

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto :goto_8

    .line 995
    .end local v5           #count:I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x74

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->clearSonglistUI()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$18(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 999
    :pswitch_d
    const-string v21, "position"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1000
    .local v14, position1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const-string v22, "song"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    #setter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$6(Lcom/ophone/MiniPlayer/MyPlayerService;Lcom/ophone/MiniPlayer/provider/Song;)V

    .line 1001
    const-string v21, "MyPlayer"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "song.nextSource()"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v23, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v23 .. v23}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v21, "MyPlayer"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SONG="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v23, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v23 .. v23}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x77

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    if-eqz v21, :cond_f

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1008
    .local v6, count1:I
    const/4 v9, 0x1

    .line 1009
    .restart local v9       #flag:Z
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_9
    if-lt v10, v6, :cond_10

    .line 1016
    :goto_a
    if-eqz v9, :cond_f

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v22, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v22 .. v22}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->adjustnextpresong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$9(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 1026
    .end local v6           #count1:I
    .end local v9           #flag:Z
    .end local v10           #i:I
    :cond_f
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v14

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->sendJudgePlayresultonline(I)V
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$19(Lcom/ophone/MiniPlayer/MyPlayerService;I)V

    goto/16 :goto_0

    .line 1010
    .restart local v6       #count1:I
    .restart local v9       #flag:Z
    .restart local v10       #i:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1010
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_11

    .line 1012
    const/4 v9, 0x0

    .line 1013
    goto :goto_a

    .line 1009
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 1025
    .end local v6           #count1:I
    .end local v9           #flag:Z
    .end local v10           #i:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x78

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    goto :goto_b

    .line 1029
    .end local v14           #position1:I
    .restart local p1
    :pswitch_e
    const-string v21, "position"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1030
    .local v13, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const-string v22, "song"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    #setter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$6(Lcom/ophone/MiniPlayer/MyPlayerService;Lcom/ophone/MiniPlayer/provider/Song;)V

    .line 1031
    const-string v21, "MyPlayer"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "song.nextSource()"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v23, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v23 .. v23}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/ophone/MiniPlayer/provider/Song;->nextSource()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v21, "MyPlayer"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "SONG="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v23, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v23 .. v23}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x6e

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    if-eqz v21, :cond_13

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1038
    .restart local v6       #count1:I
    const/4 v9, 0x1

    .line 1039
    .restart local v9       #flag:Z
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_c
    if-lt v10, v6, :cond_14

    .line 1046
    :goto_d
    if-eqz v9, :cond_13

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v22, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v22 .. v22}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->adjustnextpresong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$9(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 1056
    .end local v6           #count1:I
    .end local v9           #flag:Z
    .end local v10           #i:I
    :cond_13
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v13

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->sendJudgePlayresult(I)V
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$20(Lcom/ophone/MiniPlayer/MyPlayerService;I)V

    goto/16 :goto_0

    .line 1040
    .restart local v6       #count1:I
    .restart local v9       #flag:Z
    .restart local v10       #i:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1040
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_15

    .line 1042
    const/4 v9, 0x0

    .line 1043
    goto :goto_d

    .line 1039
    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 1055
    .end local v6           #count1:I
    .end local v9           #flag:Z
    .end local v10           #i:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x71

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    goto :goto_e

    .line 1068
    .end local v13           #position:I
    .restart local p1
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->SendInitValue()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$21(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 1071
    :pswitch_10
    const-string v21, "songlist"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1072
    .local v15, songlist1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1b

    .line 1073
    if-eqz v15, :cond_0

    .line 1074
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1075
    .restart local v6       #count1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1076
    .restart local v5       #count:I
    const/4 v10, 0x0

    .end local p1
    .restart local v10       #i:I
    :goto_f
    if-lt v10, v5, :cond_17

    .line 1088
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1089
    const/4 v10, 0x0

    :goto_10
    if-lt v10, v6, :cond_1a

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->adjustnextpresong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$9(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 1077
    :cond_17
    const/4 v11, 0x0

    .local v11, j:I
    :goto_11
    if-lt v11, v6, :cond_18

    .line 1076
    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 1082
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_19

    .line 1083
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1084
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1085
    goto :goto_12

    .line 1077
    :cond_19
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 1090
    .end local v11           #j:I
    :cond_1a
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 1096
    .end local v5           #count:I
    .end local v6           #count1:I
    .end local v10           #i:I
    .restart local p1
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1097
    :cond_1c
    if-eqz v15, :cond_0

    .line 1098
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1099
    .restart local v6       #count1:I
    const/4 v10, 0x0

    .end local p1
    .restart local v10       #i:I
    :goto_13
    if-lt v10, v6, :cond_1d

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    #setter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$6(Lcom/ophone/MiniPlayer/MyPlayerService;Lcom/ophone/MiniPlayer/provider/Song;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 1100
    :cond_1d
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 1110
    .end local v6           #count1:I
    .end local v10           #i:I
    .end local v15           #songlist1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    .restart local p1
    :pswitch_11
    const-string v21, "songlist"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 1111
    .local v16, songlist2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_22

    .line 1112
    if-eqz v16, :cond_0

    .line 1113
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1114
    .restart local v6       #count1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1115
    .restart local v5       #count:I
    const/4 v10, 0x0

    .end local p1
    .restart local v10       #i:I
    :goto_14
    if-lt v10, v5, :cond_1e

    .line 1127
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1128
    const/4 v10, 0x0

    :goto_15
    if-lt v10, v6, :cond_21

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->adjustnextpresong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$9(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 1116
    :cond_1e
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_16
    if-lt v11, v6, :cond_1f

    .line 1115
    :goto_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 1121
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual/range {p1 .. p1}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_20

    .line 1122
    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1123
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1124
    goto :goto_17

    .line 1116
    :cond_20
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 1129
    .end local v11           #j:I
    :cond_21
    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_15

    .line 1135
    .end local v5           #count:I
    .end local v6           #count1:I
    .end local v10           #i:I
    .restart local p1
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1136
    :cond_23
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    .line 1137
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1138
    .restart local v6       #count1:I
    const/4 v10, 0x0

    .end local p1
    .restart local v10       #i:I
    :goto_18
    if-lt v10, v6, :cond_24

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    #setter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$6(Lcom/ophone/MiniPlayer/MyPlayerService;Lcom/ophone/MiniPlayer/provider/Song;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 1139
    :cond_24
    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/ophone/MiniPlayer/provider/Song;->setAdddate(J)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 1152
    .end local v6           #count1:I
    .end local v10           #i:I
    .end local v16           #songlist2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    .restart local p1
    :pswitch_12
    const-string v21, "pos"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1153
    .local v12, posdelete:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x75

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->deletesongUI(I)V
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$22(Lcom/ophone/MiniPlayer/MyPlayerService;I)V

    goto/16 :goto_0

    .line 1159
    .end local v12           #posdelete:I
    :pswitch_13
    const-string v21, "playlistname"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1160
    .local v18, st:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->saveSonglist(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$23(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1163
    .end local v18           #st:Ljava/lang/String;
    :pswitch_14
    const-string v21, "songlist"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1164
    .local v17, songlist3:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->adjustnextpresong()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$9(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 1168
    .end local v17           #songlist3:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    :pswitch_15
    const-string v21, "strURL"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1169
    .local v20, strUrl:Ljava/lang/String;
    const-string v21, "strURllrc"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1172
    .local v19, strURllrc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->downloadfromurl(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$24(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1175
    .end local v19           #strURllrc:Ljava/lang/String;
    .end local v20           #strUrl:Ljava/lang/String;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->cancelNotification()V
    invoke-static/range {v21 .. v21}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$12(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto/16 :goto_0

    .line 1178
    :pswitch_17
    const-string v21, "filename"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1179
    .local v7, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x7a

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->readfromfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$25(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1183
    .end local v7           #filename:Ljava/lang/String;
    :pswitch_18
    const-string v21, "deleteplaylist"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1184
    .local v8, filename1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    const/16 v22, 0x7b

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->deletefromfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$26(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_d
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
