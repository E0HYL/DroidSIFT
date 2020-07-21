.class Lcom/ophone/MiniPlayer/MyPlayerService$5;
.super Ljava/lang/Object;
.source "MyPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->playmodel:I

    packed-switch v0, :pswitch_data_0

    .line 567
    :goto_0
    return-void

    .line 544
    :pswitch_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    const/16 v1, 0x67

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 546
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->updateSonglistUI()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$15(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 547
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->nextSong()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$1(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 549
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->countdefaultplay:I
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$27(Lcom/ophone/MiniPlayer/MyPlayerService;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v1, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 552
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->cancelNotification()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$12(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto :goto_0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->cancelNotification()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$12(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 556
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->showNotification()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$10(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto :goto_0

    .line 560
    :pswitch_1
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->SongRandom()V

    .line 561
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$5;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->playSong()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$8(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
