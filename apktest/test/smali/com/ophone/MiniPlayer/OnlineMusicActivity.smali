.class public Lcom/ophone/MiniPlayer/OnlineMusicActivity;
.super Landroid/app/ListActivity;
.source "OnlineMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;,
        Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;,
        Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final MSG_XMLPARSE_END:I = 0x1

.field private static final OPTION_ITEM_ADDSELECTEDSONG:I = 0x0

.field private static final OPTION_ITEM_LOCALSONG:I = 0x4

.field private static final OPTION_ITEM_PLAYING:I = 0x5

.field private static final OPTION_ITEM_PLAYLIST:I = 0x6

.field private static final OPTION_ITEM_TOMAINMENU:I = 0x7

.field private static final SHOW_PROGRESS_DIALOG:I = 0x2

.field private static final SHOW_SELECTEDSONG_DIALOG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OnlinePlayer"


# instance fields
.field asyncimageloader:Lcom/ophone/MiniPlayer/AsyncImageLoader;

.field private connection:Landroid/content/ServiceConnection;

.field private countDownload:I

.field private counter:I

.field private currentFilePath:Ljava/lang/String;

.field private currentTempFilePath:Ljava/lang/String;

.field private fileEx:Ljava/lang/String;

.field private fileNa:Ljava/lang/String;

.field flagcheck:I

.field private handler:Landroid/os/Handler;

.field private i:I

.field imageurl:Ljava/lang/String;

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

.field private listbitmap:Ljava/util/List;
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

.field liu:Lcom/ophone/MiniPlayer/Loadimageurl;

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private myListView:Landroid/widget/ListView;

.field private myTempFileringtone:Ljava/io/File;

.field private pos1:I

.field private rString:Ljava/lang/Integer;

.field receiver:Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;

.field private service:Lcom/ophone/MiniPlayer/IPlayback;

.field simpleAdapter:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

.field private song:Lcom/ophone/MiniPlayer/provider/Song;

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

.field private status:I

.field private strURL:Ljava/lang/String;

.field private strURLlrc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    .line 70
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 80
    iput v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->flagcheck:I

    .line 84
    iput-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;

    .line 88
    iput v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->status:I

    .line 92
    iput v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->countDownload:I

    .line 94
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->strURL:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->strURLlrc:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->fileEx:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->fileNa:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->currentFilePath:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->currentTempFilePath:Ljava/lang/String;

    .line 105
    iput v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->counter:I

    .line 106
    iput v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->i:I

    .line 107
    iput-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->imageurl:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/ophone/MiniPlayer/Loadimageurl;

    invoke-direct {v0}, Lcom/ophone/MiniPlayer/Loadimageurl;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->liu:Lcom/ophone/MiniPlayer/Loadimageurl;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->list:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->listbitmap:Ljava/util/List;

    .line 205
    new-instance v0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;-><init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->handler:Landroid/os/Handler;

    .line 309
    new-instance v0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$2;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$2;-><init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->connection:Landroid/content/ServiceConnection;

    .line 70
    return-void
.end method

.method private JudgePlayingOnline(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 752
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.myplayer.toService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x1a

    .line 754
    .local v0, cmd:I
    const-string v3, "cmd"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 755
    const-string v3, "position"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 756
    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    .line 767
    .local v2, song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 768
    invoke-virtual {v2}, Lcom/ophone/MiniPlayer/provider/Song;->getSource()Lcom/ophone/MiniPlayer/provider/Song$Source;

    move-result-object v3

    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;

    invoke-static {v4, v2}, Lcom/ophone/MiniPlayer/provider/SongManager;->getSongSource(Ljava/lang/Integer;Lcom/ophone/MiniPlayer/provider/Song;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ophone/MiniPlayer/provider/Song$Source;->setLinks(Ljava/util/ArrayList;)V

    .line 769
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ophone/MiniPlayer/provider/Song;->setTag(Z)V

    .line 770
    const-string v3, "song"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 773
    return-void
.end method

.method private SendAddSongtoList()V
    .locals 7

    .prologue
    .line 728
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.myplayer.toService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v3, intent:Landroid/content/Intent;
    const/16 v1, 0x16

    .line 730
    .local v1, cmd:I
    const-string v4, "cmd"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 732
    .local v0, a:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 747
    const-string v4, "songlist"

    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 748
    invoke-virtual {p0, v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 749
    return-void

    .line 741
    :cond_0
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 742
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getSource()Lcom/ophone/MiniPlayer/provider/Song$Source;

    move-result-object v5

    .line 744
    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-static {v6, v4}, Lcom/ophone/MiniPlayer/provider/SongManager;->getSongSource(Ljava/lang/Integer;Lcom/ophone/MiniPlayer/provider/Song;)Ljava/util/ArrayList;

    move-result-object v4

    .line 742
    invoke-virtual {v5, v4}, Lcom/ophone/MiniPlayer/provider/Song$Source;->setLinks(Ljava/util/ArrayList;)V

    .line 745
    :cond_1
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/ophone/MiniPlayer/provider/Song;->setTag(Z)V

    .line 732
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Lcom/ophone/MiniPlayer/IPlayback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;

    return-void
.end method

.method static synthetic access$1(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->status:I

    return v0
.end method

.method static synthetic access$11(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$12(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->SendAddSongtoList()V

    return-void
.end method

.method static synthetic access$2(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$3(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Lcom/ophone/MiniPlayer/provider/Song;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    return-void
.end method

.method static synthetic access$7(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Lcom/ophone/MiniPlayer/provider/Song;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ophone/MiniPlayer/OnlineMusicActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->status:I

    return-void
.end method

.method private senddownloadurltoservice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "strURL"
    .parameter "strURllrc"
    .parameter "singer"
    .parameter "songname"

    .prologue
    .line 1094
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.myplayer.toService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x1b

    .line 1096
    .local v0, cmd:I
    const-string v2, "strURL"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const-string v2, "strURllrc"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    const-string v2, "cmd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1101
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1102
    return-void
.end method


# virtual methods
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
    const-string v10, "imageurl"

    .line 854
    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 855
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, j:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 894
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_0
    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->list:Ljava/util/List;

    return-object v6

    .line 856
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 857
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 858
    const-string v6, "imageurl"

    const-string v6, "google"

    invoke-interface {v4, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :cond_2
    :goto_1
    const-string v7, "name"

    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v7, "singer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f050018

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    :try_start_0
    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 869
    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ophone/MiniPlayer/provider/Song;

    .line 870
    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->getDuration()Ljava/lang/String;

    move-result-object v6

    .line 869
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 873
    .local v0, duration:F
    const/high16 v6, 0x447a

    mul-float/2addr v6, v0

    float-to-long v6, v6

    invoke-static {v6, v7}, Lcom/ophone/MiniPlayer/utils/StringUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v5

    .line 875
    .local v5, time:Ljava/lang/String;
    const-string v6, "duration"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .end local v0           #duration:F
    .end local v5           #time:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->list:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 862
    :cond_4
    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v6}, Lcom/ophone/MiniPlayer/provider/Song;->isTagbaidu()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 864
    const-string v6, "imageurl"

    const-string v6, "baidu"

    invoke-interface {v4, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 887
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 888
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const-string v8, "OnlinePlayer"

    .line 1011
    .line 1012
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 1011
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1013
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1014
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 1090
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 1035
    :pswitch_0
    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->pos1:I

    .line 1036
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->pos1:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->isTaggoogle()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1037
    const-string v4, "OnlinePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "onContextitemSelected song.getName()"

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1038
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    iget v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->pos1:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1037
    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v4, "OnlinePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "info.position"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->pos1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const v4, 0x7f050065

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 1041
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1064
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->pos1:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getGooglepath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->strURL:Ljava/lang/String;

    .line 1065
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->pos1:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getLyrics()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->strURLlrc:Ljava/lang/String;

    .line 1066
    const/4 v2, 0x0

    .line 1067
    .local v2, singer:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1068
    .local v3, songname:Ljava/lang/String;
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->pos1:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getSinger()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #singer:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1069
    .restart local v2       #singer:Ljava/lang/String;
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;

    iget v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->pos1:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1071
    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->strURL:Ljava/lang/String;

    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->strURLlrc:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->senddownloadurltoservice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    :pswitch_data_0
    .packed-switch 0x7f08003c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const-string v5, "R.string"

    .line 558
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 559
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->setContentView(I)V

    .line 560
    const v2, 0x7f050009

    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->setTitle(I)V

    .line 570
    new-instance v2, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;-><init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V

    iput-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->receiver:Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;

    .line 572
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 573
    .local v0, filter1:Landroid/content/IntentFilter;
    const-string v2, "com.myplayer.servicetoactivityonline"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->receiver:Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 579
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "R.string"

    const/4 v3, -0x1

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;

    .line 580
    const-string v2, "OnlinePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "R.string"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->rString:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 584
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-string v4, "flash"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 585
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 626
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->myListView:Landroid/widget/ListView;

    .line 627
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->myListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 628
    const v4, 0x7f020036

    .line 627
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 631
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1005
    const v1, 0x7f050069

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1006
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1007
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const v1, 0x7f070002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1008
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 724
    :goto_0
    return-object v0

    .line 693
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 694
    const v2, 0x1080001

    .line 693
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 695
    const v2, 0x7f050001

    .line 694
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 695
    const v2, 0x7f05004e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 696
    goto :goto_0

    .line 698
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 699
    const v2, 0x7f05002c

    .line 698
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 700
    const v2, 0x7f050052

    .line 701
    new-instance v3, Lcom/ophone/MiniPlayer/OnlineMusicActivity$4;

    invoke-direct {v3, p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$4;-><init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V

    .line 699
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 707
    const v2, 0x7f050053

    .line 708
    new-instance v3, Lcom/ophone/MiniPlayer/OnlineMusicActivity$5;

    invoke-direct {v3, p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$5;-><init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V

    .line 707
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 718
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 720
    goto :goto_0

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x30

    .line 943
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 946
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f020001

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 947
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 949
    .local v1, r:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f05002b

    .line 948
    invoke-interface {p1, v7, v7, v8, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 949
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 952
    const/4 v3, 0x7

    const v4, 0x7f05002f

    invoke-interface {p1, v7, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 953
    const v4, 0x7f020013

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 954
    const v3, 0x7f020011

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 955
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 956
    const v3, 0x7f05003e

    invoke-interface {p1, v7, v5, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 957
    const v3, 0x7f020020

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 958
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 959
    const/4 v3, 0x6

    const/4 v4, 0x2

    const v5, 0x7f05003f

    invoke-interface {p1, v7, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 960
    const v3, 0x7f02001d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 961
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 962
    const/4 v3, 0x5

    const/4 v4, 0x3

    const v5, 0x7f050040

    invoke-interface {p1, v7, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 965
    return v8
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 683
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 685
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->receiver:Lcom/ophone/MiniPlayer/OnlineMusicActivity$UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 686
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 806
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 809
    invoke-direct {p0, p3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->JudgePlayingOnline(I)V

    .line 849
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 969
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 970
    .local v4, itemId:I
    packed-switch v4, :pswitch_data_0

    .line 998
    :goto_0
    :pswitch_0
    const/4 v5, 0x1

    return v5

    .line 972
    :pswitch_1
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->showDialog(I)V

    goto :goto_0

    .line 975
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 976
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 979
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .line 980
    const-class v5, Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 979
    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 981
    .local v1, i1:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 984
    .end local v1           #i1:Landroid/content/Intent;
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 985
    .local v2, i2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 992
    .end local v2           #i2:Landroid/content/Intent;
    :pswitch_5
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/MainActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 993
    .local v3, i3:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 970
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 677
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 679
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 635
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 640
    new-instance v0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;

    invoke-direct {v0, p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;-><init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V

    .line 672
    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$3;->start()V

    .line 673
    return-void
.end method
