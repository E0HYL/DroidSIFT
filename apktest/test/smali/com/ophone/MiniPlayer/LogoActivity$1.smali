.class Lcom/ophone/MiniPlayer/LogoActivity$1;
.super Ljava/lang/Thread;
.source "LogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/LogoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/LogoActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/LogoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-class v6, Lcom/ophone/MiniPlayer/MainActivity;

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, mWait:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    iget v3, v3, Lcom/ophone/MiniPlayer/LogoActivity;->_splashTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/LogoActivity;->finish()V

    .line 58
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    const-class v4, Lcom/ophone/MiniPlayer/MainActivity;

    invoke-direct {v1, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v1, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    invoke-virtual {v3, v1}, Lcom/ophone/MiniPlayer/LogoActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/LogoActivity$1;->stop()V

    .line 62
    :goto_1
    return-void

    .line 48
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Lcom/ophone/MiniPlayer/LogoActivity$1;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    add-int/lit8 v2, v2, 0x64

    goto :goto_0

    .line 51
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 53
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    iget-object v3, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/LogoActivity;->finish()V

    .line 58
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    const-class v4, Lcom/ophone/MiniPlayer/MainActivity;

    invoke-direct {v1, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    invoke-virtual {v3, v1}, Lcom/ophone/MiniPlayer/LogoActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/LogoActivity$1;->stop()V

    goto :goto_1

    .line 56
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    .line 57
    iget-object v4, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/LogoActivity;->finish()V

    .line 58
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    const-class v5, Lcom/ophone/MiniPlayer/MainActivity;

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v4, p0, Lcom/ophone/MiniPlayer/LogoActivity$1;->this$0:Lcom/ophone/MiniPlayer/LogoActivity;

    invoke-virtual {v4, v1}, Lcom/ophone/MiniPlayer/LogoActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/LogoActivity$1;->stop()V

    .line 61
    throw v3
.end method
