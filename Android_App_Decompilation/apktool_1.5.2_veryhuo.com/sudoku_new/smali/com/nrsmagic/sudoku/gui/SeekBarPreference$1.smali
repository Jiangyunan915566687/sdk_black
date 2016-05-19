.class Lcom/nrsmagic/sudoku/gui/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SeekBarPreference;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SeekBarPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$1;->this$0:Lcom/nrsmagic/sudoku/gui/SeekBarPreference;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SeekBarPreference$1;->this$0:Lcom/nrsmagic/sudoku/gui/SeekBarPreference;

    #calls: Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->updateValueLabel(I)V
    invoke-static {v0, p2}, Lcom/nrsmagic/sudoku/gui/SeekBarPreference;->access$0(Lcom/nrsmagic/sudoku/gui/SeekBarPreference;I)V

    .line 216
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 210
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 206
    return-void
.end method
