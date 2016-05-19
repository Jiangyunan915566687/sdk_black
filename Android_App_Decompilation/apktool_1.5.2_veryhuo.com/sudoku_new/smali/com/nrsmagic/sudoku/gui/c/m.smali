.class public Lcom/nrsmagic/sudoku/gui/c/m;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/nrsmagic/sudoku/gui/c/u;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/nrsmagic/sudoku/gui/c/s;

.field private c:Lcom/nrsmagic/sudoku/gui/c/a/a;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/nrsmagic/sudoku/gui/c/a/a;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Lcom/nrsmagic/sudoku/gui/c/a/c;

.field private o:Landroid/widget/FrameLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Lcom/nrsmagic/sudoku/gui/c/av;

.field private s:Landroid/content/Context;

.field private t:Z

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    const/4 v13, 0x5

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v12, p0, Lcom/nrsmagic/sudoku/gui/c/m;->t:Z

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/p;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/c/p;-><init>(Lcom/nrsmagic/sudoku/gui/c/m;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->u:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->v:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/nrsmagic/sudoku/gui/c/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v3, -0x464343

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->j:Landroid/widget/ImageView;

    const v2, 0x1080093

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {p1, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {p1, v4}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p1, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->d:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->d:Landroid/widget/TextView;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->d:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->d:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v13, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v11, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {p1, v4}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x6

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TableRow;

    invoke-direct {v4, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/l;->cs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->e:Landroid/widget/TextView;

    const/high16 v2, 0x4170

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->e:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->e:Landroid/widget/TextView;

    const v2, -0x8b8888

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->e:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/l;->ct:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->g:Landroid/widget/TextView;

    const/high16 v2, 0x4170

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->g:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->g:Landroid/widget/TextView;

    const v2, -0x8b8888

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->g:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/l;->cu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->f:Landroid/widget/TextView;

    const/high16 v2, 0x4170

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->f:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->f:Landroid/widget/TextView;

    const v2, -0x8b8888

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->f:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/l;->cv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->h:Landroid/widget/TextView;

    const/high16 v2, 0x4170

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->h:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->h:Landroid/widget/TextView;

    const v2, -0x8b8888

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->h:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/nrsmagic/sudoku/gui/c/l;->cw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0x8b8888

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v5, 0x8

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const v5, -0x464343

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p1, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p1, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    invoke-static {p1, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->l:Landroid/widget/ImageView;

    invoke-static {p1, v12}, Lcom/nrsmagic/sudoku/gui/c/d/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/c/m;->l:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v13, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/c/m;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->l:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-direct {v2, p1}, Lcom/nrsmagic/sudoku/gui/c/a/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->c:Lcom/nrsmagic/sudoku/gui/c/a/a;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->c:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const/16 v3, 0xec

    const/16 v4, 0xec

    const/16 v5, 0xec

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->c:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const v3, 0x3f8ccccd

    invoke-virtual {v2, v3}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setUnselectedAlpha(F)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->c:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const/16 v3, 0x14

    const/16 v4, 0x28

    invoke-virtual {v2, v9, v3, v9, v4}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setPadding(IIII)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->c:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setSpacing(I)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/m;->c:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {v2, v9}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setFadingEdgeLength(I)V

    const/16 v2, 0xb

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/c/d/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {p1, v3}, Lcom/nrsmagic/sudoku/gui/c/d/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/16 v4, 0xf0

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/16 v4, 0xf0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->c:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {v4, v2, v3}, Lcom/nrsmagic/sudoku/gui/c/a/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v4, Lcom/nrsmagic/sudoku/gui/c/s;

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/gui/c/s;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->b:Lcom/nrsmagic/sudoku/gui/c/s;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/m;->b:Lcom/nrsmagic/sudoku/gui/c/s;

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->b:Lcom/nrsmagic/sudoku/gui/c/s;

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/c/s;->a(Lcom/nrsmagic/sudoku/gui/c/u;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const v5, -0x464343

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x2

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/nrsmagic/sudoku/gui/c/l;->cx:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x13

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v6, 0x7

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/c/d/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    new-array v7, v12, [I

    const v8, 0x10100a7

    aput v8, v7, v9

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v6, 0x6

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/c/d/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    new-array v7, v12, [I

    const v8, 0x101009e

    aput v8, v7, v9

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x15

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v6, 0x8

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v6, 0x17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v5, -0x464343

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/a/c;

    invoke-direct {v0, p1}, Lcom/nrsmagic/sudoku/gui/c/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v4, 0x10

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/nrsmagic/sudoku/gui/c/a/c;->setNumColumns(I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    invoke-virtual {v4, v9}, Lcom/nrsmagic/sudoku/gui/c/a/c;->setVerticalSpacing(I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    invoke-virtual {v4, v11}, Lcom/nrsmagic/sudoku/gui/c/a/c;->setHorizontalSpacing(I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    invoke-virtual {v4, p0}, Lcom/nrsmagic/sudoku/gui/c/a/c;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/nrsmagic/sudoku/gui/c/a/c;->setVisibility(I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->o:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v4, -0x464343

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x50

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    invoke-direct {v1, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v1

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v5, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v6

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v7, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/16 v6, 0xf

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/c/d/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    new-array v7, v12, [I

    const v8, 0x10100a7

    aput v8, v7, v9

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    const/16 v6, 0xe

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/c/d/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_5

    new-array v7, v12, [I

    const v8, 0x101009e

    aput v8, v7, v9

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v5, 0x3

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/c/d/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v5

    if-eqz v5, :cond_6

    new-array v6, v12, [I

    const v7, 0x10100a7

    aput v7, v6, v9

    invoke-virtual {v1, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_6
    const/4 v5, 0x2

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/c/d/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v5

    if-eqz v5, :cond_7

    new-array v6, v12, [I

    const v7, 0x101009e

    aput v7, v6, v9

    invoke-virtual {v1, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v5, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v6, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v6

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v8, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v5, 0x3f80

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v5, 0x11

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->q:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/nrsmagic/sudoku/gui/c/d/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/m;->q:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v5, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/m;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->p:Landroid/widget/TextView;

    sget-object v5, Lcom/nrsmagic/sudoku/gui/c/l;->cy:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->p:Landroid/widget/TextView;

    const/high16 v5, 0x41a0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v10, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v1

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v5, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v6, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v6

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-static {v7, v13}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/16 v6, 0x9

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/c/d/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_9

    new-array v7, v12, [I

    const v8, 0x10100a7

    aput v8, v7, v9

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_9
    const/16 v6, 0x8

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/c/d/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_a

    new-array v7, v12, [I

    const v8, 0x101009e

    aput v8, v7, v9

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_a
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-direct {v0, p1, v11}, Lcom/nrsmagic/sudoku/gui/c/a/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setSpacing(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const v1, 0x3f8ccccd

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setUnselectedAlpha(F)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const/high16 v1, -0x3000

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const/16 v1, 0xa

    const/16 v4, 0x14

    invoke-virtual {v0, v9, v1, v9, v4}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setPadding(IIII)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {v0, v2, v3}, Lcom/nrsmagic/sudoku/gui/c/a/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {p0, v1, v0}, Lcom/nrsmagic/sudoku/gui/c/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {v0, v9}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/c/n;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/c/n;-><init>(Lcom/nrsmagic/sudoku/gui/c/m;)V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->c:Lcom/nrsmagic/sudoku/gui/c/a/a;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/c/o;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/c/o;-><init>(Lcom/nrsmagic/sudoku/gui/c/m;)V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 0x4
        0xcet 0xc7t 0x31t 0xfft
        0xcet 0xc7t 0x31t 0xfft
        0xcet 0xc7t 0x31t 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0xc0t 0xc0t 0xc0t 0xfft
        0xc0t 0xc0t 0xc0t 0xfft
        0xc0t 0xc0t 0xc0t 0xfft
    .end array-data
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/c/m;)Lcom/nrsmagic/sudoku/gui/c/a/a;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    return-object v0
.end method

.method private a(F)Ljava/lang/String;
    .locals 3

    const/high16 v1, 0x4480

    const/high16 v2, 0x42c8

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-float v1, p1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/c/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/c/m;)Lcom/nrsmagic/sudoku/gui/c/a/a;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->c:Lcom/nrsmagic/sudoku/gui/c/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/nrsmagic/sudoku/gui/c/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->t:Z

    return v0
.end method

.method static synthetic d(Lcom/nrsmagic/sudoku/gui/c/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    return-object v0
.end method

.method private e()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic e(Lcom/nrsmagic/sudoku/gui/c/m;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/nrsmagic/sudoku/gui/c/m;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->l:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->cv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/nrsmagic/sudoku/gui/c/m;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/c/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nrsmagic/sudoku/gui/c/d/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/c/m;->e()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->b:Lcom/nrsmagic/sudoku/gui/c/s;

    invoke-virtual {v0, p1, p2}, Lcom/nrsmagic/sudoku/gui/c/s;->a(Landroid/graphics/Bitmap;I)V

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/nrsmagic/sudoku/gui/c/a/a;->a(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->m:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->v:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->cs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6

    const/4 v5, 0x2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const v3, 0x3f4ccccd

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/gui/c/a/a;->a(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->b:Lcom/nrsmagic/sudoku/gui/c/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->b:Lcom/nrsmagic/sudoku/gui/c/s;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/s;->a(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->b:Lcom/nrsmagic/sudoku/gui/c/s;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/gui/c/s;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/c/a/a;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setVisibility(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->o:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public b(I)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/c/m;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/d/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eqz v1, :cond_0

    int-to-float v0, v0

    const v2, 0x3f4ccccd

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/c/m;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/av;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->s:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/nrsmagic/sudoku/gui/c/av;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->r:Lcom/nrsmagic/sudoku/gui/c/av;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/m;->r:Lcom/nrsmagic/sudoku/gui/c/av;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a/c;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->r:Lcom/nrsmagic/sudoku/gui/c/av;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/av;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/c/a/c;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/c/a/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->o:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->n:Lcom/nrsmagic/sudoku/gui/c/a/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->o:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->k:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/gui/c/a/a;->setSelection(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->p:Landroid/widget/TextView;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->cz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->cu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->ct:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->m:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->m:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->v:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/m;->v:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
