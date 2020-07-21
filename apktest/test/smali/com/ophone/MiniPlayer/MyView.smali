.class public Lcom/ophone/MiniPlayer/MyView;
.super Landroid/view/View;
.source "MyView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "debug"

.field private static final V_SPACE:I = -0xa


# instance fields
.field private height:I

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mStr:Ljava/lang/String;

.field private pos:J

.field private sentencelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Sentence;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    .line 33
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ophone/MiniPlayer/MyView;->mStr:Ljava/lang/String;

    .line 34
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/ophone/MiniPlayer/MyView;->pos:J

    .line 39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MyView;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MyView;->initMyView()V

    .line 48
    sget-object v6, Lcom/ophone/MiniPlayer/R$styleable;->MyView:[I

    .line 47
    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 50
    .local v3, params:Landroid/content/res/TypedArray;
    const/4 v6, 0x2

    .line 49
    invoke-virtual {v3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 51
    .local v0, backgroudId:I
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MyView;->setBackgroundResource(I)V

    .line 54
    :cond_0
    const/4 v6, -0x1

    .line 53
    invoke-virtual {v3, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 55
    .local v4, textColor:I
    invoke-direct {p0, v4}, Lcom/ophone/MiniPlayer/MyView;->setTextColor(I)V

    .line 56
    const/4 v6, 0x1

    const/high16 v7, 0x4210

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 57
    .local v5, textSize:F
    invoke-direct {p0, v5}, Lcom/ophone/MiniPlayer/MyView;->setTextSize(F)V

    .line 59
    const/4 v6, 0x3

    const/high16 v7, 0x4224

    .line 58
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 61
    .local v1, paddingLeft:F
    const/4 v6, 0x4

    const/high16 v7, 0x41a8

    .line 60
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 62
    .local v2, paddingTop:F
    invoke-direct {p0, v1, v2}, Lcom/ophone/MiniPlayer/MyView;->setPaddings(FF)V

    .line 63
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MyView;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/ophone/MiniPlayer/MyView;->height:I

    .line 64
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MyView;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/ophone/MiniPlayer/MyView;->width:I

    .line 65
    return-void
.end method

.method private drawKaraoke(Lcom/ophone/MiniPlayer/provider/Sentence;IIJLandroid/graphics/Canvas;)V
    .locals 5
    .parameter "now"
    .parameter "x"
    .parameter "y"
    .parameter "t"
    .parameter "canvas"

    .prologue
    .line 264
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 265
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p1, v1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v0

    .line 288
    .local v0, nowWidth:I
    const/16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    const/high16 v2, 0x4170

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 292
    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {p6, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 295
    :cond_0
    return-void
.end method

.method private getNowSentenceIndex(J)I
    .locals 2
    .parameter "t"

    .prologue
    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 209
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual {v1, p1, p2}, Lcom/ophone/MiniPlayer/provider/Sentence;->isInTime(J)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 205
    goto :goto_1

    .line 203
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSentenceX(Landroid/graphics/Paint;Lcom/ophone/MiniPlayer/provider/Sentence;)I
    .locals 3
    .parameter "g"
    .parameter "sen"

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, x:I
    iget v1, p0, Lcom/ophone/MiniPlayer/MyView;->width:I

    invoke-virtual {p2, p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 222
    return v0
.end method

.method private initMyView()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    return-void
.end method

.method private setPaddings(FF)V
    .locals 3
    .parameter "paddingLeft"
    .parameter "paddingTop"

    .prologue
    const/4 v2, 0x0

    .line 200
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/ophone/MiniPlayer/MyView;->setPadding(IIII)V

    .line 201
    return-void
.end method

.method private setTextColor(I)V
    .locals 2
    .parameter "textColor"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x554434

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    return-void
.end method

.method private setTextSize(F)V
    .locals 1
    .parameter "textSize"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    return-void
.end method


# virtual methods
.method public getMaxWidth(Landroid/graphics/Paint;)I
    .locals 5
    .parameter "g"

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, max:I
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 261
    return v0

    .line 255
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ophone/MiniPlayer/provider/Sentence;

    .line 256
    .local v1, sen:Lcom/ophone/MiniPlayer/provider/Sentence;
    invoke-virtual {v1, p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v2

    .line 257
    .local v2, w:I
    if-le v2, v0, :cond_0

    .line 258
    move v0, v2

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v12, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v12, :cond_1

    .line 77
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ophone/MiniPlayer/provider/Sentence;

    .line 78
    .local v9, sen:Lcom/ophone/MiniPlayer/provider/Sentence;
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v9}, Lcom/ophone/MiniPlayer/MyView;->getSentenceX(Landroid/graphics/Paint;Lcom/ophone/MiniPlayer/provider/Sentence;)I

    move-result v2

    .line 79
    .local v2, x:I
    iget v0, p0, Lcom/ophone/MiniPlayer/MyView;->height:I

    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v6

    sub-int/2addr v0, v6

    div-int/lit8 v3, v0, 0x2

    .line 81
    .local v3, y:I
    invoke-virtual {v9}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v0

    int-to-float v6, v2

    int-to-float v12, v3

    iget-object v13, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v9           #sen:Lcom/ophone/MiniPlayer/provider/Sentence;
    :cond_0
    return-void

    .line 84
    :cond_1
    iget-wide v4, p0, Lcom/ophone/MiniPlayer/MyView;->pos:J

    .line 85
    .local v4, t:J
    invoke-direct {p0, v4, v5}, Lcom/ophone/MiniPlayer/MyView;->getNowSentenceIndex(J)I

    move-result v8

    .line 86
    .local v8, index:I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ophone/MiniPlayer/provider/Sentence;

    .line 91
    .local v1, now:Lcom/ophone/MiniPlayer/provider/Sentence;
    iget v0, p0, Lcom/ophone/MiniPlayer/MyView;->height:I

    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v6

    add-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    iget-object v6, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v5}, Lcom/ophone/MiniPlayer/provider/Sentence;->getVIncrease(Landroid/graphics/Paint;J)I

    move-result v6

    sub-int v3, v0, v6

    .line 92
    .restart local v3       #y:I
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1}, Lcom/ophone/MiniPlayer/MyView;->getSentenceX(Landroid/graphics/Paint;Lcom/ophone/MiniPlayer/provider/Sentence;)I

    move-result v2

    .restart local v2       #x:I
    move-object v0, p0

    move-object v6, p1

    .line 108
    invoke-direct/range {v0 .. v6}, Lcom/ophone/MiniPlayer/MyView;->drawKaraoke(Lcom/ophone/MiniPlayer/provider/Sentence;IIJLandroid/graphics/Canvas;)V

    .line 109
    move v10, v3

    .line 111
    .local v10, tempY:I
    sub-int v7, v8, v12

    .local v7, i:I
    :goto_0
    if-gez v7, :cond_4

    .line 139
    :cond_2
    move v10, v3

    .line 148
    add-int/lit8 v7, v8, 0x1

    :goto_1
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ophone/MiniPlayer/provider/Sentence;

    .line 150
    .restart local v9       #sen:Lcom/ophone/MiniPlayer/provider/Sentence;
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v9}, Lcom/ophone/MiniPlayer/MyView;->getSentenceX(Landroid/graphics/Paint;Lcom/ophone/MiniPlayer/provider/Sentence;)I

    move-result v11

    .line 151
    .local v11, x1:I
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v0

    add-int/2addr v0, v10

    add-int/lit8 v10, v0, -0xa

    .line 152
    iget v0, p0, Lcom/ophone/MiniPlayer/MyView;->height:I

    if-gt v10, v0, :cond_0

    .line 155
    invoke-virtual {v9}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {v9}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v0

    int-to-float v6, v11

    int-to-float v12, v10

    iget-object v13, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 148
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 112
    .end local v9           #sen:Lcom/ophone/MiniPlayer/provider/Sentence;
    .end local v11           #x1:I
    :cond_4
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ophone/MiniPlayer/provider/Sentence;

    .line 113
    .restart local v9       #sen:Lcom/ophone/MiniPlayer/provider/Sentence;
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v9}, Lcom/ophone/MiniPlayer/MyView;->getSentenceX(Landroid/graphics/Paint;Lcom/ophone/MiniPlayer/provider/Sentence;)I

    move-result v11

    .line 114
    .restart local v11       #x1:I
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v0

    sub-int v0, v10, v0

    const/16 v6, -0xa

    sub-int v10, v0, v6

    .line 115
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v0

    add-int/2addr v0, v10

    if-ltz v0, :cond_2

    .line 134
    invoke-virtual {v9}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 135
    invoke-virtual {v9}, Lcom/ophone/MiniPlayer/provider/Sentence;->getContent()Ljava/lang/String;

    move-result-object v0

    int-to-float v6, v11

    int-to-float v12, v10

    iget-object v13, p0, Lcom/ophone/MiniPlayer/MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 111
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 229
    iput p1, p0, Lcom/ophone/MiniPlayer/MyView;->height:I

    .line 230
    return-void
.end method

.method setText(JLjava/util/List;)V
    .locals 0
    .parameter "time"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Sentence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/ophone/MiniPlayer/provider/Sentence;>;"
    iput-wide p1, p0, Lcom/ophone/MiniPlayer/MyView;->pos:J

    .line 187
    iput-object p3, p0, Lcom/ophone/MiniPlayer/MyView;->sentencelist:Ljava/util/List;

    .line 188
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 237
    iput p1, p0, Lcom/ophone/MiniPlayer/MyView;->width:I

    .line 238
    return-void
.end method
