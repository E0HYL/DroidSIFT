.class Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 936
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v3

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 937
    .local v1, count:I
    const/4 v0, 0x0

    .line 938
    .local v0, b:I
    if-lez v1, :cond_0

    .line 939
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_2

    .line 949
    .end local v2           #i:I
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v4

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v3

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ophone/MiniPlayer/provider/Song;

    #setter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v4, v3}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$6(Lcom/ophone/MiniPlayer/MyPlayerService;Lcom/ophone/MiniPlayer/provider/Song;)V

    .line 951
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 952
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v3

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 953
    :cond_1
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v3

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->cancelNotification()V
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$12(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 954
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v3

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 956
    return-void

    .line 940
    .restart local v2       #i:I
    :cond_2
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 941
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$7(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v4

    .line 942
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$4;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v3

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v3

    .line 941
    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 943
    move v0, v2

    .line 944
    goto :goto_1

    .line 939
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
