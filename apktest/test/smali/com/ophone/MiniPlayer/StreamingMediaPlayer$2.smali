.class Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;
.super Ljava/lang/Object;
.source "StreamingMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->setupplayer(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

.field private final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    iput-object p2, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->val$f:Ljava/io/File;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;)Lcom/ophone/MiniPlayer/StreamingMediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-string v7, "setupplayer"

    .line 198
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 201
    .local v3, mp:Landroid/media/MediaPlayer;
    :try_start_0
    new-instance v2, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2$1;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2$1;-><init>(Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;)V

    .line 225
    .local v2, listener:Landroid/media/MediaPlayer$OnCompletionListener;
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->val$f:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 226
    .local v1, ins:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 227
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 229
    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 230
    const-string v4, "setupplayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Prepare Media Player "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->val$f:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v4, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->started:Z
    invoke-static {v4}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->access$2(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 239
    :goto_0
    iget-object v4, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->mediaplayers:Ljava/util/Vector;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v4, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    #getter for: Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->started:Z
    invoke-static {v4}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->access$2(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    const-string v4, "setupplayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Start Media Player "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->val$f:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v4, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;->this$0:Lcom/ophone/MiniPlayer/StreamingMediaPlayer;

    #calls: Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->startMediaPlayer()V
    invoke-static {v4}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->access$3(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)V

    .line 251
    .end local v1           #ins:Ljava/io/FileInputStream;
    .end local v2           #listener:Landroid/media/MediaPlayer$OnCompletionListener;
    :cond_0
    :goto_1
    return-void

    .line 236
    .restart local v1       #ins:Ljava/io/FileInputStream;
    .restart local v2       #listener:Landroid/media/MediaPlayer$OnCompletionListener;
    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 244
    .end local v1           #ins:Ljava/io/FileInputStream;
    .end local v2           #listener:Landroid/media/MediaPlayer$OnCompletionListener;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 245
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "setupplayer"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 247
    .local v0, e:Ljava/io/IOException;
    const-string v4, "setupplayer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
