.class Lcom/ophone/MiniPlayer/PlayingListActivity$15;
.super Ljava/lang/Object;
.source "PlayingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/PlayingListActivity;->getFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

.field private final synthetic val$strPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/PlayingListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$15;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iput-object p2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$15;->val$strPath:Ljava/lang/String;

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$15;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$15;->val$strPath:Ljava/lang/String;

    #calls: Lcom/ophone/MiniPlayer/PlayingListActivity;->getDataSource(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$16(Lcom/ophone/MiniPlayer/PlayingListActivity;Ljava/lang/String;)V

    .line 1184
    iget-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$15;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    const v2, 0x7f050066

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1185
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :goto_0
    return-void

    .line 1186
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1187
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OnlinePlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
