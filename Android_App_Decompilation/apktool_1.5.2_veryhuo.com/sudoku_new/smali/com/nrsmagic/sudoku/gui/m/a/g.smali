.class public Lcom/nrsmagic/sudoku/gui/m/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Ljava/util/Map;

.field public static b:Lcom/nrsmagic/sudoku/gui/m/a/j;

.field public static c:Ljava/util/List;


# instance fields
.field private d:I

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/io/File;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a/g;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a/g;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->d:I

    iput p6, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->f:I

    iput-object p7, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->i:Ljava/io/File;

    iput p4, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->k:I

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/m/a/g;)I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->f:I

    return v0
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/m/a/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nrsmagic/sudoku/gui/m/a/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nrsmagic/sudoku/gui/m/a/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    :try_start_0
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->k:I

    if-ne v0, v9, :cond_1

    new-instance v0, Lcom/nrsmagic/sudoku/gui/m/a/j;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->i:Ljava/io/File;

    const/4 v4, 0x1

    iget v5, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->k:I

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->h:Ljava/lang/String;

    iget v7, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->f:I

    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/nrsmagic/sudoku/gui/m/a/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;IILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a/g;->b:Lcom/nrsmagic/sudoku/gui/m/a/j;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a/g;->c:Ljava/util/List;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->b:Lcom/nrsmagic/sudoku/gui/m/a/j;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a/g;->c:Ljava/util/List;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->b:Lcom/nrsmagic/sudoku/gui/m/a/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a/g;->b:Lcom/nrsmagic/sudoku/gui/m/a/j;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/m/a/h;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/m/a/h;-><init>(Lcom/nrsmagic/sudoku/gui/m/a/g;)V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/m/a/j;->a(Lcom/nrsmagic/sudoku/gui/m/a/f;)I

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/m/a/j;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->i:Ljava/io/File;

    const/4 v4, 0x1

    iget v5, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->k:I

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->h:Ljava/lang/String;

    iget v7, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->f:I

    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/nrsmagic/sudoku/gui/m/a/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;IILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a/g;->b:Lcom/nrsmagic/sudoku/gui/m/a/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->h:Ljava/lang/String;

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->f:I

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/m/a/g;->g:Ljava/lang/String;

    move v2, v9

    invoke-static/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/m/a/b;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method
