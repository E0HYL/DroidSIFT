.class public Lcom/ophone/MiniPlayer/provider/FeedUrl;
.super Ljava/lang/Object;
.source "FeedUrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyPlayer"

.field private static final flash_player_key:Ljava/lang/String; = "c51181b7f9bfce1ac742ed8b4a1ae4ed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMusicBoxFeed(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 8
    .parameter "rString"

    .prologue
    const-string v7, "0."

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    .local v0, a:J
    const-wide v5, 0x2540be400L

    div-long v2, v0, v5

    .line 25
    .local v2, b:J
    const-string v4, ""

    .line 27
    .local v4, musicBoxFeed:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 62
    :goto_0
    return-object v4

    .line 31
    :pswitch_0
    const-string v4, "http://www.google.cn/music/chartlisting?output=xml&q=chinese%5Fnew%5Fsongs%5Fcn&cat=song"

    .line 33
    goto :goto_0

    .line 36
    :pswitch_1
    const-string v4, "http://www.google.cn/music/chartlisting?q=chinese%5Fsongs%5Fcn&cat=song&output=xml"

    .line 38
    goto :goto_0

    .line 41
    :pswitch_2
    const-string v4, "http://www.google.cn/music/chartlisting?cat=song&output=xml&q=ea%5Fnew%5Fsongs%5Fcn"

    .line 43
    goto :goto_0

    .line 46
    :pswitch_3
    const-string v4, "http://www.google.cn/music/chartlisting?cat=song&output=xml&q=ea%5Fsongs%5Fcn"

    .line 48
    goto :goto_0

    .line 51
    :pswitch_4
    const-string v4, "http://box.zhangmen.baidu.com/x?op=22&listid=402&.r="

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "0."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    goto :goto_0

    .line 57
    :pswitch_5
    const-string v4, "http://box.zhangmen.baidu.com/x?op=22&listid=3&.r="

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "0."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x7f050048
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getMusicItemFeed(Ljava/lang/Integer;Lcom/ophone/MiniPlayer/provider/Song;)Ljava/lang/String;
    .locals 9
    .parameter "rString"
    .parameter "song"

    .prologue
    const-string v8, "MyPlayer"

    const-string v3, "gbk"

    const-string v7, "&cad=chart%5Fplayer&id="

    const-string v3, "$$"

    const-string v6, "c51181b7f9bfce1ac742ed8b4a1ae4ed"

    .line 67
    const-string v2, ""

    .line 68
    .local v2, musicItemFeed:Ljava/lang/String;
    new-instance v0, Lcom/ophone/MiniPlayer/utils/Digest;

    invoke-direct {v0}, Lcom/ophone/MiniPlayer/utils/Digest;-><init>()V

    .line 69
    .local v0, dg:Lcom/ophone/MiniPlayer/utils/Digest;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 117
    .end local p0
    :goto_0
    return-object v2

    .line 72
    .restart local p0
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.google.cn/music/songstreaming?output=xml&cd=chinese%5Fnew%5Fsongs%5Fcn&sig="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "c51181b7f9bfce1ac742ed8b4a1ae4ed"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ophone/MiniPlayer/utils/Digest;->testDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    const-string v4, "&cad=chart%5Fplayer&id="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string v3, "MyPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "musicItemFeed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.google.cn/music/songstreaming?cad=chart%5Fplayer&id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cd=chinese"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 81
    const-string v4, "%5Fsongs%5Fcn&output=xml&sig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "c51181b7f9bfce1ac742ed8b4a1ae4ed"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ophone/MiniPlayer/utils/Digest;->testDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    goto/16 :goto_0

    .line 85
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.google.cn/music/songstreaming?output=xml&cd=ea%5Fnew%5Fsongs%5Fcn&sig="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "c51181b7f9bfce1ac742ed8b4a1ae4ed"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ophone/MiniPlayer/utils/Digest;->testDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    const-string v4, "&cad=chart%5Fplayer&id="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    goto/16 :goto_0

    .line 92
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.google.cn/music/songstreaming?output=xml&cd=ea%5Fsongs%5Fcn&sig="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "c51181b7f9bfce1ac742ed8b4a1ae4ed"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ophone/MiniPlayer/utils/Digest;->testDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    const-string v4, "&cad=chart%5Fplayer&id="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    goto/16 :goto_0

    .line 102
    :pswitch_4
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://box.zhangmen.baidu.com/x?op=12&count=1&title="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gbk"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v4, "gbk"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 105
    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getAlbum()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gbk"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string v3, "MyPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "musicItemFeed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 110
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x7f050048
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
