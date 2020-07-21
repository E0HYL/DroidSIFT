.class Lcom/ophone/MiniPlayer/MusicActivity$5;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/MusicActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$5;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$5;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #calls: Lcom/ophone/MiniPlayer/MusicActivity;->SendAddSongtoList()V
    invoke-static {v0}, Lcom/ophone/MiniPlayer/MusicActivity;->access$11(Lcom/ophone/MiniPlayer/MusicActivity;)V

    .line 624
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$5;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    .line 625
    const v1, 0x7f05002e

    .line 626
    const/4 v2, 0x0

    .line 624
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 627
    return-void
.end method
