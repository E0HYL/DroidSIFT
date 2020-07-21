.class Lcom/ophone/MiniPlayer/PlayingListActivity$8;
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

.field private final synthetic val$playlistfilename:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/PlayingListActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$8;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iput-object p2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$8;->val$playlistfilename:Landroid/view/View;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 575
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$8;->val$playlistfilename:Landroid/view/View;

    const v3, 0x7f080026

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 576
    .local v0, playlistname:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, st:Ljava/lang/String;
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$8;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #calls: Lcom/ophone/MiniPlayer/PlayingListActivity;->SendsaveSonglist(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$9(Lcom/ophone/MiniPlayer/PlayingListActivity;Ljava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$8;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 579
    const v3, 0x7f050011

    .line 580
    const/4 v4, 0x0

    .line 578
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 580
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 581
    return-void
.end method
