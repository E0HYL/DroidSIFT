.class Lcom/ophone/MiniPlayer/AsyncImageLoader$1;
.super Landroid/os/Handler;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Lcom/ophone/MiniPlayer/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/AsyncImageLoader;

.field private final synthetic val$imageCallback:Lcom/ophone/MiniPlayer/AsyncImageLoader$ImageCallback;

.field private final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/AsyncImageLoader;Lcom/ophone/MiniPlayer/AsyncImageLoader$ImageCallback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/AsyncImageLoader$1;->this$0:Lcom/ophone/MiniPlayer/AsyncImageLoader;

    iput-object p2, p0, Lcom/ophone/MiniPlayer/AsyncImageLoader$1;->val$imageCallback:Lcom/ophone/MiniPlayer/AsyncImageLoader$ImageCallback;

    iput-object p3, p0, Lcom/ophone/MiniPlayer/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 31
    iget-object v1, p0, Lcom/ophone/MiniPlayer/AsyncImageLoader$1;->val$imageCallback:Lcom/ophone/MiniPlayer/AsyncImageLoader$ImageCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/ophone/MiniPlayer/AsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 32
    return-void
.end method
