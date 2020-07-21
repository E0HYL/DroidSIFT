.class Lcom/ophone/MiniPlayer/OnlineMusicActivity$2;
.super Ljava/lang/Object;
.source "OnlineMusicActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/OnlineMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$2;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$2;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    invoke-static {p2}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v1

    #setter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Lcom/ophone/MiniPlayer/IPlayback;)V

    .line 313
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$2;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    const/4 v1, 0x0

    #setter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Lcom/ophone/MiniPlayer/IPlayback;)V

    .line 317
    return-void
.end method
