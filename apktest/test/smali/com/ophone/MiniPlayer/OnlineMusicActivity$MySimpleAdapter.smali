.class Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "OnlineMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/OnlineMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MySimpleAdapter"
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 338
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->map:Ljava/util/Map;

    .line 341
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 344
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->map:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f020013

    const/16 v8, 0x18

    const-string v10, "duration"

    .line 383
    if-nez p2, :cond_2

    .line 384
    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 385
    const v6, 0x7f03000b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 389
    new-instance v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;

    invoke-direct {v1}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;-><init>()V

    .line 391
    .local v1, holder:Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;
    const v5, 0x7f08001d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 390
    iput-object v5, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemIcon:Landroid/widget/ImageView;

    .line 393
    const v5, 0x7f08001e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 392
    iput-object v5, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemTitle:Landroid/widget/TextView;

    .line 395
    const v5, 0x7f08001f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 394
    iput-object v5, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemArtist:Landroid/widget/TextView;

    .line 397
    const v5, 0x7f080021

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 396
    iput-object v5, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemDuration:Landroid/widget/TextView;

    .line 399
    const v5, 0x7f080020

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 398
    iput-object v5, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemcheck:Landroid/widget/CheckBox;

    .line 402
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 412
    :goto_0
    iget-object v6, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->list:Ljava/util/List;
    invoke-static {v5}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$1(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "imageurl"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->imageurl:Ljava/lang/String;

    .line 413
    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    iget-object v5, v5, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->imageurl:Ljava/lang/String;

    const-string v6, "baidu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 420
    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    invoke-virtual {v5}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 423
    .local v4, res:Landroid/content/res/Resources;
    invoke-static {v4, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 424
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v8, v8}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 425
    .local v3, r:Landroid/graphics/drawable/Drawable;
    iget-object v5, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    :cond_0
    :goto_1
    iget-object v6, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->list:Ljava/util/List;
    invoke-static {v5}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$1(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "name"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v6, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemArtist:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->list:Ljava/util/List;
    invoke-static {v5}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$1(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "singer"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 527
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 526
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->list:Ljava/util/List;
    invoke-static {v5}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$1(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "duration"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 529
    iget-object v6, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemDuration:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->list:Ljava/util/List;
    invoke-static {v5}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$1(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "duration"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 530
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 529
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :cond_1
    iget-object v6, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemcheck:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 533
    iget-object v5, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemcheck:Landroid/widget/CheckBox;

    new-instance v6, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;

    invoke-direct {v6, p0, p1}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;-><init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    return-object p2

    .line 406
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #holder:Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;
    .end local v3           #r:Landroid/graphics/drawable/Drawable;
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;

    .restart local v1       #holder:Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;
    goto/16 :goto_0

    .line 430
    :cond_3
    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    invoke-virtual {v5}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 433
    .restart local v4       #res:Landroid/content/res/Resources;
    invoke-static {v4, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 434
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v8, v8}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 435
    .restart local v3       #r:Landroid/graphics/drawable/Drawable;
    iget-object v5, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity$ViewHolder;->itemIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    new-instance v2, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$1;

    invoke-direct {v2, p0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$1;-><init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)V

    .line 460
    .local v2, mhandler:Landroid/os/Handler;
    iget-object v5, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v5}, Lcom/ophone/MiniPlayer/provider/Song;->isTagImage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 461
    new-instance v5, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;

    invoke-direct {v5, p0, p1, v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;-><init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;ILandroid/os/Handler;)V

    .line 512
    invoke-virtual {v5}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$2;->start()V

    goto/16 :goto_1
.end method
