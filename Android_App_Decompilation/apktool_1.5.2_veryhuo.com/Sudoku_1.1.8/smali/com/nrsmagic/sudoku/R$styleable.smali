.class public final Lcom/nrsmagic/sudoku/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SeekBarPreference:[I = null

.field public static final SeekBarPreference_max:I = 0x1

.field public static final SeekBarPreference_min:I = 0x0

.field public static final SeekBarPreference_value:I = 0x2

.field public static final SeekBarPreference_valueFormat:I = 0x3

.field public static final SudokuBoardView:[I = null

.field public static final SudokuBoardView_backgroundColor:I = 0x5

.field public static final SudokuBoardView_backgroundColorReadOnly:I = 0x7

.field public static final SudokuBoardView_backgroundColorSecondary:I = 0x6

.field public static final SudokuBoardView_backgroundColorSelected:I = 0x9

.field public static final SudokuBoardView_backgroundColorTouched:I = 0x8

.field public static final SudokuBoardView_lineColor:I = 0x0

.field public static final SudokuBoardView_sectorLineColor:I = 0x1

.field public static final SudokuBoardView_textColor:I = 0x2

.field public static final SudokuBoardView_textColorNote:I = 0x4

.field public static final SudokuBoardView_textColorReadOnly:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nrsmagic/sudoku/R$styleable;->SeekBarPreference:[I

    .line 531
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nrsmagic/sudoku/R$styleable;->SudokuBoardView:[I

    .line 685
    return-void

    .line 444
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    .line 531
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
