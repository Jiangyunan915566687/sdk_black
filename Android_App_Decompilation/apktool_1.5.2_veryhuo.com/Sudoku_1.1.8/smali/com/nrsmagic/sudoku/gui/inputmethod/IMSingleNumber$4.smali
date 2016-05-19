.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;
.super Ljava/lang/Object;
.source "IMSingleNumber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 189
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;
    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$4(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 202
    const/4 v5, 0x0

    .line 203
    .local v5, valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mHighlightCompletedValues:Z
    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$6(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mShowNumberTotals:Z
    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$7(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 204
    :cond_0
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    iget-object v6, v6, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v6}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nrsmagic/sudoku/game/CellCollection;->getValuesUseCount()Ljava/util/Map;

    move-result-object v5

    .line 206
    :cond_1
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mHighlightCompletedValues:Z
    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$6(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    iget-object v6, v6, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v8, 0x7f07

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 208
    .local v1, completedTextColor:I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 221
    .end local v1           #completedTextColor:I
    :cond_3
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mShowNumberTotals:Z
    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$7(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 222
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_a

    .line 230
    :cond_4
    return-void

    .line 189
    .end local v5           #valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 190
    .local v0, b:Landroid/widget/Button;
    const v8, 0x7f020004

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 191
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSelectedNumber:I
    invoke-static {v9}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$5(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 192
    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    iget-object v8, v8, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mContext:Landroid/content/Context;

    const v9, 0x1030043

    invoke-virtual {v0, v8, v9}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 193
    new-instance v4, Landroid/graphics/LightingColorFilter;

    .line 194
    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    iget-object v8, v8, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 193
    invoke-direct {v4, v8, v7}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 195
    .local v4, selBkgColorFilter:Landroid/graphics/LightingColorFilter;
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0

    .line 197
    .end local v4           #selBkgColorFilter:Landroid/graphics/LightingColorFilter;
    :cond_6
    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    iget-object v8, v8, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mContext:Landroid/content/Context;

    const v9, 0x103004a

    invoke-virtual {v0, v8, v9}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 198
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0

    .line 208
    .end local v0           #b:Landroid/widget/Button;
    .restart local v1       #completedTextColor:I
    .restart local v5       #valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 209
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v9, 0x9

    if-lt v6, v9, :cond_8

    const/4 v3, 0x1

    .line 210
    .local v3, highlightValue:Z
    :goto_3
    if-eqz v3, :cond_2

    .line 211
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;
    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$4(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 212
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v6

    iget-object v9, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSelectedNumber:I
    invoke-static {v9}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$5(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .end local v0           #b:Landroid/widget/Button;
    .end local v3           #highlightValue:Z
    :cond_8
    move v3, v7

    .line 209
    goto :goto_3

    .line 215
    .restart local v0       #b:Landroid/widget/Button;
    .restart local v3       #highlightValue:Z
    :cond_9
    const/high16 v6, 0x7f02

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 222
    .end local v0           #b:Landroid/widget/Button;
    .end local v1           #completedTextColor:I
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3           #highlightValue:Z
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 223
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;
    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$4(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 224
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSelectedNumber:I
    invoke-static {v8}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$5(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 227
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
