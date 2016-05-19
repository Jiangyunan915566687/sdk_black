.class public Lcom/nrsmagic/sudoku/gui/g/Yfm;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/nrsmagic/sudoku/gui/g/Yfm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/g/Yfm;->a:Lcom/nrsmagic/sudoku/gui/g/Yfm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Lcom/nrsmagic/sudoku/gui/g/Yfm;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/Yfm;->a:Lcom/nrsmagic/sudoku/gui/g/Yfm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/g/Yfm;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/g/Yfm;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/g/Yfm;->a:Lcom/nrsmagic/sudoku/gui/g/Yfm;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/Yfm;->a:Lcom/nrsmagic/sudoku/gui/g/Yfm;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/nrsmagic/sudoku/gui/g/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
