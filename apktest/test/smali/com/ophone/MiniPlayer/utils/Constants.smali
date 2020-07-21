.class public Lcom/ophone/MiniPlayer/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# instance fields
.field public final BAIDUHOTTOP500:Ljava/lang/String;

.field public final BAIDUNEWTOP100:Ljava/lang/String;

.field public final GOOGLECHINESEHOT:Ljava/lang/String;

.field public final GOOGLECHINESENEW:Ljava/lang/String;

.field public final GOOGLEENGLISHHOT:Ljava/lang/String;

.field public final GOOGLEENGLISHNEW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/utils/Constants;->GOOGLECHINESENEW:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/utils/Constants;->GOOGLECHINESEHOT:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/utils/Constants;->GOOGLEENGLISHNEW:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/utils/Constants;->GOOGLEENGLISHHOT:Ljava/lang/String;

    .line 9
    const-string v0, "http://box.zhangmen.baidu.com/x?op=12&count=1&title="

    iput-object v0, p0, Lcom/ophone/MiniPlayer/utils/Constants;->BAIDUNEWTOP100:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/utils/Constants;->BAIDUHOTTOP500:Ljava/lang/String;

    .line 3
    return-void
.end method
