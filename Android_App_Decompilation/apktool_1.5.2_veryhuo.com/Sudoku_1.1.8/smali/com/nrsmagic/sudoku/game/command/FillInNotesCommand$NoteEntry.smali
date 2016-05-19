.class Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;
.super Ljava/lang/Object;
.source "FillInNotesCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoteEntry"
.end annotation


# instance fields
.field public colIndex:I

.field public note:Lcom/nrsmagic/sudoku/game/CellNote;

.field public rowIndex:I


# direct methods
.method public constructor <init>(IILcom/nrsmagic/sudoku/game/CellNote;)V
    .locals 0
    .parameter "rowIndex"
    .parameter "colIndex"
    .parameter "note"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;->rowIndex:I

    .line 93
    iput p2, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;->colIndex:I

    .line 94
    iput-object p3, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;->note:Lcom/nrsmagic/sudoku/game/CellNote;

    .line 95
    return-void
.end method
