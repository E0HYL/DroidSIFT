.class Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$3;
.super Ljava/lang/Object;
.source "MyPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$3;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$3;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$3;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$3;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v1

    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$3;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ophone/MiniPlayer/provider/Song;

    #setter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v1, v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$6(Lcom/ophone/MiniPlayer/MyPlayerService;Lcom/ophone/MiniPlayer/provider/Song;)V

    .line 907
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$3;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 909
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$3;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 912
    :cond_1
    return-void
.end method
