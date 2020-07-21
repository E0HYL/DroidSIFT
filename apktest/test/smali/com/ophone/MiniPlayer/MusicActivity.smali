.class public Lcom/ophone/MiniPlayer/MusicActivity;
.super Landroid/app/ListActivity;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;,
        Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;,
        Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final MSG_XMLPARSE_END:I = 0x1

.field private static final OPTION_ITEM_ADDALLSONG:I = 0x9

.field private static final OPTION_ITEM_ADDSELECTEDSONG:I = 0x0

.field private static final OPTION_ITEM_ONLINESONG:I = 0x5

.field private static final OPTION_ITEM_PLAYING:I = 0x6

.field private static final OPTION_ITEM_PLAYLIST:I = 0x7

.field private static final SHOW_ADDALLSONG_DIALOG:I = 0x8

.field private static final SHOW_DELETE_DIALOG:I = 0x4

.field private static final SHOW_PROGRESS_DIALOG:I = 0x2

.field private static final SHOW_SELECTEDSONG_DIALOG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OnlinePlayer"


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private currentFilePath:Ljava/lang/String;

.field private currentTempFilePath:Ljava/lang/String;

.field private cursor:Landroid/database/Cursor;

.field private fileEx:Ljava/lang/String;

.field private fileNa:Ljava/lang/String;

.field fis:Ljava/io/FileInputStream;

.field fos2:Ljava/io/FileOutputStream;

.field private handler:Landroid/os/Handler;

.field holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private liu:Lcom/ophone/MiniPlayer/Loadimageurl;

.field mLoadingLayout:Landroid/widget/LinearLayout;

.field private myListView:Landroid/widget/ListView;

.field private myTempFileringtone:Ljava/io/File;

.field private pos:Ljava/lang/Integer;

.field private posdelete:I

.field private posringtone:I

.field private rString:Ljava/lang/Integer;

.field receiver:Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;

.field resolver:Landroid/content/ContentResolver;

.field private service:Lcom/ophone/MiniPlayer/IPlayback;

.field simpleAdapter:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

.field private song:Lcom/ophone/MiniPlayer/provider/Song;

.field private songid:Ljava/lang/String;

.field private songlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ">;"
        }
    .end annotation
.end field

.field private songlistcheck:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ">;"
        }
    .end annotation
.end field

.field private songnext:Lcom/ophone/MiniPlayer/provider/Song;

.field private songpre:Lcom/ophone/MiniPlayer/provider/Song;

.field private status:I

.field private strURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    .line 98
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->pos:Ljava/lang/Integer;

    .line 117
    iput v3, p0, Lcom/ophone/MiniPlayer/MusicActivity;->posdelete:I

    .line 118
    iput-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songpre:Lcom/ophone/MiniPlayer/provider/Song;

    .line 119
    iput-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 120
    iput-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songnext:Lcom/ophone/MiniPlayer/provider/Song;

    .line 125
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->strURL:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->fileEx:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->fileNa:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->currentFilePath:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->currentTempFilePath:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/ophone/MiniPlayer/Loadimageurl;

    invoke-direct {v0}, Lcom/ophone/MiniPlayer/Loadimageurl;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->liu:Lcom/ophone/MiniPlayer/Loadimageurl;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlistcheck:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->list:Ljava/util/List;

    .line 155
    new-instance v0, Lcom/ophone/MiniPlayer/MusicActivity$1;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/MusicActivity$1;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->handler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/ophone/MiniPlayer/MusicActivity$2;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/MusicActivity$2;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->connection:Landroid/content/ServiceConnection;

    .line 98
    return-void
.end method

.method private JudgePlaying(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 757
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0xf

    .line 759
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    const-string v2, "position"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 761
    const-string v3, "song"

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 763
    return-void
.end method

.method private SendAddSongtoList()V
    .locals 4

    .prologue
    .line 742
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x16

    .line 744
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 745
    const-string v2, "songlist"

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlistcheck:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 746
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 747
    return-void
.end method

.method private SendAddalllocalSongtoList()V
    .locals 4

    .prologue
    .line 749
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x14

    .line 751
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    const-string v2, "songlist"

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 753
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 754
    return-void
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ophone/MiniPlayer/MusicActivity;Lcom/ophone/MiniPlayer/IPlayback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    return-void
.end method

.method static synthetic access$10(Lcom/ophone/MiniPlayer/MusicActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/ophone/MiniPlayer/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->SendAddSongtoList()V

    return-void
.end method

.method static synthetic access$12(Lcom/ophone/MiniPlayer/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->SendAddalllocalSongtoList()V

    return-void
.end method

.method static synthetic access$13(Lcom/ophone/MiniPlayer/MusicActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$14(Lcom/ophone/MiniPlayer/MusicActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->fileEx:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/ophone/MiniPlayer/MusicActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->posdelete:I

    return v0
.end method

.method static synthetic access$16(Lcom/ophone/MiniPlayer/MusicActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/MusicActivity;->getDataSourceringtone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->myTempFileringtone:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ophone/MiniPlayer/MusicActivity;)Lcom/ophone/MiniPlayer/Loadimageurl;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->liu:Lcom/ophone/MiniPlayer/Loadimageurl;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ophone/MiniPlayer/MusicActivity;Lcom/ophone/MiniPlayer/provider/Song;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    return-void
.end method

.method static synthetic access$5(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlistcheck:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ophone/MiniPlayer/MusicActivity;)Lcom/ophone/MiniPlayer/provider/Song;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ophone/MiniPlayer/MusicActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->status:I

    return-void
.end method

.method static synthetic access$8(Lcom/ophone/MiniPlayer/MusicActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->status:I

    return v0
.end method

.method static synthetic access$9(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->rString:Ljava/lang/Integer;

    return-object v0
.end method

.method private allSongs()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "OnlinePlayer"

    .line 491
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    .line 515
    :goto_0
    return-object v0

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->resolver:Landroid/content/ContentResolver;

    .line 501
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 502
    const/4 v2, 0x0

    const-string v3, "_data like \'/sdcard/myplayer/%\' and _size<>?"

    .line 506
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 507
    const-string v5, "title"

    .line 501
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    .line 510
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 511
    const-string v0, "OnlinePlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getallsong(Cursor cursor)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_1
    const-string v0, "OnlinePlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaStore.Audio.Media.EXTERNAL_CONTENT_URI"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method private getDataSourceringtone(Ljava/lang/String;)V
    .locals 13
    .parameter "strPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const-string v12, "OnlinePlayer"

    .line 1073
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1075
    const v8, 0x7f05005b

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 1076
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1125
    :goto_0
    return-void

    .line 1080
    :cond_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v6, myURL:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1083
    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 1085
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1086
    .local v5, is:Ljava/io/InputStream;
    if-nez v5, :cond_1

    .line 1087
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "stream is null"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1090
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v8, "/sdcard/media/audio/ringtone/"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v3, fileringtone:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1092
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1093
    :cond_2
    iget-object v8, p0, Lcom/ophone/MiniPlayer/MusicActivity;->fileNa:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/ophone/MiniPlayer/MusicActivity;->fileEx:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    iput-object v8, p0, Lcom/ophone/MiniPlayer/MusicActivity;->myTempFileringtone:Ljava/io/File;

    .line 1096
    iget-object v8, p0, Lcom/ophone/MiniPlayer/MusicActivity;->myTempFileringtone:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ophone/MiniPlayer/MusicActivity;->currentTempFilePath:Ljava/lang/String;

    .line 1097
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " currentTempFilePath = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ophone/MiniPlayer/MusicActivity;->currentTempFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/ophone/MiniPlayer/MusicActivity;->myTempFileringtone:Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1101
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v8, 0x80

    new-array v0, v8, [B

    .line 1103
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 1104
    .local v7, numread:I
    if-gtz v7, :cond_3

    .line 1113
    :try_start_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1114
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 1120
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1121
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1107
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v4, v0, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1
.end method

.method private getringtoneFile(Ljava/lang/String;)V
    .locals 3
    .parameter "strPath"

    .prologue
    .line 1048
    :try_start_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity;->currentFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1049
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/MusicActivity;->getDataSourceringtone(Ljava/lang/String;)V

    .line 1051
    :cond_0
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->currentFilePath:Ljava/lang/String;

    .line 1052
    new-instance v1, Lcom/ophone/MiniPlayer/MusicActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/ophone/MiniPlayer/MusicActivity$10;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;Ljava/lang/String;)V

    .line 1062
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 1063
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1064
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getsonglist(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 12
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ophone/MiniPlayer/provider/Song;>;"
    if-eqz p1, :cond_2

    .line 528
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    .line 529
    .local v2, flag:Z
    if-eqz v2, :cond_1

    .line 531
    :cond_0
    new-instance v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-direct {v7}, Lcom/ophone/MiniPlayer/provider/Song;-><init>()V

    .line 533
    .local v7, song:Lcom/ophone/MiniPlayer/provider/Song;
    const-string v11, "album"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 532
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, _album:Ljava/lang/String;
    const-string v11, "is_ringtone"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 534
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, isringrone:Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/ophone/MiniPlayer/provider/Song;->setAlbum(Ljava/lang/String;)V

    .line 539
    const-string v11, "title"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 538
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, song_name:Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/ophone/MiniPlayer/provider/Song;->setName(Ljava/lang/String;)V

    .line 543
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 542
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 545
    .local v9, songid:Ljava/lang/String;
    invoke-virtual {v7, v9}, Lcom/ophone/MiniPlayer/provider/Song;->setId(Ljava/lang/String;)V

    .line 550
    const-string v11, "artist"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 549
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, singer:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v10, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v7, v10}, Lcom/ophone/MiniPlayer/provider/Song;->setSinger(Ljava/util/ArrayList;)V

    .line 555
    const-string v11, "_data"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 554
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, path:Ljava/lang/String;
    invoke-virtual {v7, v5}, Lcom/ophone/MiniPlayer/provider/Song;->setPath(Ljava/lang/String;)V

    .line 561
    const-string v11, "duration"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 560
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, duration:Ljava/lang/String;
    invoke-virtual {v7, v1}, Lcom/ophone/MiniPlayer/provider/Song;->setDuration(Ljava/lang/String;)V

    .line 573
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/ophone/MiniPlayer/provider/Song;->setTag(Z)V

    .line 574
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    .line 530
    if-nez v11, :cond_0

    .line 581
    .end local v0           #_album:Ljava/lang/String;
    .end local v1           #duration:Ljava/lang/String;
    .end local v2           #flag:Z
    .end local v3           #isringrone:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #singer:Ljava/lang/String;
    .end local v7           #song:Lcom/ophone/MiniPlayer/provider/Song;
    .end local v8           #song_name:Ljava/lang/String;
    .end local v9           #songid:Ljava/lang/String;
    .end local v10           #value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v4

    .line 579
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private rescanSdcard()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 467
    const-string v3, "file:///sdcard/yy/tmp/M032890500170758.mp3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 466
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 469
    .local v1, scanIntent:Landroid/content/Intent;
    const-string v2, "OnlinePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Environment.getExternalStorageDirectory()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Landroid/content/IntentFilter;

    .line 475
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 474
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 481
    return-void
.end method


# virtual methods
.method public fileScan(Ljava/lang/String;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 438
    .local v0, data:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method public folderScan(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 442
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 447
    .local v0, array:[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_1

    .line 461
    .end local v0           #array:[Ljava/io/File;
    .end local v3           #i:I
    :cond_0
    return-void

    .line 448
    .restart local v0       #array:[Ljava/io/File;
    .restart local v3       #i:I
    :cond_1
    aget-object v1, v0, v3

    .line 450
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 451
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, name:Ljava/lang/String;
    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 454
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ophone/MiniPlayer/MusicActivity;->fileScan(Ljava/lang/String;)V

    .line 447
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ophone/MiniPlayer/MusicActivity;->folderScan(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAdapterMap()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 789
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 790
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 791
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, j:I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 808
    const-string v7, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "songlist size:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .end local v3           #i:I
    .end local v4           #j:I
    :cond_0
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity;->list:Ljava/util/List;

    return-object v7

    .line 792
    .restart local v3       #i:I
    .restart local v4       #j:I
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 793
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "imageurl"

    const v8, 0x7f020008

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v8, "name"

    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v8, "singer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f050018

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :try_start_0
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->getDuration()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 799
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->getDuration()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 800
    .local v0, duration:J
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v6

    .line 801
    .local v6, time:Ljava/lang/String;
    const-string v7, "duration"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .end local v0           #duration:J
    .end local v6           #time:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity;->list:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 803
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 804
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const-string v3, "OnlinePlayer"

    const-string v4, "."

    .line 921
    .line 922
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v8

    .line 921
    check-cast v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 923
    .local v8, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 924
    .local v7, id:I
    packed-switch v7, :pswitch_data_0

    .line 1034
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 926
    :pswitch_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 927
    const/4 v2, 0x0

    const-string v3, "_data like \'/sdcard/myplayer/%\' and _size<>?"

    .line 931
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 932
    const-string v5, "title"

    .line 926
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    .line 933
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    iget v1, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 934
    iget v0, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->posdelete:I

    .line 935
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicActivity;->showDialog(I)V

    goto :goto_0

    .line 942
    :pswitch_1
    iget v0, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->posringtone:I

    .line 943
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->posringtone:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/provider/Song;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songid:Ljava/lang/String;

    .line 944
    const-string v0, "OnlinePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "onContextitemSelected song.getName()"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ophone/MiniPlayer/MusicActivity;->posringtone:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 944
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v0, "OnlinePlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "info.position"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->posringtone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->posringtone:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/provider/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->strURL:Ljava/lang/String;

    .line 952
    const-string v0, "OnlinePlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "strURLringtone="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->strURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->strURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->strURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->strURL:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 955
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity;->strURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 954
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 954
    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->fileEx:Ljava/lang/String;

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->strURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->strURL:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity;->strURL:Ljava/lang/String;

    .line 957
    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 956
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->fileNa:Ljava/lang/String;

    .line 1018
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/sdcard/myplayer/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->fileNa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity;->fileEx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v6, fileringtone:Ljava/io/File;
    invoke-virtual {p0, v6}, Lcom/ophone/MiniPlayer/MusicActivity;->setMyRingtone(Ljava/io/File;)V

    .line 1028
    const v0, 0x7f05005a

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 924
    :pswitch_data_0
    .packed-switch 0x7f08003a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x5

    .line 343
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 344
    const-string v0, "/sdcard/myplayer"

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicActivity;->folderScan(Ljava/lang/String;)V

    .line 355
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicActivity;->setContentView(I)V

    .line 356
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicActivity;->setTitle(I)V

    .line 357
    new-instance v0, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->receiver:Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;

    .line 359
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    .local v7, filter1:Landroid/content/IntentFilter;
    const-string v0, "com.myplayer.servicetoactivitylocal"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->receiver:Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/ophone/MiniPlayer/MusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->allSongs()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    .line 373
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/ophone/MiniPlayer/MusicActivity;->getsonglist(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    .line 374
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "OnlinePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get songlist size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->myListView:Landroid/widget/ListView;

    .line 377
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->myListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 378
    const v2, 0x7f020036

    .line 377
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 379
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 383
    new-instance v0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    .line 384
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->getAdapterMap()Ljava/util/List;

    move-result-object v3

    .line 385
    const v4, 0x7f030014

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "imageurl"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    .line 386
    const-string v2, "singer"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const-string v2, "check"

    aput-object v2, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    .line 388
    invoke-direct/range {v0 .. v6}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 383
    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    .line 389
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 407
    return-void

    .line 386
    :array_0
    .array-data 0x4
        0x35t 0x0t 0x8t 0x7ft
        0x36t 0x0t 0x8t 0x7ft
        0x11t 0x0t 0x8t 0x7ft
        0x38t 0x0t 0x8t 0x7ft
        0x37t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1042
    const v1, 0x7f050069

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1043
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1044
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const v1, 0x7f070001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1045
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f050053

    const v3, 0x7f050052

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 738
    :goto_0
    :pswitch_0
    return-object v0

    .line 603
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 604
    const v2, 0x1080001

    .line 603
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 605
    const v2, 0x7f050001

    .line 604
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 605
    const v2, 0x7f05004e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 606
    goto :goto_0

    .line 609
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    const v2, 0x7f05002c

    .line 609
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 612
    new-instance v2, Lcom/ophone/MiniPlayer/MusicActivity$4;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/MusicActivity$4;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;)V

    .line 610
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 619
    new-instance v2, Lcom/ophone/MiniPlayer/MusicActivity$5;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/MusicActivity$5;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;)V

    .line 618
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 629
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 630
    goto :goto_0

    .line 632
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 633
    const v2, 0x7f05002d

    .line 632
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 635
    new-instance v2, Lcom/ophone/MiniPlayer/MusicActivity$6;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/MusicActivity$6;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;)V

    .line 633
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 642
    new-instance v2, Lcom/ophone/MiniPlayer/MusicActivity$7;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/MusicActivity$7;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;)V

    .line 641
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 652
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 653
    goto :goto_0

    .line 656
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 658
    new-instance v2, Lcom/ophone/MiniPlayer/MusicActivity$8;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/MusicActivity$8;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;)V

    .line 657
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 666
    new-instance v2, Lcom/ophone/MiniPlayer/MusicActivity$9;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/MusicActivity$9;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;)V

    .line 665
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 731
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 734
    goto/16 :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x30

    .line 854
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 856
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f020001

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 857
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 859
    .local v1, r:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f05002b

    .line 858
    invoke-interface {p1, v7, v7, v8, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 859
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 860
    const/high16 v3, 0x7f02

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 861
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 862
    const/16 v3, 0x9

    .line 863
    const v4, 0x7f050031

    .line 862
    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 863
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 865
    const v3, 0x7f020019

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 866
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 867
    const/4 v3, 0x5

    const/4 v4, 0x4

    .line 868
    const v5, 0x7f05003d

    .line 867
    invoke-interface {p1, v7, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 868
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 869
    const v3, 0x7f02001d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 870
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 871
    const/4 v3, 0x6

    const/4 v4, 0x2

    .line 872
    const v5, 0x7f050040

    .line 871
    invoke-interface {p1, v7, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 872
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 873
    const v3, 0x7f020020

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 874
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 875
    const/4 v3, 0x7

    const/4 v4, 0x3

    .line 876
    const v5, 0x7f05003f

    .line 875
    invoke-interface {p1, v7, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 876
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 882
    return v8
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 593
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 595
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity;->receiver:Lcom/ophone/MiniPlayer/MusicActivity$UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 596
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 768
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 775
    invoke-direct {p0, p3}, Lcom/ophone/MiniPlayer/MusicActivity;->JudgePlaying(I)V

    .line 784
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 886
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 887
    .local v3, itemId:I
    packed-switch v3, :pswitch_data_0

    .line 917
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    return v4

    .line 889
    :pswitch_1
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/ophone/MiniPlayer/MusicActivity;->showDialog(I)V

    goto :goto_0

    .line 892
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/ophone/MiniPlayer/MusicFeedActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 893
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 896
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 897
    .local v1, i1:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 904
    .end local v1           #i1:Landroid/content/Intent;
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 905
    .local v2, i2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/MusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 908
    .end local v2           #i2:Landroid/content/Intent;
    :pswitch_5
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/ophone/MiniPlayer/MusicActivity;->showDialog(I)V

    goto :goto_0

    .line 887
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 587
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 589
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 411
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 420
    new-instance v0, Lcom/ophone/MiniPlayer/MusicActivity$3;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/MusicActivity$3;-><init>(Lcom/ophone/MiniPlayer/MusicActivity;)V

    .line 431
    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/MusicActivity$3;->start()V

    .line 433
    return-void
.end method

.method public setMyRingtone(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    const-string v5, "OnlinePlayer"

    .line 1175
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1176
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "OnlinePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file.getAbsolutePath()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1199
    .local v1, uri:Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ophone/MiniPlayer/MusicActivity;->songid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1200
    .local v0, updateuri:Landroid/net/Uri;
    const-string v3, "OnlinePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateuri="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v3, 0x1

    invoke-static {p0, v3, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1203
    return-void
.end method
