.class Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

.field private final synthetic val$item:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;

.field private final synthetic val$pos:I

.field private final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;Landroid/widget/TextView;Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    iput-object p2, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->val$item:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;

    iput p4, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->val$pos:I

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "v"
    .parameter "event"

    .prologue
    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->val$textView:Landroid/widget/TextView;

    move-object v13, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->val$item:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;

    move-object v15, v0

    iget-object v15, v15, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;->touchimage:Landroid/graphics/drawable/Drawable;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->val$textView:Landroid/widget/TextView;

    move-object v13, v0

    const/high16 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    :cond_0
    :goto_0
    const/4 v13, 0x1

    return v13

    .line 397
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->val$textView:Landroid/widget/TextView;

    move-object v13, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->val$item:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;

    move-object v15, v0

    iget-object v15, v15, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->val$textView:Landroid/widget/TextView;

    move-object v13, v0

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    #getter for: Lcom/ophone/MiniPlayer/MainActivity;->mTextIds:[Ljava/lang/Integer;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity;->access$0(Lcom/ophone/MiniPlayer/MainActivity;)[Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->val$pos:I

    move v14, v0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 424
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v15, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v15}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v15

    const-class v16, Lcom/ophone/MiniPlayer/MyPlayerService;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v14}, Lcom/ophone/MiniPlayer/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    #getter for: Lcom/ophone/MiniPlayer/MainActivity;->settings:Landroid/content/SharedPreferences;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity;->access$1(Lcom/ophone/MiniPlayer/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 427
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 428
    .local v10, rectgle:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ophone/MiniPlayer/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 429
    .local v12, window:Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 430
    iget v11, v10, Landroid/graphics/Rect;->top:I

    .line 431
    .local v11, statusBarHeight:I
    const-string v13, "debug"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "statusBarHeight="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v13, "statusBarHeight"

    invoke-interface {v2, v13, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 435
    new-instance v3, Ljava/io/File;

    const-string v13, "\\sdcard\\myplayer\\playlist"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .local v3, filedirectory:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 437
    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v13, "defaultplaylist.txt"

    invoke-direct {v4, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 439
    .local v4, fileplaylist:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 441
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 444
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 403
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #filedirectory:Ljava/io/File;
    .end local v4           #fileplaylist:Ljava/io/File;
    .end local v10           #rectgle:Landroid/graphics/Rect;
    .end local v11           #statusBarHeight:I
    .end local v12           #window:Landroid/view/Window;
    :pswitch_0
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    const-class v14, Lcom/ophone/MiniPlayer/MusicFeedActivity;

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .local v5, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/ophone/MiniPlayer/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 407
    .end local v5           #i:Landroid/content/Intent;
    :pswitch_1
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    const-class v14, Lcom/ophone/MiniPlayer/MusicActivity;

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .local v6, i1:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/ophone/MiniPlayer/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 411
    .end local v6           #i1:Landroid/content/Intent;
    :pswitch_2
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    const-class v14, Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-direct {v7, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .local v7, i2:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/ophone/MiniPlayer/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 415
    .end local v7           #i2:Landroid/content/Intent;
    :pswitch_3
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    const-class v14, Lcom/ophone/MiniPlayer/lyricsactivity;

    invoke-direct {v8, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v8, i3:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/ophone/MiniPlayer/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 419
    .end local v8           #i3:Landroid/content/Intent;
    :pswitch_4
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    const-class v14, Lcom/ophone/MiniPlayer/Search;

    invoke-direct {v9, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .local v9, i4:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$1;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    move-object v13, v0

    #getter for: Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->this$0:Lcom/ophone/MiniPlayer/MainActivity;
    invoke-static {v13}, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;->access$0(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;)Lcom/ophone/MiniPlayer/MainActivity;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/ophone/MiniPlayer/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 401
    :pswitch_data_0
    .packed-switch 0x7f05003d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
