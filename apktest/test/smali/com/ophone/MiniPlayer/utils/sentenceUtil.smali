.class public Lcom/ophone/MiniPlayer/utils/sentenceUtil;
.super Ljava/lang/Object;
.source "sentenceUtil.java"


# static fields
.field private static lyricHilight:Ljava/awt/Color;


# instance fields
.field private lyricForeground:Ljava/awt/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 5
    new-instance v0, Ljava/awt/Color;

    const/4 v1, 0x0

    const/16 v2, 0xf4

    const/16 v3, 0xf5

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Lcom/ophone/MiniPlayer/utils/sentenceUtil;->lyricHilight:Ljava/awt/Color;

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v1, v1, v1}, Ljava/awt/Color;-><init>(III)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/utils/sentenceUtil;->lyricForeground:Ljava/awt/Color;

    .line 4
    return-void
.end method

.method public static getGradientColor(Ljava/awt/Color;Ljava/awt/Color;F)Ljava/awt/Color;
    .locals 9
    .parameter "c1"
    .parameter "c2"
    .parameter "f"

    .prologue
    .line 8
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v7

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v8

    sub-int v4, v7, v8

    .line 9
    .local v4, deltaR:I
    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v7

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v8

    sub-int v3, v7, v8

    .line 10
    .local v3, deltaG:I
    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v7

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v8

    sub-int v2, v7, v8

    .line 11
    .local v2, deltaB:I
    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v4

    mul-float/2addr v8, p2

    add-float/2addr v7, v8

    float-to-int v6, v7

    .line 12
    .local v6, r1:I
    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v3

    mul-float/2addr v8, p2

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 13
    .local v5, g1:I
    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    mul-float/2addr v8, p2

    add-float/2addr v7, v8

    float-to-int v0, v7

    .line 14
    .local v0, b1:I
    new-instance v1, Ljava/awt/Color;

    invoke-direct {v1, v6, v5, v0}, Ljava/awt/Color;-><init>(III)V

    .line 15
    .local v1, c:Ljava/awt/Color;
    return-object v1
.end method

.method public static getLyricHilight()Ljava/awt/Color;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/ophone/MiniPlayer/utils/sentenceUtil;->lyricHilight:Ljava/awt/Color;

    return-object v0
.end method


# virtual methods
.method public getLyricForeground()Ljava/awt/Color;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ophone/MiniPlayer/utils/sentenceUtil;->lyricForeground:Ljava/awt/Color;

    return-object v0
.end method

.method public setLyricForeground(Ljava/awt/Color;)V
    .locals 0
    .parameter "lyricForeground"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ophone/MiniPlayer/utils/sentenceUtil;->lyricForeground:Ljava/awt/Color;

    .line 28
    return-void
.end method

.method public setLyricHilight(Ljava/awt/Color;)V
    .locals 0
    .parameter "lyricHilight"

    .prologue
    .line 21
    sput-object p1, Lcom/ophone/MiniPlayer/utils/sentenceUtil;->lyricHilight:Ljava/awt/Color;

    .line 22
    return-void
.end method
