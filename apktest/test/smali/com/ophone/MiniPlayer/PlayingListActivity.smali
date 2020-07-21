.class public Lcom/ophone/MiniPlayer/PlayingListActivity;
.super Landroid/app/ListActivity;
.source "PlayingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;,
        Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;,
        Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final MSG_XMLPARSE_END:I = 0x1

.field private static final OPTION_ITEM_CLEAR:I = 0x0

.field private static final OPTION_ITEM_DELETEPLAYLIST:I = 0xe

.field private static final OPTION_ITEM_LOCALSONG:I = 0x8

.field private static final OPTION_ITEM_ONLINESONG:I = 0x9

.field private static final OPTION_ITEM_PLAYING:I = 0xa

.field private static final OPTION_ITEM_SAVE:I = 0x5

.field private static final OPTION_ITEM_SHOWPLAYLIST:I = 0x10

.field private static final OPTION_ITEM_SORTALPHABET:I = 0xd

.field private static final OPTION_ITEM_SORTDATE:I = 0xc

.field private static final OPTION_ITEM_SORTLISTENMOST:I = 0xb

.field private static final SHOW_CLEAR_DIALOG:I = 0x3

.field private static final SHOW_DELETEPLAYLIST_DIALOG:I = 0xf

.field private static final SHOW_DELETE_DIALOG:I = 0x4

.field private static final SHOW_DOWNLOAD_DIALOG:I = 0x7

.field private static final SHOW_PROGRESS_DIALOG:I = 0x2

.field private static final SHOW_SAVE_DIALOG:I = 0x6

.field private static final SHOW_SHOWPLAYLIST_DIALOG:I = 0x11

.field private static final TAG:Ljava/lang/String; = "OnlinePlayer"


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private chooseItem:I

.field private chooseItem1:I

.field private connection:Landroid/content/ServiceConnection;

.field private currentFilePath:Ljava/lang/String;

.field private currentTempFilePath:Ljava/lang/String;

.field private fileEx:Ljava/lang/String;

.field private fileNa:Ljava/lang/String;

.field public filelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

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

.field private pos:I

.field private rString:Ljava/lang/Integer;

.field receiver:Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;

.field private service:Lcom/ophone/MiniPlayer/IPlayback;

.field simpleAdapter:Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

.field private song:Lcom/ophone/MiniPlayer/provider/Song;

.field public songlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/provider/Song;",
            ">;"
        }
    .end annotation
.end field

.field st:[Ljava/lang/String;

.field private status:I

.field private strURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 95
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 116
    new-instance v0, Lcom/ophone/MiniPlayer/Loadimageurl;

    invoke-direct {v0}, Lcom/ophone/MiniPlayer/Loadimageurl;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->liu:Lcom/ophone/MiniPlayer/Loadimageurl;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->filelist:Ljava/util/ArrayList;

    .line 123
    iput v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->chooseItem:I

    .line 124
    iput v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->chooseItem1:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    .line 132
    iput v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->status:I

    .line 135
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->strURL:Ljava/lang/String;

    .line 136
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->fileEx:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->fileNa:Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->currentFilePath:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->currentTempFilePath:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;

    .line 147
    new-instance v0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$1;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->handler:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/ophone/MiniPlayer/PlayingListActivity$2;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$2;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->connection:Landroid/content/ServiceConnection;

    .line 95
    return-void
.end method

.method private SendClearSongList()V
    .locals 3

    .prologue
    .line 434
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0xe

    .line 436
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method private SendGetSongList()V
    .locals 3

    .prologue
    .line 425
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x6

    .line 427
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method private SendSonglisttoService()V
    .locals 4

    .prologue
    .line 1148
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x19

    .line 1150
    .local v0, cmd:I
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1151
    const-string v2, "songlist"

    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1152
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1153
    return-void
.end method

.method private SenddeleteSong()V
    .locals 4

    .prologue
    .line 452
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x15

    .line 454
    .local v0, cmd:I
    const-string v2, "pos"

    iget v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->pos:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    return-void
.end method

.method private SendsaveSonglist(Ljava/lang/String;)V
    .locals 3
    .parameter "st"

    .prologue
    .line 460
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x17

    .line 462
    .local v0, cmd:I
    const-string v2, "playlistname"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    return-void
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/PlayingListActivity;Lcom/ophone/MiniPlayer/IPlayback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    return-void
.end method

.method static synthetic access$1(Lcom/ophone/MiniPlayer/PlayingListActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ophone/MiniPlayer/PlayingListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->chooseItem:I

    return-void
.end method

.method static synthetic access$11(Lcom/ophone/MiniPlayer/PlayingListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->chooseItem:I

    return v0
.end method

.method static synthetic access$12(Lcom/ophone/MiniPlayer/PlayingListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->senddeleteplaylist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/ophone/MiniPlayer/PlayingListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->chooseItem1:I

    return-void
.end method

.method static synthetic access$14(Lcom/ophone/MiniPlayer/PlayingListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->chooseItem1:I

    return v0
.end method

.method static synthetic access$15(Lcom/ophone/MiniPlayer/PlayingListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->sendselectfiletoservice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16(Lcom/ophone/MiniPlayer/PlayingListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1201
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getDataSource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/ophone/MiniPlayer/PlayingListActivity;)Lcom/ophone/MiniPlayer/Loadimageurl;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->liu:Lcom/ophone/MiniPlayer/Loadimageurl;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ophone/MiniPlayer/PlayingListActivity;)Lcom/ophone/MiniPlayer/IPlayback;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ophone/MiniPlayer/PlayingListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->status:I

    return-void
.end method

.method static synthetic access$5(Lcom/ophone/MiniPlayer/PlayingListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 132
    iget v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->status:I

    return v0
.end method

.method static synthetic access$6(Lcom/ophone/MiniPlayer/PlayingListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ophone/MiniPlayer/PlayingListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->SendClearSongList()V

    return-void
.end method

.method static synthetic access$8(Lcom/ophone/MiniPlayer/PlayingListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->SenddeleteSong()V

    return-void
.end method

.method static synthetic access$9(Lcom/ophone/MiniPlayer/PlayingListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->SendsaveSonglist(Ljava/lang/String;)V

    return-void
.end method

.method private getDataSource(Ljava/lang/String;)V
    .locals 14
    .parameter "strPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const-string v13, "OnlinePlayer"

    .line 1202
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1204
    const v8, 0x7f05005b

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 1205
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1250
    :goto_0
    return-void

    .line 1208
    :cond_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v6, myURL:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1211
    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 1213
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1214
    .local v4, is:Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 1215
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "stream is null"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1218
    :cond_1
    iget-object v8, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->fileNa:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->fileEx:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1219
    new-instance v10, Ljava/io/File;

    const-string v11, "\\sdcard\\yy\\tmp"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1218
    invoke-static {v8, v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 1222
    .local v5, myTempFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->currentTempFilePath:Ljava/lang/String;

    .line 1223
    const-string v8, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " currentTempFilePath = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->currentTempFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1226
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v8, 0x80

    new-array v0, v8, [B

    .line 1228
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 1229
    .local v7, numread:I
    if-gtz v7, :cond_2

    .line 1238
    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1239
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1244
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 1245
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1246
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

    invoke-static {v13, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1232
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v3, v0, v12, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1
.end method

.method private getFile(Ljava/lang/String;)V
    .locals 3
    .parameter "strPath"

    .prologue
    .line 1176
    :try_start_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->currentFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1177
    invoke-direct {p0, p1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getDataSource(Ljava/lang/String;)V

    .line 1179
    :cond_0
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->currentFilePath:Ljava/lang/String;

    .line 1180
    new-instance v1, Lcom/ophone/MiniPlayer/PlayingListActivity$15;

    invoke-direct {v1, p0, p1}, Lcom/ophone/MiniPlayer/PlayingListActivity$15;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;Ljava/lang/String;)V

    .line 1191
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 1192
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getFilelist(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    .line 715
    const-string v6, "OnlinePlayer"

    const-string v7, "getFilelist(String url)"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 717
    .local v0, d:Ljava/io/File;
    const/4 v1, 0x0

    check-cast v1, [Ljava/io/File;

    .line 718
    .local v1, fl:[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 721
    :cond_0
    if-eqz v1, :cond_1

    .line 722
    array-length v3, v1

    .line 723
    .local v3, j:I
    new-array v6, v3, [Ljava/lang/String;

    iput-object v6, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->st:[Ljava/lang/String;

    .line 724
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 731
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_1
    iget-object v6, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->st:[Ljava/lang/String;

    return-object v6

    .line 726
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_2
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 727
    .local v5, stname:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, st1:Ljava/lang/String;
    iget-object v6, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->st:[Ljava/lang/String;

    aput-object v4, v6, v2

    .line 724
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private senddeleteplaylist(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    .line 441
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x1e

    .line 443
    .local v0, cmd:I
    const-string v2, "deleteplaylist"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method private sendselectfiletoservice(Ljava/lang/String;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 468
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x1d

    .line 470
    .local v0, cmd:I
    const-string v2, "filename"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    return-void
.end method


# virtual methods
.method public getAdapterMap()Ljava/util/List;
    .locals 12
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
    const-string v11, "imageurl"

    const-string v7, "duration"

    .line 736
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 737
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, j:I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 778
    const-string v7, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "songlist size:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;

    return-object v7

    .line 738
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 739
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->isTag()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 741
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 742
    const-string v7, "imageurl"

    const-string v7, "baidu"

    invoke-interface {v5, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    :cond_1
    :goto_1
    const-string v7, "counter"

    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const-string v8, "name"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, "\u3001"

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v8, "singer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f050018

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

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

    .line 751
    :try_start_0
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 752
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    .line 753
    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->getDuration()Ljava/lang/String;

    move-result-object v7

    .line 752
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 756
    .local v0, duration:F
    const/high16 v7, 0x447a

    mul-float/2addr v7, v0

    float-to-long v7, v7

    invoke-static {v7, v8}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v6

    .line 758
    .local v6, time:Ljava/lang/String;
    const-string v7, "duration"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v0           #duration:F
    .end local v6           #time:Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 743
    :cond_3
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 744
    const-string v7, "imageurl"

    const-string v7, "google"

    invoke-interface {v5, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 746
    :cond_4
    const-string v7, "imageurl"

    const-string v7, " "

    invoke-interface {v5, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 759
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v7

    if-nez v7, :cond_2

    .line 760
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v7

    if-nez v7, :cond_2

    .line 761
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->isTagfile()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 762
    const-string v8, "duration"

    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->getDuration()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 770
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 771
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 764
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_6
    :try_start_2
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ophone/MiniPlayer/provider/Song;

    .line 765
    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/provider/Song;->getDuration()Ljava/lang/String;

    move-result-object v7

    .line 764
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 766
    .local v0, duration:J
    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v6

    .line 767
    .restart local v6       #time:Ljava/lang/String;
    const-string v7, "duration"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public getfilelist()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 702
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->filelist:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 703
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 704
    .local v1, j:I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->st:[Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 711
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_0
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->st:[Ljava/lang/String;

    return-object v2

    .line 707
    .restart local v0       #i:I
    .restart local v1       #j:I
    :cond_1
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->st:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->filelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v0

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const-string v5, "OnlinePlayer"

    .line 1042
    .line 1043
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 1042
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1044
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1045
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 1144
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 1047
    :pswitch_0
    const-string v2, "OnlinePlayer"

    const-string v2, "onContextitemSelected"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->pos:I

    .line 1058
    const-string v2, "OnlinePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "onContextitemSelected song.getName()"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1059
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    iget v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->pos:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1058
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v2, "OnlinePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "info.position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/PlayingListActivity;->showDialog(I)V

    goto :goto_0

    .line 1045
    :pswitch_data_0
    .packed-switch 0x7f08003a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 392
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/ophone/MiniPlayer/PlayingListActivity;->setContentView(I)V

    .line 393
    const v3, 0x7f050009

    invoke-virtual {p0, v3}, Lcom/ophone/MiniPlayer/PlayingListActivity;->setTitle(I)V

    .line 394
    new-instance v3, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;

    invoke-direct {v3, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    iput-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->receiver:Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;

    .line 396
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v1, filter1:Landroid/content/IntentFilter;
    const-string v3, "com.myplayer.servicetoactivitysonglist"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->receiver:Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ophone/MiniPlayer/MyPlayerService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->finish()V

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 414
    .local v0, a2:I
    const-string v3, "OnlinePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SendGetSongList():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->SendGetSongList()V

    .line 416
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ophone/MiniPlayer/PlayingListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 418
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->myListView:Landroid/widget/ListView;

    .line 419
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->myListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 422
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1036
    const v1, 0x7f050069

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1037
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1038
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1039
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const v9, 0x7f050053

    const v8, 0x7f050052

    .line 504
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v6, v7

    .line 686
    :goto_0
    return-object v6

    .line 506
    :pswitch_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 507
    const v7, 0x1080001

    .line 506
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 508
    const v7, 0x7f050001

    .line 507
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 508
    const v7, 0x7f05004e

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/Dialog;
    move-object v6, v0

    .line 509
    goto :goto_0

    .line 512
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    const v7, 0x7f050028

    .line 512
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 515
    new-instance v7, Lcom/ophone/MiniPlayer/PlayingListActivity$3;

    invoke-direct {v7, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$3;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 513
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 522
    new-instance v7, Lcom/ophone/MiniPlayer/PlayingListActivity$4;

    invoke-direct {v7, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$4;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 521
    invoke-virtual {v6, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 532
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, dialog1:Landroid/app/Dialog;
    move-object v6, v1

    .line 533
    goto :goto_0

    .line 536
    .end local v1           #dialog1:Landroid/app/Dialog;
    :pswitch_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    const v7, 0x7f05000e

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 539
    new-instance v7, Lcom/ophone/MiniPlayer/PlayingListActivity$5;

    invoke-direct {v7, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$5;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 537
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 546
    new-instance v7, Lcom/ophone/MiniPlayer/PlayingListActivity$6;

    invoke-direct {v7, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$6;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 545
    invoke-virtual {v6, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 556
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .local v2, dialog2:Landroid/app/Dialog;
    move-object v6, v2

    .line 557
    goto :goto_0

    .line 561
    .end local v2           #dialog2:Landroid/app/Dialog;
    :pswitch_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 562
    .local v4, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f03000d

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 563
    .local v5, playlistfilename:Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f05000f

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 565
    new-instance v7, Lcom/ophone/MiniPlayer/PlayingListActivity$7;

    invoke-direct {v7, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$7;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 564
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 572
    new-instance v7, Lcom/ophone/MiniPlayer/PlayingListActivity$8;

    invoke-direct {v7, p0, v5}, Lcom/ophone/MiniPlayer/PlayingListActivity$8;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;Landroid/view/View;)V

    .line 571
    invoke-virtual {v6, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 583
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .local v3, dialog3:Landroid/app/Dialog;
    move-object v6, v3

    .line 584
    goto/16 :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/16 v9, 0x9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/16 v5, 0x30

    const/4 v6, 0x0

    .line 865
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 869
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f05001f

    invoke-interface {p1, v6, v6, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020007

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 871
    const/4 v3, 0x5

    const v4, 0x7f050020

    invoke-interface {p1, v6, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020029

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 872
    const v3, 0x7f020011

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 873
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 874
    .local v1, r:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x2

    const v4, 0x7f05003e

    invoke-interface {p1, v6, v8, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 875
    const v3, 0x7f020019

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 876
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 877
    const/4 v3, 0x3

    const v4, 0x7f05003d

    invoke-interface {p1, v6, v9, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 878
    const v3, 0x7f02001d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 879
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 880
    const/16 v3, 0xa

    const/4 v4, 0x4

    const v5, 0x7f050040

    invoke-interface {p1, v6, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 882
    const/16 v3, 0xc

    const/4 v4, 0x6

    const v5, 0x7f050017

    invoke-interface {p1, v6, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 883
    const/16 v3, 0xd

    const/4 v4, 0x7

    const v5, 0x7f050016

    invoke-interface {p1, v6, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 884
    const/16 v3, 0xe

    const v4, 0x7f05006b

    invoke-interface {p1, v6, v3, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 885
    const/16 v3, 0x10

    const v4, 0x7f05006d

    invoke-interface {p1, v6, v3, v9, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 886
    return v7
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 496
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 497
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 498
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->receiver:Lcom/ophone/MiniPlayer/PlayingListActivity$UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 499
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 691
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 692
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 694
    .local v0, i:Landroid/content/Intent;
    const-string v2, "song"

    iget-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 695
    const-string v1, "R.string"

    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->rString:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->startActivity(Landroid/content/Intent;)V

    .line 698
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 890
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 891
    .local v6, itemId:I
    packed-switch v6, :pswitch_data_0

    .line 1028
    .end local p1
    :goto_0
    :pswitch_0
    const/4 v10, 0x1

    return v10

    .line 893
    .restart local p1
    :pswitch_1
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/ophone/MiniPlayer/PlayingListActivity;->showDialog(I)V

    goto :goto_0

    .line 896
    :pswitch_2
    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/ophone/MiniPlayer/PlayingListActivity;->showDialog(I)V

    goto :goto_0

    .line 899
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v10, Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-direct {v2, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 900
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/PlayingListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 903
    .end local v2           #i:Landroid/content/Intent;
    :pswitch_4
    new-instance v3, Landroid/content/Intent;

    const-class v10, Lcom/ophone/MiniPlayer/MusicFeedActivity;

    invoke-direct {v3, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 904
    .local v3, i1:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/ophone/MiniPlayer/PlayingListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 907
    .end local v3           #i1:Landroid/content/Intent;
    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    const-class v10, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v4, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 908
    .local v4, i2:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 918
    .end local v4           #i2:Landroid/content/Intent;
    :pswitch_6
    const/4 v9, 0x0

    .line 919
    .local v9, song1:Lcom/ophone/MiniPlayer/provider/Song;
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 920
    const/4 v5, 0x0

    .end local p1
    .local v5, i3:I
    :goto_1
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v5, v10, :cond_1

    .line 930
    .end local v5           #i3:I
    :cond_0
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getAdapterMap()Ljava/util/List;

    .line 931
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

    invoke-virtual {v10}, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->notifyDataSetChanged()V

    .line 932
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->SendSonglisttoService()V

    goto :goto_0

    .line 922
    .restart local v5       #i3:I
    :cond_1
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-lt v7, v10, :cond_2

    .line 920
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 923
    :cond_2
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getAdddate()J

    move-result-wide v10

    iget-object v12, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getAdddate()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    .line 925
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #song1:Lcom/ophone/MiniPlayer/provider/Song;
    check-cast v9, Lcom/ophone/MiniPlayer/provider/Song;

    .line 926
    .restart local v9       #song1:Lcom/ophone/MiniPlayer/provider/Song;
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v10, v7, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 927
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v10, v11, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 936
    .end local v5           #i3:I
    .end local v7           #j:I
    .end local v9           #song1:Lcom/ophone/MiniPlayer/provider/Song;
    .restart local p1
    :pswitch_7
    const/4 v9, 0x0

    .line 938
    .restart local v9       #song1:Lcom/ophone/MiniPlayer/provider/Song;
    new-instance v8, Lcom/ophone/MiniPlayer/utils/PinyinComparator;

    invoke-direct {v8}, Lcom/ophone/MiniPlayer/utils/PinyinComparator;-><init>()V

    .line 939
    .local v8, pc:Lcom/ophone/MiniPlayer/utils/PinyinComparator;
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    .line 940
    const/4 v5, 0x0

    .end local p1
    .restart local v5       #i3:I
    :goto_3
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v5, v10, :cond_5

    .line 950
    .end local v5           #i3:I
    :cond_4
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getAdapterMap()Ljava/util/List;

    .line 951
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

    invoke-virtual {v10}, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->notifyDataSetChanged()V

    .line 952
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->SendSonglisttoService()V

    goto/16 :goto_0

    .line 942
    .restart local v5       #i3:I
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_4
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-lt v7, v10, :cond_6

    .line 940
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 943
    :cond_6
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/ophone/MiniPlayer/utils/PinyinComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_7

    .line 945
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #song1:Lcom/ophone/MiniPlayer/provider/Song;
    check-cast v9, Lcom/ophone/MiniPlayer/provider/Song;

    .line 946
    .restart local v9       #song1:Lcom/ophone/MiniPlayer/provider/Song;
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v10, v7, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 947
    iget-object v10, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v10, v11, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 942
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 956
    .end local v5           #i3:I
    .end local v7           #j:I
    .end local v8           #pc:Lcom/ophone/MiniPlayer/utils/PinyinComparator;
    .end local v9           #song1:Lcom/ophone/MiniPlayer/provider/Song;
    .restart local p1
    :pswitch_8
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f05006c

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 957
    const-string v11, "/sdcard/myplayer/playlist"

    invoke-direct {p0, v11}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getFilelist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->chooseItem:I

    new-instance v13, Lcom/ophone/MiniPlayer/PlayingListActivity$9;

    invoke-direct {v13, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$9;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 956
    invoke-virtual {v10, v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 965
    const v11, 0x7f050052

    .line 966
    new-instance v12, Lcom/ophone/MiniPlayer/PlayingListActivity$10;

    invoke-direct {v12, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$10;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 965
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 972
    const v11, 0x7f050053

    .line 973
    new-instance v12, Lcom/ophone/MiniPlayer/PlayingListActivity$11;

    invoke-direct {v12, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$11;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 972
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 986
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 987
    .local v0, dialog4:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 991
    .end local v0           #dialog4:Landroid/app/Dialog;
    :pswitch_9
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f05006e

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 992
    const-string v11, "/sdcard/myplayer/playlist"

    invoke-direct {p0, v11}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getFilelist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/ophone/MiniPlayer/PlayingListActivity;->chooseItem1:I

    new-instance v13, Lcom/ophone/MiniPlayer/PlayingListActivity$12;

    invoke-direct {v13, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$12;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 991
    invoke-virtual {v10, v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1000
    const v11, 0x7f050052

    .line 1001
    new-instance v12, Lcom/ophone/MiniPlayer/PlayingListActivity$13;

    invoke-direct {v12, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$13;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 1000
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1007
    const v11, 0x7f050053

    .line 1008
    new-instance v12, Lcom/ophone/MiniPlayer/PlayingListActivity$14;

    invoke-direct {v12, p0}, Lcom/ophone/MiniPlayer/PlayingListActivity$14;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 1007
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1022
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1023
    .local v1, dialog5:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 490
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 492
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 476
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 486
    return-void
.end method
