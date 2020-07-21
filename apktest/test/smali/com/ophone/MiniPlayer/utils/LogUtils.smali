.class public Lcom/ophone/MiniPlayer/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLog(Ljava/lang/Class;)Lcom/ophone/MiniPlayer/utils/Log;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/ophone/MiniPlayer/utils/Log;"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/ophone/MiniPlayer/utils/Log;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/utils/Log;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
