.class public Lcom/nrsmagic/sudoku/game/CellNote;
.super Ljava/lang/Object;
.source "CellNote.java"


# static fields
.field public static final EMPTY:Lcom/nrsmagic/sudoku/game/CellNote;


# instance fields
.field private final mNotedNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/game/CellNote;->EMPTY:Lcom/nrsmagic/sudoku/game/CellNote;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/CellNote;->mNotedNumbers:Ljava/util/Set;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, notedNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/CellNote;->mNotedNumbers:Ljava/util/Set;

    .line 46
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellNote;
    .locals 4
    .parameter "note"

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 59
    .local v0, notedNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_1

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    .line 69
    .end local v1           #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    new-instance v3, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v3, v0}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>(Ljava/util/Set;)V

    return-object v3

    .line 62
    .restart local v1       #tokenizer:Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, value:Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromIntArray([Ljava/lang/Integer;)Lcom/nrsmagic/sudoku/game/CellNote;
    .locals 4
    .parameter "notedNums"

    .prologue
    .line 82
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v1, notedNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 88
    new-instance v2, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v2, v1}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>(Ljava/util/Set;)V

    return-object v2

    .line 84
    :cond_0
    aget-object v0, p0, v2

    .line 85
    .local v0, n:Ljava/lang/Integer;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addNumber(I)Lcom/nrsmagic/sudoku/game/CellNote;
    .locals 3
    .parameter "number"

    .prologue
    .line 150
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x9

    if-le p1, v1, :cond_1

    .line 151
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number must be between 1-9."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/CellNote;->getNotedNumbers()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 154
    .local v0, notedNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v1, v0}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public clear()Lcom/nrsmagic/sudoku/game/CellNote;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>()V

    return-object v0
.end method

.method public getNotedNumbers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/CellNote;->mNotedNumbers:Ljava/util/Set;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/CellNote;->mNotedNumbers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeNumber(I)Lcom/nrsmagic/sudoku/game/CellNote;
    .locals 3
    .parameter "number"

    .prologue
    .line 166
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x9

    if-le p1, v1, :cond_1

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number must be between 1-9."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/CellNote;->getNotedNumbers()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 170
    .local v0, notedNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 172
    new-instance v1, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v1, v0}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/game/CellNote;->serialize(Ljava/lang/StringBuilder;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serialize(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellNote;->mNotedNumbers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 100
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellNote;->mNotedNumbers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 103
    .local v0, num:Ljava/lang/Integer;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toggleNumber(I)Lcom/nrsmagic/sudoku/game/CellNote;
    .locals 3
    .parameter "number"

    .prologue
    .line 130
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x9

    if-le p1, v1, :cond_1

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number must be between 1-9."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/CellNote;->getNotedNumbers()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 134
    .local v0, notedNumbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    :goto_0
    new-instance v1, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v1, v0}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>(Ljava/util/Set;)V

    return-object v1

    .line 137
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
