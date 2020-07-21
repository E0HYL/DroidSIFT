.class Lcom/ophone/MiniPlayer/lyricsactivity$6;
.super Ljava/lang/Object;
.source "lyricsactivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/lyricsactivity;->getLyricsgoogle(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ophone/MiniPlayer/provider/Sentence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/lyricsactivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/lyricsactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/lyricsactivity$6;->this$0:Lcom/ophone/MiniPlayer/lyricsactivity;

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ophone/MiniPlayer/provider/Sentence;Lcom/ophone/MiniPlayer/provider/Sentence;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 717
    invoke-virtual {p1}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ophone/MiniPlayer/provider/Sentence;->getFromTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/ophone/MiniPlayer/provider/Sentence;

    check-cast p2, Lcom/ophone/MiniPlayer/provider/Sentence;

    invoke-virtual {p0, p1, p2}, Lcom/ophone/MiniPlayer/lyricsactivity$6;->compare(Lcom/ophone/MiniPlayer/provider/Sentence;Lcom/ophone/MiniPlayer/provider/Sentence;)I

    move-result v0

    return v0
.end method
