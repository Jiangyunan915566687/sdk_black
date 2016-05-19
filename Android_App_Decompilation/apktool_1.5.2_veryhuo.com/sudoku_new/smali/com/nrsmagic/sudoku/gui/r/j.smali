.class public Lcom/nrsmagic/sudoku/gui/r/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nrsmagic/sudoku/gui/r/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/j;->a:Lcom/nrsmagic/sudoku/gui/r/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/nrsmagic/sudoku/gui/r/j;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/j;->a:Lcom/nrsmagic/sudoku/gui/r/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/j;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/r/j;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/j;->a:Lcom/nrsmagic/sudoku/gui/r/j;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/j;->a:Lcom/nrsmagic/sudoku/gui/r/j;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/nrsmagic/sudoku/gui/r/e/h;->b(Landroid/content/Context;Z)V

    return-void
.end method
