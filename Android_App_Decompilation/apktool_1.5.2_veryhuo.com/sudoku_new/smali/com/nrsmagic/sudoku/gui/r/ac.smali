.class public Lcom/nrsmagic/sudoku/gui/r/ac;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/nrsmagic/sudoku/gui/r/Jn;

.field private static c:Ljava/util/Timer;

.field private static d:Ljava/lang/String;

.field private static e:I


# direct methods
.method public static a(Landroid/content/Intent;II)I
    .locals 6

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/ac;->c:Ljava/util/Timer;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/ae;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/r/ae;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    return v0
.end method

.method public static a()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/ac;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/ac;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/ac;->c:Ljava/util/Timer;

    :cond_0
    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/ac;->d:Ljava/lang/String;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/ac;->b:Lcom/nrsmagic/sudoku/gui/r/Jn;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/ac;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/ac;->a:Landroid/content/Context;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/ac;->a:Landroid/content/Context;

    const-class v3, Lcom/nrsmagic/sudoku/gui/r/Jn;

    invoke-static {v0, v3}, Lcom/nrsmagic/sudoku/gui/r/e/h;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    sput v0, Lcom/nrsmagic/sudoku/gui/r/ac;->e:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/ac;->c:Ljava/util/Timer;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    goto :goto_1
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/ac;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/ac;->d()V

    return-void
.end method

.method private static d()V
    .locals 4

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e/h;->r(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/ac;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/ac;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/ac;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/ac;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->j(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/ad;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/r/ad;-><init>()V

    sget v2, Lcom/nrsmagic/sudoku/gui/r/ac;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_1
    return-void
.end method
