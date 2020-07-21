.class public Lcom/ophone/MiniPlayer/provider/Song;
.super Ljava/lang/Object;
.source "Song.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/provider/Song$Source;
    }
.end annotation


# instance fields
.field private Imageurl:Ljava/lang/String;

.field private adddate:J

.field private album:Ljava/lang/String;

.field private albumId:Ljava/lang/String;

.field private artistId:Ljava/lang/String;

.field private canBeDownloaded:Z

.field private canBeStreamed:Z

.field private coverImgURL:I

.field private duration:Ljava/lang/String;

.field private googlepath:Ljava/lang/String;

.field private hasFullLyrics:Z

.field private hasRecommendation:Z

.field private hasSimilarSongs:Z

.field private id:Ljava/lang/String;

.field private index:I

.field private listenmost:I

.field private lyrics:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private ringtoneUrl:Ljava/lang/String;

.field private singer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lcom/ophone/MiniPlayer/provider/Song$Source;

.field private sourcePos:I

.field private tag:Z

.field private tagImage:Z

.field private tagbaidu:Z

.field private tagfile:Z

.field private taggoogle:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->singer:Ljava/util/ArrayList;

    .line 25
    iput v1, p0, Lcom/ophone/MiniPlayer/provider/Song;->listenmost:I

    .line 88
    new-instance v0, Lcom/ophone/MiniPlayer/provider/Song$Source;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/provider/Song$Source;-><init>(Lcom/ophone/MiniPlayer/provider/Song;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->source:Lcom/ophone/MiniPlayer/provider/Song$Source;

    .line 89
    iput v1, p0, Lcom/ophone/MiniPlayer/provider/Song;->sourcePos:I

    .line 90
    return-void
.end method


# virtual methods
.method public getAdddate()J
    .locals 2

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->adddate:J

    return-wide v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getGooglepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->googlepath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->Imageurl:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->index:I

    return v0
.end method

.method public getListenmost()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->listenmost:I

    return v0
.end method

.method public getLyrics()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->lyrics:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRingtoneUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->ringtoneUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->singer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSource()Lcom/ophone/MiniPlayer/provider/Song$Source;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->source:Lcom/ophone/MiniPlayer/provider/Song$Source;

    return-object v0
.end method

.method public isCanBeDownloaded()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->canBeDownloaded:Z

    return v0
.end method

.method public isCanBeStreamed()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->canBeStreamed:Z

    return v0
.end method

.method public isHasFullLyrics()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->hasFullLyrics:Z

    return v0
.end method

.method public isHasRecommendation()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->hasRecommendation:Z

    return v0
.end method

.method public isHasSimilarSongs()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->hasSimilarSongs:Z

    return v0
.end method

.method public isTag()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->tag:Z

    return v0
.end method

.method public isTagImage()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->tagImage:Z

    return v0
.end method

.method public isTagbaidu()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->tagbaidu:Z

    return v0
.end method

.method public isTagfile()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->tagfile:Z

    return v0
.end method

.method public isTaggoogle()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/ophone/MiniPlayer/provider/Song;->taggoogle:Z

    return v0
.end method

.method public nextSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/ophone/MiniPlayer/provider/Song;->source:Lcom/ophone/MiniPlayer/provider/Song$Source;

    invoke-virtual {v1}, Lcom/ophone/MiniPlayer/provider/Song$Source;->getLinks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget v1, p0, Lcom/ophone/MiniPlayer/provider/Song;->sourcePos:I

    iget-object v2, p0, Lcom/ophone/MiniPlayer/provider/Song;->source:Lcom/ophone/MiniPlayer/provider/Song$Source;

    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/provider/Song$Source;->getLinks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 95
    :cond_0
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/ophone/MiniPlayer/provider/Song;->source:Lcom/ophone/MiniPlayer/provider/Song$Source;

    invoke-virtual {v1}, Lcom/ophone/MiniPlayer/provider/Song$Source;->getLinks()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/ophone/MiniPlayer/provider/Song;->sourcePos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, nextSource:Ljava/lang/String;
    move-object v1, v0

    .line 99
    goto :goto_0
.end method

.method public setAdddate(J)V
    .locals 0
    .parameter "adddate"

    .prologue
    .line 302
    iput-wide p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->adddate:J

    .line 303
    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->album:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->albumId:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0
    .parameter "artistId"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->artistId:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setCanBeDownloaded(Z)V
    .locals 0
    .parameter "canBeDownloaded"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->canBeDownloaded:Z

    .line 171
    return-void
.end method

.method public setCanBeStreamed(Z)V
    .locals 0
    .parameter "canBeStreamed"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->canBeStreamed:Z

    .line 187
    return-void
.end method

.method public setCoverImgURL(I)V
    .locals 0
    .parameter "coverImgURL"

    .prologue
    .line 246
    iput p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->coverImgURL:I

    .line 247
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->duration:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setGooglepath(Ljava/lang/String;)V
    .locals 0
    .parameter "googlepath"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->googlepath:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setHasFullLyrics(Z)V
    .locals 0
    .parameter "hasFullLyrics"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->hasFullLyrics:Z

    .line 179
    return-void
.end method

.method public setHasRecommendation(Z)V
    .locals 0
    .parameter "hasRecommendation"

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->hasRecommendation:Z

    .line 219
    return-void
.end method

.method public setHasSimilarSongs(Z)V
    .locals 0
    .parameter "hasSimilarSongs"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->hasSimilarSongs:Z

    .line 211
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->id:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setImageurl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageurl"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->Imageurl:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 294
    iput p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->index:I

    .line 295
    return-void
.end method

.method public setListenmost(I)V
    .locals 0
    .parameter "listenmost"

    .prologue
    .line 310
    iput p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->listenmost:I

    .line 311
    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 0
    .parameter "lyrics"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->lyrics:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->name:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->path:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setRingtoneUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "ringtoneUrl"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->ringtoneUrl:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setSinger(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, singer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->singer:Ljava/util/ArrayList;

    .line 243
    return-void
.end method

.method public setSource(Lcom/ophone/MiniPlayer/provider/Song$Source;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->source:Lcom/ophone/MiniPlayer/provider/Song$Source;

    .line 85
    return-void
.end method

.method public setTag(Z)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->tag:Z

    .line 38
    return-void
.end method

.method public setTagImage(Z)V
    .locals 0
    .parameter "tagImage"

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->tagImage:Z

    .line 279
    return-void
.end method

.method public setTagbaidu(Z)V
    .locals 0
    .parameter "tagbaidu"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->tagbaidu:Z

    .line 227
    return-void
.end method

.method public setTagfile(Z)V
    .locals 0
    .parameter "tagfile"

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->tagfile:Z

    .line 255
    return-void
.end method

.method public setTaggoogle(Z)V
    .locals 0
    .parameter "taggoogle"

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/ophone/MiniPlayer/provider/Song;->taggoogle:Z

    .line 235
    return-void
.end method
