.class public Lcom/ophone/MiniPlayer/provider/SongManager;
.super Ljava/lang/Object;
.source "SongManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnlinePlayer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSongList(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 13
    .parameter "rString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v12, "connection closed:"

    const-string v11, "OnlinePlayer"

    .line 30
    const/4 v7, 0x0

    .line 32
    .local v7, songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 33
    .local v6, httpclient:Lorg/apache/http/client/HttpClient;
    const/4 v4, 0x0

    .line 36
    .local v4, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p0}, Lcom/ophone/MiniPlayer/provider/FeedUrl;->getMusicBoxFeed(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 38
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v5, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_1
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 40
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 41
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 43
    :try_start_2
    new-instance v2, Lcom/ophone/MiniPlayer/provider/BaiduXmlHandler;

    invoke-direct {v2}, Lcom/ophone/MiniPlayer/provider/BaiduXmlHandler;-><init>()V

    .line 44
    .local v2, handler:Lcom/ophone/MiniPlayer/provider/XmlHandler;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ophone/MiniPlayer/provider/XmlHandler;->analyseTheSonglist(Ljava/io/InputStream;)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v7

    .line 52
    .end local v2           #handler:Lcom/ophone/MiniPlayer/provider/XmlHandler;
    :goto_0
    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 62
    :cond_0
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 63
    if-eqz v5, :cond_1

    .line 64
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v5

    .line 67
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_2
    :goto_1
    return-object v7

    .line 45
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    .restart local v3       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 47
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .line 57
    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 62
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 63
    if-eqz v4, :cond_2

    .line 64
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 48
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    .restart local v3       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 50
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 58
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .line 60
    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v0, e:Ljava/io/IOException;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 62
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 63
    if-eqz v4, :cond_2

    .line 64
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 61
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 62
    :goto_4
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 63
    if-eqz v4, :cond_3

    .line 64
    const-string v9, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "connection closed:"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    throw v8

    .line 61
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_4

    .line 58
    :catch_4
    move-exception v8

    move-object v0, v8

    goto :goto_3

    .line 55
    :catch_5
    move-exception v8

    move-object v0, v8

    goto :goto_2
.end method

.method public static getSongListGoogle(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 14
    .parameter "rString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v13, "connection closed:"

    const-string v12, "OnlinePlayer"

    .line 70
    const/4 v8, 0x0

    .line 72
    .local v8, songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 73
    .local v7, httpclient:Lorg/apache/http/client/HttpClient;
    const/4 v5, 0x0

    .line 75
    .local v5, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_0
    const-string v9, "OnlinePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "httpUriRequest:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ophone/MiniPlayer/provider/FeedUrl;->getMusicBoxFeed(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p0}, Lcom/ophone/MiniPlayer/provider/FeedUrl;->getMusicBoxFeed(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 77
    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v6, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_1
    const-string v9, "OnlinePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "connection start:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ophone/MiniPlayer/provider/FeedUrl;->getMusicBoxFeed(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-interface {v7, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 79
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    const-string v9, "OnlinePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "connection established:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 81
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 83
    :try_start_2
    new-instance v3, Lcom/ophone/MiniPlayer/provider/GoogleXmlHandler;

    invoke-direct {v3}, Lcom/ophone/MiniPlayer/provider/GoogleXmlHandler;-><init>()V

    .line 84
    .local v3, handler:Lcom/ophone/MiniPlayer/provider/XmlHandler;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/ophone/MiniPlayer/provider/XmlHandler;->analyseTheSonglistGoogle(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v8

    .line 85
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    .line 94
    .end local v3           #handler:Lcom/ophone/MiniPlayer/provider/XmlHandler;
    :goto_0
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 104
    :cond_0
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 105
    if-eqz v6, :cond_1

    .line 106
    const-string v9, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "connection closed:"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v5, v6

    .line 109
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v6           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_2
    :goto_1
    return-object v8

    .line 87
    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v6       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 89
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 97
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v9

    move-object v1, v9

    move-object v5, v6

    .line 99
    .end local v6           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 105
    if-eqz v5, :cond_2

    .line 106
    const-string v9, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "connection closed:"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v6       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 92
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 100
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v9

    move-object v1, v9

    move-object v5, v6

    .line 102
    .end local v6           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v1, e:Ljava/io/IOException;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 104
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 105
    if-eqz v5, :cond_2

    .line 106
    const-string v9, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "connection closed:"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 104
    :goto_4
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 105
    if-eqz v5, :cond_3

    .line 106
    const-string v10, "OnlinePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "connection closed:"

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_3
    throw v9

    .line 103
    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v6       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_4

    .line 100
    :catch_4
    move-exception v9

    move-object v1, v9

    goto :goto_3

    .line 97
    :catch_5
    move-exception v9

    move-object v1, v9

    goto :goto_2
.end method

.method public static getSongSource(Ljava/lang/Integer;Lcom/ophone/MiniPlayer/provider/Song;)Ljava/util/ArrayList;
    .locals 13
    .parameter "rString"
    .parameter "song"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v12, "connection closed:"

    const-string v11, "OnlinePlayer"

    .line 114
    const/4 v7, 0x0

    .line 115
    .local v7, sources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 116
    .local v6, httpclient:Lorg/apache/http/client/HttpClient;
    const/4 v4, 0x0

    .line 118
    .local v4, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_0
    const-string v8, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getSongSourceGoogle httpUriRequest:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ophone/MiniPlayer/provider/FeedUrl;->getMusicBoxFeed(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p0, p1}, Lcom/ophone/MiniPlayer/provider/FeedUrl;->getMusicItemFeed(Ljava/lang/Integer;Lcom/ophone/MiniPlayer/provider/Song;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4

    .line 120
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v5, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_1
    const-string v8, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getSongSourceGoogle connection start:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ophone/MiniPlayer/provider/FeedUrl;->getMusicBoxFeed(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 122
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    const-string v8, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getSongSourceGoogle connection established:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 125
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 126
    new-instance v2, Lcom/ophone/MiniPlayer/provider/BaiduXmlHandler;

    invoke-direct {v2}, Lcom/ophone/MiniPlayer/provider/BaiduXmlHandler;-><init>()V

    .line 127
    .local v2, handler:Lcom/ophone/MiniPlayer/provider/XmlHandler;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ophone/MiniPlayer/provider/XmlHandler;->parseSongSource(Ljava/io/InputStream;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    .line 156
    .end local v2           #handler:Lcom/ophone/MiniPlayer/provider/XmlHandler;
    :cond_0
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 157
    if-eqz v5, :cond_1

    .line 158
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v5

    .line 160
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_2
    :goto_0
    return-object v7

    .line 140
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 142
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 157
    if-eqz v4, :cond_2

    .line 158
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 145
    .local v0, e:Ljava/net/MalformedURLException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 157
    if-eqz v4, :cond_2

    .line 158
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 148
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 157
    if-eqz v4, :cond_2

    .line 158
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v0, v8

    .line 151
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 157
    if-eqz v4, :cond_2

    .line 158
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_4
    move-exception v8

    move-object v0, v8

    .line 154
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 156
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 157
    if-eqz v4, :cond_2

    .line 158
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 155
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v8

    .line 156
    :goto_6
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 157
    if-eqz v4, :cond_3

    .line 158
    const-string v9, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "connection closed:"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    throw v8

    .line 155
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_6

    .line 152
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_5
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_5

    .line 149
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_6
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_4

    .line 146
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_7
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_3

    .line 143
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_8
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_2

    .line 140
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_9
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_1
.end method

.method public static getSongSourceGoogle(Ljava/lang/Integer;Lcom/ophone/MiniPlayer/provider/Song;)Ljava/util/Map;
    .locals 13
    .parameter "rString"
    .parameter "song"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v12, "connection closed:"

    const-string v11, "OnlinePlayer"

    .line 166
    const/4 v7, 0x0

    .line 168
    .local v7, sources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 169
    .local v6, httpclient:Lorg/apache/http/client/HttpClient;
    const/4 v4, 0x0

    .line 173
    .local v4, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_0
    const-string v8, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getSongSourceGoogle httpUriRequest:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ophone/MiniPlayer/provider/FeedUrl;->getMusicBoxFeed(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p0, p1}, Lcom/ophone/MiniPlayer/provider/FeedUrl;->getMusicItemFeed(Ljava/lang/Integer;Lcom/ophone/MiniPlayer/provider/Song;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4

    .line 175
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v5, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_1
    const-string v8, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getSongSourceGoogle connection start:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ophone/MiniPlayer/provider/FeedUrl;->getMusicBoxFeed(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 177
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    const-string v8, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getSongSourceGoogle connection established:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 180
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 181
    new-instance v2, Lcom/ophone/MiniPlayer/provider/GoogleXmlHandler;

    invoke-direct {v2}, Lcom/ophone/MiniPlayer/provider/GoogleXmlHandler;-><init>()V

    .line 182
    .local v2, handler:Lcom/ophone/MiniPlayer/provider/XmlHandler;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ophone/MiniPlayer/provider/XmlHandler;->parseSongSourceGoogle(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v7

    .line 183
    invoke-interface {v7}, Ljava/util/Map;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5

    .line 212
    .end local v2           #handler:Lcom/ophone/MiniPlayer/provider/XmlHandler;
    :cond_0
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 213
    if-eqz v5, :cond_1

    .line 214
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v5

    .line 216
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_2
    :goto_0
    return-object v7

    .line 196
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 198
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 213
    if-eqz v4, :cond_2

    .line 214
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 201
    .local v0, e:Ljava/net/MalformedURLException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 213
    if-eqz v4, :cond_2

    .line 214
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 204
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 213
    if-eqz v4, :cond_2

    .line 214
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v0, v8

    .line 207
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 213
    if-eqz v4, :cond_2

    .line 214
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_4
    move-exception v8

    move-object v0, v8

    .line 210
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 212
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 213
    if-eqz v4, :cond_2

    .line 214
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection closed:"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 211
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v8

    .line 212
    :goto_6
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 213
    if-eqz v4, :cond_3

    .line 214
    const-string v9, "OnlinePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "connection closed:"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_3
    throw v8

    .line 211
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_6

    .line 208
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_5
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_5

    .line 205
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_6
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_4

    .line 202
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_7
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_3

    .line 199
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_8
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_2

    .line 196
    .end local v4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_9
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_1
.end method
