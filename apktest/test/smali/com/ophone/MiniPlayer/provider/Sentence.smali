.class public Lcom/ophone/MiniPlayer/provider/Sentence;
.super Ljava/lang/Object;
.source "Sentence.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DISAPPEAR_TIME:J = 0x3e8L

.field private static final V_SPACE:I = -0xa

.field private static final serialVersionUID:J = 0x13242d5L


# instance fields
.field private content:Ljava/lang/String;

.field private fromTime:J

.field private toTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestInColor(Ljava/awt/Color;Ljava/awt/Color;J)Ljava/awt/Color;
    .locals 8
    .parameter "c1"
    .parameter "c2"
    .parameter "time"

    .prologue
    const v7, 0x3dcccccd

    const/high16 v6, 0x3f80

    .line 167
    iget-wide v3, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->fromTime:J

    sub-long v3, p3, v3

    long-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getDuring()J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 168
    .local v2, f:F
    cmpl-float v3, v2, v7

    if-lez v3, :cond_0

    move-object v3, p1

    .line 176
    :goto_0
    return-object v3

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getDuring()J

    move-result-wide v0

    .line 172
    .local v0, dur:J
    iget-wide v3, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->fromTime:J

    sub-long v3, p3, v3

    long-to-float v3, v3

    mul-float/2addr v3, v6

    long-to-float v4, v0

    mul-float/2addr v4, v7

    div-float v2, v3, v4

    .line 173
    cmpl-float v3, v2, v6

    if-gtz v3, :cond_1

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    :cond_1
    move-object v3, p1

    .line 174
    goto :goto_0

    .line 176
    :cond_2
    invoke-static {p2, p1, v2}, Lcom/ophone/MiniPlayer/utils/sentenceUtil;->getGradientColor(Ljava/awt/Color;Ljava/awt/Color;F)Ljava/awt/Color;

    move-result-object v3

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentHeight(Landroid/graphics/Paint;)I
    .locals 2
    .parameter "g"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v1

    const/high16 v1, -0x3ee0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getContentWidth(Landroid/graphics/Paint;)I
    .locals 1
    .parameter "g"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuring()J
    .locals 4

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->toTime:J

    iget-wide v2, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->fromTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getFromTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->fromTime:J

    return-wide v0
.end method

.method public getToTime()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->toTime:J

    return-wide v0
.end method

.method public getVIncrease(Landroid/graphics/Paint;J)I
    .locals 9
    .parameter "g"
    .parameter "time"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v0

    .line 93
    .local v0, height:I
    add-int/lit8 v1, v0, -0xa

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->fromTime:J

    sub-long v3, p2, v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x3ff0

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->toTime:J

    iget-wide v7, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->fromTime:J

    sub-long/2addr v5, v7

    long-to-double v5, v5

    div-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    return v1
.end method

.method public isInTime(J)Z
    .locals 2
    .parameter "time"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->fromTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->toTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->content:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setFromTime(J)V
    .locals 0
    .parameter "fromTime"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->fromTime:J

    .line 59
    return-void
.end method

.method public setToTime(J)V
    .locals 0
    .parameter "toTime"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->toTime:J

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->fromTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ophone/MiniPlayer/provider/Sentence;->toTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
