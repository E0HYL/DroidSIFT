.class public Lcom/ophone/MiniPlayer/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "myFileUtils"

    sput-object v0, Lcom/ophone/MiniPlayer/FileUtils;->LOG_TAG:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .parameter "fromFile"
    .parameter "destFile"

    .prologue
    const-class v5, Ljava/io/File;

    .line 59
    :try_start_0
    const-string v5, "android.os.FileUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 62
    .local v2, hideClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 63
    .local v3, hideMethod:[Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 64
    .local v4, i:I
    :goto_0
    array-length v5, v3

    if-lt v4, v5, :cond_0

    .line 68
    const-string v5, "copyFile"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/io/File;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/io/File;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v0

    .line 71
    .local v0, copyFile:Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 95
    .end local v0           #copyFile:Ljava/lang/reflect/Method;
    .end local v2           #hideClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #hideMethod:[Ljava/lang/reflect/Method;
    .end local v4           #i:I
    :goto_1
    return-void

    .line 66
    .restart local v2       #hideClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #hideMethod:[Ljava/lang/reflect/Method;
    .restart local v4       #i:I
    :cond_0
    :try_start_2
    sget-object v5, Lcom/ophone/MiniPlayer/FileUtils;->LOG_TAG:Ljava/lang/String;

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    .restart local v0       #copyFile:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 74
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 76
    .end local v0           #copyFile:Ljava/lang/reflect/Method;
    .end local v1           #e:Ljava/lang/InstantiationException;
    .end local v2           #hideClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #hideMethod:[Ljava/lang/reflect/Method;
    .end local v4           #i:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 78
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 81
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 84
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v5

    move-object v1, v5

    .line 87
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v5

    move-object v1, v5

    .line 90
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v5

    move-object v1, v5

    .line 93
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fromFile"
    .parameter "destFile"

    .prologue
    .line 55
    return-void
.end method
