.class Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;
.super Ljava/lang/Object;
.source "ClearAllNotesCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;
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
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;->rowIndex:I

    .line 110
    iput p2, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;->colIndex:I

    .line 111
    iput-object p3, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;->note:Lcom/nrsmagic/sudoku/game/CellNote;

    .line 112
    return-void
.end method
