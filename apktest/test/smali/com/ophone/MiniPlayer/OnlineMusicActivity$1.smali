.class Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;
.super Landroid/os/Handler;
.source "OnlineMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/OnlineMusicActivity;
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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    .line 205
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 211
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Download over"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    const v1, 0x7f050062

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v7, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    new-instance v0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    .line 225
    iget-object v3, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    invoke-virtual {v3}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->getAdapterMap()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f03000b

    .line 226
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "imageurl"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const-string v8, "name"

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "singer"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    .line 227
    const-string v8, "duration"

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, "check"

    aput-object v8, v5, v6

    new-array v6, v9, [I

    fill-array-data v6, :array_0

    .line 230
    invoke-direct/range {v0 .. v6}, Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;-><init>(Lcom/ophone/MiniPlayer/OnlineMusicActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 224
    iput-object v0, v7, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    .line 292
    iget-object v0, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/OnlineMusicActivity$1;->this$0:Lcom/ophone/MiniPlayer/OnlineMusicActivity;

    iget-object v1, v1, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->simpleAdapter:Lcom/ophone/MiniPlayer/OnlineMusicActivity$MySimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/OnlineMusicActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 227
    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x21t 0x0t 0x8t 0x7ft
        0x20t 0x0t 0x8t 0x7ft
    .end array-data
.end method
