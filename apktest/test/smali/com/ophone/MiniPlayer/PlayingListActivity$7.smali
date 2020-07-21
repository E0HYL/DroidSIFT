.class Lcom/ophone/MiniPlayer/PlayingListActivity$7;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$7;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$7;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->dismissDialog(I)V

    .line 570
    return-void
.end method
