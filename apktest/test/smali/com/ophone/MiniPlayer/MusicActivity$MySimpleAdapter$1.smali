.class Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    iput p2, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->val$position:I

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 318
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 319
    .local v1, cb:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v3

    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->songlist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$0(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ophone/MiniPlayer/provider/Song;

    #setter for: Lcom/ophone/MiniPlayer/MusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3, v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$4(Lcom/ophone/MiniPlayer/MusicActivity;Lcom/ophone/MiniPlayer/provider/Song;)V

    .line 320
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    iget-object v2, v2, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->map:Ljava/util/Map;

    iget v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$5(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$6(Lcom/ophone/MiniPlayer/MusicActivity;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$5(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$5(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$6(Lcom/ophone/MiniPlayer/MusicActivity;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$5(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$5(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$6(Lcom/ophone/MiniPlayer/MusicActivity;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    :cond_3
    iget-object v2, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v2

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->songlistcheck:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ophone/MiniPlayer/MusicActivity;->access$5(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->access$0(Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;)Lcom/ophone/MiniPlayer/MusicActivity;

    move-result-object v3

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->song:Lcom/ophone/MiniPlayer/provider/Song;
    invoke-static {v3}, Lcom/ophone/MiniPlayer/MusicActivity;->access$6(Lcom/ophone/MiniPlayer/MusicActivity;)Lcom/ophone/MiniPlayer/provider/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
