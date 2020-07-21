.class public abstract Lcom/ophone/MiniPlayer/IPlayback$Stub;
.super Landroid/os/Binder;
.source "IPlayback.java"

# interfaces
.implements Lcom/ophone/MiniPlayer/IPlayback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/IPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ophone/MiniPlayer/IPlayback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ophone.MiniPlayer.IPlayback"

.field static final TRANSACTION_getAlbum:I = 0xa

.field static final TRANSACTION_getArtist:I = 0x9

.field static final TRANSACTION_getDuration:I = 0xb

.field static final TRANSACTION_getId:I = 0x7

.field static final TRANSACTION_getStatus:I = 0xf

.field static final TRANSACTION_getTime:I = 0xc

.field static final TRANSACTION_getTitle:I = 0x8

.field static final TRANSACTION_getlyricurlgoogle:I = 0x10

.field static final TRANSACTION_getlyricurllocal:I = 0x11

.field static final TRANSACTION_isPlaying:I = 0xe

.field static final TRANSACTION_next:I = 0x6

.field static final TRANSACTION_pause:I = 0x2

.field static final TRANSACTION_previous:I = 0x5

.field static final TRANSACTION_release:I = 0x4

.field static final TRANSACTION_seek:I = 0xd

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p0, p0, v0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ophone/MiniPlayer/IPlayback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_0
    return-object v1

    .line 33
    :cond_0
    const-string v1, "com.ophone.MiniPlayer.IPlayback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ophone/MiniPlayer/IPlayback;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/ophone/MiniPlayer/IPlayback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/ophone/MiniPlayer/IPlayback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v5, "com.ophone.MiniPlayer.IPlayback"

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 49
    :sswitch_0
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->start()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 57
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->pause()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 64
    goto :goto_0

    .line 68
    :sswitch_3
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->stop()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 71
    goto :goto_0

    .line 75
    :sswitch_4
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->release()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 78
    goto :goto_0

    .line 82
    :sswitch_5
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->previous()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 85
    goto :goto_0

    .line 89
    :sswitch_6
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->next()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 92
    goto :goto_0

    .line 96
    :sswitch_7
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->getId()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 100
    goto :goto_0

    .line 104
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 108
    goto :goto_0

    .line 112
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->getArtist()Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v3, v4

    .line 116
    goto/16 :goto_0

    .line 120
    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->getAlbum()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 124
    goto/16 :goto_0

    .line 128
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->getDuration()I

    move-result v1

    .line 130
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 132
    goto/16 :goto_0

    .line 136
    .end local v1           #_result:I
    :sswitch_c
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->getTime()I

    move-result v1

    .line 138
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 140
    goto/16 :goto_0

    .line 144
    .end local v1           #_result:I
    :sswitch_d
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->seek(I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 149
    goto/16 :goto_0

    .line 153
    .end local v0           #_arg0:I
    :sswitch_e
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->isPlaying()Z

    move-result v1

    .line 155
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v1, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 157
    goto/16 :goto_0

    .line 156
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 161
    .end local v1           #_result:Z
    :sswitch_f
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->getStatus()I

    move-result v1

    .line 163
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 165
    goto/16 :goto_0

    .line 169
    .end local v1           #_result:I
    :sswitch_10
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->getlyricurlgoogle()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 173
    goto/16 :goto_0

    .line 177
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v3, "com.ophone.MiniPlayer.IPlayback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/ophone/MiniPlayer/IPlayback$Stub;->getlyricurllocal()Ljava/lang/String;

    move-result-object v1

    .line 179
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 181
    goto/16 :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
