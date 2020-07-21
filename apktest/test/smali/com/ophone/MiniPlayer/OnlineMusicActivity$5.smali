.class Lcom/ophone/MiniPlayer/OnlineMusicActivity$5;
.super Ljava/lang/Object;
.source "OnlineMusicActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/OnlineMusicActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$5;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$5;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    #calls: Lcom/ophone/MiniPlayer/OnlineMusicActivity;->SendAddSongtoList()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->access$13(Lcom/ophone/MiniPlayer/OnlineMusicActivity;)V

    .line 713
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$5;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    .line 714
    const v1, 0x7f05002e

    .line 715
    const/4 v2, 0x0

    .line 713
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 716
    return-void
.end method
