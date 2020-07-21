.class Lcom/ophone/MiniPlayer/Search$3;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/Search;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/Search;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/Search;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/Search$3;->this$0:Lcom/ophone/MiniPlayer/Search;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ophone/MiniPlayer/Search$3;->this$0:Lcom/ophone/MiniPlayer/Search;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/Search;->menu_name_array:[I

    aget v0, v0, p3

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/Search$3;->this$0:Lcom/ophone/MiniPlayer/Search;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/Search;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/ophone/MiniPlayer/Search$3;->this$0:Lcom/ophone/MiniPlayer/Search;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/Search;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 222
    :cond_0
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/ophone/MiniPlayer/Search$3;->this$0:Lcom/ophone/MiniPlayer/Search;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ophone/MiniPlayer/Search;->a:I

    .line 208
    iget-object v0, p0, Lcom/ophone/MiniPlayer/Search$3;->this$0:Lcom/ophone/MiniPlayer/Search;

    const-string v1, "http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word="

    iput-object v1, v0, Lcom/ophone/MiniPlayer/Search;->urlbaidu:Ljava/lang/String;

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/ophone/MiniPlayer/Search$3;->this$0:Lcom/ophone/MiniPlayer/Search;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ophone/MiniPlayer/Search;->a:I

    .line 215
    iget-object v0, p0, Lcom/ophone/MiniPlayer/Search$3;->this$0:Lcom/ophone/MiniPlayer/Search;

    const-string v1, "http://www.google.com.hk/search?hl=zh-CN&source=hp&q="

    iput-object v1, v0, Lcom/ophone/MiniPlayer/Search;->urlgoogle:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/ophone/MiniPlayer/Search$3;->this$0:Lcom/ophone/MiniPlayer/Search;

    const-string v1, "&btnG=Google+%E6%90%9C%E7%B4%A2&meta=&aq=f&aqi=&aql=&oq=&gs_rfai="

    iput-object v1, v0, Lcom/ophone/MiniPlayer/Search;->googlesuffix:Ljava/lang/String;

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x7f050042
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
