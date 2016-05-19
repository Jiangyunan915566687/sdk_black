.class Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;
.super Ljava/lang/Object;
.source "SudokuListActivity.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/SudokuListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SudokuListViewBinder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateTimeFormatter:Ljava/text/DateFormat;

.field private mGameTimeFormatter:Lcom/nrsmagic/sudoku/gui/GameTimeFormat;

.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x3

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    new-instance v0, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mGameTimeFormatter:Lcom/nrsmagic/sudoku/gui/GameTimeFormat;

    .line 484
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mDateTimeFormatter:Ljava/text/DateFormat;

    .line 486
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mTimeFormatter:Ljava/text/DateFormat;

    .line 489
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mContext:Landroid/content/Context;

    .line 490
    return-void
.end method

.method private getDateAndTimeForHumans(J)Ljava/lang/String;
    .locals 10
    .parameter "datetime"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 598
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 600
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 601
    .local v1, now:Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v6

    invoke-direct {v2, v4, v5, v6}, Ljava/util/Date;-><init>(III)V

    .line 602
    .local v2, today:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 603
    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    .line 602
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 605
    .local v3, yesterday:Ljava/util/Date;
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f090025

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 610
    :goto_0
    return-object v4

    .line 607
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 608
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f090026

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 610
    :cond_1
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f090027

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mDateTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 27
    .parameter "view"
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 495
    const-string v22, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 497
    .local v17, state:I
    const/4 v12, 0x0

    .line 499
    .local v12, label:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 594
    .end local p1
    :goto_0
    :pswitch_0
    const/16 v22, 0x1

    return v22

    .line 501
    .restart local p1
    :pswitch_1
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 503
    .local v8, data:Ljava/lang/String;
    const/4 v4, 0x0

    .line 505
    .local v4, cells:Lcom/nrsmagic/sudoku/game/CellCollection;
    :try_start_0
    invoke-static {v8}, Lcom/nrsmagic/sudoku/game/CellCollection;->deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellCollection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    move-object/from16 v3, p1

    .line 510
    check-cast v3, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    .line 511
    .local v3, board:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setReadOnly(Z)V

    .line 512
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setFocusable(Z)V

    .line 513
    check-cast p1, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    .end local p1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setCells(Lcom/nrsmagic/sudoku/game/CellCollection;)V

    goto :goto_0

    .line 506
    .end local v3           #board:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;
    .restart local p1
    :catch_0
    move-exception v9

    .line 507
    .local v9, e:Ljava/lang/Exception;
    const-string v22, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 508
    .local v10, id:J
    const-string v22, "SudokuListActivity"

    const-string v23, "Exception occurred when deserializing puzzle with id %s."

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v4           #cells:Lcom/nrsmagic/sudoku/game/CellCollection;
    .end local v8           #data:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #id:J
    :pswitch_2
    move-object/from16 v12, p1

    .line 516
    check-cast v12, Landroid/widget/TextView;

    .line 517
    const/16 v18, 0x0

    .line 518
    .local v18, stateString:Ljava/lang/String;
    packed-switch v17, :pswitch_data_1

    .line 526
    :goto_2
    :pswitch_3
    if-nez v18, :cond_0

    const/16 v22, 0x8

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    const/16 v22, 0x2

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 531
    const/16 v22, 0xbb

    const/16 v23, 0xbb

    const/16 v24, 0xbb

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 520
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f090020

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 521
    goto :goto_2

    .line 523
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f090021

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 527
    :cond_0
    const/16 v22, 0x0

    goto :goto_3

    .line 533
    :cond_1
    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 538
    .end local v18           #stateString:Ljava/lang/String;
    :pswitch_6
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .local v19, time:J
    move-object/from16 v12, p1

    .line 539
    check-cast v12, Landroid/widget/TextView;

    .line 540
    const/16 v21, 0x0

    .line 541
    .local v21, timeString:Ljava/lang/String;
    const-wide/16 v22, 0x0

    cmp-long v22, v19, v22

    if-eqz v22, :cond_2

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mGameTimeFormatter:Lcom/nrsmagic/sudoku/gui/GameTimeFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->format(J)Ljava/lang/String;

    move-result-object v21

    .line 544
    :cond_2
    if-nez v21, :cond_3

    const/16 v22, 0x8

    :goto_4
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    const/16 v22, 0x2

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 549
    const/16 v22, 0xbb

    const/16 v23, 0xbb

    const/16 v24, 0xbb

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 545
    :cond_3
    const/16 v22, 0x0

    goto :goto_4

    .line 551
    :cond_4
    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 555
    .end local v19           #time:J
    .end local v21           #timeString:Ljava/lang/String;
    :pswitch_7
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .local v13, lastPlayed:J
    move-object/from16 v12, p1

    .line 556
    check-cast v12, Landroid/widget/TextView;

    .line 557
    const/4 v15, 0x0

    .line 558
    .local v15, lastPlayedString:Ljava/lang/String;
    const-wide/16 v22, 0x0

    cmp-long v22, v13, v22

    if-eqz v22, :cond_5

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f090023

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    .line 560
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->getDateAndTimeForHumans(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    .line 559
    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 562
    :cond_5
    if-nez v15, :cond_6

    const/16 v22, 0x8

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 563
    :cond_6
    const/16 v22, 0x0

    goto :goto_5

    .line 567
    .end local v13           #lastPlayed:J
    .end local v15           #lastPlayedString:Ljava/lang/String;
    :pswitch_8
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .local v5, created:J
    move-object/from16 v12, p1

    .line 568
    check-cast v12, Landroid/widget/TextView;

    .line 569
    const/4 v7, 0x0

    .line 570
    .local v7, createdString:Ljava/lang/String;
    const-wide/16 v22, 0x0

    cmp-long v22, v5, v22

    if-eqz v22, :cond_7

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f090024

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    .line 572
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;->getDateAndTimeForHumans(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    .line 571
    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 575
    :cond_7
    if-nez v7, :cond_8

    const/16 v22, 0x4

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 576
    :cond_8
    const/16 v22, 0x0

    goto :goto_6

    .line 580
    .end local v5           #created:J
    .end local v7           #createdString:Ljava/lang/String;
    :pswitch_9
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .local v16, note:Ljava/lang/String;
    move-object/from16 v12, p1

    .line 581
    check-cast v12, Landroid/widget/TextView;

    .line 582
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 583
    :cond_9
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    const/16 v22, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    :goto_7
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    :cond_a
    const/16 v22, 0x8

    :goto_8
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 585
    .restart local p1
    :cond_b
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 589
    :cond_c
    const/16 v22, 0x0

    goto :goto_8

    .line 499
    :pswitch_data_0
    .packed-switch 0x7f080015
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 518
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
