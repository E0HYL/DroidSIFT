.class Lcom/ophone/MiniPlayer/MusicActivity$9;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 670
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v8, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-virtual {v8}, Lcom/ophone/MiniPlayer/MusicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, v7, Lcom/ophone/MiniPlayer/MusicActivity;->resolver:Landroid/content/ContentResolver;

    .line 683
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/ophone/MiniPlayer/MusicActivity;->access$13(Lcom/ophone/MiniPlayer/MusicActivity;)Landroid/database/Cursor;

    move-result-object v7

    .line 684
    iget-object v8, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/ophone/MiniPlayer/MusicActivity;->access$13(Lcom/ophone/MiniPlayer/MusicActivity;)Landroid/database/Cursor;

    move-result-object v8

    .line 685
    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 684
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 686
    .local v6, songId:I
    const-string v7, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "songId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/ophone/MiniPlayer/MusicActivity;->access$13(Lcom/ophone/MiniPlayer/MusicActivity;)Landroid/database/Cursor;

    move-result-object v7

    .line 688
    iget-object v8, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->cursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/ophone/MiniPlayer/MusicActivity;->access$13(Lcom/ophone/MiniPlayer/MusicActivity;)Landroid/database/Cursor;

    move-result-object v8

    .line 689
    const-string v9, "_data"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 688
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, path:Ljava/lang/String;
    const-string v7, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "path="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 694
    int-to-long v8, v6

    .line 693
    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 695
    .local v5, ringUri:Landroid/net/Uri;
    const-string v7, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ringUri"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v7, v7, Lcom/ophone/MiniPlayer/MusicActivity;->resolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 698
    .local v0, a:I
    const-string v7, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "a="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .local v1, file:Ljava/io/File;
    const-string v7, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file.getAbsolutePath()="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 704
    const-string v7, "OnlinePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file.getAbsolutePath()="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 709
    :cond_0
    const/4 v2, 0x0

    .line 711
    .local v2, fileNa:Ljava/lang/String;
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 712
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    .line 711
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 712
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 711
    #setter for: Lcom/ophone/MiniPlayer/MusicActivity;->fileEx:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/ophone/MiniPlayer/MusicActivity;->access$14(Lcom/ophone/MiniPlayer/MusicActivity;Ljava/lang/String;)V

    .line 713
    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 714
    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 713
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 715
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\\sdcard\\myplayer\\lrc\\"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "lrc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v3, filelrc:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 717
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 719
    :cond_1
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    .line 720
    const v8, 0x7f050010

    .line 721
    const/4 v9, 0x0

    .line 719
    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 721
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 727
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->list:Ljava/util/List;
    invoke-static {v7}, Lcom/ophone/MiniPlayer/MusicActivity;->access$3(Lcom/ophone/MiniPlayer/MusicActivity;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    #getter for: Lcom/ophone/MiniPlayer/MusicActivity;->posdelete:I
    invoke-static {v8}, Lcom/ophone/MiniPlayer/MusicActivity;->access$15(Lcom/ophone/MiniPlayer/MusicActivity;)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 728
    iget-object v7, p0, Lcom/ophone/MiniPlayer/MusicActivity$9;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    iget-object v7, v7, Lcom/ophone/MiniPlayer/MusicActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;

    invoke-virtual {v7}, Lcom/ophone/MiniPlayer/MusicActivity$MySimpleAdapter;->notifyDataSetChanged()V

    .line 729
    return-void
.end method
