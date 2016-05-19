.class Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;
.super Ljava/lang/Object;
.source "FolderDetailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->loadDetailAsync(JLcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

.field private final synthetic val$folderIDFinal:J

.field private final synthetic val$loadedCallbackFinal:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;JLcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;->this$0:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    iput-wide p2, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;->val$folderIDFinal:J

    iput-object p4, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;->val$loadedCallbackFinal:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;->this$0:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    #getter for: Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->access$0(Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;)Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    move-result-object v2

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;->val$folderIDFinal:J

    invoke-virtual {v2, v3, v4}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getFolderInfoFull(J)Lcom/nrsmagic/sudoku/game/FolderInfo;

    move-result-object v1

    .line 67
    .local v1, folderInfo:Lcom/nrsmagic/sudoku/game/FolderInfo;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;->this$0:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    #getter for: Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->access$1(Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1$1;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;->val$loadedCallbackFinal:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;

    invoke-direct {v3, p0, v4, v1}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1$1;-><init>(Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;Lcom/nrsmagic/sudoku/game/FolderInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1           #folderInfo:Lcom/nrsmagic/sudoku/game/FolderInfo;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FolderDetailLoader"

    const-string v3, "Error occured while loading full folder info."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
