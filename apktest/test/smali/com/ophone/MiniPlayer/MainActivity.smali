.class public Lcom/ophone/MiniPlayer/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field public static final OPTION_ITEM_EXIT:I = 0x4

.field private static final SHOW_EXIT_DIALOG:I = 0x3

.field public static final TAG:Ljava/lang/String; = "debug"


# instance fields
.field private gridview:Landroid/widget/GridView;

.field private indexextern:I

.field list:Ljava/util/List;
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

.field private mImageIds:[Ljava/lang/Integer;

.field private mImageIds1:[Ljava/lang/Integer;

.field private mTextIds:[Ljava/lang/Integer;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity;->list:Ljava/util/List;

    .line 78
    iput v2, p0, Lcom/ophone/MiniPlayer/MainActivity;->indexextern:I

    .line 83
    new-instance v0, Lcom/ophone/MiniPlayer/Loadimageurl;

    invoke-direct {v0}, Lcom/ophone/MiniPlayer/Loadimageurl;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity;->liu:Lcom/ophone/MiniPlayer/Loadimageurl;

    .line 87
    new-array v0, v6, [Ljava/lang/Integer;

    .line 88
    const v1, 0x7f02001a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f020012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020021

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02001e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity;->mImageIds:[Ljava/lang/Integer;

    .line 91
    new-array v0, v6, [Ljava/lang/Integer;

    .line 92
    const v1, 0x7f020019

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f020011

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02001d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity;->mImageIds1:[Ljava/lang/Integer;

    .line 95
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    .line 96
    const v1, 0x7f05003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f05003e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f05003f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f050040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f050041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity;->mTextIds:[Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/MainActivity;)[Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity;->mTextIds:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ophone/MiniPlayer/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MainActivity;->setContentView(I)V

    .line 227
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MainActivity;->gridview:Landroid/widget/GridView;

    .line 235
    new-instance v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    invoke-direct {v0, p0, p0}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;-><init>(Lcom/ophone/MiniPlayer/MainActivity;Lcom/ophone/MiniPlayer/MainActivity;)V

    .line 240
    .local v0, addadapter:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MainActivity;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MainActivity;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 244
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MainActivity;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 246
    const-string v1, "MyPlayer"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/ophone/MiniPlayer/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ophone/MiniPlayer/MainActivity;->settings:Landroid/content/SharedPreferences;

    .line 248
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 254
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MainActivity;->mTextIds:[Ljava/lang/Integer;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 163
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ophone/MiniPlayer/MyPlayerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/ophone/MiniPlayer/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    return-void

    .line 121
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ophone/MiniPlayer/MusicFeedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x7f05003d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
