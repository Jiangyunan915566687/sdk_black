.class public Lcom/nrsmagic/sudoku/gui/y/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:I

.field private static d:I

.field private static e:Ljava/util/Timer;

.field private static f:Lcom/nrsmagic/sudoku/gui/y/d/c;

.field private static g:Ljava/util/List;

.field private static h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/nrsmagic/sudoku/gui/y/j;->d:I

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/k;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/y/k;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->h:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;II)I
    .locals 6

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Lcom/nrsmagic/sudoku/gui/y/Ah;

    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->e:Ljava/util/Timer;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/y/m;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/y/m;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a()Lcom/nrsmagic/sudoku/gui/y/d/c;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->f:Lcom/nrsmagic/sudoku/gui/y/d/c;

    return-object v0
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/y/d/c;)Lcom/nrsmagic/sudoku/gui/y/d/c;
    .locals 0

    sput-object p0, Lcom/nrsmagic/sudoku/gui/y/j;->f:Lcom/nrsmagic/sudoku/gui/y/d/c;

    return-object p0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/nrsmagic/sudoku/gui/y/j;->g:Ljava/util/List;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->p(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/nrsmagic/sudoku/gui/y/j;->c:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->e:Ljava/util/Timer;

    const/4 v0, 0x0

    sput v0, Lcom/nrsmagic/sudoku/gui/y/j;->d:I

    sput-object v1, Lcom/nrsmagic/sudoku/gui/y/j;->a:Ljava/lang/String;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/y/j;->f:Lcom/nrsmagic/sudoku/gui/y/d/c;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/y/j;->g:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/l;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/y/l;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/y/l;->start()V

    sget v0, Lcom/nrsmagic/sudoku/gui/y/j;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nrsmagic/sudoku/gui/y/j;->d:I

    return-void
.end method

.method public static a(Landroid/os/Handler;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->f:Lcom/nrsmagic/sudoku/gui/y/d/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->f:Lcom/nrsmagic/sudoku/gui/y/d/c;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/y/d/c;->c()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->f:Lcom/nrsmagic/sudoku/gui/y/d/c;

    :cond_0
    return-void
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->g:Ljava/util/List;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/y/c/j;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->k(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->by:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->y:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v3, :cond_1

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/d/c;->a()V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->y:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    div-int/lit8 v0, v1, 0x2

    invoke-static {p0, v5, v0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->y:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/nrsmagic/sudoku/gui/y/j;->d:I

    return v0
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/y/j;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->h(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v1

    aget-object v4, v0, v2

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/b;->bx:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_9

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    const-class v4, Lcom/nrsmagic/sudoku/gui/y/Py;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v3, :cond_0

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    sput-object v3, Lcom/nrsmagic/sudoku/gui/y/j;->a:Ljava/lang/String;

    sget v0, Lcom/nrsmagic/sudoku/gui/y/j;->c:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->h:Landroid/os/Handler;

    invoke-static {v0, v6}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Landroid/os/Handler;Z)V

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->h:Landroid/os/Handler;

    invoke-static {v0, v5}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Landroid/os/Handler;Z)V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->h:Landroid/os/Handler;

    if-nez v6, :cond_3

    if-nez v5, :cond_3

    :goto_2
    invoke-static {v0, v2}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Landroid/os/Handler;Z)V

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->h:Landroid/os/Handler;

    if-nez v5, :cond_4

    if-nez v6, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Landroid/os/Handler;Z)V

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->h:Landroid/os/Handler;

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Landroid/os/Handler;Z)V

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->h:Landroid/os/Handler;

    if-nez v5, :cond_8

    :goto_3
    invoke-static {v0, v2}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Landroid/os/Handler;Z)V

    goto :goto_1

    :cond_8
    move v2, v1

    goto :goto_3

    :pswitch_6
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/j;->h:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Landroid/os/Handler;Z)V

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
