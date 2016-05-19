.class public Lcom/nrsmagic/sudoku/gui/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mMin:I

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:I

.field private mValueFormat:Ljava/lang/String;

.field private mValueLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 202
    new-instance v1, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$1;-><init>(Lcom/nrsmagic/sudoku/gui/SeekBarPreference;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 68
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->setDialogLayoutResource(I)V

    .line 70
    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 72
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setId(I)V

    .line 73
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 76
    sget-object v1, Lcom/nrsmagic/sudoku/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->setMin(I)V

    .line 78
    const/4 v1, 0x1

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->setMax(I)V

    .line 79
    const/4 v1, 0x2

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->setValue(I)V

    .line 80
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->setValueFormat(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/SeekBarPreference;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->updateValueLabel(I)V

    return-void
.end method

.method private updateValueLabel(I)V
    .locals 6
    .parameter "progress"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValueLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 222
    iget v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    add-int v0, p1, v1

    .line 223
    .local v0, value:I
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValueFormat:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValueFormat:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 224
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValueLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValueFormat:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .end local v0           #value:I
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local v0       #value:I
    :cond_1
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValueLabel:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValue:I

    return v0
.end method

.method public getValueFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValueFormat:Ljava/lang/String;

    return-object v0
.end method

.method protected onAddSeekBarToDialogView(Landroid/view/View;Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "dialogView"
    .parameter "seekBar"

    .prologue
    .line 194
    .line 195
    const v1, 0x7f080012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 194
    check-cast v0, Landroid/view/ViewGroup;

    .line 196
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, -0x1

    .line 198
    const/4 v2, -0x2

    .line 197
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 200
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 172
    const v2, 0x7f080013

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValueLabel:Landroid/widget/TextView;

    .line 174
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 175
    .local v1, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->getValue()I

    move-result v2

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 176
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->updateValueLabel(I)V

    .line 179
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 180
    .local v0, oldParent:Landroid/view/ViewParent;
    if-eq v0, p1, :cond_1

    .line 181
    if-eqz v0, :cond_0

    .line 182
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #oldParent:Landroid/view/ViewParent;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->onAddSeekBarToDialogView(Landroid/view/View;Landroid/widget/SeekBar;)V

    .line 186
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 235
    if-eqz p1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    add-int v0, v1, v2

    .line 237
    .local v0, progress:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->setValue(I)V

    .line 241
    .end local v0           #progress:I
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 245
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 272
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 281
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 278
    check-cast v0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$SavedState;

    .line 279
    .local v0, myState:Lcom/nrsmagic/sudoku/gui/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 280
    iget v1, v0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$SavedState;->value:I

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->setValue(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 259
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 260
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 265
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 266
    .local v0, myState:Lcom/nrsmagic/sudoku/gui/SeekBarPreference$SavedState;
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->getValue()I

    move-result v2

    iput v2, v0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$SavedState;->value:I

    move-object v1, v0

    .line 267
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 250
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    .line 251
    .local v0, defValue:I
    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValue:I

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local v0           #defValue:I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->setValue(I)V

    .line 255
    return-void
.end method

.method public setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 115
    iput p1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMax:I

    .line 116
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMax:I

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 117
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 118
    return-void
.end method

.method public setMin(I)V
    .locals 3
    .parameter "min"

    .prologue
    .line 95
    iput p1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    .line 96
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMax:I

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 97
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 98
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->shouldDisableDependents()Z

    move-result v1

    .line 135
    .local v1, wasBlocking:Z
    iget v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMax:I

    if-le p1, v2, :cond_1

    .line 136
    iget v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMax:I

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValue:I

    .line 143
    :goto_0
    invoke-virtual {p0, p1}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->persistInt(I)Z

    .line 145
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->shouldDisableDependents()Z

    move-result v0

    .line 146
    .local v0, isBlocking:Z
    if-eq v0, v1, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->notifyDependencyChange(Z)V

    .line 149
    :cond_0
    return-void

    .line 137
    .end local v0           #isBlocking:Z
    :cond_1
    iget v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    if-ge p1, v2, :cond_2

    .line 138
    iget v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mMin:I

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValue:I

    goto :goto_0

    .line 140
    :cond_2
    iput p1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValue:I

    goto :goto_0
.end method

.method public setValueFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "valueFormat"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->mValueFormat:Ljava/lang/String;

    .line 162
    return-void
.end method
