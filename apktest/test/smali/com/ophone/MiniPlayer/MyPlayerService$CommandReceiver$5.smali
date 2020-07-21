.class Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$5;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$5;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver$5;->this$1:Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService$CommandReceiver;)Lcom/ophone/MiniPlayer/MyPlayerService;

    move-result-object v0

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->nextSong()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$1(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 976
    return-void
.end method
