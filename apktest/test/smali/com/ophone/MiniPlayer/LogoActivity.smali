.class public Lcom/ophone/MiniPlayer/LogoActivity;
.super Landroid/app/Activity;
.source "LogoActivity.java"


# instance fields
.field protected _splashTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/ophone/MiniPlayer/LogoActivity;->_splashTime:I

    .line 15
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v6, 0x7f030006

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/LogoActivity;->setContentView(I)V

    .line 24
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/LogoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 27
    .local v4, mActivityManager:Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 28
    .local v5, mRunningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v2, 0x1

    .line 29
    .local v2, i:I
    const/4 v1, 0x1

    .line 31
    .local v1, flag:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 40
    :goto_1
    if-eqz v1, :cond_0

    .line 41
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/xxx/yyy/MyService;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/LogoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    :cond_0
    new-instance v6, Lcom/ophone/MiniPlayer/LogoActivity$1;

    invoke-direct {v6, p0}, Lcom/ophone/MiniPlayer/LogoActivity$1;-><init>(Lcom/ophone/MiniPlayer/LogoActivity;)V

    .line 63
    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/LogoActivity$1;->start()V

    .line 64
    return-void

    .line 31
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 33
    .local v0, amTask:Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v7, "WeatherWidget"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(ID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v7, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/LogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050046

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 35
    const/4 v1, 0x0

    move v2, v3

    .line 36
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_2
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method
