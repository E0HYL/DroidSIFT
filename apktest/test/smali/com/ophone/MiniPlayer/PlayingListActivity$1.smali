.class Lcom/ophone/MiniPlayer/PlayingListActivity$1;
.super Landroid/os/Handler;
.source "PlayingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/PlayingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    const v2, 0x7f080003

    invoke-virtual {v0, v2}, Lcom/ophone/MiniPlayer/PlayingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/ophone/MiniPlayer/PlayingListActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 156
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/PlayingListActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v7, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    new-instance v0, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 188
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 189
    iget-object v3, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/PlayingListActivity;->getAdapterMap()Ljava/util/List;

    move-result-object v3

    .line 190
    const v4, 0x7f03000f

    .line 191
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "imageurl"

    aput-object v6, v5, v9

    const/4 v6, 0x1

    const-string v8, "counter"

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "name"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "singer"

    aput-object v8, v5, v6

    const-string v6, "duration"

    aput-object v6, v5, v10

    .line 192
    new-array v6, v10, [I

    fill-array-data v6, :array_0

    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;-><init>(Lcom/ophone/MiniPlayer/PlayingListActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 187
    iput-object v0, v7, Lcom/ophone/MiniPlayer/PlayingListActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

    .line 197
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v1, v1, Lcom/ophone/MiniPlayer/PlayingListActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/PlayingListActivity$MySimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    const-string v0, "OnlinePlayer"

    const-string v1, "if(songlist==null)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/PlayingListActivity;->songlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$1;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    const v1, 0x7f050058

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 192
    :array_0
    .array-data 0x4
        0x27t 0x0t 0x8t 0x7ft
        0x28t 0x0t 0x8t 0x7ft
        0x29t 0x0t 0x8t 0x7ft
        0x2bt 0x0t 0x8t 0x7ft
    .end array-data
.end method
