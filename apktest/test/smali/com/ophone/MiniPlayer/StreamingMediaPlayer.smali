.class public Lcom/ophone/MiniPlayer/StreamingMediaPlayer;
.super Ljava/lang/Object;
.source "StreamingMediaPlayer.java"


# static fields
.field public static final AUDIO_MIME:Ljava/lang/String; = "audio/mpeg"

.field public static final BITERATE_HEADER:Ljava/lang/String; = "icy-br"


# instance fields
.field private BIT:I

.field private DOWNFILE:Ljava/lang/String;

.field private INTIAL_KB_BUFFER:I

.field private SECONDS:I

.field private context:Landroid/content/Context;

.field private counter:I

.field private downloadingMediaFile:Ljava/io/File;

.field private mediaplayers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private playedcounter:I

.field private started:Z

.field private stream:Ljava/io/InputStream;

.field private totalKbRead:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x8

    iput v0, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->BIT:I

    .line 40
    const/16 v0, 0x1e

    iput v0, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->SECONDS:I

    .line 42
    iput v2, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->totalKbRead:I

    .line 45
    const-string v0, "downloadingMediaFile"

    iput-object v0, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->DOWNFILE:Ljava/lang/String;

    .line 48
    iput v2, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->counter:I

    .line 49
    iput v2, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->playedcounter:I

    .line 51
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->mediaplayers:Ljava/util/Vector;

    .line 52
    iput-boolean v2, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->started:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->stream:Ljava/io/InputStream;

    .line 57
    iput-object p1, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->context:Landroid/content/Context;

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->DOWNFILE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->counter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    .line 59
    iget-object v0, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->mediaplayers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->removefile()V

    return-void
.end method

.method static synthetic access$2(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->started:Z

    return v0
.end method

.method static synthetic access$3(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->startMediaPlayer()V

    return-void
.end method

.method private removefile()V
    .locals 5

    .prologue
    .line 260
    const-string v0, "removefile"

    .line 261
    .local v0, TAG:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->DOWNFILE:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->playedcounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .local v1, temp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 264
    iget v2, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->playedcounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->playedcounter:I

    .line 265
    return-void
.end method

.method private setupplayer(Ljava/io/File;)V
    .locals 6
    .parameter "partofaudio"

    .prologue
    .line 192
    move-object v1, p1

    .line 193
    .local v1, f:Ljava/io/File;
    const-string v0, "setupplayer"

    .line 194
    .local v0, TAG:Ljava/lang/String;
    const-string v3, "setupplayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;

    invoke-direct {v2, p0, v1}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$2;-><init>(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;Ljava/io/File;)V

    .line 253
    .local v2, r:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 256
    return-void
.end method

.method private startMediaPlayer()V
    .locals 5

    .prologue
    .line 269
    const-string v0, "startMediaPlayer"

    .line 272
    .local v0, TAG:Ljava/lang/String;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->started:Z

    .line 273
    iget-object v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->mediaplayers:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaPlayer;

    .line 274
    .local v2, mp:Landroid/media/MediaPlayer;
    const-string v3, "Start Player"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 276
    iget-object v1, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 281
    .local v1, a:Landroid/app/Activity;
    return-void
.end method


# virtual methods
.method public downloadAudioIncrement(Ljava/lang/String;)V
    .locals 17
    .parameter "mediaUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v2, "downloadAudioIncrement"

    .line 118
    .local v2, TAG:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 119
    .local v6, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 120
    .local v8, method:Lorg/apache/http/client/methods/HttpGet;
    const-string v13, "Accept"

    const-string v14, "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v13, "User-Agent"

    const-string v14, "Mozilla/5.0 (Linux; U; Android 1.5; en-za; HTC Hero Build/CUPCAKE) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v13, "Accept-Language"

    const-string v14, "zh-CN, en-US"

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v13, "Connection"

    const-string v14, "Keep-Alive"

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v13, "Accept-Charset"

    const-string v14, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 127
    .local v10, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 129
    .local v11, status:I
    const/16 v13, 0xc8

    if-eq v11, v13, :cond_0

    .line 186
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 132
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->stream:Ljava/io/InputStream;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->stream:Ljava/io/InputStream;

    move-object v13, v0

    if-nez v13, :cond_1

    .line 138
    const-string v13, "downloadAudioIncrement"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Unable to create InputStream for mediaUrl: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    const-string v13, "downloadAudioIncrement"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "File name: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    move-object v14, v0

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v14, 0x8000

    invoke-direct {v3, v13, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 142
    .local v3, bout:Ljava/io/BufferedOutputStream;
    const/16 v13, 0x4000

    new-array v4, v13, [B

    .line 143
    .local v4, buf:[B
    const/4 v12, 0x0

    .local v12, totalBytesRead:I
    const/4 v7, 0x0

    .line 146
    .local v7, incrementalBytesRead:I
    :cond_2
    if-nez v3, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->counter:I

    move v13, v0

    add-int/lit8 v13, v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->counter:I

    .line 148
    const-string v13, "downloadAudioIncrement"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "FileOutputStream is null, Create new one: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->DOWNFILE:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->counter:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->context:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->DOWNFILE:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->counter:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/File;->deleteOnExit()V

    .line 151
    new-instance v3, Ljava/io/BufferedOutputStream;

    .end local v3           #bout:Ljava/io/BufferedOutputStream;
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    move-object v14, v0

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 154
    .restart local v3       #bout:Ljava/io/BufferedOutputStream;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->stream:Ljava/io/InputStream;

    move-object v13, v0

    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 156
    .local v9, numread:I
    if-gtz v9, :cond_4

    .line 157
    const-string v13, "downloadAudioIncrement"

    const-string v14, "numread <= 0"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 162
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v3, v4, v13, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 164
    add-int/2addr v12, v9

    .line 165
    add-int/2addr v7, v9

    .line 166
    div-int/lit16 v13, v12, 0x3e8

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->totalKbRead:I

    .line 171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->totalKbRead:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->INTIAL_KB_BUFFER:I

    move v14, v0

    if-lt v13, v14, :cond_5

    .line 172
    const-string v13, "downloadAudioIncrement"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Reached Buffer amount we want: totalKbRead: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->totalKbRead:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " INTIAL_KB_BUFFER: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->INTIAL_KB_BUFFER:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 174
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 176
    const/4 v3, 0x0

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->setupplayer(Ljava/io/File;)V

    .line 179
    const/4 v12, 0x0

    .line 183
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->stream:Ljava/io/InputStream;

    move-object v13, v0

    if-nez v13, :cond_2

    goto/16 :goto_0
.end method

.method public startStreaming(Ljava/lang/String;)V
    .locals 12
    .parameter "mediaUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v11, "startStreaming"

    .line 67
    const-string v1, "startStreaming"

    .line 70
    .local v1, TAG:Ljava/lang/String;
    const/4 v7, 0x0

    .line 71
    .local v7, urlConn:Ljava/net/URLConnection;
    const/16 v2, 0x80

    .line 74
    .local v2, bitrate:I
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 77
    const-string v8, "startStreaming"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Content Type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "audio/mpeg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 80
    const-string v8, "icy-br"

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, temp:Ljava/lang/String;
    const-string v8, "startStreaming"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Bitrate: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v5, :cond_0

    .line 83
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 95
    .end local v5           #temp:Ljava/lang/String;
    .end local v6           #url:Ljava/net/URL;
    :cond_0
    :goto_0
    iget v8, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->SECONDS:I

    mul-int/2addr v8, v2

    iget v9, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->BIT:I

    div-int/2addr v8, v9

    iput v8, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->INTIAL_KB_BUFFER:I

    .line 97
    new-instance v4, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$1;

    invoke-direct {v4, p0, p1}, Lcom/ophone/MiniPlayer/StreamingMediaPlayer$1;-><init>(Lcom/ophone/MiniPlayer/StreamingMediaPlayer;Ljava/lang/String;)V

    .line 108
    .local v4, r:Ljava/lang/Runnable;
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 109
    return-void

    .line 86
    .end local v4           #r:Ljava/lang/Runnable;
    .restart local v6       #url:Ljava/net/URL;
    :cond_1
    :try_start_1
    const-string v8, "startStreaming"

    const-string v9, "Can not open media type"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    .end local v6           #url:Ljava/net/URL;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 90
    .local v3, ioe:Ljava/io/IOException;
    const-string v8, "startStreaming"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not connect to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 285
    const-string v0, "STOP"

    .line 286
    .local v0, TAG:Ljava/lang/String;
    const-string v3, "Stop Player"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :try_start_0
    iget-object v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->mediaplayers:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaPlayer;

    .line 289
    .local v2, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 290
    iget-object v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 291
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ophone/MiniPlayer/StreamingMediaPlayer;->stream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    .end local v2           #mp:Landroid/media/MediaPlayer;
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 299
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "No items in Vector"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 301
    .local v1, e:Ljava/io/IOException;
    const-string v3, "error closing open connection"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
