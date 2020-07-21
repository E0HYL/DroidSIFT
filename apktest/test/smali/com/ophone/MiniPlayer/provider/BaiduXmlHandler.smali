.class public Lcom/ophone/MiniPlayer/provider/BaiduXmlHandler;
.super Lcom/ophone/MiniPlayer/provider/XmlHandler;
.source "BaiduXmlHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/provider/XmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public analyseTheSonglist(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 26
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
    .line 26
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v17, songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 29
    .local v6, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 30
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 31
    .local v5, dom:Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 32
    .local v14, root:Lorg/w3c/dom/Element;
    const-string v23, "data"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 33
    .local v4, data:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move v0, v7

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 85
    return-object v17

    .line 34
    :cond_0
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 35
    .local v16, songInfo:Lorg/w3c/dom/NodeList;
    new-instance v15, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-direct {v15}, Lcom/ophone/MiniPlayer/provider/Song;-><init>()V

    .line 36
    .local v15, song:Lcom/ophone/MiniPlayer/provider/Song;
    const/16 v23, 0x1

    move-object v0, v15

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setTagbaidu(Z)V

    .line 37
    const/16 v23, 0x0

    move-object v0, v15

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setTaggoogle(Z)V

    .line 38
    const/16 v23, 0x1

    move-object v0, v15

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setTag(Z)V

    .line 39
    const/16 v23, 0x0

    move-object v0, v15

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setTagImage(Z)V

    .line 40
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move v0, v13

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 83
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 41
    :cond_1
    move-object/from16 v0, v16

    move v1, v13

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 42
    .local v11, info:Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 43
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 44
    .local v12, infoName:Ljava/lang/String;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 45
    .local v21, value:Ljava/lang/String;
    const-string v23, "debug"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v23, "id"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 53
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setId(Ljava/lang/String;)V

    .line 40
    .end local v12           #infoName:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 54
    .restart local v12       #infoName:Ljava/lang/String;
    .restart local v21       #value:Ljava/lang/String;
    :cond_3
    const-string v23, "name"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 55
    const-string v23, "$$"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 57
    .local v8, index1:I
    const/4 v9, 0x0

    .line 58
    .local v9, index2:I
    const/4 v10, 0x0

    .line 59
    .local v10, index3:I
    const/16 v23, -0x1

    move v0, v8

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 60
    const-string v23, "$$"

    add-int/lit8 v24, v8, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 63
    :cond_4
    const/16 v23, -0x1

    move v0, v9

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 64
    const-string v23, "$$"

    add-int/lit8 v24, v9, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 68
    :cond_5
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 69
    .local v19, songname:Ljava/lang/String;
    add-int/lit8 v23, v8, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 71
    .local v20, songsinger:Ljava/lang/String;
    const-string v18, ""

    .line 73
    .local v18, songalbum:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setName(Ljava/lang/String;)V

    .line 74
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v22, value1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setSinger(Ljava/util/ArrayList;)V

    .line 77
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setAlbum(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public analyseTheSonglistGoogle(Ljava/io/InputStream;)Ljava/util/ArrayList;
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
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseSongSource(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 22
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
    .line 92
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 93
    .local v7, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 94
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 95
    .local v5, dom:Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    .line 96
    .local v13, root:Lorg/w3c/dom/Element;
    const-string v19, "url"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 97
    .local v17, urls:Lorg/w3c/dom/NodeList;
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move-object v0, v15

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v15, sources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move v0, v8

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 125
    return-object v15

    .line 99
    :cond_0
    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 100
    .local v12, node:Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 101
    .local v14, songInfo:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .line 102
    .local v6, encode:Ljava/lang/String;
    const/4 v4, 0x0

    .line 103
    .local v4, decode:Ljava/lang/String;
    const/16 v16, 0x0

    .line 104
    .local v16, type:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move v0, v11

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 119
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v20, 0x0

    const/16 v21, 0x2f

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move-object v0, v6

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 120
    const-string v19, "1"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 121
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v19, "source:add"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "source"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 105
    :cond_2
    invoke-interface {v14, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 106
    .local v9, info:Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 107
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, infoName:Ljava/lang/String;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    .line 109
    .local v18, value:Ljava/lang/String;
    const-string v19, "debug"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v19, "encode"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 111
    move-object/from16 v6, v18

    .line 104
    .end local v10           #infoName:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 112
    .restart local v10       #infoName:Ljava/lang/String;
    .restart local v18       #value:Ljava/lang/String;
    :cond_4
    const-string v19, "decode"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 113
    move-object/from16 v4, v18

    goto :goto_2

    .line 114
    :cond_5
    const-string v19, "type"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 115
    move-object/from16 v16, v18

    goto :goto_2
.end method

.method public parseSongSourceGoogle(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 1
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
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method
