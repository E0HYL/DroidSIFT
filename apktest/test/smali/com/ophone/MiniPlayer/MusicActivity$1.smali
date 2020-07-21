.class Lcom/ophone/MiniPlayer/MusicActivity$1;
.super Landroid/os/Handler;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MusicActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    .line 155
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v1, p0, Lcom/ophone/MiniPlayer/MusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    const v2, 0x7f080003

    invoke-virtual {v0, v2}, Lcom/ophone/MiniPlayer/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/ophone/MiniPlayer/MusicActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 164
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MusicActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/MusicActivity;->getAdapterMap()Ljava/util/List;

    .line 166
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MusicActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    invoke-virtual {v0}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->notifyDataSetChanged()V

    .line 168
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MusicActivity;->access$0(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    const v1, 0x7f050058

    .line 170
    const/4 v2, 0x0

    .line 169
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
