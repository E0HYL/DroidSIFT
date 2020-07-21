.class Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MusicActivity;
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

.field final synthetic this$0:Lcom/ophone/MiniPlayer/MusicActivity;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/MusicActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    .line 215
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 206
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->map:Ljava/util/Map;

    .line 209
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 214
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->map:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x18

    const-string v7, "duration"

    .line 253
    if-nez p2, :cond_1

    .line 254
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030014

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 258
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    new-instance v4, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    invoke-direct {v4}, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;-><init>()V

    iput-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    .line 259
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    .line 260
    const v3, 0x7f080035

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 259
    iput-object v3, v4, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemIcon:Landroid/widget/ImageView;

    .line 261
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    .line 262
    const v3, 0x7f080036

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 261
    iput-object v3, v4, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemTitle:Landroid/widget/TextView;

    .line 263
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    .line 264
    const v3, 0x7f080011

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 263
    iput-object v3, v4, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemArtist:Landroid/widget/TextView;

    .line 265
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    .line 266
    const v3, 0x7f080038

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 265
    iput-object v3, v4, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemDuration:Landroid/widget/TextView;

    .line 267
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    .line 268
    const v3, 0x7f080037

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 267
    iput-object v3, v4, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemcheck:Landroid/widget/CheckBox;

    .line 269
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    const v3, 0x7f080039

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->Icon:Landroid/widget/ImageView;

    .line 270
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 276
    :goto_0
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 279
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f020013

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v6, v6}, Lcom/ophone/MiniPlayer/Loadimageurl;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 281
    .local v1, r:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    iget-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$3(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "name"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    iget-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemArtist:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$3(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "singer"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$3(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "duration"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    iget-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemDuration:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$3(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "duration"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 288
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    iget-object v4, v3, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemcheck:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 316
    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    iget-object v3, v3, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;->itemcheck:Landroid/widget/CheckBox;

    new-instance v4, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;-><init>(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    return-object p2

    .line 274
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #r:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_1
    iget-object v4, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    iput-object v3, v4, Lcom/ophone/MiniPlayer/MusicActivity;->holder:Lcom/ophone/MiniPlayer/MusicActivity$ViewHolder;

    goto/16 :goto_0
.end method
