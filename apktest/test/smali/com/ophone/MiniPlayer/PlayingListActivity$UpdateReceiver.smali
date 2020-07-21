.class public Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/PlayingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;)Lcom/ophone/MiniPlayer/PlayingListActivity;
    .locals 1
    .parameter

    .prologue
    .line 782
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v6, "OnlinePlayer"

    .line 786
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->status:I
    invoke-static {v3, v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$4(Lcom/ophone/MiniPlayer/PlayingListActivity;I)V

    .line 787
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 788
    const-string v3, "songlist"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 787
    iput-object v3, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    .line 790
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->status:I
    invoke-static {v3}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$5(Lcom/ophone/MiniPlayer/PlayingListActivity;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 861
    :goto_0
    :sswitch_0
    return-void

    .line 793
    :sswitch_1
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 794
    .local v0, a:I
    const-string v3, "OnlinePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "a="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v3, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver$1;

    invoke-direct {v3, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver$1;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;)V

    .line 804
    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver$1;->start()V

    goto :goto_0

    .line 808
    .end local v0           #a:I
    :sswitch_2
    const-string v3, "OnlinePlayer"

    const-string v3, "IntentParam.STATUS_CLEARSONGLIST"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 811
    .local v1, a1:I
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getAdapterMap()Ljava/util/List;

    .line 826
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/PlayingListActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 829
    .end local v1           #a1:I
    :sswitch_3
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

    invoke-virtual {v3, v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 832
    :sswitch_4
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

    invoke-virtual {v3, v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 835
    :sswitch_5
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 836
    .local v2, a3:I
    const-string v3, "OnlinePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "playinglistActivity:STATUS_DELETESONG"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getAdapterMap()Ljava/util/List;

    .line 840
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/PlayingListActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 843
    .end local v2           #a3:I
    :sswitch_6
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getAdapterMap()Ljava/util/List;

    .line 844
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/PlayingListActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->notifyDataSetChanged()V

    .line 845
    const-string v3, "OnlinePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->status:I
    invoke-static {v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$5(Lcom/ophone/MiniPlayer/PlayingListActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 790
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x67 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_5
        0x76 -> :sswitch_1
        0x7a -> :sswitch_6
        0x7b -> :sswitch_0
    .end sparse-switch
.end method
