.class Lcom/ophone/MiniPlayer/MusicActivity$10;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/MusicActivity;->getringtoneFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MusicActivity;

.field private final synthetic val$strPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MusicActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$10;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iput-object p2, p0, Lcom/ophone/MiniPlayer/MusicActivity$10;->val$strPath:Ljava/lang/String;

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity$10;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$10;->val$strPath:Ljava/lang/String;

    #calls: Lcom/ophone/MiniPlayer/MusicActivity;->getDataSourceringtone(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$16(Lcom/ophone/MiniPlayer/MusicActivity;Ljava/lang/String;)V

    .line 1056
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity$10;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$10;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->myTempFileringtone:Ljava/io/File;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$17(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ophone/MiniPlayer/MusicActivity;->setMyRingtone(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_0
    return-void

    .line 1057
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1058
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OnlinePlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
