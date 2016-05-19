.class public Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;
.super Ljava/lang/Object;
.source "FolderDetailLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderDetailLoader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

.field private mGuiHandler:Landroid/os/Handler;

.field private mLoaderService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mLoaderService:Ljava/util/concurrent/ExecutorService;

    .line 53
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mGuiHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;)Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mGuiHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mLoaderService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 83
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 84
    return-void
.end method

.method public loadDetailAsync(JLcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;)V
    .locals 5
    .parameter "folderID"
    .parameter "loadedCallback"

    .prologue
    .line 59
    move-wide v0, p1

    .line 60
    .local v0, folderIDFinal:J
    move-object v2, p3

    .line 61
    .local v2, loadedCallbackFinal:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mLoaderService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;-><init>(Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;JLcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method
