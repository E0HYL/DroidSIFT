.class Lcom/ophone/MiniPlayer/MusicActivity$2;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MusicActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$2;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "comp"
    .parameter "binder"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$2;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-static {p2}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v1

    #setter for: Lcom/ophone/MiniPlayer/MusicActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MusicActivity;->access$1(Lcom/ophone/MiniPlayer/MusicActivity;Lcom/ophone/MiniPlayer/IPlayback;)V

    .line 182
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$2;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    const/4 v1, 0x0

    #setter for: Lcom/ophone/MiniPlayer/MusicActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/MusicActivity;->access$1(Lcom/ophone/MiniPlayer/MusicActivity;Lcom/ophone/MiniPlayer/IPlayback;)V

    .line 186
    return-void
.end method
