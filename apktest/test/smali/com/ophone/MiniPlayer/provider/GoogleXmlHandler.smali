.class public Lcom/ophone/MiniPlayer/provider/GoogleXmlHandler;
.super Lcom/ophone/MiniPlayer/provider/XmlHandler;
.source "GoogleXmlHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/provider/XmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public analyseTheSonglist(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public analyseTheSonglistGoogle(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 19
    .parameter "is"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v13, songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 33
    .local v6, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 34
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 35
    .local v5, dom:Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 36
    .local v11, root:Lorg/w3c/dom/Element;
    const-string v17, "song"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 37
    .local v4, data:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move v0, v7

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 117
    return-object v13

    .line 38
    :cond_0
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 39
    .local v12, songInfo:Lorg/w3c/dom/NodeList;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v16, value1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-direct {v14}, Lcom/ophone/MiniPlayer/provider/Song;-><init>()V

    .line 41
    .local v14, songgoogle:Lcom/ophone/MiniPlayer/provider/Song;
    const/16 v17, 0x1

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setTaggoogle(Z)V

    .line 42
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setTagbaidu(Z)V

    .line 43
    const/16 v17, 0x1

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setTag(Z)V

    .line 44
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setTagImage(Z)V

    .line 45
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 47
    .local v2, a:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move v0, v10

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 115
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v12, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 49
    .local v8, info:Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 50
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, infoName:Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 53
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 59
    .local v15, value:Ljava/lang/String;
    :goto_2
    const-string v17, "id"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 60
    invoke-virtual {v14, v15}, Lcom/ophone/MiniPlayer/provider/Song;->setId(Ljava/lang/String;)V

    .line 47
    .end local v9           #infoName:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 56
    .restart local v9       #infoName:Ljava/lang/String;
    :cond_3
    const-string v15, ""

    .restart local v15       #value:Ljava/lang/String;
    goto :goto_2

    .line 61
    :cond_4
    const-string v17, "name"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 62
    invoke-virtual {v14, v15}, Lcom/ophone/MiniPlayer/provider/Song;->setName(Ljava/lang/String;)V

    goto :goto_3

    .line 65
    :cond_5
    const-string v17, "artist"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 67
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setSinger(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 71
    :cond_6
    const-string v17, "artistId"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 72
    invoke-virtual {v14, v15}, Lcom/ophone/MiniPlayer/provider/Song;->setArtistId(Ljava/lang/String;)V

    goto :goto_3

    .line 75
    :cond_7
    const-string v17, "album"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 76
    invoke-virtual {v14, v15}, Lcom/ophone/MiniPlayer/provider/Song;->setAlbum(Ljava/lang/String;)V

    goto :goto_3

    .line 79
    :cond_8
    const-string v17, "duration"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 80
    invoke-virtual {v14, v15}, Lcom/ophone/MiniPlayer/provider/Song;->setDuration(Ljava/lang/String;)V

    goto :goto_3

    .line 83
    :cond_9
    const-string v17, "canBeDownloaded"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 84
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setCanBeDownloaded(Z)V

    goto :goto_3

    .line 87
    :cond_a
    const-string v17, "hasFullLyrics"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 88
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setHasFullLyrics(Z)V

    goto/16 :goto_3

    .line 91
    :cond_b
    const-string v17, "canBeStreamed"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 92
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setCanBeStreamed(Z)V

    goto/16 :goto_3

    .line 95
    :cond_c
    const-string v17, "ringtoneUrl"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 96
    invoke-virtual {v14, v15}, Lcom/ophone/MiniPlayer/provider/Song;->setRingtoneUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 99
    :cond_d
    const-string v17, "albumId"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 100
    invoke-virtual {v14, v15}, Lcom/ophone/MiniPlayer/provider/Song;->setAlbumId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 103
    :cond_e
    const-string v17, "hasSimilarSongs"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 104
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setHasSimilarSongs(Z)V

    goto/16 :goto_3

    .line 107
    :cond_f
    const-string v17, "hasRecommendation"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 108
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setHasRecommendation(Z)V

    goto/16 :goto_3
.end method

.method public parseSongSource(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseSongSourceGoogle(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 20
    .parameter "is"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 129
    .local v5, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 130
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 131
    .local v4, dom:Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v12

    .line 132
    .local v12, root:Lorg/w3c/dom/Element;
    const-string v18, "songStreaming"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 135
    .local v16, urls:Lorg/w3c/dom/NodeList;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v15, sources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v14, 0x0

    .line 137
    .local v14, source:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move v0, v6

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 185
    return-object v15

    .line 138
    :cond_0
    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 139
    .local v11, node:Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 140
    .local v13, songInfo:Lorg/w3c/dom/NodeList;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v10, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move v0, v9

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 183
    move-object v15, v10

    .line 137
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-interface {v13, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 145
    .local v7, info:Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 146
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, infoName:Ljava/lang/String;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 150
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 156
    .local v17, value:Ljava/lang/String;
    :goto_2
    const-string v18, "songUrl"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 157
    move-object/from16 v14, v17

    .line 158
    const-string v18, "source"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v8           #infoName:Ljava/lang/String;
    .end local v17           #value:Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 153
    .restart local v8       #infoName:Ljava/lang/String;
    :cond_3
    const-string v17, ""

    .restart local v17       #value:Ljava/lang/String;
    goto :goto_2

    .line 160
    :cond_4
    const-string v18, "albumThumbnailLink"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 162
    const-string v18, "albumThumbnailLink"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 164
    :cond_5
    const-string v18, "lyricsUrl"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 167
    const-string v18, "lyricsUrl"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method
