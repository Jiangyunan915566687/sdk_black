.class public Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;
.super Landroid/app/Dialog;
.source "IMPopupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;,
        Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;
    }
.end annotation


# instance fields
.field private clearButtonListener:Landroid/view/View$OnClickListener;

.field private closeButtonListener:Landroid/view/View$OnClickListener;

.field private editNoteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private editNumberButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNoteNumberButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ToggleButton;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteSelectedNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mOnNoteEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;

.field private mOnNumberEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;

.field private mSelectedNumber:I

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    .line 60
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteSelectedNumbers:Ljava/util/Set;

    .line 299
    new-instance v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$1;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$1;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->editNumberButtonClickListener:Landroid/view/View$OnClickListener;

    .line 315
    new-instance v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$2;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$2;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->editNoteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 333
    new-instance v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$3;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$3;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->clearButtonListener:Landroid/view/View$OnClickListener;

    .line 355
    new-instance v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$4;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$4;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->closeButtonListener:Landroid/view/View$OnClickListener;

    .line 67
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    .line 68
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->createTabView()Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mTabHost:Landroid/widget/TabHost;

    .line 73
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, title:Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->setContentView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mOnNumberEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteSelectedNumbers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mOnNoteEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;

    return-object v0
.end method

.method private createEditNoteView()Landroid/view/View;
    .locals 8

    .prologue
    .line 270
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030008

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 272
    .local v4, v:Landroid/view/View;
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f080005

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f080006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f080007

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f080008

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f08000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f08000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f08000c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f08000d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 288
    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 289
    .local v2, closeButton:Landroid/widget/Button;
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->closeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v5, 0x7f08000e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 291
    .local v1, clearButton:Landroid/widget/Button;
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->clearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-object v4

    .line 282
    .end local v1           #clearButton:Landroid/widget/Button;
    .end local v2           #closeButton:Landroid/widget/Button;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 283
    .local v3, num:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 284
    .local v0, b:Landroid/widget/ToggleButton;
    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 285
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->editNoteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private createEditNumberView()Landroid/view/View;
    .locals 8

    .prologue
    .line 238
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 240
    .local v4, v:Landroid/view/View;
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f080005

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f080006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f080007

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f080008

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f08000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f08000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f08000c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v5, 0x7f08000d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 256
    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 257
    .local v2, closeButton:Landroid/widget/Button;
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->closeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v5, 0x7f08000e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 259
    .local v1, clearButton:Landroid/widget/Button;
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->clearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-object v4

    .line 250
    .end local v1           #clearButton:Landroid/widget/Button;
    .end local v2           #closeButton:Landroid/widget/Button;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 251
    .local v3, num:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 252
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 253
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->editNumberButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private createTabView()Landroid/widget/TabHost;
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 185
    new-instance v4, Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    .local v4, tabHost:Landroid/widget/TabHost;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 191
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    new-instance v5, Landroid/widget/TabWidget;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 195
    .local v5, tabWidget:Landroid/widget/TabWidget;
    const v6, 0x1020013

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->setId(I)V

    .line 197
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 198
    .local v2, frameLayout:Landroid/widget/FrameLayout;
    const v6, 0x1020011

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 200
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v4, v3}, Landroid/widget/TabHost;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 206
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->createEditNumberView()Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, editNumberView:Landroid/view/View;
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->createEditNoteView()Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, editNoteView:Landroid/view/View;
    const-string v6, "number"

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 210
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f09000e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 211
    new-instance v7, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$5;

    invoke-direct {v7, p0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$5;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 209
    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 219
    const-string v6, "note"

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 220
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f09000f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 221
    new-instance v7, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$6;

    invoke-direct {v7, p0, v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$6;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 219
    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 230
    return-object v4
.end method


# virtual methods
.method public highlightNumber(I)V
    .locals 3
    .parameter "number"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 165
    .local v0, completedTextColor:I
    iget v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mSelectedNumber:I

    if-ne p1, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 172
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public resetButtons()V
    .locals 6

    .prologue
    .line 98
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 106
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    return-void

    .line 98
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    .local v0, b:Landroid/widget/Button;
    const v3, 0x7f020004

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 102
    .end local v0           #b:Landroid/widget/Button;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 103
    .restart local v0       #b:Landroid/widget/Button;
    const v3, 0x7f02000b

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 106
    .end local v0           #b:Landroid/widget/Button;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/widget/ToggleButton;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setOnNoteEditListener(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mOnNoteEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;

    .line 95
    return-void
.end method

.method public setOnNumberEditListener(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mOnNumberEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;

    .line 87
    return-void
.end method

.method public setValueCount(II)V
    .locals 3
    .parameter "number"
    .parameter "count"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public updateNote(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, numbers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteSelectedNumbers:Ljava/util/Set;

    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    return-void

    .line 138
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    .local v0, number:I
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteSelectedNumbers:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    .end local v0           #number:I
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 144
    .local v0, number:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteSelectedNumbers:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateNumber(Ljava/lang/Integer;)V
    .locals 6
    .parameter "number"

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mSelectedNumber:I

    .line 115
    new-instance v2, Landroid/graphics/LightingColorFilter;

    .line 116
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    .line 115
    invoke-direct {v2, v3, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 118
    .local v2, selBkgColorFilter:Landroid/graphics/LightingColorFilter;
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNumberButtons:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    return-void

    .line 118
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 119
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/widget/Button;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 120
    .local v0, b:Landroid/widget/Button;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mSelectedNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    const v5, 0x1030043

    invoke-virtual {v0, v3, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 122
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mContext:Landroid/content/Context;

    const v5, 0x103004a

    invoke-virtual {v0, v3, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 125
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
