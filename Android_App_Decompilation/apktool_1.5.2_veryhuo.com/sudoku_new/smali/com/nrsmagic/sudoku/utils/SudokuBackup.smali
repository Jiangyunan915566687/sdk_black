.class public Lcom/nrsmagic/sudoku/utils/SudokuBackup;
.super Landroid/app/backup/BackupAgentHelper;
.source "SudokuBackup.java"


# static fields
.field private static final DATABASE_KEY:Ljava/lang/String; = "database_key"

.field private static final PREFS_DEFAULT_KEY:Ljava/lang/String; = "default_prefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/utils/SudokuBackup;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, prefs:Ljava/lang/String;
    const-string v2, "default_prefs"

    new-instance v3, Landroid/app/backup/SharedPreferencesBackupHelper;

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-direct {v3, p0, v4}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/nrsmagic/sudoku/utils/SudokuBackup;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 23
    const-string v2, "opensudoku"

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/utils/SudokuBackup;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, databasePath:Ljava/lang/String;
    const-string v2, "database_key"

    new-instance v3, Landroid/app/backup/FileBackupHelper;

    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-direct {v3, p0, v4}, Landroid/app/backup/FileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/nrsmagic/sudoku/utils/SudokuBackup;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 25
    return-void
.end method
