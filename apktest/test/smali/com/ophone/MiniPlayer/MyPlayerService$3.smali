.class Lcom/ophone/MiniPlayer/MyPlayerService$3;
.super Ljava/lang/Object;
.source "MyPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/MyPlayerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MyPlayerService;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MyPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$3;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mplayer"

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 250
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$3;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    const/16 v1, 0x66

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 251
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$3;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->updateUi()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$11(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 253
    return-void
.end method
