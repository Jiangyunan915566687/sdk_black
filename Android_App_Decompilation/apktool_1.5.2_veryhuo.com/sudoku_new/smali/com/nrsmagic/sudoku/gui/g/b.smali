.class public Lcom/nrsmagic/sudoku/gui/g/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/nrsmagic/sudoku/gui/g/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/g/b;->b:Lcom/nrsmagic/sudoku/gui/g/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/g/b;
    .locals 2

    const-class v1, Lcom/nrsmagic/sudoku/gui/g/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/b;->b:Lcom/nrsmagic/sudoku/gui/g/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/g/b;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/g/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/g/b;->b:Lcom/nrsmagic/sudoku/gui/g/b;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/b;->b:Lcom/nrsmagic/sudoku/gui/g/b;
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
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/c/s;->y(Landroid/content/Context;)V

    return-void
.end method
