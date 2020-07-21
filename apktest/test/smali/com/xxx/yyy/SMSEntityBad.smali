.class public Lcom/xxx/yyy/SMSEntityBad;
.super Ljava/lang/Object;
.source "SMSEntityBad.java"


# static fields
.field static final ALL_COLUMNS:[Ljava/lang/String; = null

.field static final FLAG:Ljava/lang/String; = "flag"

.field static final ID:Ljava/lang/String; = "id"

.field static final KEYWORD:Ljava/lang/String; = "keyword"

.field static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private flag:I

.field private id:J

.field private keyword:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyword"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "flag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xxx/yyy/SMSEntityBad;->ALL_COLUMNS:[Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/xxx/yyy/SMSEntityBad;->flag:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/xxx/yyy/SMSEntityBad;->id:J

    return-wide v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xxx/yyy/SMSEntityBad;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/xxx/yyy/SMSEntityBad;->type:I

    return v0
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 36
    iput p1, p0, Lcom/xxx/yyy/SMSEntityBad;->flag:I

    .line 37
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/xxx/yyy/SMSEntityBad;->id:J

    .line 19
    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/xxx/yyy/SMSEntityBad;->keyword:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 30
    iput p1, p0, Lcom/xxx/yyy/SMSEntityBad;->type:I

    .line 31
    return-void
.end method
