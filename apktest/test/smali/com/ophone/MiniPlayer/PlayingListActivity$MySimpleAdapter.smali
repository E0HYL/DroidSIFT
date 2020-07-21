.class Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "PlayingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/PlayingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MySimpleAdapter"
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/PlayingListActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    .line 244
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 238
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 240
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 241
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 242
    .local v6, r:Landroid/content/res/Resources;
    const v0, 0x7f020009

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$1(Lcom/ophone/MiniPlayer/PlayingListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$1(Lcom/ophone/MiniPlayer/PlayingListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 261
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x18

    const-string v8, "duration"

    .line 272
    if-nez p2, :cond_2

    .line 274
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000f

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 279
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    new-instance v5, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    invoke-direct {v5}, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;-><init>()V

    iput-object v5, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    .line 280
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v5, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    .line 281
    const v4, 0x7f080028

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 280
    iput-object v4, v5, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->itemCounter:Landroid/widget/TextView;

    .line 282
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v5, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    .line 283
    const v4, 0x7f080029

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 282
    iput-object v4, v5, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->itemTitle:Landroid/widget/TextView;

    .line 286
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v5, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    .line 287
    const v4, 0x7f08002b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 286
    iput-object v4, v5, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->itemDuration:Landroid/widget/TextView;

    .line 288
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v5, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    .line 289
    const v4, 0x7f08002a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 288
    iput-object v4, v5, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->itemIcon:Landroid/widget/ImageView;

    .line 291
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v5, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    const v4, 0x7f080027

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->Icon:Landroid/widget/ImageView;

    .line 292
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    :goto_0
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 302
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f020013

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 304
    .local v2, r:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->Icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    iget-object v5, v4, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->itemCounter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$1(Lcom/ophone/MiniPlayer/PlayingListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v6, "counter"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 338
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    iget-object v5, v4, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->itemTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$1(Lcom/ophone/MiniPlayer/PlayingListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v6, "name"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 340
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$1(Lcom/ophone/MiniPlayer/PlayingListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "duration"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 344
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    iget-object v5, v4, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->itemDuration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$1(Lcom/ophone/MiniPlayer/PlayingListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 345
    const-string v6, "duration"

    .line 344
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 345
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$3(Lcom/ophone/MiniPlayer/PlayingListActivity;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$3(Lcom/ophone/MiniPlayer/PlayingListActivity;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v4

    invoke-interface {v4}, Lcom/ophone/MiniPlayer/IPlayback;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 354
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #getter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->service:Lcom/ophone/MiniPlayer/IPlayback;
    invoke-static {v4}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$3(Lcom/ophone/MiniPlayer/PlayingListActivity;)Lcom/ophone/MiniPlayer/IPlayback;

    move-result-object v4

    invoke-interface {v4}, Lcom/ophone/MiniPlayer/IPlayback;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 355
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/provider/Song;

    invoke-virtual {v4}, Lcom/ophone/MiniPlayer/provider/Song;->getName()Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 356
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->itemIcon:Landroid/widget/ImageView;

    .line 357
    iget-object v5, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_1
    :goto_1
    return-object p2

    .line 296
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #r:Landroid/graphics/drawable/Drawable;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_2
    iget-object v5, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    iput-object v4, v5, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    goto/16 :goto_0

    .line 361
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #r:Landroid/graphics/drawable/Drawable;
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity;->holder:Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;

    iget-object v4, v4, Lcom/ophone/MiniPlayer/PlayingListActivity$ViewHolder;->itemIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 366
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 368
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
