.class public Lcom/nrsmagic/sudoku/gui/q/c/i;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/nrsmagic/sudoku/gui/q/c/i;->a:I

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/q/b/f;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1}, Lcom/nrsmagic/sudoku/gui/q/c/i;->b(Lcom/nrsmagic/sudoku/gui/q/b/f;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/h;->aK:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->aM:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/nrsmagic/sudoku/gui/q/c/i;->a:I

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->I:Ljava/lang/String;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/b;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/q/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/q/b;->a()V

    :cond_0
    sget v1, Lcom/nrsmagic/sudoku/gui/q/c/i;->a:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/nrsmagic/sudoku/gui/q/c/i;->a(Landroid/content/SharedPreferences;IZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v1, Lcom/nrsmagic/sudoku/gui/q/c/i;->a:I

    if-ge v1, v4, :cond_3

    sget v1, Lcom/nrsmagic/sudoku/gui/q/c/i;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/nrsmagic/sudoku/gui/q/c/i;->a:I

    sget v1, Lcom/nrsmagic/sudoku/gui/q/c/i;->a:I

    invoke-static {v0, v1, v3}, Lcom/nrsmagic/sudoku/gui/q/c/i;->a(Landroid/content/SharedPreferences;IZ)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/nrsmagic/sudoku/gui/q/c/i;->a:I

    if-ne v1, v4, :cond_4

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/nrsmagic/sudoku/gui/q/c/l;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/q/c/l;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nrsmagic/sudoku/gui/q/c/m;

    invoke-direct {v2, p0, v0}, Lcom/nrsmagic/sudoku/gui/q/c/m;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_4
    sget v1, Lcom/nrsmagic/sudoku/gui/q/c/i;->a:I

    if-le v1, v4, :cond_1

    :try_start_0
    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->aL:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/b;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/q/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->q(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/nrsmagic/sudoku/gui/q/c/j;

    invoke-direct {v1, v0, p0, p1}, Lcom/nrsmagic/sudoku/gui/q/c/j;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/nrsmagic/sudoku/gui/q/c/k;

    invoke-direct {v3, v0, p0, v1}, Lcom/nrsmagic/sudoku/gui/q/c/k;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;IZ)V
    .locals 4

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->aM:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p2, :cond_0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->aL:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/q/b/f;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nrsmagic/sudoku/gui/q/c/i;->b(Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/q/b/f;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->x(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v0, Lcom/nrsmagic/sudoku/gui/q/c/i;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private static b(Lcom/nrsmagic/sudoku/gui/q/b/f;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/b/f;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/q/c/s;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/q/b/f;)V
    .locals 3

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->aG:Ljava/lang/String;

    iget-object v2, p2, Lcom/nrsmagic/sudoku/gui/q/b/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->aH:Ljava/lang/String;

    iget-object v2, p2, Lcom/nrsmagic/sudoku/gui/q/b/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->x(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "t"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/i;->b(Landroid/content/Context;)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x25c3f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nrsmagic/sudoku/gui/q/Ds;

    invoke-static {p0, v1}, Lcom/nrsmagic/sudoku/gui/q/c/s;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/i;->b(Landroid/content/Context;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/i;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 5

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/s;->b:[Lcom/nrsmagic/sudoku/gui/q/b/b;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->s(Landroid/content/Context;)[Lcom/nrsmagic/sudoku/gui/q/b/b;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c/s;->b:[Lcom/nrsmagic/sudoku/gui/q/b/b;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/s;->b:[Lcom/nrsmagic/sudoku/gui/q/b/b;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/s;->b:[Lcom/nrsmagic/sudoku/gui/q/b/b;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/h;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/s;->b:[Lcom/nrsmagic/sudoku/gui/q/b/b;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/nrsmagic/sudoku/gui/q/b/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/h;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/h;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/nrsmagic/sudoku/gui/q/a/c;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/q/a/c;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/s;->b:[Lcom/nrsmagic/sudoku/gui/q/b/b;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/nrsmagic/sudoku/gui/q/b/b;->k:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/q/c/s;->b:[Lcom/nrsmagic/sudoku/gui/q/b/b;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/nrsmagic/sudoku/gui/q/b/b;->e:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/q/a/c;->a(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_1
.end method
