.class Lcom/ophone/MiniPlayer/Search$2;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/Search;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/Search;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/Search;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/Search$2;->this$0:Lcom/ophone/MiniPlayer/Search;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/high16 v1, 0x4370

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/ophone/MiniPlayer/Search$2;->this$0:Lcom/ophone/MiniPlayer/Search;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/Search;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/ophone/MiniPlayer/Search$2;->this$0:Lcom/ophone/MiniPlayer/Search;

    iget-object v0, v0, Lcom/ophone/MiniPlayer/Search;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 189
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
