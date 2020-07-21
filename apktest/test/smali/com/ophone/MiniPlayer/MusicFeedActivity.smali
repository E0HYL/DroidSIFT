.class public Lcom/ophone/MiniPlayer/MusicFeedActivity;
.super Landroid/app/ListActivity;
.source "MusicFeedActivity.java"


# static fields
.field private static final ITEM_SCAN:I = 0x1

.field private static final OPTION_ITEM_LOCALSONG:I = 0x2

.field private static final OPTION_ITEM_PLAYING:I = 0x3

.field private static final OPTION_ITEM_PLAYLIST:I = 0x4

.field private static final SHOW_PROGRESS_DIALOG:I = 0x1


# instance fields
.field liu:Lcom/ophone/MiniPlayer/Loadimageurl;

.field private mFeedUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageIds:[Ljava/lang/Integer;

.field private mTextIds:[Ljava/lang/Integer;

.field private myListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f02000c

    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/ophone/MiniPlayer/Loadimageurl;

    invoke-direct {v0}, Lcom/ophone/MiniPlayer/Loadimageurl;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicFeedActivity;->liu:Lcom/ophone/MiniPlayer/Loadimageurl;

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const v2, 0x7f020005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f020005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicFeedActivity;->mImageIds:[Ljava/lang/Integer;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    .line 66
    const v1, 0x7f050048

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f050049

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f05004b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f05004a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const v2, 0x7f05004c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f05004d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicFeedActivity;->mTextIds:[Ljava/lang/Integer;

    .line 47
    return-void
.end method


# virtual methods
.method public getAdapterMap()Ljava/util/List;
    .locals 7
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
    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MusicFeedActivity;->mImageIds:[Ljava/lang/Integer;

    array-length v1, v4

    .local v1, j:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 198
    return-object v2

    .line 193
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "listIcon"

    iget-object v5, p0, Lcom/ophone/MiniPlayer/MusicFeedActivity;->mImageIds:[Ljava/lang/Integer;

    aget-object v5, v5, v0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v4, "listText"

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/ophone/MiniPlayer/MusicFeedActivity;->mTextIds:[Ljava/lang/Integer;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x30

    .line 206
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 209
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f02001d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 212
    .local v1, r:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f050040

    .line 211
    invoke-interface {p1, v6, v9, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 212
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 213
    const v3, 0x7f020020

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 215
    const/4 v3, 0x4

    .line 216
    const v4, 0x7f05003f

    .line 215
    invoke-interface {p1, v6, v3, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 216
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 217
    const v3, 0x7f020011

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 220
    const v3, 0x7f05003e

    .line 219
    invoke-interface {p1, v6, v8, v9, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 220
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 226
    return v7
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 166
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 180
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, i:Landroid/content/Intent;
    const-string v1, "R.string"

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicFeedActivity;->mTextIds:[Ljava/lang/Integer;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 230
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 231
    .local v3, itemId:I
    packed-switch v3, :pswitch_data_0

    .line 252
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 236
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 240
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .local v1, i1:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    .end local v1           #i1:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v2, i2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 160
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 138
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 148
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->getAdapterMap()Ljava/util/List;

    move-result-object v2

    .line 149
    const v3, 0x7f030002

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "listIcon"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "listText"

    aput-object v5, v4, v1

    .line 150
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 148
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 151
    .local v0, simpleAdapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MusicFeedActivity;->myListView:Landroid/widget/ListView;

    .line 153
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicFeedActivity;->myListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MusicFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 154
    return-void

    .line 150
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x8t 0x7ft
        0x2t 0x0t 0x8t 0x7ft
    .end array-data
.end method
