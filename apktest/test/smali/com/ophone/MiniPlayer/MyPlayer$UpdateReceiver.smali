.class public Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MyPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MyPlayer;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/MyPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const v6, 0x7f020026

    const v5, 0x7f020025

    const v4, 0x7f020024

    const v3, 0x7f020023

    const/4 v2, -0x1

    .line 580
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    const-string v1, "status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayer;->status:I

    .line 581
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    const-string v0, "artist"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    .line 584
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    const-string v1, "album"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ophone/MiniPlayer/MyPlayer;->_album:Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    const-string v1, "songname"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ophone/MiniPlayer/MyPlayer;->_songname:Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v1, v1, Lcom/ophone/MiniPlayer/MyPlayer;->_artist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayer;->_artistcount:I

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->status:I

    sparse-switch v0, :sswitch_data_0

    .line 713
    :goto_0
    :sswitch_0
    return-void

    .line 594
    :sswitch_1
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->playpausebn:Landroid/widget/Button;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 595
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    #calls: Lcom/ophone/MiniPlayer/MyPlayer;->UpdateProgressbar()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayer;->access$3(Lcom/ophone/MiniPlayer/MyPlayer;)V

    .line 598
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    const-string v1, "flagrepeat"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeatr:I

    .line 599
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    const-string v1, "flagrandom"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandomr:I

    .line 602
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    #calls: Lcom/ophone/MiniPlayer/MyPlayer;->UpdateSonginfo()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayer;->access$4(Lcom/ophone/MiniPlayer/MyPlayer;)V

    .line 603
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeatr:I

    packed-switch v0, :pswitch_data_0

    .line 616
    :goto_1
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandomr:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 618
    :pswitch_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->randombn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 605
    :pswitch_1
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->repeatbn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 608
    :pswitch_2
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->repeatbn:Landroid/widget/Button;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 611
    :pswitch_3
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->repeatbn:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 621
    :pswitch_4
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->randombn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 627
    :sswitch_2
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->playpausebn:Landroid/widget/Button;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 636
    :sswitch_3
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayer;->showDialog(I)V

    goto :goto_0

    .line 639
    :sswitch_4
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    #calls: Lcom/ophone/MiniPlayer/MyPlayer;->UpdateProgressbar()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayer;->access$3(Lcom/ophone/MiniPlayer/MyPlayer;)V

    .line 641
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    const-string v1, "flagrepeat"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeatr:I

    .line 642
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    const-string v1, "flagrandom"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandomr:I

    .line 645
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    #calls: Lcom/ophone/MiniPlayer/MyPlayer;->UpdateSonginfo()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayer;->access$4(Lcom/ophone/MiniPlayer/MyPlayer;)V

    .line 646
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrepeatr:I

    packed-switch v0, :pswitch_data_2

    .line 659
    :goto_2
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->flagrandomr:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 661
    :pswitch_5
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->randombn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 648
    :pswitch_6
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->repeatbn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 651
    :pswitch_7
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->repeatbn:Landroid/widget/Button;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 654
    :pswitch_8
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->repeatbn:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 664
    :pswitch_9
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayer;->randombn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 591
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6f -> :sswitch_4
        0x73 -> :sswitch_3
    .end sparse-switch

    .line 603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 616
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 646
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 659
    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method
