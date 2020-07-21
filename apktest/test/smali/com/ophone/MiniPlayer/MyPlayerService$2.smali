.class Lcom/ophone/MiniPlayer/MyPlayerService$2;
.super Landroid/os/Handler;
.source "MyPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MyPlayerService;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$2;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    .line 1421
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1425
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1438
    :goto_0
    return-void

    .line 1429
    :pswitch_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$2;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$4(Lcom/ophone/MiniPlayer/MyPlayerService;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    #setter for: Lcom/ophone/MiniPlayer/MyPlayerService;->countDownload:I
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$5(Lcom/ophone/MiniPlayer/MyPlayerService;I)V

    .line 1430
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Download over"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$2;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    const v1, 0x7f050062

    .line 1432
    const/4 v2, 0x0

    .line 1431
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1432
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
