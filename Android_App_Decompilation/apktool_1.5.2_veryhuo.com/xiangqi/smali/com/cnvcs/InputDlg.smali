.class public Lcom/cnvcs/InputDlg;
.super Landroid/app/Dialog;
.source "InputDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field m_context:Landroid/content/Context;

.field m_edit:Landroid/widget/EditText;

.field m_scale:F

.field m_text:Ljava/lang/String;

.field m_title:Ljava/lang/String;

.field m_type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "text"
    .parameter "type"

    .prologue
    .line 27
    const v2, 0x103000b

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/cnvcs/InputDlg;->m_context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/cnvcs/InputDlg;->m_title:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/cnvcs/InputDlg;->m_text:Ljava/lang/String;

    .line 31
    iput p4, p0, Lcom/cnvcs/InputDlg;->m_type:I

    .line 33
    iget-object v2, p0, Lcom/cnvcs/InputDlg;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 34
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 35
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/cnvcs/InputDlg;->m_scale:F

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/cnvcs/InputDlg;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnvcs/App;->OnInput(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/cnvcs/InputDlg;->dismiss()V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-virtual {p0}, Lcom/cnvcs/InputDlg;->dismiss()V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x74

    const/16 v9, 0x10

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 40
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_title:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnvcs/InputDlg;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/cnvcs/InputDlg;->m_context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cnvcs/InputDlg;->m_edit:Landroid/widget/EditText;

    .line 47
    iget v4, p0, Lcom/cnvcs/InputDlg;->m_type:I

    if-eqz v4, :cond_0

    .line 48
    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_edit:Landroid/widget/EditText;

    iget v5, p0, Lcom/cnvcs/InputDlg;->m_type:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 49
    :cond_0
    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    .line 50
    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_edit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/cnvcs/InputDlg;->m_text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_edit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/cnvcs/InputDlg;->m_text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 52
    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 53
    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_edit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    .local v3, param:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v7}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v5

    invoke-virtual {v3, v4, v8, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 56
    const/16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 58
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, btnLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/Button;

    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, btn:Landroid/widget/Button;
    const-string v4, "\u786e\u5b9a"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setId(I)V

    .line 62
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #param:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    .restart local v3       #param:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v9}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    invoke-virtual {p0, v10}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    new-instance v0, Landroid/widget/Button;

    .end local v0           #btn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/cnvcs/InputDlg;->m_context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v0       #btn:Landroid/widget/Button;
    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setId(I)V

    .line 71
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #param:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .restart local v3       #param:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v9}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    invoke-virtual {p0, v10}, Lcom/cnvcs/InputDlg;->px(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 77
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/cnvcs/InputDlg;->setContentView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 102
    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/cnvcs/InputDlg;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 104
    :cond_0
    return-void
.end method

.method protected px(I)I
    .locals 2
    .parameter "p"

    .prologue
    .line 83
    int-to-float v0, p1

    iget v1, p0, Lcom/cnvcs/InputDlg;->m_scale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
