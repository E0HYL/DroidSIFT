.class Lcom/ophone/MiniPlayer/MusicActivity$4;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$4;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$4;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/MusicActivity;->dismissDialog(I)V

    .line 616
    return-void
.end method
