.class public Lcom/ophone/MiniPlayer/provider/Song$Source;
.super Ljava/lang/Object;
.source "Song.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/provider/Song;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Source"
.end annotation


# instance fields
.field private links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ophone/MiniPlayer/provider/Song;


# direct methods
.method public constructor <init>(Lcom/ophone/MiniPlayer/provider/Song;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song$Source;->this$0:Lcom/ophone/MiniPlayer/provider/Song;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song$Source;->links:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getLinks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ophone/MiniPlayer/provider/Song$Source;->links:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setLinks(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ophone/MiniPlayer/provider/Song$Source;->links:Ljava/util/ArrayList;

    .line 70
    return-void
.end method
