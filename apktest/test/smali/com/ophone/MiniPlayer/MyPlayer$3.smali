.class Lcom/ophone/MiniPlayer/MyPlayer$3;
.super Landroid/os/Handler;
.source "MyPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MyPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MyPlayer;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MyPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayer$3;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    .line 451
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 454
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 462
    :goto_0
    return-void

    .line 456
    :pswitch_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayer$3;->this$0:Lcom/ophone/MiniPlayer/MyPlayer;

    #calls: Lcom/ophone/MiniPlayer/MyPlayer;->UpdateProgressbar()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayer;->access$3(Lcom/ophone/MiniPlayer/MyPlayer;)V

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
