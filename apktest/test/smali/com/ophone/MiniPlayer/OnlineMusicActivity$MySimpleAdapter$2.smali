.class Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;
.super Ljava/lang/Thread;
.source "OnlineMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

.field private final synthetic val$mhandler:Landroid/os/Handler;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;ILandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    iput p2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->val$mhandler:Landroid/os/Handler;

    .line 461
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "source"

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 467
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;

    move-result-object v3

    .line 468
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    .line 467
    invoke-static {v3, v2}, Lcom/ophone/MiniPlayer/provider/SongManager;->getSongSourceGoogle(Ljava/lang/Integer;Lcom/ophone/MiniPlayer/provider/Song;)Ljava/util/Map;

    move-result-object v0

    .line 471
    const-string v2, "OnlinePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "map.get(source).toString()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "source"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    .line 473
    const-string v3, "source"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-virtual {v2, v3}, Lcom/ophone/MiniPlayer/provider/Song;->setGooglepath(Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    const-string v3, "lyricsUrl"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ophone/MiniPlayer/provider/Song;->setLyrics(Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ophone/MiniPlayer/provider/Song;->setTagImage(Z)V

    .line 509
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->val$mhandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-string v4, "flash"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 510
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->val$mhandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    return-void
.end method
