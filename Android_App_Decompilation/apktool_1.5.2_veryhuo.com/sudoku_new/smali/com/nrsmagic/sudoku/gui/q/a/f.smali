.class public Lcom/nrsmagic/sudoku/gui/q/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Lcom/nrsmagic/sudoku/gui/q/a/i;

.field public static b:Ljava/util/List;


# instance fields
.field private c:I

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/io/File;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->c:I

    iput p6, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->e:I

    iput-object p7, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->h:Ljava/io/File;

    iput p4, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->j:I

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/q/a/f;)I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->j:I

    return v0
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/q/a/f;I)I
    .locals 0

    iput p1, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->c:I

    return p1
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->a:Lcom/nrsmagic/sudoku/gui/q/a/i;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->a:Lcom/nrsmagic/sudoku/gui/q/a/i;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/q/a/i;->a()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/q/a/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nrsmagic/sudoku/gui/q/a/f;)I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->c:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v1, 0x2

    const/4 v9, 0x1

    :try_start_0
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->j:I

    if-ne v0, v9, :cond_2

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->b:Ljava/util/List;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/a/f;->a:Lcom/nrsmagic/sudoku/gui/q/a/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/nrsmagic/sudoku/gui/q/a/i;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->h:Ljava/io/File;

    const/4 v4, 0x1

    iget v5, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->j:I

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->g:Ljava/lang/String;

    iget v7, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->e:I

    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/nrsmagic/sudoku/gui/q/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;IILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->a:Lcom/nrsmagic/sudoku/gui/q/a/i;

    :cond_0
    :goto_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->a:Lcom/nrsmagic/sudoku/gui/q/a/i;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/q/a/g;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/q/a/g;-><init>(Lcom/nrsmagic/sudoku/gui/q/a/f;)V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/a/i;->a(Lcom/nrsmagic/sudoku/gui/q/a/e;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->j:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/q/a/i;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->h:Ljava/io/File;

    const/4 v4, 0x2

    iget v5, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->j:I

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->g:Ljava/lang/String;

    iget v7, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->e:I

    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/nrsmagic/sudoku/gui/q/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;IILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->a:Lcom/nrsmagic/sudoku/gui/q/a/i;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->b:Ljava/util/List;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/a/f;->a:Lcom/nrsmagic/sudoku/gui/q/a/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->j:I

    if-ne v0, v9, :cond_1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/a/f;->a()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->d:Landroid/content/Context;

    const-class v2, Lcom/nrsmagic/sudoku/gui/q/Btus;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->bb:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->bc:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->bd:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/a/f;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method
