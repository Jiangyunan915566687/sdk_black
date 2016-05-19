.class public Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;
.super Landroid/os/AsyncTask;
.source "FileExportTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGuiHandler:Landroid/os/Handler;

.field private mOnExportFinishedListener:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->mGuiHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;)Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->mOnExportFinishedListener:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;

    return-object v0
.end method

.method private attribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .parameter "serializer"
    .parameter "attributeName"
    .parameter "cursor"
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 174
    const-string v1, ""

    invoke-interface {p1, v1, p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    :cond_0
    return-void
.end method

.method private saveToFile(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;)Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;
    .locals 26
    .parameter "par"

    .prologue
    .line 68
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->folderID:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->sudokuID:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 69
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Exactly one of folderID and sudokuID must be set."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 70
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->folderID:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->sudokuID:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 71
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Exactly one of folderID and sudokuID must be set."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 74
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->file:Ljava/io/File;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 75
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Filename must be set."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 78
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 80
    .local v16, start:J
    new-instance v14, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;

    invoke-direct {v14}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;-><init>()V

    .line 81
    .local v14, result:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v14, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;->successful:Z

    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    const/4 v5, 0x0

    .line 85
    .local v5, cursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 88
    .local v18, writer:Ljava/io/Writer;
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->file:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v9, dir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_3

    .line 90
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 93
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->file:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;->file:Ljava/io/File;

    .line 95
    new-instance v8, Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 97
    .end local v7           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .local v8, database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    const/4 v13, 0x1

    .line 98
    .local v13, generateFolders:Z
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->folderID:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 99
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->folderID:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->exportFolder(J)Landroid/database/Cursor;

    move-result-object v5

    .line 100
    const/4 v13, 0x1

    .line 106
    :goto_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v15

    .line 107
    .local v15, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v19, Ljava/io/BufferedWriter;

    new-instance v20, Ljava/io/FileWriter;

    iget-object v0, v14, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;->file:Ljava/io/File;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 108
    .end local v18           #writer:Ljava/io/Writer;
    .local v19, writer:Ljava/io/Writer;
    :try_start_2
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 109
    const-string v20, "UTF-8"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 110
    const-string v20, ""

    const-string v21, "opensudoku"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string v20, ""

    const-string v21, "version"

    const-string v22, "2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-wide/16 v3, -0x1

    .line 114
    .local v3, currentFolderId:J
    :cond_4
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-nez v20, :cond_b

    .line 138
    if-eqz v13, :cond_5

    const-wide/16 v20, -0x1

    cmp-long v20, v3, v20

    if-eqz v20, :cond_5

    .line 139
    const-string v20, ""

    const-string v21, "folder"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    :cond_5
    const-string v20, ""

    const-string v21, "opensudoku"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 150
    :cond_7
    if-eqz v19, :cond_8

    .line 152
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 162
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 164
    .local v11, end:J
    const-string v20, "OpenSudoku"

    const-string v21, "Exported in %f seconds."

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 165
    sub-long v24, v11, v16

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x447a

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    .line 164
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v14, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;->successful:Z

    move-object/from16 v18, v19

    .end local v19           #writer:Ljava/io/Writer;
    .restart local v18       #writer:Ljava/io/Writer;
    move-object v7, v8

    .line 168
    .end local v3           #currentFolderId:J
    .end local v8           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .end local v9           #dir:Ljava/io/File;
    .end local v11           #end:J
    .end local v13           #generateFolders:Z
    .end local v15           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    :cond_9
    :goto_2
    return-object v14

    .line 102
    .end local v7           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .restart local v8       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .restart local v9       #dir:Ljava/io/File;
    .restart local v13       #generateFolders:Z
    :cond_a
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->sudokuID:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->exportFolder(J)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v5

    .line 103
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 115
    .end local v18           #writer:Ljava/io/Writer;
    .restart local v3       #currentFolderId:J
    .restart local v15       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19       #writer:Ljava/io/Writer;
    :cond_b
    if-eqz v13, :cond_d

    :try_start_5
    const-string v20, "folder_id"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    cmp-long v20, v3, v20

    if-eqz v20, :cond_d

    .line 117
    const-wide/16 v20, -0x1

    cmp-long v20, v3, v20

    if-eqz v20, :cond_c

    .line 118
    const-string v20, ""

    const-string v21, "folder"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    :cond_c
    const-string v20, "folder_id"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 121
    const-string v20, ""

    const-string v21, "folder"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const-string v20, "name"

    const-string v21, "folder_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v5, v2}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->attribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 123
    const-string v20, "created"

    const-string v21, "folder_created"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v5, v2}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->attribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 126
    :cond_d
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, data:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 128
    const-string v20, ""

    const-string v21, "game"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    const-string v20, "created"

    const-string v21, "created"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v5, v2}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->attribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 130
    const-string v20, "state"

    const-string v21, "state"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v5, v2}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->attribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 131
    const-string v20, "time"

    const-string v21, "time"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v5, v2}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->attribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 132
    const-string v20, "last_played"

    const-string v21, "last_played"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v5, v2}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->attribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 133
    const-string v20, "data"

    const-string v21, "data"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v5, v2}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->attribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 134
    const-string v20, "note"

    const-string v21, "puzzle_note"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v15, v1, v5, v2}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->attribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 135
    const-string v20, ""

    const-string v21, "game"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 143
    .end local v3           #currentFolderId:J
    .end local v6           #data:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object/from16 v18, v19

    .end local v19           #writer:Ljava/io/Writer;
    .restart local v18       #writer:Ljava/io/Writer;
    move-object v7, v8

    .line 144
    .end local v8           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .end local v9           #dir:Ljava/io/File;
    .end local v13           #generateFolders:Z
    .end local v15           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .local v10, e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v20, "OpenSudoku"

    const-string v21, "Error while exporting file."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v14, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;->successful:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 148
    if-eqz v5, :cond_e

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 150
    :cond_f
    if-eqz v18, :cond_9

    .line 152
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 153
    :catch_1
    move-exception v10

    .line 154
    const-string v20, "OpenSudoku"

    const-string v21, "Error while exporting file."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v14, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;->successful:Z

    goto/16 :goto_2

    .line 147
    .end local v10           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    .line 148
    :goto_4
    if-eqz v5, :cond_10

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 150
    :cond_11
    if-eqz v18, :cond_12

    .line 152
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 160
    :cond_12
    throw v20

    .line 153
    :catch_2
    move-exception v10

    .line 154
    .restart local v10       #e:Ljava/io/IOException;
    const-string v20, "OpenSudoku"

    const-string v21, "Error while exporting file."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v14, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;->successful:Z

    goto/16 :goto_2

    .line 153
    .end local v7           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .end local v10           #e:Ljava/io/IOException;
    .end local v18           #writer:Ljava/io/Writer;
    .restart local v3       #currentFolderId:J
    .restart local v8       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .restart local v9       #dir:Ljava/io/File;
    .restart local v13       #generateFolders:Z
    .restart local v15       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19       #writer:Ljava/io/Writer;
    :catch_3
    move-exception v10

    .line 154
    .restart local v10       #e:Ljava/io/IOException;
    const-string v20, "OpenSudoku"

    const-string v21, "Error while exporting file."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v14, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;->successful:Z

    move-object/from16 v18, v19

    .end local v19           #writer:Ljava/io/Writer;
    .restart local v18       #writer:Ljava/io/Writer;
    move-object v7, v8

    .line 156
    .end local v8           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .restart local v7       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    goto/16 :goto_2

    .line 147
    .end local v3           #currentFolderId:J
    .end local v7           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .end local v10           #e:Ljava/io/IOException;
    .end local v15           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    :catchall_1
    move-exception v20

    move-object v7, v8

    .end local v8           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .restart local v7       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    goto :goto_4

    .end local v7           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .end local v18           #writer:Ljava/io/Writer;
    .restart local v8       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .restart local v15       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19       #writer:Ljava/io/Writer;
    :catchall_2
    move-exception v20

    move-object/from16 v18, v19

    .end local v19           #writer:Ljava/io/Writer;
    .restart local v18       #writer:Ljava/io/Writer;
    move-object v7, v8

    .end local v8           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .restart local v7       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    goto :goto_4

    .line 143
    .end local v9           #dir:Ljava/io/File;
    .end local v13           #generateFolders:Z
    .end local v15           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_4
    move-exception v10

    goto :goto_3

    .end local v7           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .restart local v8       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .restart local v9       #dir:Ljava/io/File;
    .restart local v13       #generateFolders:Z
    :catch_5
    move-exception v10

    move-object v7, v8

    .end local v8           #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .restart local v7       #database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    goto :goto_3
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

    invoke-virtual {p0, p1}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->doInBackground([Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 49
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 64
    const/4 v2, 0x0

    return-object v2

    .line 49
    :cond_0
    aget-object v0, p1, v2

    .line 50
    .local v0, par:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;
    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->saveToFile(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;)Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;

    move-result-object v1

    .line 52
    .local v1, res:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->mGuiHandler:Landroid/os/Handler;

    new-instance v5, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$1;

    invoke-direct {v5, p0, v1}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$1;-><init>(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getOnExportFinishedListener()Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->mOnExportFinishedListener:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;

    return-object v0
.end method

.method public setOnExportFinishedListener(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->mOnExportFinishedListener:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;

    .line 45
    return-void
.end method
