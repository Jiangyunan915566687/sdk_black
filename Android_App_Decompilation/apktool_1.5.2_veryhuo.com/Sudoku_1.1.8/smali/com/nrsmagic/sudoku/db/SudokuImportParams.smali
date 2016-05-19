.class public Lcom/nrsmagic/sudoku/db/SudokuImportParams;
.super Ljava/lang/Object;
.source "SudokuImportParams.java"


# instance fields
.field public created:J

.field public data:Ljava/lang/String;

.field public lastPlayed:J

.field public note:Ljava/lang/String;

.field public state:J

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 14
    iput-wide v2, p0, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->created:J

    .line 15
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->state:J

    .line 16
    iput-wide v2, p0, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->time:J

    .line 17
    iput-wide v2, p0, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->lastPlayed:J

    .line 18
    iput-object v4, p0, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->data:Ljava/lang/String;

    .line 19
    iput-object v4, p0, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->note:Ljava/lang/String;

    .line 20
    return-void
.end method
