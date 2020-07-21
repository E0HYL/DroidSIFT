.class Lcom/ophone/MiniPlayer/lyricsactivity$1;
.super Landroid/os/Handler;
.source "lyricsactivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/lyricsactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/lyricsactivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$1;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    .line 122
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/lyricsactivity$1;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    #calls: Lcom/ophone/MiniPlayer/lyricsactivity;->UpdateProgressbar()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/lyricsactivity;->access$0(Lcom/ophone/MiniPlayer/lyricsactivity;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
