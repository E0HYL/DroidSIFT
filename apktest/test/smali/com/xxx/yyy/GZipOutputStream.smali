.class public Lcom/xxx/yyy/GZipOutputStream;
.super Ljava/io/OutputStream;
.source "GZipOutputStream.java"


# static fields
.field private static final HASHMAP_COUNT:I = 0x4

.field private static final STREAMING:I = 0x4

.field private static final STREAM_INIT:I = 0x0

.field public static final TYPE_DEFLATE:I = 0x0

.field public static final TYPE_GZIP:I = 0x1


# instance fields
.field private BTYPE:I

.field HM:[Lcom/xxx/yyy/ZipIntMultShortHashMap;

.field private crc32:I

.field private crc32Table:[I

.field private distCount:[I

.field distHuffCode:[I

.field distHuffCodeLength:[B

.field huffmanCode:[I

.field huffmanCodeLength:[B

.field private inEnd:I

.field private inStart:I

.field private inputBuffer:[B

.field private isize:I

.field private lastBlock:Z

.field private litCount:[I

.field private lz77active:Z

.field private outProcessed:I

.field private outStream:Ljava/io/OutputStream;

.field private outputWindow:[B

.field private plainDataWindow:[B

.field private plainPointer:I

.field private smallCodeBuffer:[I

.field private status:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IIII)V
    .locals 7
    .parameter "outputStream"
    .parameter "size"
    .parameter "compressionType"
    .parameter "plainWindowSize"
    .parameter "huffmanWindowSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0x8000

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 105
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/xxx/yyy/ZipIntMultShortHashMap;

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->HM:[Lcom/xxx/yyy/ZipIntMultShortHashMap;

    .line 78
    const/16 v1, 0x100

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32Table:[I

    .line 106
    iput-object p1, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    .line 108
    add-int/lit16 v1, p2, 0x12c

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    .line 109
    const/16 v1, 0x11e

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->litCount:[I

    .line 110
    const/16 v1, 0x1e

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->distCount:[I

    .line 111
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->smallCodeBuffer:[I

    .line 114
    if-le p4, v6, :cond_0

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "plainWindowSize > 32768"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    const/16 v1, 0x64

    if-lt p4, v1, :cond_1

    .line 118
    div-int/lit8 v1, p4, 0x4

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    .line 119
    iput-boolean v4, p0, Lcom/xxx/yyy/GZipOutputStream;->lz77active:Z

    .line 126
    :goto_0
    if-le p5, v6, :cond_2

    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "plainWindowSize > 32768"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    .line 122
    iput-boolean v2, p0, Lcom/xxx/yyy/GZipOutputStream;->lz77active:Z

    goto :goto_0

    .line 129
    :cond_2
    const/16 v1, 0x400

    if-ge p5, v1, :cond_3

    if-lez p5, :cond_3

    .line 130
    const/16 p5, 0x400

    .line 132
    :cond_3
    new-array v1, p5, [B

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    .line 133
    if-nez p5, :cond_5

    .line 134
    iput-boolean v4, p0, Lcom/xxx/yyy/GZipOutputStream;->lastBlock:Z

    .line 136
    iput v4, p0, Lcom/xxx/yyy/GZipOutputStream;->BTYPE:I

    .line 137
    invoke-direct {p0}, Lcom/xxx/yyy/GZipOutputStream;->newBlock()V

    .line 138
    iput v5, p0, Lcom/xxx/yyy/GZipOutputStream;->status:I

    .line 144
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-lt v0, v5, :cond_6

    .line 149
    if-ne p3, v4, :cond_4

    .line 154
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 155
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 156
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 157
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    const/4 v2, 0x6

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 158
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 161
    :cond_4
    return-void

    .line 140
    .end local v0           #i:I
    :cond_5
    iput v3, p0, Lcom/xxx/yyy/GZipOutputStream;->BTYPE:I

    .line 141
    iput v2, p0, Lcom/xxx/yyy/GZipOutputStream;->status:I

    goto :goto_1

    .line 145
    .restart local v0       #i:I
    :cond_6
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->HM:[Lcom/xxx/yyy/ZipIntMultShortHashMap;

    new-instance v2, Lcom/xxx/yyy/ZipIntMultShortHashMap;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Lcom/xxx/yyy/ZipIntMultShortHashMap;-><init>(I)V

    aput-object v2, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private LZ77(Z)V
    .locals 13
    .parameter "finish"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    iget v7, p0, Lcom/xxx/yyy/GZipOutputStream;->inStart:I

    if-eqz v7, :cond_0

    .line 437
    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    iget v8, p0, Lcom/xxx/yyy/GZipOutputStream;->inStart:I

    iget-object v9, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    const/4 v10, 0x0

    iget v11, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    iget v12, p0, Lcom/xxx/yyy/GZipOutputStream;->inStart:I

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    iget v7, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    iget v8, p0, Lcom/xxx/yyy/GZipOutputStream;->inStart:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    .line 439
    const/4 v7, 0x0

    iput v7, p0, Lcom/xxx/yyy/GZipOutputStream;->inStart:I

    .line 443
    :cond_0
    if-eqz p1, :cond_1

    .line 444
    iget v6, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    .line 450
    .local v6, upTo:I
    :goto_0
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 451
    .local v5, pointer:[I
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 457
    .local v3, lastpointer:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v6, :cond_2

    .line 528
    iput v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inStart:I

    .line 529
    return-void

    .line 446
    .end local v1           #i:I
    .end local v3           #lastpointer:[I
    .end local v5           #pointer:[I
    .end local v6           #upTo:I
    :cond_1
    iget v7, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    const/16 v8, 0x12c

    sub-int v6, v7, v8

    .restart local v6       #upTo:I
    goto :goto_0

    .line 459
    .restart local v1       #i:I
    .restart local v3       #lastpointer:[I
    .restart local v5       #pointer:[I
    :cond_2
    const/4 v4, 0x1

    .line 460
    .local v4, length:I
    const/4 v0, 0x0

    .line 465
    .local v0, distance:I
    iget-boolean v7, p0, Lcom/xxx/yyy/GZipOutputStream;->lz77active:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    sub-int v7, v6, v7

    if-ge v1, v7, :cond_3

    invoke-direct {p0, v5, v1}, Lcom/xxx/yyy/GZipOutputStream;->search4LZ77([II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 467
    const/4 v7, 0x1

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    if-le v7, v8, :cond_7

    .line 469
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, v3, v7

    .line 470
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, v3, v7

    .line 479
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    sub-int v7, v6, v1

    if-ge v7, v4, :cond_4

    .line 480
    sub-int v4, v6, v1

    .line 484
    :cond_4
    const/4 v7, 0x2

    if-le v4, v7, :cond_8

    .line 485
    invoke-direct {p0, v0, v4}, Lcom/xxx/yyy/GZipOutputStream;->encodePointer(II)V

    .line 492
    :goto_3
    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    array-length v7, v7

    if-eqz v7, :cond_5

    .line 494
    iget v7, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    .line 496
    iget v7, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v7, v7, 0x8

    iget-object v8, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    array-length v8, v8

    if-le v7, v8, :cond_5

    .line 498
    invoke-direct {p0}, Lcom/xxx/yyy/GZipOutputStream;->compileOutput()V

    .line 504
    :cond_5
    iget-boolean v7, p0, Lcom/xxx/yyy/GZipOutputStream;->lz77active:Z

    if-eqz v7, :cond_6

    .line 505
    const/4 v2, 0x0

    .local v2, k:I
    :goto_4
    if-lt v2, v4, :cond_9

    .line 524
    .end local v2           #k:I
    :cond_6
    add-int/2addr v1, v4

    goto :goto_1

    .line 472
    :cond_7
    const/4 v7, 0x0

    aget v0, v5, v7

    .line 473
    const/4 v7, 0x1

    aget v4, v5, v7

    goto :goto_2

    .line 487
    :cond_8
    invoke-direct {p0, v1}, Lcom/xxx/yyy/GZipOutputStream;->encodeChar(I)V

    goto :goto_3

    .line 506
    .restart local v2       #k:I
    :cond_9
    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    iget v8, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    iget-object v9, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    add-int v10, v1, v2

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 509
    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->HM:[Lcom/xxx/yyy/ZipIntMultShortHashMap;

    iget v8, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    iget-object v9, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    array-length v9, v9

    div-int/lit8 v9, v9, 0x4

    div-int/2addr v8, v9

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    add-int v9, v1, v2

    aget-byte v8, v8, v9

    add-int/lit16 v8, v8, 0x80

    shl-int/lit8 v8, v8, 0x10

    iget-object v9, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    add-int v10, v1, v2

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    add-int/lit16 v9, v9, 0x80

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    iget-object v9, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    add-int v10, v1, v2

    add-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    add-int/lit16 v9, v9, 0x80

    or-int/2addr v8, v9

    iget v9, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    int-to-short v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/xxx/yyy/ZipIntMultShortHashMap;->put(IS)Z

    .line 512
    iget v7, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    iget-object v8, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    array-length v8, v8

    div-int/lit8 v8, v8, 0x4

    rem-int/2addr v7, v8

    if-nez v7, :cond_b

    .line 514
    iget v7, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    iget-object v8, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    array-length v8, v8

    if-ne v7, v8, :cond_a

    .line 515
    const/4 v7, 0x0

    iput v7, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    .line 518
    :cond_a
    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->HM:[Lcom/xxx/yyy/ZipIntMultShortHashMap;

    iget v8, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    iget-object v9, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    array-length v9, v9

    div-int/lit8 v9, v9, 0x4

    div-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/xxx/yyy/ZipIntMultShortHashMap;->clear()V

    .line 505
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private compileOutput()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xff

    .line 605
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "  compile Output; new Block"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0}, Lcom/xxx/yyy/GZipOutputStream;->newBlock()V

    .line 613
    const/4 v5, 0x0

    .line 614
    .local v5, val:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    if-lt v2, v6, :cond_0

    .line 662
    const/4 v6, 0x0

    iput v6, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    .line 663
    return-void

    .line 616
    :cond_0
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    aget-byte v5, v6, v2

    .line 617
    if-gez v5, :cond_1

    .line 618
    add-int/lit16 v5, v5, 0x100

    .line 620
    :cond_1
    if-eq v5, v9, :cond_3

    .line 621
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    aget v6, v6, v5

    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    aget-byte v7, v7, v5

    invoke-direct {p0, v6, v7}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 614
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    :cond_3
    if-ne v5, v9, :cond_2

    .line 624
    add-int/lit8 v2, v2, 0x1

    .line 625
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    aget-byte v6, v6, v2

    if-nez v6, :cond_4

    .line 627
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    aget-byte v7, v7, v9

    invoke-direct {p0, v6, v7}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    goto :goto_1

    .line 629
    :cond_4
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    aget-byte v6, v6, v2

    if-lez v6, :cond_5

    .line 633
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    aget-byte v6, v6, v2

    add-int/lit16 v4, v6, 0xff

    .line 634
    .local v4, litlen:I
    add-int/lit8 v2, v2, 0x1

    .line 635
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    aget-byte v3, v6, v2

    .line 636
    .local v3, litextra:I
    add-int/lit8 v2, v2, 0x1

    .line 639
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    aget-byte v0, v6, v2

    .line 640
    .local v0, di:I
    add-int/lit8 v2, v2, 0x1

    .line 641
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    aget-byte v6, v6, v2

    add-int/lit16 v6, v6, 0x100

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v7, v7, v8

    add-int/lit16 v7, v7, 0x100

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    add-int/lit8 v8, v2, 0x2

    aget-byte v7, v7, v8

    add-int/lit16 v7, v7, 0x100

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int v1, v6, v7

    .line 642
    .local v1, distExtra:I
    add-int/lit8 v2, v2, 0x3

    .line 646
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    aget v6, v6, v4

    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    aget-byte v7, v7, v4

    invoke-direct {p0, v6, v7}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 647
    sget-object v6, Lcom/xxx/yyy/ZipHelper;->LENGTH_CODE:[I

    const/16 v7, 0x101

    sub-int v7, v4, v7

    mul-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    int-to-byte v6, v6

    invoke-direct {p0, v3, v6}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 650
    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCode:[I

    aget v6, v6, v0

    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCodeLength:[B

    aget-byte v7, v7, v0

    invoke-direct {p0, v6, v7}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 651
    sget-object v6, Lcom/xxx/yyy/ZipHelper;->DISTANCE_CODE:[I

    mul-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    int-to-byte v6, v6

    invoke-direct {p0, v1, v6}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 653
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 655
    .end local v0           #di:I
    .end local v1           #distExtra:I
    .end local v3           #litextra:I
    .end local v4           #litlen:I
    :cond_5
    new-instance v6, Ljava/io/IOException;

    const-string v7, "illegal code decoded"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private compressTree([B[B)V
    .locals 19
    .parameter "huffmanCodeLength"
    .parameter "distHuffCodeLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    const/16 v5, 0x11d

    .line 712
    .local v5, HLIT:I
    const/16 v4, 0x1d

    .line 714
    .local v4, HDIST:I
    :goto_0
    aget-byte v16, p1, v5

    if-nez v16, :cond_0

    const/16 v16, 0x1d

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    .line 715
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 718
    :goto_1
    aget-byte v16, p2, v4

    if-nez v16, :cond_1

    if-gtz v4, :cond_4

    .line 719
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 722
    add-int v16, v5, v4

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v9, v0

    .line 723
    .local v9, len:[B
    const/4 v7, 0x0

    .line 724
    .local v7, j:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-lt v6, v5, :cond_5

    .line 729
    const/4 v6, 0x0

    :goto_3
    if-lt v6, v4, :cond_6

    .line 735
    const/16 v16, 0x13

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v13, v0

    const/16 v16, 0x0

    const/16 v17, 0x10

    aput v17, v13, v16

    const/16 v16, 0x1

    const/16 v17, 0x11

    aput v17, v13, v16

    const/16 v16, 0x2

    const/16 v17, 0x12

    aput v17, v13, v16

    const/16 v16, 0x4

    const/16 v17, 0x8

    aput v17, v13, v16

    const/16 v16, 0x5

    const/16 v17, 0x7

    aput v17, v13, v16

    const/16 v16, 0x6

    const/16 v17, 0x9

    aput v17, v13, v16

    const/16 v16, 0x7

    const/16 v17, 0x6

    aput v17, v13, v16

    const/16 v16, 0x8

    const/16 v17, 0xa

    aput v17, v13, v16

    const/16 v16, 0x9

    const/16 v17, 0x5

    aput v17, v13, v16

    const/16 v16, 0xa

    const/16 v17, 0xb

    aput v17, v13, v16

    const/16 v16, 0xb

    const/16 v17, 0x4

    aput v17, v13, v16

    const/16 v16, 0xc

    const/16 v17, 0xc

    aput v17, v13, v16

    const/16 v16, 0xd

    const/16 v17, 0x3

    aput v17, v13, v16

    const/16 v16, 0xe

    const/16 v17, 0xd

    aput v17, v13, v16

    const/16 v16, 0xf

    const/16 v17, 0x2

    aput v17, v13, v16

    const/16 v16, 0x10

    const/16 v17, 0xe

    aput v17, v13, v16

    const/16 v16, 0x11

    const/16 v17, 0x1

    aput v17, v13, v16

    const/16 v16, 0x12

    const/16 v17, 0xf

    aput v17, v13, v16

    .line 738
    .local v13, miniHuffData:[I
    add-int v16, v5, v4

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v15, v0

    .line 739
    .local v15, outLitLenDist:[B
    const/4 v14, 0x0

    .line 740
    .local v14, outCount:I
    const/16 v16, 0x13

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v10, v0

    .line 742
    .local v10, miniCodeCount:[I
    const/4 v6, 0x0

    :goto_4
    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move v0, v6

    move/from16 v1, v16

    if-lt v0, v1, :cond_7

    .line 796
    const/16 v16, 0x13

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v12, v0

    .line 797
    .local v12, miniHuffCodeLength:[B
    const/16 v16, 0x13

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v11, v0

    .line 799
    .local v11, miniHuffCode:[I
    const/4 v6, 0x0

    .line 801
    const/16 v16, 0x7

    move-object v0, v10

    move-object v1, v12

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/xxx/yyy/ZipHelper;->genTreeLength([I[BI)V

    .line 803
    invoke-static {v11, v12}, Lcom/xxx/yyy/ZipHelper;->genHuffTree([I[B)V

    .line 804
    invoke-static {v11, v12}, Lcom/xxx/yyy/ZipHelper;->revHuffTree([I[B)V

    .line 807
    const/16 v16, 0x101

    sub-int v16, v5, v16

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 808
    const/16 v16, 0x1

    sub-int v16, v4, v16

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 811
    const/16 v3, 0x12

    .line 812
    .local v3, HCLEN:I
    :goto_5
    aget v16, v13, v3

    aget-byte v16, v12, v16

    if-nez v16, :cond_2

    if-gtz v3, :cond_f

    .line 813
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 815
    const/16 v16, 0x4

    sub-int v16, v3, v16

    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 818
    const/4 v6, 0x0

    :goto_6
    if-lt v6, v3, :cond_10

    .line 824
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " HLIT: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 825
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " HDIST: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 826
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " HCLEN: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 830
    const/4 v6, 0x0

    :goto_7
    if-lt v6, v14, :cond_11

    .line 857
    return-void

    .line 714
    .end local v3           #HCLEN:I
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #len:[B
    .end local v10           #miniCodeCount:[I
    .end local v11           #miniHuffCode:[I
    .end local v12           #miniHuffCodeLength:[B
    .end local v13           #miniHuffData:[I
    .end local v14           #outCount:I
    .end local v15           #outLitLenDist:[B
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 718
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    .line 725
    .restart local v6       #i:I
    .restart local v7       #j:I
    .restart local v9       #len:[B
    :cond_5
    aget-byte v16, p1, v6

    aput-byte v16, v9, v7

    .line 727
    add-int/lit8 v7, v7, 0x1

    .line 724
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 730
    :cond_6
    aget-byte v16, p2, v6

    aput-byte v16, v9, v7

    .line 732
    add-int/lit8 v7, v7, 0x1

    .line 729
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 744
    .restart local v10       #miniCodeCount:[I
    .restart local v13       #miniHuffData:[I
    .restart local v14       #outCount:I
    .restart local v15       #outLitLenDist:[B
    :cond_7
    add-int/lit8 v16, v6, 0x3

    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    aget-byte v16, v9, v6

    add-int/lit8 v17, v6, 0x1

    aget-byte v17, v9, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    aget-byte v16, v9, v6

    add-int/lit8 v17, v6, 0x2

    aget-byte v17, v9, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    aget-byte v16, v9, v6

    add-int/lit8 v17, v6, 0x3

    aget-byte v17, v9, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 745
    aget-byte v16, v9, v6

    if-nez v16, :cond_b

    .line 746
    const/16 v16, 0x0

    aput-byte v16, v15, v14

    .line 748
    const/4 v8, 0x4

    .line 750
    .local v8, k:S
    :goto_8
    add-int v16, v6, v8

    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    aget-byte v16, v9, v6

    add-int v17, v6, v8

    aget-byte v17, v9, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    const/16 v16, 0x8b

    move v0, v8

    move/from16 v1, v16

    if-lt v0, v1, :cond_9

    .line 753
    :cond_8
    const/16 v16, 0xc

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 755
    add-int/lit8 v16, v14, 0x1

    const/16 v17, 0x11

    aput-byte v17, v15, v16

    .line 756
    add-int/lit8 v16, v14, 0x2

    const/16 v17, 0x3

    sub-int v17, v8, v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v16

    .line 764
    :goto_9
    const/16 v16, 0x1

    sub-int v16, v8, v16

    add-int v6, v6, v16

    .line 779
    :goto_a
    aget-byte v16, v15, v14

    aget v17, v10, v16

    add-int/lit8 v17, v17, 0x1

    aput v17, v10, v16

    .line 781
    add-int/lit8 v16, v14, 0x1

    aget-byte v16, v15, v16

    aget v17, v10, v16

    add-int/lit8 v17, v17, 0x1

    aput v17, v10, v16

    .line 783
    add-int/lit8 v14, v14, 0x2

    .line 791
    .end local v8           #k:S
    :goto_b
    add-int/lit8 v14, v14, 0x1

    .line 742
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 750
    .restart local v8       #k:S
    :cond_9
    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move v8, v0

    goto :goto_8

    .line 760
    :cond_a
    add-int/lit8 v16, v14, 0x1

    const/16 v17, 0x12

    aput-byte v17, v15, v16

    .line 761
    add-int/lit8 v16, v14, 0x2

    const/16 v17, 0xb

    sub-int v17, v8, v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v16

    goto :goto_9

    .line 768
    .end local v8           #k:S
    :cond_b
    aget-byte v16, v9, v6

    aput-byte v16, v15, v14

    .line 769
    add-int/lit8 v16, v14, 0x1

    const/16 v17, 0x10

    aput-byte v17, v15, v16

    .line 773
    const/4 v8, 0x4

    .line 774
    .restart local v8       #k:S
    :goto_c
    add-int v16, v6, v8

    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    aget-byte v16, v9, v6

    add-int v17, v6, v8

    aget-byte v17, v9, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    const/16 v16, 0x7

    move v0, v8

    move/from16 v1, v16

    if-lt v0, v1, :cond_d

    .line 775
    :cond_c
    add-int/lit8 v16, v14, 0x2

    const/16 v17, 0x4

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v16

    .line 776
    const/16 v16, 0x1

    sub-int v16, v8, v16

    add-int v6, v6, v16

    goto :goto_a

    .line 774
    :cond_d
    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move v8, v0

    goto :goto_c

    .line 787
    .end local v8           #k:S
    :cond_e
    aget-byte v16, v9, v6

    aput-byte v16, v15, v14

    .line 788
    aget-byte v16, v15, v14

    aget v17, v10, v16

    add-int/lit8 v17, v17, 0x1

    aput v17, v10, v16

    goto :goto_b

    .line 812
    .restart local v3       #HCLEN:I
    .restart local v11       #miniHuffCode:[I
    .restart local v12       #miniHuffCodeLength:[B
    :cond_f
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_5

    .line 820
    :cond_10
    aget v16, v13, v6

    aget-byte v16, v12, v16

    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 818
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 833
    :cond_11
    aget-byte v16, v15, v6

    aget v16, v11, v16

    aget-byte v17, v15, v6

    aget-byte v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 836
    aget-byte v16, v15, v6

    const/16 v17, 0xf

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_12

    .line 837
    aget-byte v16, v15, v6

    packed-switch v16, :pswitch_data_0

    .line 847
    add-int/lit8 v16, v6, 0x1

    aget-byte v16, v15, v16

    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 848
    add-int/lit8 v6, v6, 0x1

    .line 830
    :cond_12
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 839
    :pswitch_0
    add-int/lit8 v16, v6, 0x1

    aget-byte v16, v15, v16

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 840
    add-int/lit8 v6, v6, 0x1

    .line 841
    goto :goto_d

    .line 843
    :pswitch_1
    add-int/lit8 v16, v6, 0x1

    aget-byte v16, v15, v16

    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 844
    add-int/lit8 v6, v6, 0x1

    .line 845
    goto :goto_d

    .line 837
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private encodeChar(I)V
    .locals 4
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    aget-byte v1, v1, p1

    add-int/lit16 v1, v1, 0x100

    and-int/lit16 v0, v1, 0xff

    .line 409
    .local v0, val:I
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->litCount:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 414
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    iget v2, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 415
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 417
    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    .line 418
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    iget v2, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    goto :goto_0
.end method

.method private encodePointer(II)V
    .locals 7
    .parameter "distance"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v4, Lcom/xxx/yyy/ZipHelper;->LENGTH_CODE:[I

    invoke-static {v4, p2}, Lcom/xxx/yyy/ZipHelper;->encodeCode([II)I

    move-result v0

    .line 361
    .local v0, di:I
    add-int/lit16 v3, v0, 0x101

    .line 362
    .local v3, litlen:I
    sget-object v4, Lcom/xxx/yyy/ZipHelper;->LENGTH_CODE:[I

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    sub-int v4, p2, v4

    int-to-byte v2, v4

    .line 365
    .local v2, litextra:B
    sget-object v4, Lcom/xxx/yyy/ZipHelper;->DISTANCE_CODE:[I

    invoke-static {v4, p1}, Lcom/xxx/yyy/ZipHelper;->encodeCode([II)I

    move-result v0

    .line 366
    sget-object v4, Lcom/xxx/yyy/ZipHelper;->DISTANCE_CODE:[I

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    sub-int v1, p1, v4

    .line 369
    .local v1, distExtra:I
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 371
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    iget v5, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    const/4 v6, -0x1

    aput-byte v6, v4, v5

    .line 372
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    iget v5, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xff

    sub-int v6, v3, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 374
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    iget v5, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v5, v5, 0x2

    aput-byte v2, v4, v5

    .line 375
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    iget v5, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v5, v5, 0x3

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 376
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    iget v5, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v5, v5, 0x4

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 377
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    iget v5, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v5, v5, 0x5

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 378
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    iget v5, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v5, v5, 0x6

    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 380
    iget v4, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    .line 383
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->litCount:[I

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    .line 384
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->distCount:[I

    aget v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v0

    .line 398
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    aget-byte v5, v5, v3

    invoke-direct {p0, v4, v5}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 390
    sget-object v4, Lcom/xxx/yyy/ZipHelper;->LENGTH_CODE:[I

    const/16 v5, 0x101

    sub-int v5, v3, v5

    mul-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-byte v4, v4

    invoke-direct {p0, v2, v4}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 393
    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCode:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCodeLength:[B

    aget-byte v5, v5, v0

    invoke-direct {p0, v4, v5}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 394
    sget-object v4, Lcom/xxx/yyy/ZipHelper;->DISTANCE_CODE:[I

    mul-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    int-to-byte v4, v4

    invoke-direct {p0, v1, v4}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    goto :goto_0
.end method

.method private newBlock()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x100

    const/16 v6, 0x1e

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 538
    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->status:I

    if-nez v1, :cond_1

    .line 539
    const/4 v1, 0x4

    iput v1, p0, Lcom/xxx/yyy/GZipOutputStream;->status:I

    .line 544
    :goto_0
    iget-boolean v1, p0, Lcom/xxx/yyy/GZipOutputStream;->lastBlock:Z

    if-eqz v1, :cond_2

    .line 545
    invoke-direct {p0, v3, v3}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 547
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "final block"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 552
    :goto_1
    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->BTYPE:I

    invoke-direct {p0, v1, v5}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 554
    const/16 v1, 0x11e

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    .line 555
    const/16 v1, 0x11e

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    .line 556
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCode:[I

    .line 557
    new-array v1, v6, [B

    iput-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCodeLength:[B

    .line 559
    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->BTYPE:I

    if-ne v1, v3, :cond_3

    .line 560
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    iget-object v3, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCode:[I

    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCodeLength:[B

    invoke-static {v1, v2, v3, v4}, Lcom/xxx/yyy/ZipHelper;->genFixedTree([I[B[I[B)V

    .line 595
    :cond_0
    return-void

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    aget-byte v2, v2, v7

    invoke-direct {p0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    goto :goto_0

    .line 549
    :cond_2
    invoke-direct {p0, v4, v3}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    goto :goto_1

    .line 561
    :cond_3
    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->BTYPE:I

    if-ne v1, v5, :cond_0

    .line 565
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-lt v0, v5, :cond_4

    .line 572
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->litCount:[I

    aput v3, v1, v7

    .line 573
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->litCount:[I

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    const/16 v3, 0xf

    invoke-static {v1, v2, v3}, Lcom/xxx/yyy/ZipHelper;->genTreeLength([I[BI)V

    .line 574
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    invoke-static {v1, v2}, Lcom/xxx/yyy/ZipHelper;->genHuffTree([I[B)V

    .line 575
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    invoke-static {v1, v2}, Lcom/xxx/yyy/ZipHelper;->revHuffTree([I[B)V

    .line 578
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->distCount:[I

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCodeLength:[B

    const/16 v3, 0xf

    invoke-static {v1, v2, v3}, Lcom/xxx/yyy/ZipHelper;->genTreeLength([I[BI)V

    .line 579
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCode:[I

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCodeLength:[B

    invoke-static {v1, v2}, Lcom/xxx/yyy/ZipHelper;->genHuffTree([I[B)V

    .line 580
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCode:[I

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCodeLength:[B

    invoke-static {v1, v2}, Lcom/xxx/yyy/ZipHelper;->revHuffTree([I[B)V

    .line 583
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->distHuffCodeLength:[B

    invoke-direct {p0, v1, v2}, Lcom/xxx/yyy/GZipOutputStream;->compressTree([B[B)V

    .line 586
    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x11e

    if-lt v0, v1, :cond_6

    .line 589
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v6, :cond_0

    .line 590
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->distCount:[I

    aput v4, v1, v0

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 566
    :cond_4
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->distCount:[I

    aget v1, v1, v0

    if-nez v1, :cond_5

    .line 567
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->distCount:[I

    aput v3, v1, v0

    .line 565
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 587
    :cond_6
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->litCount:[I

    aput v4, v1, v0

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private pushSmallBuffer(IB)V
    .locals 6
    .parameter "val"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 869
    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->smallCodeBuffer:[I

    aget v0, v2, v5

    .line 870
    .local v0, smallBuffer0:I
    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->smallCodeBuffer:[I

    aget v1, v2, v4

    .line 873
    .local v1, smallBuffer1:I
    shl-int v2, v4, p2

    sub-int/2addr v2, v4

    shl-int/2addr v2, v1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 874
    shl-int v2, p1, v1

    or-int/2addr v0, v2

    .line 875
    add-int/2addr v1, p2

    .line 878
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 884
    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->smallCodeBuffer:[I

    aput v0, v2, v5

    .line 885
    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->smallCodeBuffer:[I

    aput v1, v2, v4

    .line 886
    return-void

    .line 879
    :cond_0
    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    and-int/lit16 v3, v0, 0xff

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 880
    ushr-int/lit8 v0, v0, 0x8

    .line 881
    add-int/lit8 v1, v1, -0x8

    goto :goto_0
.end method

.method private search4LZ77([II)Z
    .locals 9
    .parameter "bestPointer"
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 262
    const/4 v0, 0x0

    .line 264
    .local v0, found:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 265
    .local v2, pointer:[I
    aput v8, p1, v7

    .line 267
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    .line 285
    aget v3, p1, v7

    if-eqz v3, :cond_2

    move v3, v7

    :goto_1
    return v3

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 271
    iget-object v3, p0, Lcom/xxx/yyy/GZipOutputStream;->HM:[Lcom/xxx/yyy/ZipIntMultShortHashMap;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    aget-byte v4, v4, p2

    add-int/lit16 v4, v4, 0x80

    shl-int/lit8 v4, v4, 0x10

    iget-object v5, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    add-int/lit8 v6, p2, 0x1

    aget-byte v5, v5, v6

    add-int/lit16 v5, v5, 0x80

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    add-int/lit8 v6, p2, 0x2

    aget-byte v5, v5, v6

    add-int/lit16 v5, v5, 0x80

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/xxx/yyy/ZipIntMultShortHashMap;->get(I)Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_1

    iget-short v3, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->size:S

    if-eqz v3, :cond_1

    .line 274
    invoke-direct {p0, v0, v2, p2}, Lcom/xxx/yyy/GZipOutputStream;->searchHM4LZ77(Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;[II)V

    .line 276
    aget v3, v2, v7

    aget v4, p1, v7

    if-le v3, v4, :cond_1

    .line 277
    aget v3, v2, v8

    aput v3, p1, v8

    .line 278
    aget v3, v2, v7

    aput v3, p1, v7

    .line 267
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v8

    .line 285
    goto :goto_1
.end method

.method private searchHM4LZ77(Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;[II)V
    .locals 10
    .parameter "found"
    .parameter "pointer"
    .parameter "position"

    .prologue
    const/16 v9, 0x102

    const/4 v8, 0x1

    .line 301
    const/4 v0, 0x0

    .local v0, bestK:I
    const/4 v1, 0x0

    .line 303
    .local v1, bestLength:I
    iget-short v5, p1, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->size:S

    sub-int v3, v5, v8

    .local v3, k:I
    :goto_0
    if-gez v3, :cond_1

    .line 337
    :cond_0
    const/4 v5, 0x0

    iget v6, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    iget-object v7, p1, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    aget-short v7, v7, v0

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    array-length v7, v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    array-length v7, v7

    rem-int/2addr v6, v7

    aput v6, p2, v5

    .line 338
    aput v1, p2, v8

    .line 340
    return-void

    .line 305
    :cond_1
    const/4 v4, 0x3

    .line 307
    .local v4, length:I
    const v2, 0x186a0

    .line 310
    .local v2, comparePointer:I
    :goto_1
    if-ge v4, v9, :cond_2

    add-int v5, p3, v4

    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    array-length v6, v6

    if-lt v5, v6, :cond_4

    .line 327
    :cond_2
    if-le v4, v1, :cond_3

    .line 328
    move v0, v3

    .line 329
    move v1, v4

    .line 330
    if-eq v4, v9, :cond_0

    .line 303
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 311
    :cond_4
    iget-object v5, p1, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    aget-short v5, v5, v3

    iget v6, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    if-ge v5, v6, :cond_5

    .line 312
    iget-object v5, p1, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    aget-short v5, v5, v3

    iget v6, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    iget-object v7, p1, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    aget-short v7, v7, v3

    sub-int/2addr v6, v7

    rem-int v6, v4, v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    array-length v6, v6

    rem-int v2, v5, v6

    .line 318
    :goto_2
    iget-object v5, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    add-int v6, p3, v4

    aget-byte v5, v5, v6

    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    aget-byte v6, v6, v2

    if-ne v5, v6, :cond_2

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 314
    :cond_5
    iget-object v5, p1, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    aget-short v5, v5, v3

    iget v6, p0, Lcom/xxx/yyy/GZipOutputStream;->plainPointer:I

    iget-object v7, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    array-length v7, v7

    add-int/2addr v6, v7

    iget-object v7, p1, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    aget-short v7, v7, v3

    sub-int/2addr v6, v7

    rem-int v6, v4, v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/xxx/yyy/GZipOutputStream;->plainDataWindow:[B

    array-length v6, v6

    rem-int v2, v5, v6

    goto :goto_2
.end method

.method private writeFooter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x100

    const/4 v3, 0x1

    .line 672
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCode:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->huffmanCodeLength:[B

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 674
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " wrote final 256;"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->smallCodeBuffer:[I

    aget v0, v0, v3

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    .line 678
    const/4 v0, 0x0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->smallCodeBuffer:[I

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x7

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-direct {p0, v0, v1}, Lcom/xxx/yyy/GZipOutputStream;->pushSmallBuffer(IB)V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 683
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 684
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 685
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 687
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->isize:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 688
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->isize:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 689
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->isize:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 690
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->isize:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 693
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 694
    iget-object v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 697
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " output finished"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 698
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/xxx/yyy/GZipOutputStream;->flush()V

    .line 167
    iget v0, p0, Lcom/xxx/yyy/GZipOutputStream;->BTYPE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 172
    iget v0, p0, Lcom/xxx/yyy/GZipOutputStream;->outProcessed:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    iget v2, p0, Lcom/xxx/yyy/GZipOutputStream;->inStart:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/xxx/yyy/GZipOutputStream;->compileOutput()V

    .line 177
    :cond_0
    invoke-direct {p0, v4}, Lcom/xxx/yyy/GZipOutputStream;->LZ77(Z)V

    .line 178
    iput-boolean v4, p0, Lcom/xxx/yyy/GZipOutputStream;->lastBlock:Z

    .line 179
    invoke-direct {p0}, Lcom/xxx/yyy/GZipOutputStream;->compileOutput()V

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/xxx/yyy/GZipOutputStream;->writeFooter()V

    .line 188
    iput-object v3, p0, Lcom/xxx/yyy/GZipOutputStream;->outStream:Ljava/io/OutputStream;

    .line 190
    iput-object v3, p0, Lcom/xxx/yyy/GZipOutputStream;->outputWindow:[B

    .line 191
    iput-object v3, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    .line 192
    iput-object v3, p0, Lcom/xxx/yyy/GZipOutputStream;->litCount:[I

    .line 194
    return-void

    .line 183
    :cond_1
    invoke-direct {p0, v4}, Lcom/xxx/yyy/GZipOutputStream;->LZ77(Z)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xxx/yyy/GZipOutputStream;->LZ77(Z)V

    .line 203
    return-void
.end method

.method public write(I)V
    .locals 6
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    if-ne v1, v2, :cond_0

    .line 211
    invoke-direct {p0, v4}, Lcom/xxx/yyy/GZipOutputStream;->LZ77(Z)V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    iget v2, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 218
    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->isize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xxx/yyy/GZipOutputStream;->isize:I

    .line 219
    new-array v0, v5, [B

    .line 220
    .local v0, bb:[B
    int-to-byte v1, p1

    aput-byte v1, v0, v4

    .line 221
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32Table:[I

    iget v2, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32:I

    invoke-static {v1, v2, v0, v4, v5}, Lcom/xxx/yyy/ZipHelper;->crc32([II[BII)I

    move-result v1

    iput v1, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32:I

    .line 223
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xxx/yyy/GZipOutputStream;->write([BII)V

    .line 226
    return-void
.end method

.method public write([BII)V
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 231
    .local v0, processed:I
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32Table:[I

    iget v2, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32:I

    invoke-static {v1, v2, p1, p2, p3}, Lcom/xxx/yyy/ZipHelper;->crc32([II[BII)I

    move-result v1

    iput v1, p0, Lcom/xxx/yyy/GZipOutputStream;->crc32:I

    .line 232
    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->isize:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/xxx/yyy/GZipOutputStream;->isize:I

    .line 234
    :goto_0
    if-ne v0, p3, :cond_0

    .line 251
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    sub-int/2addr v1, v2

    sub-int v2, p3, v0

    if-lt v1, v2, :cond_1

    .line 239
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    iget v3, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    sub-int v4, p3, v0

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    sub-int v2, p3, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    .line 241
    move v0, p3

    .line 249
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xxx/yyy/GZipOutputStream;->LZ77(Z)V

    goto :goto_0

    .line 243
    :cond_1
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    iget v3, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    iget-object v4, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 245
    iget-object v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inputBuffer:[B

    array-length v1, v1

    iput v1, p0, Lcom/xxx/yyy/GZipOutputStream;->inEnd:I

    goto :goto_1
.end method
