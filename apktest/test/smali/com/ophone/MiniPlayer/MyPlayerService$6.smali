.class Lcom/ophone/MiniPlayer/MyPlayerService$6;
.super Ljava/lang/Object;
.source "MyPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/MyPlayerService;->getFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

.field private final synthetic val$strPath:Ljava/lang/String;

.field private final synthetic val$strURLlrc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$6;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iput-object p2, p0, Lcom/ophone/MiniPlayer/MyPlayerService$6;->val$strPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$6;->val$strURLlrc:Ljava/lang/String;

    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1498
    :try_start_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService$6;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyPlayerService$6;->val$strPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/ophone/MiniPlayer/MyPlayerService$6;->val$strURLlrc:Ljava/lang/String;

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->getDataSource(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$29(Lcom/ophone/MiniPlayer/MyPlayerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService$6;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$30(Lcom/ophone/MiniPlayer/MyPlayerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1504
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MyPlayerService$6;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$30(Lcom/ophone/MiniPlayer/MyPlayerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1506
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1507
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MyPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
