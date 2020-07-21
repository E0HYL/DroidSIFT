.class Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$1;
.super Landroid/os/Handler;
.source "OnlineMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    .line 439
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 443
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 457
    :goto_0
    return-void

    .line 451
    :pswitch_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v0

    const v2, 0x7f080003

    invoke-virtual {v0, v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    #setter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->mLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static {v1, v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$2(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Landroid/widget/LinearLayout;)V

    .line 452
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v0

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->mLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$3(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
