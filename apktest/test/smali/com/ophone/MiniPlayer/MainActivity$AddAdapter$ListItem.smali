.class public Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItem"
.end annotation


# instance fields
.field public final image:Landroid/graphics/drawable/Drawable;

.field public final text:Ljava/lang/CharSequence;

.field final synthetic this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

.field public final touchimage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;Landroid/content/res/Resources;III)V
    .locals 3
    .parameter
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "touchImageResourceId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 295
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;->this$1:Lcom/ophone/MiniPlayer/MainActivity$AddAdapter;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 285
    if-eq p4, v1, :cond_0

    .line 286
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 290
    :goto_0
    if-eq p5, v1, :cond_1

    .line 291
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;->touchimage:Landroid/graphics/drawable/Drawable;

    .line 293
    :goto_1
    return-void

    .line 288
    :cond_0
    iput-object v2, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 293
    :cond_1
    iput-object v2, p0, Lcom/ophone/MiniPlayer/MainActivity$AddAdapter$ListItem;->touchimage:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
