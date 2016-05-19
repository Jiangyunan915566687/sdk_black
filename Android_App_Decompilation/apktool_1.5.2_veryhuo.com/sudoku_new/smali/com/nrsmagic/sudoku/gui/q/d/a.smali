.class public Lcom/nrsmagic/sudoku/gui/q/d/a;
.super Landroid/widget/BaseAdapter;


# static fields
.field public static a:Ljava/util/List;

.field public static b:Ljava/util/Hashtable;


# instance fields
.field public c:Ljava/util/Hashtable;

.field private d:Landroid/os/Handler;

.field private e:Landroid/content/pm/PackageManager;

.field private f:Landroid/content/Context;

.field private g:Lcom/nrsmagic/sudoku/gui/q/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->b:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->c:Ljava/util/Hashtable;

    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->d:Landroid/os/Handler;

    sput-object p2, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->f:Landroid/content/Context;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/q/c/p;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/q/c/p;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->e:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/q/d/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->f:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    new-instance v0, Lcom/nrsmagic/sudoku/gui/q/d/b;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->f:Landroid/content/Context;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nrsmagic/sudoku/gui/q/b/b;

    move-object v1, p0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/q/d/b;-><init>(Lcom/nrsmagic/sudoku/gui/q/d/a;Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/q/b/b;ILandroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->g:Lcom/nrsmagic/sudoku/gui/q/d/b;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->g:Lcom/nrsmagic/sudoku/gui/q/d/b;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/nrsmagic/sudoku/gui/q/c/h;->G:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget v0, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->e:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/nrsmagic/sudoku/gui/q/c/h;->Z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/nrsmagic/sudoku/gui/q/c/h;->H:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/nrsmagic/sudoku/gui/q/c/q;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->g:Lcom/nrsmagic/sudoku/gui/q/d/b;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/d/b;->a(Lcom/nrsmagic/sudoku/gui/q/d/b;)Landroid/widget/TextView;

    move-result-object v3

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->g:Lcom/nrsmagic/sudoku/gui/q/d/b;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/d/b;->b(Lcom/nrsmagic/sudoku/gui/q/d/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->b:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/c/p;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/q/c/p;

    :cond_2
    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/p;->c:Ljava/util/List;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->f:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->e:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->g:Lcom/nrsmagic/sudoku/gui/q/d/b;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/q/d/b;->b(Lcom/nrsmagic/sudoku/gui/q/d/b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    :try_start_1
    const-string v1, "s"

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->g:Lcom/nrsmagic/sudoku/gui/q/d/b;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/d/b;->b(Lcom/nrsmagic/sudoku/gui/q/d/b;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->a:Ljava/util/List;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/q/c/p;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->g:Lcom/nrsmagic/sudoku/gui/q/d/b;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/d/b;->a(Lcom/nrsmagic/sudoku/gui/q/d/b;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->a:Ljava/util/List;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/q/c/p;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_3
    return-object v2

    :cond_5
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget-object v3, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->k:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/nrsmagic/sudoku/gui/q/d/a;->b:Ljava/util/Hashtable;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v4, Lcom/nrsmagic/sudoku/gui/q/d/a;->b:Ljava/util/Hashtable;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->k:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Lcom/nrsmagic/sudoku/gui/q/a/c;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/gui/q/a/c;-><init>()V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget-object v4, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->k:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    iget v0, v0, Lcom/nrsmagic/sudoku/gui/q/b/b;->e:I

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->d:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0, v5}, Lcom/nrsmagic/sudoku/gui/q/a/c;->a(Ljava/lang/String;ILandroid/os/Handler;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/q/d/a;->g:Lcom/nrsmagic/sudoku/gui/q/d/b;

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/q/d/b;->a(Lcom/nrsmagic/sudoku/gui/q/d/b;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method
