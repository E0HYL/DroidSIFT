.class Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2$1;
.super Ljava/lang/Object;
.source "StreamingMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2$1;->this$1:Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x1

    .line 203
    const-string v0, "MediaPlayer.OnCompletionListener"

    .line 205
    .local v0, TAG:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current size of mediaplayer list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2$1;->this$1:Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;)Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    move-result-object v4

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->mediaplayers:Ljava/util/Vector;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    iget-object v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2$1;->this$1:Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;)Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->mediaplayers:Ljava/util/Vector;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 214
    iget-object v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2$1;->this$1:Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;)Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->mediaplayers:Ljava/util/Vector;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaPlayer;

    .line 215
    .local v2, mp2:Landroid/media/MediaPlayer;
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 216
    const-string v3, "Start new player"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 219
    iget-object v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2$1;->this$1:Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;)Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->mediaplayers:Ljava/util/Vector;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 220
    iget-object v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2$1;->this$1:Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;)Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    move-result-object v3

    #calls: Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->removefile()V
    invoke-static {v3}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->access$1(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)V

    .line 222
    return-void

    .line 208
    .end local v2           #mp2:Landroid/media/MediaPlayer;
    :cond_0
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_1
    const-string v3, "waiting for another mediaplayer"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
