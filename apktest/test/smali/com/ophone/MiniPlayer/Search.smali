.class public Lcom/ophone/MiniPlayer/Search;
.super Landroid/app/Activity;
.source "Search.java"


# static fields
.field private static final OPTION_ITEM_LOCALSONG:I = 0x1

.field private static final OPTION_ITEM_ONLINESONG:I = 0x2

.field private static final OPTION_ITEM_PLAYING:I = 0x3

.field private static final OPTION_ITEM_PLAYLIST:I = 0x4


# instance fields
.field a:I

.field bt1:Landroid/widget/Button;

.field bt2:Landroid/widget/Button;

.field private dm:Landroid/util/DisplayMetrics;

.field ev:Landroid/widget/EditText;

.field googlesuffix:Ljava/lang/String;

.field private l1:Landroid/widget/LinearLayout;

.field private l2:Landroid/widget/LinearLayout;

.field private l3:Landroid/widget/LinearLayout;

.field private liu:Lcom/ophone/MiniPlayer/Loadimageurl;

.field menuGrid:Landroid/widget/GridView;

.field menu_image_array:[I

.field menu_name_array:[I

.field menu_name_arrays:[Ljava/lang/String;

.field pop:Landroid/widget/PopupWindow;

.field urlbaidu:Ljava/lang/String;

.field urlgoogle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x2

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lcom/ophone/MiniPlayer/Loadimageurl;

    invoke-direct {v0}, Lcom/ophone/MiniPlayer/Loadimageurl;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/Search;->liu:Lcom/ophone/MiniPlayer/Loadimageurl;

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/Search;->menu_image_array:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ophone/MiniPlayer/Search;->menu_name_array:[I

    .line 48
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "baidu"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "google"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ophone/MiniPlayer/Search;->menu_name_arrays:[Ljava/lang/String;

    .line 54
    iput-object v3, p0, Lcom/ophone/MiniPlayer/Search;->urlbaidu:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lcom/ophone/MiniPlayer/Search;->urlgoogle:Ljava/lang/String;

    .line 56
    iput-object v3, p0, Lcom/ophone/MiniPlayer/Search;->googlesuffix:Ljava/lang/String;

    .line 57
    iput v4, p0, Lcom/ophone/MiniPlayer/Search;->a:I

    .line 36
    return-void

    .line 45
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
    .end array-data

    .line 47
    :array_1
    .array-data 0x4
        0x42t 0x0t 0x5t 0x7ft
        0x43t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method private getMenuAdapter([Ljava/lang/String;[I)Landroid/widget/SimpleAdapter;
    .locals 11
    .parameter "menuNameArray"
    .parameter "imageResourceArray"

    .prologue
    const/4 v8, 0x2

    const-string v10, "itemText"

    const-string v9, "itemImage"

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v1, p1

    if-lt v6, v1, :cond_0

    .line 233
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 234
    const v3, 0x7f030005

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "itemImage"

    aput-object v9, v4, v1

    const/4 v1, 0x1

    const-string v5, "itemText"

    aput-object v10, v4, v1

    .line 235
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 233
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 236
    .local v0, simperAdapter:Landroid/widget/SimpleAdapter;
    return-object v0

    .line 228
    .end local v0           #simperAdapter:Landroid/widget/SimpleAdapter;
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemImage"

    aget v1, p2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "itemText"

    aget-object v1, p1, v6

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 235
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x8t 0x7ft
        0x6t 0x0t 0x8t 0x7ft
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x28

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v8, 0x7f030012

    invoke-virtual {p0, v8}, Lcom/ophone/MiniPlayer/Search;->setContentView(I)V

    .line 66
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v8, p0, Lcom/ophone/MiniPlayer/Search;->dm:Landroid/util/DisplayMetrics;

    .line 67
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/Search;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    iget-object v9, p0, Lcom/ophone/MiniPlayer/Search;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->dm:Landroid/util/DisplayMetrics;

    iget v2, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 69
    .local v2, dmwidth:I
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->dm:Landroid/util/DisplayMetrics;

    iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 70
    .local v1, dmheight:I
    const v8, 0x7f080010

    invoke-virtual {p0, v8}, Lcom/ophone/MiniPlayer/Search;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/ophone/MiniPlayer/Search;->l2:Landroid/widget/LinearLayout;

    .line 71
    sub-int v8, v2, v10

    sub-int v3, v8, v10

    .line 73
    .local v3, l2width:I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v4, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v4, param:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->l2:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const v8, 0x7f080031

    invoke-virtual {p0, v8}, Lcom/ophone/MiniPlayer/Search;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/ophone/MiniPlayer/Search;->bt1:Landroid/widget/Button;

    .line 78
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/Search;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 81
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x7f020016

    invoke-static {v6, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v10, v10}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 83
    .local v5, r:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->bt1:Landroid/widget/Button;

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    const v8, 0x7f080032

    invoke-virtual {p0, v8}, Lcom/ophone/MiniPlayer/Search;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/ophone/MiniPlayer/Search;->ev:Landroid/widget/EditText;

    .line 94
    const v8, 0x7f080033

    invoke-virtual {p0, v8}, Lcom/ophone/MiniPlayer/Search;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/ophone/MiniPlayer/Search;->bt2:Landroid/widget/Button;

    .line 95
    const v8, 0x7f02002b

    invoke-static {v6, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    invoke-static {v0, v10, v10}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 97
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->bt2:Landroid/widget/Button;

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->bt2:Landroid/widget/Button;

    new-instance v9, Lcom/ophone/MiniPlayer/Search$1;

    invoke-direct {v9, p0}, Lcom/ophone/MiniPlayer/Search$1;-><init>(Lcom/ophone/MiniPlayer/Search;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/Search;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030011

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 177
    .local v7, view:Landroid/view/View;
    new-instance v8, Landroid/widget/PopupWindow;

    const/16 v9, 0x140

    const/16 v10, 0x1c2

    invoke-direct {v8, v7, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v8, p0, Lcom/ophone/MiniPlayer/Search;->pop:Landroid/widget/PopupWindow;

    .line 178
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->pop:Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 179
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->pop:Landroid/widget/PopupWindow;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->pop:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 181
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->pop:Landroid/widget/PopupWindow;

    new-instance v9, Lcom/ophone/MiniPlayer/Search$2;

    invoke-direct {v9, p0}, Lcom/ophone/MiniPlayer/Search$2;-><init>(Lcom/ophone/MiniPlayer/Search;)V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 193
    const v8, 0x7f080030

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    iput-object v8, p0, Lcom/ophone/MiniPlayer/Search;->menuGrid:Landroid/widget/GridView;

    .line 194
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->menuGrid:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/ophone/MiniPlayer/Search;->menu_name_arrays:[Ljava/lang/String;

    iget-object v10, p0, Lcom/ophone/MiniPlayer/Search;->menu_image_array:[I

    invoke-direct {p0, v9, v10}, Lcom/ophone/MiniPlayer/Search;->getMenuAdapter([Ljava/lang/String;[I)Landroid/widget/SimpleAdapter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    iget-object v8, p0, Lcom/ophone/MiniPlayer/Search;->menuGrid:Landroid/widget/GridView;

    new-instance v9, Lcom/ophone/MiniPlayer/Search$3;

    invoke-direct {v9, p0}, Lcom/ophone/MiniPlayer/Search$3;-><init>(Lcom/ophone/MiniPlayer/Search;)V

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 224
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

    .line 243
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/Search;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 250
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f020011

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 252
    .local v1, r:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f05003e

    invoke-interface {p1, v6, v7, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 253
    const v3, 0x7f020020

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 255
    const/4 v3, 0x4

    const v4, 0x7f05003f

    invoke-interface {p1, v6, v3, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 256
    const v3, 0x7f020019

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 258
    const v3, 0x7f05003d

    invoke-interface {p1, v6, v8, v9, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 259
    const v3, 0x7f02001d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    invoke-static {v0, v5, v5}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 261
    const/4 v3, 0x4

    const v4, 0x7f050040

    invoke-interface {p1, v6, v9, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 262
    return v7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 266
    .local v4, itemId:I
    packed-switch v4, :pswitch_data_0

    .line 285
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 268
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/Search;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/MusicFeedActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v1, i1:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/Search;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 276
    .end local v1           #i1:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v2, i2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/ophone/MiniPlayer/Search;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 280
    .end local v2           #i2:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v3, i3:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/ophone/MiniPlayer/Search;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
