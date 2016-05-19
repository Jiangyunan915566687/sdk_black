.class public Lcom/nrsmagic/sudoku/gui/g/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/g/f;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/h;->bb:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-static {p1, p0, v0}, Lcom/nrsmagic/sudoku/gui/g/f;->a(Landroid/content/Intent;Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lcom/nrsmagic/sudoku/gui/g/f;->a:Z

    if-nez v1, :cond_0

    sput-boolean v2, Lcom/nrsmagic/sudoku/gui/g/f;->a:Z

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/g/a/j;->a()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/g/a/j;->a(Landroid/content/Context;)V

    :cond_3
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/a/j;->a(I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 6

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/g/f;->a:Z

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/h;->aT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/h;->bc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/c/h;->bd:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/c/h;->aW:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/g/a/b;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
