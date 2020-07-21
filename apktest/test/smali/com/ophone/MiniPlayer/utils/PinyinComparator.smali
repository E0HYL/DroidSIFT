.class public Lcom/ophone/MiniPlayer/utils/PinyinComparator;
.super Ljava/lang/Object;
.source "PinyinComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pinyin(C)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 28
    invoke-static {p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, pinyins:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 32
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ophone/MiniPlayer/utils/PinyinComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 9
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 11
    .local v0, codePoint1:I
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 12
    .local v1, codePoint2:I
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    :cond_0
    sub-int v5, v0, v1

    .line 25
    .end local v0           #codePoint1:I
    .end local v1           #codePoint2:I
    :goto_0
    return v5

    .line 16
    .restart local v0       #codePoint1:I
    .restart local v1       #codePoint2:I
    :cond_1
    int-to-char v5, v0

    invoke-direct {p0, v5}, Lcom/ophone/MiniPlayer/utils/PinyinComparator;->pinyin(C)Ljava/lang/String;

    move-result-object v3

    .line 17
    .local v3, pinyin1:Ljava/lang/String;
    int-to-char v5, v1

    invoke-direct {p0, v5}, Lcom/ophone/MiniPlayer/utils/PinyinComparator;->pinyin(C)Ljava/lang/String;

    move-result-object v4

    .line 18
    .local v4, pinyin2:Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 21
    :cond_2
    sub-int v5, v0, v1

    goto :goto_0

    .line 25
    .end local v0           #codePoint1:I
    .end local v1           #codePoint2:I
    .end local v3           #pinyin1:Ljava/lang/String;
    .end local v4           #pinyin2:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_0
.end method
