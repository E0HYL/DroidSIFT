.class Lcom/ophone/MiniPlayer/StreamingMediaPlayer$1;
.super Ljava/lang/Object;
.source "StreamingMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->startStreaming(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

.field private final synthetic val$mediaUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$1;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    iput-object p2, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$1;->val$mediaUrl:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$1;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$1;->val$mediaUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->downloadAudioIncrement(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, e:Ljava/io/IOException;
    const-string v1, "startStreaming"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to initialize the MediaPlayer for Audio Url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$1;->val$mediaUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    iget-object v1, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$1;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    invoke-virtual {v1}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->stop()V

    goto :goto_0
.end method
