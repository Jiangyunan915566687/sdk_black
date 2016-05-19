.class public Lcom/nrsmagic/sudoku/gui/y/a/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Map;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/a/b;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/a/b;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/y/c/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/o;->a()Lcom/nrsmagic/sudoku/gui/y/o;

    move-result-object v0

    invoke-virtual {v0, p1, p4, v1}, Lcom/nrsmagic/sudoku/gui/y/o;->a(Landroid/content/Context;II)V

    const/16 v0, 0x2b67

    if-ne p4, v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/a/g;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/g;->h:Ljava/io/File;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nrsmagic/sudoku/gui/y/a/g;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/a/c;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x1080081

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->az:Ljava/lang/String;

    const/16 v3, 0x64

    const/16 v4, 0x10

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v7, 0x0

    move-object v1, p1

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/nrsmagic/sudoku/gui/y/h;->a(ILandroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/a/g;

    invoke-static {p4}, Lcom/nrsmagic/sudoku/gui/y/c/h;->b(I)Ljava/io/File;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nrsmagic/sudoku/gui/y/a/g;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/b;->bd:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
