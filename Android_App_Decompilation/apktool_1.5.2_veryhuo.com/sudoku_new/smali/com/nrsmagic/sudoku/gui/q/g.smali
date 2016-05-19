.class public Lcom/nrsmagic/sudoku/gui/q/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nrsmagic/sudoku/gui/q/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/g;->a:Lcom/nrsmagic/sudoku/gui/q/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/nrsmagic/sudoku/gui/q/g;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/g;->a:Lcom/nrsmagic/sudoku/gui/q/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/q/g;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/q/g;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/g;->a:Lcom/nrsmagic/sudoku/gui/q/g;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/g;->a:Lcom/nrsmagic/sudoku/gui/q/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;II)V
    .locals 2

    new-instance v0, Lcom/nrsmagic/sudoku/gui/q/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nrsmagic/sudoku/gui/q/h;-><init>(Lcom/nrsmagic/sudoku/gui/q/g;Landroid/content/Context;II)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
