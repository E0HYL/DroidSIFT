.class Lcom/ophone/MiniPlayer/lyricsactivity$5;
.super Ljava/lang/Object;
.source "lyricsactivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/lyricsactivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/lyricsactivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$5;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$5;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/ophone/MiniPlayer/lyricsactivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 350
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$5;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-virtual {v1}, Lcom/ophone/MiniPlayer/lyricsactivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 351
    return-void
.end method
