.class Lcom/ophone/MiniPlayer/Search$1;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/ophone/MiniPlayer/Search$1;->this$0:Lcom/ophone/MiniPlayer/Search;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 102
    iget-object v6, p0, Lcom/ophone/MiniPlayer/Search$1;->this$0:Lcom/ophone/MiniPlayer/Search;

    iget-object v6, v6, Lcom/ophone/MiniPlayer/Search;->ev:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, evsearch:Ljava/lang/String;
    :try_start_0
    const-string v6, "gbk"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, evsearchencode:Ljava/lang/String;
    iget-object v6, p0, Lcom/ophone/MiniPlayer/Search$1;->this$0:Lcom/ophone/MiniPlayer/Search;

    const-string v7, "http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word="

    iput-object v7, v6, Lcom/ophone/MiniPlayer/Search;->urlbaidu:Ljava/lang/String;

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ophone/MiniPlayer/Search$1;->this$0:Lcom/ophone/MiniPlayer/Search;

    iget-object v7, v7, Lcom/ophone/MiniPlayer/Search;->urlbaidu:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, urlsearch:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 109
    .local v4, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v3, it1:Landroid/content/Intent;
    iget-object v6, p0, Lcom/ophone/MiniPlayer/Search$1;->this$0:Lcom/ophone/MiniPlayer/Search;

    invoke-virtual {v6, v3}, Lcom/ophone/MiniPlayer/Search;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v2           #evsearchencode:Ljava/lang/String;
    .end local v3           #it1:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #urlsearch:Ljava/lang/String;
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 113
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
