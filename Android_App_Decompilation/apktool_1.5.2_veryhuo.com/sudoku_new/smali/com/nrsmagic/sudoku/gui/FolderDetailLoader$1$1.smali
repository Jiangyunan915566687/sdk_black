.class Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1$1;
.super Ljava/lang/Object;
.source "FolderDetailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;

.field private final synthetic val$folderInfo:Lcom/nrsmagic/sudoku/game/FolderInfo;

.field private final synthetic val$loadedCallbackFinal:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;Lcom/nrsmagic/sudoku/game/FolderInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1$1;->this$1:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1$1;->val$loadedCallbackFinal:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;

    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1$1;->val$folderInfo:Lcom/nrsmagic/sudoku/game/FolderInfo;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1$1;->val$loadedCallbackFinal:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$1$1;->val$folderInfo:Lcom/nrsmagic/sudoku/game/FolderInfo;

    invoke-interface {v0, v1}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;->onLoaded(Lcom/nrsmagic/sudoku/game/FolderInfo;)V

    .line 71
    return-void
.end method
