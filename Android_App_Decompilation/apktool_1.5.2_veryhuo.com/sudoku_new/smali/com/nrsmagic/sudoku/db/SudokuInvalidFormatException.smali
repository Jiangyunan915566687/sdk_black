.class public Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
.super Ljava/lang/Exception;
.source "SudokuInvalidFormatException.java"


# static fields
.field private static final serialVersionUID:J = -0x4b260fa11edb14baL


# instance fields
.field private final mData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 30
    const-string v0, "Invalid format of sudoku."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;->mData:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;->mData:Ljava/lang/String;

    return-object v0
.end method
