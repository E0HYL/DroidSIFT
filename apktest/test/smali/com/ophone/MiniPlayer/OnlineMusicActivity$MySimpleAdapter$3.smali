.class Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;
.super Ljava/lang/Object;
.source "OnlineMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    iput p2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->val$position:I

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 535
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 536
    .local v1, cb:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    iget-object v2, v2, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->map:Ljava/util/Map;

    iget v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v3

    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$4(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    #setter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3, v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$6(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Lcom/ophone/MiniPlayer/provider/Song;)V

    .line 538
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$7(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$8(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$7(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 544
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$7(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$8(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 545
    :cond_2
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$7(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 546
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$7(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$8(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    :cond_3
    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$7(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter$3;->this$1:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$8(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
