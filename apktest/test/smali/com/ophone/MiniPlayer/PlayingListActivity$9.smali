.class Lcom/ophone/MiniPlayer/PlayingListActivity$9;
.super Ljava/lang/Object;
.source "PlayingListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/PlayingListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$9;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$9;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    #setter for: Lcom/ophone/MiniPlayer/PlayingListActivity;->chooseItem:I
    invoke-static {v0, p2}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$10(Lcom/ophone/MiniPlayer/PlayingListActivity;I)V

    .line 962
    return-void
.end method
