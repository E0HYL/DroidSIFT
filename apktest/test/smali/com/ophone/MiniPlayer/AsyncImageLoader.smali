.class public Lcom/ophone/MiniPlayer/AsyncImageLoader;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/AsyncImageLoader$ImageCallback;
    }
.end annotation


# instance fields
.field private imageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/AsyncImageLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ophone/MiniPlayer/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "url"

    .prologue
    .line 48
    const/4 v4, 0x0

    .line 50
    .local v4, i:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    .local v5, m:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/io/InputStream;

    move-object v4, v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    .end local v5           #m:Ljava/net/URL;
    :goto_0
    const-string v6, "src"

    invoke-static {v4, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, d:Landroid/graphics/drawable/Drawable;
    return-object v1

    .line 52
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 53
    .local v3, e1:Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v3           #e1:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 55
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public loadDrawable(Ljava/lang/String;Lcom/ophone/MiniPlayer/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "imageUrl"
    .parameter "imageCallback"

    .prologue
    .line 22
    iget-object v3, p0, Lcom/ophone/MiniPlayer/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    iget-object v3, p0, Lcom/ophone/MiniPlayer/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 24
    .local v2, softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 25
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 43
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :goto_0
    return-object v3

    .line 29
    :cond_0
    new-instance v1, Lcom/ophone/MiniPlayer/AsyncImageLoader$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ophone/MiniPlayer/AsyncImageLoader$1;-><init>(Lcom/ophone/MiniPlayer/AsyncImageLoader;Lcom/ophone/MiniPlayer/AsyncImageLoader$ImageCallback;Ljava/lang/String;)V

    .line 34
    .local v1, handler:Landroid/os/Handler;
    new-instance v3, Lcom/ophone/MiniPlayer/AsyncImageLoader$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/ophone/MiniPlayer/AsyncImageLoader$2;-><init>(Lcom/ophone/MiniPlayer/AsyncImageLoader;Ljava/lang/String;Landroid/os/Handler;)V

    .line 42
    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/AsyncImageLoader$2;->start()V

    .line 43
    const/4 v3, 0x0

    goto :goto_0
.end method
