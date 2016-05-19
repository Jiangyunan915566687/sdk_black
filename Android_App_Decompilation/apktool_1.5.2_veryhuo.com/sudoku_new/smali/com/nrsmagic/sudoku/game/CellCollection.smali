.class public Lcom/nrsmagic/sudoku/game/CellCollection;
.super Ljava/lang/Object;
.source "CellCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;
    }
.end annotation


# static fields
.field private static DATA_PATTERN_VERSION_1:Ljava/util/regex/Pattern; = null

.field private static DATA_PATTERN_VERSION_PLAIN:Ljava/util/regex/Pattern; = null

.field public static DATA_VERSION_1:I = 0x0

.field public static DATA_VERSION_PLAIN:I = 0x0

.field public static final SUDOKU_SIZE:I = 0x9


# instance fields
.field private mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

.field private final mChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Lcom/nrsmagic/sudoku/game/CellGroup;

.field private mOnChangeEnabled:Z

.field private mRows:[Lcom/nrsmagic/sudoku/game/CellGroup;

.field private mSectors:[Lcom/nrsmagic/sudoku/game/CellGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/nrsmagic/sudoku/game/CellCollection;->DATA_VERSION_PLAIN:I

    .line 49
    const/4 v0, 0x1

    sput v0, Lcom/nrsmagic/sudoku/game/CellCollection;->DATA_VERSION_1:I

    .line 398
    const-string v0, "^\\d{81}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/game/CellCollection;->DATA_PATTERN_VERSION_PLAIN:Ljava/util/regex/Pattern;

    .line 399
    const-string v0, "^version: 1\\n((?#value)\\d\\|(?#note)((\\d,)+|-)\\|(?#editable)[01]\\|){0,81}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/game/CellCollection;->DATA_PATTERN_VERSION_1:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>([[Lcom/nrsmagic/sudoku/game/Cell;)V
    .locals 1
    .parameter "cells"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mOnChangeEnabled:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mChangeListeners:Ljava/util/List;

    .line 134
    iput-object p1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

    .line 135
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/CellCollection;->initCollection()V

    .line 136
    return-void
.end method

.method public static createDebugGame()Lcom/nrsmagic/sudoku/game/CellCollection;
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 108
    new-instance v0, Lcom/nrsmagic/sudoku/game/CellCollection;

    const/16 v1, 0x9

    new-array v1, v1, [[Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v2, 0x0

    .line 109
    const/16 v3, 0x9

    new-array v3, v3, [Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v4, 0x0

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v5, v3, v4

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v4, v3, v7

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v4, v3, v8

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v10}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v11}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v10

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v11

    const/4 v4, 0x6

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    .line 110
    const/16 v2, 0x9

    new-array v2, v2, [Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v3, 0x0

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v8

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v9

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v11

    const/4 v3, 0x6

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v7}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v8}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v9}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    aput-object v2, v1, v7

    .line 111
    const/16 v2, 0x9

    new-array v2, v2, [Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v3, 0x0

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v8

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3, v7}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v9

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3, v8}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3, v9}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v11

    const/4 v3, 0x6

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v10}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v11}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    aput-object v2, v1, v8

    .line 112
    const/16 v2, 0x9

    new-array v2, v2, [Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v3, 0x0

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v8}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3, v9}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3, v10}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v8

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v9

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v10

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v11

    const/4 v3, 0x6

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v7}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    aput-object v2, v1, v9

    .line 113
    const/16 v2, 0x9

    new-array v2, v2, [Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v3, 0x0

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v11}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v8

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v9

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v10

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v11

    const/4 v3, 0x6

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v8}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v9}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v10}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    aput-object v2, v1, v10

    .line 114
    const/16 v2, 0x9

    new-array v2, v2, [Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v3, 0x0

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3, v7}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v3, v2, v8

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v9

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v10

    new-instance v3, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v3, v2, v11

    const/4 v3, 0x6

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v11}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v2, v3

    aput-object v2, v1, v11

    const/4 v2, 0x6

    .line 115
    const/16 v3, 0x9

    new-array v3, v3, [Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v4, 0x0

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v5, v9}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v10}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v11}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v8

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v10

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v11

    const/4 v4, 0x6

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v5, v7}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v5, v8}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 116
    const/16 v3, 0x9

    new-array v3, v3, [Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v4, 0x0

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v8

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v7}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v10

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v8}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v11

    const/4 v4, 0x6

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v5, v9}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v5, v10}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v5, v11}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 117
    const/16 v3, 0x9

    new-array v3, v3, [Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v4, 0x0

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v7}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v8}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v8

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v9}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v10}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v10

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4, v11}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v4, v3, v11

    const/4 v4, 0x6

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Lcom/nrsmagic/sudoku/game/Cell;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(I)V

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    .line 108
    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/game/CellCollection;-><init>([[Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 119
    .local v0, debugGame:Lcom/nrsmagic/sudoku/game/CellCollection;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->markFilledCellsAsNotEditable()V

    .line 120
    return-object v0
.end method

.method public static createEmpty()Lcom/nrsmagic/sudoku/game/CellCollection;
    .locals 6

    .prologue
    const/16 v5, 0x9

    .line 71
    filled-new-array {v5, v5}, [I

    move-result-object v3

    const-class v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/nrsmagic/sudoku/game/Cell;

    .line 73
    .local v1, cells:[[Lcom/nrsmagic/sudoku/game/Cell;
    const/4 v2, 0x0

    .local v2, r:I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 82
    new-instance v3, Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-direct {v3, v1}, Lcom/nrsmagic/sudoku/game/CellCollection;-><init>([[Lcom/nrsmagic/sudoku/game/Cell;)V

    return-object v3

    .line 76
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    if-lt v0, v5, :cond_1

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_1
    aget-object v3, v1, v2

    new-instance v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v4}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    aput-object v4, v3, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellCollection;
    .locals 4
    .parameter "data"

    .prologue
    .line 325
    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, lines:[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 327
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot deserialize Sudoku, data corrupted."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "version: 1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    new-instance v1, Ljava/util/StringTokenizer;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string v3, "|"

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .local v1, st:Ljava/util/StringTokenizer;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/game/CellCollection;->deserialize(Ljava/util/StringTokenizer;)Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v2

    .line 334
    .end local v1           #st:Ljava/util/StringTokenizer;
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/nrsmagic/sudoku/game/CellCollection;->fromString(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v2

    goto :goto_0
.end method

.method public static deserialize(Ljava/util/StringTokenizer;)Lcom/nrsmagic/sudoku/game/CellCollection;
    .locals 6
    .parameter "data"

    .prologue
    const/16 v5, 0x9

    .line 300
    filled-new-array {v5, v5}, [I

    move-result-object v3

    const-class v4, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/nrsmagic/sudoku/game/Cell;

    .line 302
    .local v1, cells:[[Lcom/nrsmagic/sudoku/game/Cell;
    const/4 v2, 0x0

    .local v2, r:I
    const/4 v0, 0x0

    .line 303
    .local v0, c:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lt v2, v5, :cond_2

    .line 313
    :cond_1
    new-instance v3, Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-direct {v3, v1}, Lcom/nrsmagic/sudoku/game/CellCollection;-><init>([[Lcom/nrsmagic/sudoku/game/Cell;)V

    return-object v3

    .line 304
    :cond_2
    aget-object v3, v1, v2

    invoke-static {p0}, Lcom/nrsmagic/sudoku/game/Cell;->deserialize(Ljava/util/StringTokenizer;)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v4

    aput-object v4, v3, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 307
    if-ne v0, v5, :cond_0

    .line 308
    add-int/lit8 v2, v2, 0x1

    .line 309
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellCollection;
    .locals 9
    .parameter "data"

    .prologue
    const/16 v8, 0x9

    .line 349
    filled-new-array {v8, v8}, [I

    move-result-object v6

    const-class v7, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/nrsmagic/sudoku/game/Cell;

    .line 351
    .local v2, cells:[[Lcom/nrsmagic/sudoku/game/Cell;
    const/4 v3, 0x0

    .line 352
    .local v3, pos:I
    const/4 v4, 0x0

    .local v4, r:I
    :goto_0
    if-lt v4, v8, :cond_0

    .line 371
    new-instance v6, Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-direct {v6, v2}, Lcom/nrsmagic/sudoku/game/CellCollection;-><init>([[Lcom/nrsmagic/sudoku/game/Cell;)V

    return-object v6

    .line 353
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    if-lt v0, v8, :cond_1

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 354
    :cond_1
    const/4 v5, 0x0

    .line 355
    .local v5, value:I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_3

    .line 364
    :goto_2
    new-instance v1, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    .line 365
    .local v1, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {v1, v5}, Lcom/nrsmagic/sudoku/game/Cell;->setValue(I)V

    .line 366
    if-nez v5, :cond_4

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nrsmagic/sudoku/game/Cell;->setEditable(Ljava/lang/Boolean;)V

    .line 367
    aget-object v6, v2, v4

    aput-object v1, v6, v0

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    .end local v1           #cell:Lcom/nrsmagic/sudoku/game/Cell;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 357
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_2

    .line 358
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-gt v6, v7, :cond_2

    .line 360
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v5, v6, -0x30

    .line 361
    goto :goto_2

    .line 366
    .restart local v1       #cell:Lcom/nrsmagic/sudoku/game/Cell;
    :cond_4
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private initCollection()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    .line 268
    new-array v1, v8, [Lcom/nrsmagic/sudoku/game/CellGroup;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mRows:[Lcom/nrsmagic/sudoku/game/CellGroup;

    .line 269
    new-array v1, v8, [Lcom/nrsmagic/sudoku/game/CellGroup;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mColumns:[Lcom/nrsmagic/sudoku/game/CellGroup;

    .line 270
    new-array v1, v8, [Lcom/nrsmagic/sudoku/game/CellGroup;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mSectors:[Lcom/nrsmagic/sudoku/game/CellGroup;

    .line 272
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-lt v7, v8, :cond_0

    .line 278
    const/4 v2, 0x0

    .local v2, r:I
    :goto_1
    if-lt v2, v8, :cond_1

    .line 291
    return-void

    .line 273
    .end local v2           #r:I
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mRows:[Lcom/nrsmagic/sudoku/game/CellGroup;

    new-instance v4, Lcom/nrsmagic/sudoku/game/CellGroup;

    invoke-direct {v4}, Lcom/nrsmagic/sudoku/game/CellGroup;-><init>()V

    aput-object v4, v1, v7

    .line 274
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mColumns:[Lcom/nrsmagic/sudoku/game/CellGroup;

    new-instance v4, Lcom/nrsmagic/sudoku/game/CellGroup;

    invoke-direct {v4}, Lcom/nrsmagic/sudoku/game/CellGroup;-><init>()V

    aput-object v4, v1, v7

    .line 275
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mSectors:[Lcom/nrsmagic/sudoku/game/CellGroup;

    new-instance v4, Lcom/nrsmagic/sudoku/game/CellGroup;

    invoke-direct {v4}, Lcom/nrsmagic/sudoku/game/CellGroup;-><init>()V

    aput-object v4, v1, v7

    .line 272
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 280
    .restart local v2       #r:I
    :cond_1
    const/4 v3, 0x0

    .local v3, c:I
    :goto_2
    if-lt v3, v8, :cond_2

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v1, v1, v2

    aget-object v0, v1, v3

    .line 285
    .local v0, cell:Lcom/nrsmagic/sudoku/game/Cell;
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mSectors:[Lcom/nrsmagic/sudoku/game/CellGroup;

    div-int/lit8 v4, v3, 0x3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v5, v2, 0x3

    add-int/2addr v4, v5

    aget-object v4, v1, v4

    .line 286
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mRows:[Lcom/nrsmagic/sudoku/game/CellGroup;

    aget-object v5, v1, v3

    .line 287
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mColumns:[Lcom/nrsmagic/sudoku/game/CellGroup;

    aget-object v6, v1, v2

    move-object v1, p0

    .line 284
    invoke-virtual/range {v0 .. v6}, Lcom/nrsmagic/sudoku/game/Cell;->initCollection(Lcom/nrsmagic/sudoku/game/CellCollection;IILcom/nrsmagic/sudoku/game/CellGroup;Lcom/nrsmagic/sudoku/game/CellGroup;Lcom/nrsmagic/sudoku/game/CellGroup;)V

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static isValid(Ljava/lang/String;I)Z
    .locals 3
    .parameter "data"
    .parameter "dataVersion"

    .prologue
    .line 409
    sget v0, Lcom/nrsmagic/sudoku/game/CellCollection;->DATA_VERSION_PLAIN:I

    if-ne p1, v0, :cond_0

    .line 410
    sget-object v0, Lcom/nrsmagic/sudoku/game/CellCollection;->DATA_PATTERN_VERSION_PLAIN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 412
    :goto_0
    return v0

    .line 411
    :cond_0
    sget v0, Lcom/nrsmagic/sudoku/game/CellCollection;->DATA_VERSION_1:I

    if-ne p1, v0, :cond_1

    .line 412
    sget-object v0, Lcom/nrsmagic/sudoku/game/CellCollection;->DATA_PATTERN_VERSION_1:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0

    .line 414
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addOnChangeListener(Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is already registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 426
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    return-void
.end method

.method public getCell(II)Lcom/nrsmagic/sudoku/game/Cell;
    .locals 1
    .parameter "rowIndex"
    .parameter "colIndex"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getCells()[[Lcom/nrsmagic/sudoku/game/Cell;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

    return-object v0
.end method

.method public getValuesUseCount()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    .line 245
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v3, valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    .local v2, value:I
    :goto_0
    if-le v2, v6, :cond_0

    .line 250
    const/4 v1, 0x0

    .local v1, r:I
    :goto_1
    if-lt v1, v6, :cond_1

    .line 259
    return-object v3

    .line 247
    .end local v1           #r:I
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .restart local v1       #r:I
    :cond_1
    const/4 v0, 0x0

    .local v0, c:I
    :goto_2
    if-lt v0, v6, :cond_2

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v2

    .line 253
    if-eqz v2, :cond_3

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public isCompleted()Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 200
    const/4 v2, 0x0

    .local v2, r:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 210
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 202
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_2
    if-lt v0, v4, :cond_1

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v3, v3, v2

    aget-object v1, v3, v0

    .line 205
    .local v1, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    .line 206
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 202
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 91
    const/4 v2, 0x0

    .local v2, r:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 98
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 92
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_2
    if-lt v0, v4, :cond_1

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v3, v3, v2

    aget-object v1, v3, v0

    .line 94
    .local v1, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    const/4 v3, 0x0

    goto :goto_1

    .line 92
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public markAllCellsAsEditable()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 217
    const/4 v2, 0x0

    .local v2, r:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 223
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    if-lt v0, v4, :cond_1

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v3, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v3, v3, v2

    aget-object v1, v3, v0

    .line 220
    .local v1, cell:Lcom/nrsmagic/sudoku/game/Cell;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nrsmagic/sudoku/game/Cell;->setEditable(Ljava/lang/Boolean;)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public markAllCellsAsValid()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    .line 149
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mOnChangeEnabled:Z

    .line 150
    const/4 v1, 0x0

    .local v1, r:I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 157
    iput-boolean v4, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mOnChangeEnabled:Z

    .line 158
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/CellCollection;->onChange()V

    .line 159
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    if-lt v0, v5, :cond_1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nrsmagic/sudoku/game/Cell;->setValid(Ljava/lang/Boolean;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public markFilledCellsAsNotEditable()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 229
    const/4 v2, 0x0

    .local v2, r:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 235
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    if-lt v0, v4, :cond_1

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v3, v3, v2

    aget-object v1, v3, v0

    .line 232
    .local v1, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nrsmagic/sudoku/game/Cell;->setEditable(Ljava/lang/Boolean;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected onChange()V
    .locals 4

    .prologue
    .line 468
    iget-boolean v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mOnChangeEnabled:Z

    if-eqz v1, :cond_0

    .line 469
    iget-object v2, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mChangeListeners:Ljava/util/List;

    monitor-enter v2

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 469
    monitor-exit v2

    .line 475
    :cond_0
    return-void

    .line 470
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;

    .line 471
    .local v0, l:Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;
    invoke-interface {v0}, Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;->onChange()V

    goto :goto_0

    .line 469
    .end local v0           #l:Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeOnChangeListener(Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 438
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 434
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    return-void
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->serialize(Ljava/lang/StringBuilder;)V

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serialize(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "data"

    .prologue
    const/16 v4, 0x9

    .line 386
    const-string v3, "version: 1\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const/4 v2, 0x0

    .local v2, r:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 396
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    if-lt v0, v4, :cond_1

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :cond_1
    iget-object v3, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mCells:[[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v3, v3, v2

    aget-object v1, v3, v0

    .line 393
    .local v1, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {v1, p1}, Lcom/nrsmagic/sudoku/game/Cell;->serialize(Ljava/lang/StringBuilder;)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public validate()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 170
    const/4 v3, 0x1

    .line 173
    .local v3, valid:Z
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/CellCollection;->markAllCellsAsValid()V

    .line 175
    iput-boolean v4, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mOnChangeEnabled:Z

    .line 177
    iget-object v6, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mRows:[Lcom/nrsmagic/sudoku/game/CellGroup;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_0

    .line 182
    iget-object v6, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mColumns:[Lcom/nrsmagic/sudoku/game/CellGroup;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-lt v5, v7, :cond_2

    .line 187
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mSectors:[Lcom/nrsmagic/sudoku/game/CellGroup;

    array-length v6, v5

    :goto_2
    if-lt v4, v6, :cond_4

    .line 193
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nrsmagic/sudoku/game/CellCollection;->mOnChangeEnabled:Z

    .line 194
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/CellCollection;->onChange()V

    .line 196
    return v3

    .line 177
    :cond_0
    aget-object v1, v6, v5

    .line 178
    .local v1, row:Lcom/nrsmagic/sudoku/game/CellGroup;
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/CellGroup;->validate()Z

    move-result v8

    if-nez v8, :cond_1

    .line 179
    const/4 v3, 0x0

    .line 177
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 182
    .end local v1           #row:Lcom/nrsmagic/sudoku/game/CellGroup;
    :cond_2
    aget-object v0, v6, v5

    .line 183
    .local v0, column:Lcom/nrsmagic/sudoku/game/CellGroup;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/CellGroup;->validate()Z

    move-result v8

    if-nez v8, :cond_3

    .line 184
    const/4 v3, 0x0

    .line 182
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 187
    .end local v0           #column:Lcom/nrsmagic/sudoku/game/CellGroup;
    :cond_4
    aget-object v2, v5, v4

    .line 188
    .local v2, sector:Lcom/nrsmagic/sudoku/game/CellGroup;
    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/CellGroup;->validate()Z

    move-result v7

    if-nez v7, :cond_5

    .line 189
    const/4 v3, 0x0

    .line 187
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
