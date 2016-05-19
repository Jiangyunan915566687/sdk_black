.class public Lcom/nrsmagic/sudoku/gui/m/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Class;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/i;->a:Ljava/lang/Class;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/nrsmagic/sudoku/gui/m/i;->b:J

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/i;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/nrsmagic/sudoku/gui/m/Syc;

    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/i;->a:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/i;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p1}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->t(Landroid/content/Context;)V

    sget-boolean v2, Lcom/nrsmagic/sudoku/gui/m/d/c;->a:Z

    if-nez v2, :cond_2

    :goto_1
    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->i(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/nrsmagic/sudoku/gui/m/i;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/nrsmagic/sudoku/gui/m/i;->b:J

    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/i;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_4
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/m/c/i;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/c/b;->bK:Ljava/lang/String;

    aput-object v2, v0, v1

    :goto_2
    const-wide/16 v1, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    array-length v7, v0

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    double-to-int v1, v1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/c/b;->bN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/c/b;->bO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/c/b;->bM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    new-instance v0, Lcom/nrsmagic/sudoku/gui/m/b/d;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/m/b/d;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Lcom/nrsmagic/sudoku/gui/m/b/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/m/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/c/b;->bN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/c/b;->bM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method
