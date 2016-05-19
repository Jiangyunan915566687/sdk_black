.class public Lcom/nrsmagic/sudoku/gui/Changelog;
.super Ljava/lang/Object;
.source "Changelog.java"


# static fields
.field private static final PREF_FILE_CHANGELOG:Ljava/lang/String; = "changelog"

.field private static final TAG:Ljava/lang/String; = "Changelog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/Changelog;->mContext:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/Changelog;->mContext:Landroid/content/Context;

    const-string v1, "changelog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/Changelog;->mPrefs:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method

.method private getChangelogFromResources()Ljava/lang/String;
    .locals 9

    .prologue
    .line 62
    const/4 v3, 0x0

    .line 64
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/Changelog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f05

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 66
    const/high16 v6, 0x1

    new-array v0, v6, [C

    .line 67
    .local v0, buffer:[C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v4, out:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v2, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 71
    .local v2, in:Ljava/io/Reader;
    :cond_0
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v5

    .line 72
    .local v5, read:I
    if-lez v5, :cond_1

    .line 73
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 70
    :cond_1
    if-gez v5, :cond_0

    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 84
    if-eqz v3, :cond_2

    .line 86
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .end local v0           #buffer:[C
    .end local v2           #in:Ljava/io/Reader;
    .end local v4           #out:Ljava/lang/StringBuilder;
    .end local v5           #read:I
    :cond_2
    :goto_0
    return-object v6

    .line 87
    .restart local v0       #buffer:[C
    .restart local v2       #in:Ljava/io/Reader;
    .restart local v4       #out:Ljava/lang/StringBuilder;
    .restart local v5       #read:I
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    const-string v7, "Changelog"

    const-string v8, "Error when reading changelog from raw resources."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 79
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/Reader;
    .end local v4           #out:Ljava/lang/StringBuilder;
    .end local v5           #read:I
    :catch_1
    move-exception v1

    .line 80
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    const-string v6, "Changelog"

    const-string v7, "Error when reading changelog from raw resources."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    if-eqz v3, :cond_3

    .line 86
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    :cond_3
    :goto_1
    const-string v6, ""

    goto :goto_0

    .line 87
    :catch_2
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    const-string v6, "Changelog"

    const-string v7, "Error when reading changelog from raw resources."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 83
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 84
    if-eqz v3, :cond_4

    .line 86
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 92
    :cond_4
    :goto_2
    throw v6

    .line 87
    :catch_3
    move-exception v1

    .line 88
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    const-string v7, "Changelog"

    const-string v8, "Error when reading changelog from raw resources."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private showChangelogDialog()V
    .locals 6

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/Changelog;->getChangelogFromResources()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, changelog:Ljava/lang/String;
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/Changelog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v2, webView:Landroid/webkit/WebView;
    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v2, v0, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/Changelog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    const v4, 0x1080041

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 52
    const v4, 0x7f090083

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 54
    const v4, 0x7f090008

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 58
    .local v1, changelogDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 59
    return-void
.end method


# virtual methods
.method public showOnFirstRun()V
    .locals 4

    .prologue
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changelog_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/Changelog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nrsmagic/sudoku/utils/AndroidUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, versionKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Changelog;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/Changelog;->showChangelogDialog()V

    .line 37
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Changelog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
