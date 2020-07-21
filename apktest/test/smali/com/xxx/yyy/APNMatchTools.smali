.class public final Lcom/xxx/yyy/APNMatchTools;
.super Ljava/lang/Object;
.source "APNMatchTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxx/yyy/APNMatchTools$APNNet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matchAPN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "currentName"

    .prologue
    const-string v2, "default"

    const-string v1, ""

    .line 52
    const-string v0, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 53
    :cond_0
    const-string v0, ""

    move-object v0, v1

    .line 70
    :goto_0
    return-object v0

    .line 55
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 56
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->CMNET:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->CMNET:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->CMWAP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->CMWAP:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_3
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->GNET_3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->GNET_3:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_4
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->GWAP_3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->GWAP_3:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_5
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->UNINET:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->UNINET:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_6
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->UNIWAP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    sget-object v0, Lcom/xxx/yyy/APNMatchTools$APNNet;->UNIWAP:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_7
    const-string v0, "default"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 69
    const-string v0, "default"

    move-object v0, v2

    goto :goto_0

    .line 70
    :cond_8
    const-string v0, ""

    move-object v0, v1

    goto :goto_0
.end method
