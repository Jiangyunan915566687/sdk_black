.class public Lcom/nrsmagic/sudoku/utils/VersionHelperAndroid11;
.super Ljava/lang/Object;
.source "VersionHelperAndroid11.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static refreshActionBarMenu(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 10
    return-void
.end method
