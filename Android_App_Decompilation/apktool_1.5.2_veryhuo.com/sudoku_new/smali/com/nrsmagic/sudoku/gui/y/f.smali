.class public Lcom/nrsmagic/sudoku/gui/y/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nrsmagic/sudoku/gui/y/f;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/f;->a:Lcom/nrsmagic/sudoku/gui/y/f;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/y/f;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/y/f;
    .locals 2

    const-class v1, Lcom/nrsmagic/sudoku/gui/y/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/f;->a:Lcom/nrsmagic/sudoku/gui/y/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/f;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/y/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/f;->a:Lcom/nrsmagic/sudoku/gui/y/f;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/f;->a:Lcom/nrsmagic/sudoku/gui/y/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/f;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/nrsmagic/sudoku/gui/y/c/h;->b(Landroid/content/Context;II)V

    return-void
.end method
