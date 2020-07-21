.class Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$1;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$1;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$1;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->SongRandom()V

    .line 856
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$1;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 857
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$1;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 858
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$1;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 859
    return-void
.end method
