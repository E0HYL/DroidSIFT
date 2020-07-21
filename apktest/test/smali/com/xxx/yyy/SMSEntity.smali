.class public Lcom/xxx/yyy/SMSEntity;
.super Ljava/lang/Object;
.source "SMSEntity.java"


# instance fields
.field private body:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private id:J

.field private isRead:I

.field private person:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private replyPathPresent:Ljava/lang/String;

.field private serviceCenter:Ljava/lang/String;

.field private status:I

.field private subject:Ljava/lang/String;

.field private threadID:J

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xxx/yyy/SMSEntity;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xxx/yyy/SMSEntity;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xxx/yyy/SMSEntity;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/xxx/yyy/SMSEntity;->id:J

    return-wide v0
.end method

.method public getPerson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xxx/yyy/SMSEntity;->person:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xxx/yyy/SMSEntity;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyPathPresent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xxx/yyy/SMSEntity;->replyPathPresent:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xxx/yyy/SMSEntity;->serviceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/xxx/yyy/SMSEntity;->status:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xxx/yyy/SMSEntity;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadID()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/xxx/yyy/SMSEntity;->threadID:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xxx/yyy/SMSEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/xxx/yyy/SMSEntity;->isRead:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xxx/yyy/SMSEntity;->body:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xxx/yyy/SMSEntity;->date:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xxx/yyy/SMSEntity;->from:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/xxx/yyy/SMSEntity;->id:J

    .line 24
    return-void
.end method

.method public setPerson(Ljava/lang/String;)V
    .locals 0
    .parameter "person"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xxx/yyy/SMSEntity;->person:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .parameter "protocol"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/xxx/yyy/SMSEntity;->protocol:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setRead(I)V
    .locals 0
    .parameter "isRead"

    .prologue
    .line 59
    iput p1, p0, Lcom/xxx/yyy/SMSEntity;->isRead:I

    .line 60
    return-void
.end method

.method public setReplyPathPresent(Ljava/lang/String;)V
    .locals 0
    .parameter "replyPathPresent"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xxx/yyy/SMSEntity;->replyPathPresent:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setServiceCenter(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceCenter"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/xxx/yyy/SMSEntity;->serviceCenter:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 65
    iput p1, p0, Lcom/xxx/yyy/SMSEntity;->status:I

    .line 66
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xxx/yyy/SMSEntity;->subject:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setThreadID(J)V
    .locals 0
    .parameter "threadID"

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/xxx/yyy/SMSEntity;->threadID:J

    .line 30
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xxx/yyy/SMSEntity;->type:Ljava/lang/String;

    .line 72
    return-void
.end method
