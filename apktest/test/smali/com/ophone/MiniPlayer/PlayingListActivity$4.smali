.class Lcom/ophone/MiniPlayer/PlayingListActivity$4;
.super Ljava/lang/Object;
.source "PlayingListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/PlayingListActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$4;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$4;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #calls: Lcom/ophone/MiniPlayer/PlayingListActivity;->SendClearSongList()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$7(Lcom/ophone/MiniPlayer/PlayingListActivity;)V

    .line 527
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$4;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 528
    const v1, 0x7f050029

    .line 529
    const/4 v2, 0x0

    .line 527
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 530
    return-void
.end method
