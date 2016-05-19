.class public Lcom/nrsmagic/sudoku/gui/m/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Landroid/os/Handler;

.field private static d:Ljava/util/Map;

.field private static e:Landroid/widget/ImageView;

.field private static f:Landroid/app/Activity;

.field private static g:Landroid/widget/FrameLayout;

.field private static h:I

.field private static i:Ljava/util/List;

.field private static j:Lcom/nrsmagic/sudoku/gui/m/d/i;

.field private static k:Lcom/nrsmagic/sudoku/gui/m/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->d:Ljava/util/Map;

    sput-boolean v1, Lcom/nrsmagic/sudoku/gui/m/a;->a:Z

    const/4 v0, 0x1

    sput v0, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    sput-boolean v1, Lcom/nrsmagic/sudoku/gui/m/a;->b:Z

    new-instance v0, Lcom/nrsmagic/sudoku/gui/m/c;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/m/c;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/m/c/f;)Lcom/nrsmagic/sudoku/gui/m/c/f;
    .locals 0

    sput-object p0, Lcom/nrsmagic/sudoku/gui/m/a;->k:Lcom/nrsmagic/sudoku/gui/m/c/f;

    return-object p0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/nrsmagic/sudoku/gui/m/a;->i:Ljava/util/List;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    const-class v2, Lcom/nrsmagic/sudoku/gui/m/Syc;

    invoke-static {v1, v2}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    sget v0, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/m/c/k;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x3

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/m/c/k;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->i:Ljava/util/List;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nrsmagic/sudoku/gui/m/Syc;

    invoke-static {p0, v1}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic c()Lcom/nrsmagic/sudoku/gui/m/c/f;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->k:Lcom/nrsmagic/sudoku/gui/m/c/f;

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 11

    const/high16 v10, 0x4220

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nrsmagic/sudoku/gui/m/Syc;

    invoke-static {p0, v1}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->q(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "l"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->g:Landroid/widget/FrameLayout;

    sput-object p0, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/m/d/i;

    sget v1, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    sget-object v4, Lcom/nrsmagic/sudoku/gui/m/a;->c:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v4}, Lcom/nrsmagic/sudoku/gui/m/d/i;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->j:Lcom/nrsmagic/sudoku/gui/m/d/i;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->j:Lcom/nrsmagic/sudoku/gui/m/d/i;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/m/e;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/m/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/m/d/i;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/f;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/m/c/f;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->k:Lcom/nrsmagic/sudoku/gui/m/c/f;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->k:Lcom/nrsmagic/sudoku/gui/m/c/f;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/f;->b(Landroid/content/Context;)Ljava/util/List;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->s(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->i:Ljava/util/List;

    :try_start_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/m/a;->a:Z

    move v1, v2

    :goto_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/c/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lcom/nrsmagic/sudoku/gui/m/b/b;

    invoke-direct {v4}, Lcom/nrsmagic/sudoku/gui/m/b/b;-><init>()V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/c/f;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/nrsmagic/sudoku/gui/m/b/b;->f:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->i:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->i:Ljava/util/List;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->j:Lcom/nrsmagic/sudoku/gui/m/d/i;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a;->i:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lcom/nrsmagic/sudoku/gui/m/d/i;->a(Landroid/content/Context;Ljava/util/List;)V

    :goto_1
    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->g:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a;->j:Lcom/nrsmagic/sudoku/gui/m/d/i;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x33

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v0, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    if-ne v0, v8, :cond_6

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    const/high16 v3, 0x42b4

    invoke-static {v0, v3}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_1
    :goto_2
    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/k;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->k(Landroid/content/Context;)[I

    move-result-object v0

    aget v0, v0, v8

    sget-object v5, Lcom/nrsmagic/sudoku/gui/m/c/b;->by:Ljava/lang/String;

    invoke-virtual {p0, v5, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sget-object v6, Lcom/nrsmagic/sudoku/gui/m/c/b;->y:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v4, v6, :cond_7

    if-eq v6, v7, :cond_7

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->a()V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v5, Lcom/nrsmagic/sudoku/gui/m/c/b;->y:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    div-int/lit8 v0, v3, 0x2

    invoke-static {p0, v2, v0}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Landroid/content/Context;II)V

    :cond_2
    :goto_3
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/AbsoluteLayout;

    invoke-direct {v3, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v7, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nrsmagic/sudoku/gui/m/a;->e:Landroid/widget/ImageView;

    sget v1, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    if-ne v1, v8, :cond_8

    invoke-static {p0, v9}, Lcom/nrsmagic/sudoku/gui/m/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a;->e:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_4
    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/nrsmagic/sudoku/gui/m/b;

    invoke-direct {v2}, Lcom/nrsmagic/sudoku/gui/m/b;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    sget v2, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    if-ne v2, v8, :cond_9

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    invoke-static {v2, v10}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v2

    sget-object v4, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    const/high16 v5, 0x42a0

    invoke-static {v4, v5}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v4

    sget-object v5, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    :cond_4
    :goto_5
    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    const/high16 v4, 0x4248

    invoke-static {v2, v4}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_5
    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_6
    sget v0, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    if-ne v0, v9, :cond_1

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/c/k;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    const/high16 v4, 0x4302

    invoke-static {v3, v4}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    :cond_7
    if-ne v6, v7, :cond_2

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/c/b;->y:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_8
    sget v1, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    if-ne v1, v9, :cond_3

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/nrsmagic/sudoku/gui/m/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a;->e:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_9
    sget v2, Lcom/nrsmagic/sudoku/gui/m/a;->h:I

    if-ne v2, v9, :cond_4

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    invoke-static {v2, v10}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v2

    sget-object v4, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    const/high16 v5, 0x42a0

    invoke-static {v4, v5}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v4

    sget-object v5, Lcom/nrsmagic/sudoku/gui/m/a;->f:Landroid/app/Activity;

    const/high16 v6, -0x4080

    invoke-static {v5, v6}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_5
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/d/i;->a:Lcom/nrsmagic/sudoku/gui/m/d/l;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/d/i;->a:Lcom/nrsmagic/sudoku/gui/m/d/l;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/m/d/l;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e()Lcom/nrsmagic/sudoku/gui/m/d/i;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a;->j:Lcom/nrsmagic/sudoku/gui/m/d/i;

    return-object v0
.end method
