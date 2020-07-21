.class public Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mlancher:Lcom/ophone/MiniPlayer/MainActivity;

.field final synthetic this$0:Lcom/ophone/MiniPlayer/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/MainActivity;Lcom/ophone/MiniPlayer/MainActivity;)V
    .locals 7
    .parameter
    .parameter "launcher"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;

    .line 298
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 299
    iput-object p2, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mlancher:Lcom/ophone/MiniPlayer/MainActivity;

    .line 300
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Lcom/ophone/MiniPlayer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 303
    invoke-virtual {p2}, Lcom/ophone/MiniPlayer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 305
    .local v2, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;

    const v3, 0x7f05003d

    .line 306
    const v4, 0x7f02001a

    const v5, 0x7f020019

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;-><init>(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;Landroid/content/res/Resources;III)V

    .line 305
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;

    const v3, 0x7f05003e

    .line 309
    const v4, 0x7f020012

    const v5, 0x7f020011

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;-><init>(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;Landroid/content/res/Resources;III)V

    .line 308
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;

    const v3, 0x7f05003f

    .line 312
    const v4, 0x7f020021

    const v5, 0x7f020020

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;-><init>(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;Landroid/content/res/Resources;III)V

    .line 311
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;

    const v3, 0x7f050040

    .line 315
    const v4, 0x7f02001e

    const v5, 0x7f02001d

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;-><init>(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;Landroid/content/res/Resources;III)V

    .line 314
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v6, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;

    const v3, 0x7f050041

    .line 318
    const v4, 0x7f02002c

    const v5, 0x7f02002a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;-><init>(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;Landroid/content/res/Resources;III)V

    .line 317
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 364
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 368
    move v2, p1

    .line 369
    .local v2, pos:I
    invoke-virtual {p0, p1}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;

    .line 371
    .local v1, item:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;
    if-nez p2, :cond_0

    .line 372
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030004

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 384
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 385
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 386
    iget-object v4, v1, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v4, v1, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 388
    new-instance v4, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;-><init>(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;Landroid/widget/TextView;Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 519
    return-object p2
.end method
