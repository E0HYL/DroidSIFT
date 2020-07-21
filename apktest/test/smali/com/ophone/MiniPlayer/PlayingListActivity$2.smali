.class Lcom/ophone/MiniPlayer/PlayingListActivity$2;
.super Ljava/lang/Object;
.source "PlayingListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/PlayingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$2;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$2;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-static {p2}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v1

    #setter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$0(Lcom/ophone/MiniPlayer/PlayingListActivity;Lcom/ophone/MiniPlayer/IPlayback;)V

    .line 215
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$2;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$0(Lcom/ophone/MiniPlayer/PlayingListActivity;Lcom/ophone/MiniPlayer/IPlayback;)V

    .line 219
    return-void
.end method
