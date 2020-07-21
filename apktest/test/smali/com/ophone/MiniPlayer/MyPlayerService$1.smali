.class Lcom/ophone/MiniPlayer/MyPlayerService$1;
.super Lcom/ophone/MiniPlayer/IPlayback$Stub;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    .line 99
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/provider/Song;->getAlbum()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getArtist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MyPlayerService$1;->getArtist()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/provider/Song;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    return v0
.end method

.method public getTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getlyricurlgoogle()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/provider/Song;->getLyrics()Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getlyricurllocal()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->cursong:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$0(Lcom/ophone/MiniPlayer/MyPlayerService;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/provider/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->nextSong()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$1(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 112
    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 118
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    const/16 v1, 0x65

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 120
    :cond_0
    return-void
.end method

.method public previous()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #calls: Lcom/ophone/MiniPlayer/MyPlayerService;->previousSong()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$3(Lcom/ophone/MiniPlayer/MyPlayerService;)V

    .line 157
    return-void
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 150
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    .line 151
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    const/16 v1, 0x71

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 152
    return-void
.end method

.method public seek(I)V
    .locals 1
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 199
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget v1, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v1, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 130
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget v1, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v1, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 135
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    const/16 v2, 0x64

    iput v2, v1, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    goto :goto_0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 142
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    const/16 v1, 0x66

    iput v1, v0, Lcom/ophone/MiniPlayer/MyPlayerService;->status:I

    .line 144
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyPlayerService$1;->this$0:Lcom/ophone/MiniPlayer/MyPlayerService;

    #getter for: Lcom/ophone/MiniPlayer/MyPlayerService;->nMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MyPlayerService;->access$2(Lcom/ophone/MiniPlayer/MyPlayerService;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x7f05003a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 145
    return-void
.end method
