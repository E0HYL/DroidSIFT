.class public Lcom/ophone/MiniPlayer/Loadimageurl;
.super Ljava/lang/Object;
.source "Loadimageurl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyPlayer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "strUrl"
    .parameter "path"

    .prologue
    .line 109
    const/4 v8, 0x0

    .line 111
    .local v8, url:Ljava/net/URL;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v8           #url:Ljava/net/URL;
    .local v9, url:Ljava/net/URL;
    const-string v10, "MyPlayer"

    const-string v11, "download"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v5, 0x0

    .line 119
    .local v5, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 125
    const/4 v6, 0x0

    .line 127
    .local v6, os:Ljava/io/OutputStream;
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 128
    .end local v6           #os:Ljava/io/OutputStream;
    .local v7, os:Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 129
    .local v1, bytesRead:I
    const/16 v10, 0x2000

    :try_start_3
    new-array v0, v10, [B

    .line 130
    .local v0, buffer:[B
    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0x2000

    invoke-virtual {v5, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v1

    const/4 v10, -0x1

    if-ne v1, v10, :cond_0

    move-object v8, v9

    .line 140
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    .end local v9           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :goto_1
    return-void

    .line 112
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 113
    .local v4, e2:Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 120
    .end local v4           #e2:Ljava/net/MalformedURLException;
    .end local v8           #url:Ljava/net/URL;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v9       #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 121
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 122
    .end local v9           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    goto :goto_1

    .line 131
    .end local v3           #e1:Ljava/io/IOException;
    .end local v8           #url:Ljava/net/URL;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v7       #os:Ljava/io/OutputStream;
    .restart local v9       #url:Ljava/net/URL;
    :cond_0
    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v7, v0, v10, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 133
    .end local v0           #buffer:[B
    :catch_2
    move-exception v10

    move-object v2, v10

    move-object v6, v7

    .line 134
    .end local v1           #bytesRead:I
    .end local v7           #os:Ljava/io/OutputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v6       #os:Ljava/io/OutputStream;
    :goto_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v8, v9

    .line 135
    .end local v9           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    goto :goto_1

    .line 136
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v8           #url:Ljava/net/URL;
    .restart local v9       #url:Ljava/net/URL;
    :catch_3
    move-exception v10

    move-object v2, v10

    .line 137
    .local v2, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 138
    .end local v9           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    goto :goto_1

    .line 136
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v8           #url:Ljava/net/URL;
    .restart local v1       #bytesRead:I
    .restart local v7       #os:Ljava/io/OutputStream;
    .restart local v9       #url:Ljava/net/URL;
    :catch_4
    move-exception v10

    move-object v2, v10

    move-object v6, v7

    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    goto :goto_3

    .line 133
    .end local v1           #bytesRead:I
    :catch_5
    move-exception v10

    move-object v2, v10

    goto :goto_2
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "bitmap"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    const-string v6, "MyPlayer"

    .line 75
    move-object v0, p0

    .line 77
    .local v0, BitmapOrg:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 78
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 79
    .local v4, height:I
    move v8, p1

    .line 80
    .local v8, newWidth:I
    move v7, p2

    .line 82
    .local v7, newHeight:I
    const-string v2, "MyPlayer"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v2, "MyPlayer"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, "MyPlayer"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v2, "MyPlayer"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    int-to-float v2, v8

    int-to-float v6, v3

    div-float v11, v2, v6

    .line 90
    .local v11, scaleWidth:F
    int-to-float v2, v7

    int-to-float v6, v4

    div-float v10, v2, v6

    .line 93
    .local v10, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 95
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 101
    const/4 v6, 0x1

    move v2, v1

    .line 100
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 105
    .local v9, resizedBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "url"

    .prologue
    .line 25
    const/4 v4, 0x0

    .line 26
    .local v4, myFileUrl:Ljava/net/URL;
    const/4 v0, 0x0

    .line 28
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #myFileUrl:Ljava/net/URL;
    .local v5, myFileUrl:Ljava/net/URL;
    move-object v4, v5

    .line 35
    .end local v5           #myFileUrl:Ljava/net/URL;
    .restart local v4       #myFileUrl:Ljava/net/URL;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 34
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 36
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 37
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 38
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 39
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #is:Ljava/io/InputStream;
    :goto_1
    return-object v0

    .line 29
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 30
    .local v2, e:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 43
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public returnBitmapfromfile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "url"

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 55
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v2, v3

    .line 64
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 69
    :goto_1
    return-object v0

    .line 58
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 60
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 67
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_2
.end method
