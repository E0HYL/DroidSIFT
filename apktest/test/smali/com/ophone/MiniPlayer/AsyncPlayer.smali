.class public Lcom/ophone/MiniPlayer/AsyncPlayer;
.super Ljava/lang/Object;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/AsyncPlayer$Command;,
        Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;
    }
.end annotation


# static fields
.field private static final PLAY:I = 0x1

.field private static final STOP:I = 0x2

.field private static final mDebug:Z


# instance fields
.field private mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ophone/MiniPlayer/AsyncPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mState:I

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mTag:Ljava/lang/String;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, "AsyncPlayer"

    iput-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/AsyncPlayer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ophone/MiniPlayer/AsyncPlayer;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ophone/MiniPlayer/AsyncPlayer;Lcom/ophone/MiniPlayer/AsyncPlayer$Command;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/AsyncPlayer;->startSound(Lcom/ophone/MiniPlayer/AsyncPlayer$Command;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ophone/MiniPlayer/AsyncPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ophone/MiniPlayer/AsyncPlayer;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$5(Lcom/ophone/MiniPlayer/AsyncPlayer;Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mThread:Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;

    return-void
.end method

.method static synthetic access$6(Lcom/ophone/MiniPlayer/AsyncPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/AsyncPlayer;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 164
    :cond_0
    return-void
.end method

.method private enqueueLocked(Lcom/ophone/MiniPlayer/AsyncPlayer$Command;)V
    .locals 1
    .parameter "cmd"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mThread:Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/AsyncPlayer;->acquireWakeLock()V

    .line 144
    new-instance v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;-><init>(Lcom/ophone/MiniPlayer/AsyncPlayer;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mThread:Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;

    .line 145
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mThread:Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;->start()V

    .line 147
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 170
    :cond_0
    return-void
.end method

.method private startSound(Lcom/ophone/MiniPlayer/AsyncPlayer$Command;)V
    .locals 5
    .parameter "cmd"

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 37
    .local v1, player:Landroid/media/MediaPlayer;
    iget v2, p1, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->stream:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 38
    iget-object v2, p1, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 39
    iget-boolean v2, p1, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->looping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 40
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 41
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 42
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 45
    :cond_0
    iput-object v1, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .end local v1           #player:Landroid/media/MediaPlayer;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 48
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error loading sound for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 50
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalStateException (content provider died?) "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "looping"
    .parameter "stream"

    .prologue
    const/4 v3, 0x1

    .line 114
    new-instance v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;-><init>(Lcom/ophone/MiniPlayer/AsyncPlayer$Command;)V

    .line 115
    .local v0, cmd:Lcom/ophone/MiniPlayer/AsyncPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->requestTime:J

    .line 116
    iput v3, v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->code:I

    .line 117
    iput-object p1, v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->context:Landroid/content/Context;

    .line 118
    iput-object p2, v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    .line 119
    iput-boolean p3, v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->looping:Z

    .line 120
    iput p4, v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->stream:I

    .line 121
    iget-object v1, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 122
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ophone/MiniPlayer/AsyncPlayer;->enqueueLocked(Lcom/ophone/MiniPlayer/AsyncPlayer$Command;)V

    .line 123
    const/4 v2, 0x1

    iput v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mState:I

    .line 121
    monitor-exit v1

    .line 125
    return-void

    .line 121
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mThread:Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "assertion failed mWakeLock="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    const-string v3, " mThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mThread:Lcom/ophone/MiniPlayer/AsyncPlayer$Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 157
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 129
    iget-object v1, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 130
    :try_start_0
    iget v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mState:I

    if-eq v2, v3, :cond_0

    .line 131
    new-instance v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;-><init>(Lcom/ophone/MiniPlayer/AsyncPlayer$Command;)V

    .line 132
    .local v0, cmd:Lcom/ophone/MiniPlayer/AsyncPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->requestTime:J

    .line 133
    const/4 v2, 0x2

    iput v2, v0, Lcom/ophone/MiniPlayer/AsyncPlayer$Command;->code:I

    .line 134
    invoke-direct {p0, v0}, Lcom/ophone/MiniPlayer/AsyncPlayer;->enqueueLocked(Lcom/ophone/MiniPlayer/AsyncPlayer$Command;)V

    .line 135
    const/4 v2, 0x2

    iput v2, p0, Lcom/ophone/MiniPlayer/AsyncPlayer;->mState:I

    .line 129
    .end local v0           #cmd:Lcom/ophone/MiniPlayer/AsyncPlayer$Command;
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 129
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
