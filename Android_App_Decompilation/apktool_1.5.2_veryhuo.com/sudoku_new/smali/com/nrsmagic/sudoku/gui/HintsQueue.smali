.class public Lcom/nrsmagic/sudoku/gui/HintsQueue;
.super Ljava/lang/Object;
.source "HintsQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;
    }
.end annotation


# static fields
.field private static final PREF_FILE_NAME:Ljava/lang/String; = "hints"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHintClosed:Landroid/content/DialogInterface$OnClickListener;

.field private mHintDialog:Landroid/app/AlertDialog;

.field private mMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mOneTimeHintsEnabled:Z

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v1, Lcom/nrsmagic/sudoku/gui/HintsQueue$1;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/HintsQueue$1;-><init>(Lcom/nrsmagic/sudoku/gui/HintsQueue;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintClosed:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mContext:Landroid/content/Context;

    .line 52
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mContext:Landroid/content/Context;

    const-string v2, "hints"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mPrefs:Landroid/content/SharedPreferences;

    .line 54
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    .local v0, gameSettings:Landroid/content/SharedPreferences;
    new-instance v1, Lcom/nrsmagic/sudoku/gui/HintsQueue$2;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/HintsQueue$2;-><init>(Lcom/nrsmagic/sudoku/gui/HintsQueue;)V

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 66
    const-string v1, "show_hints"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mOneTimeHintsEnabled:Z

    .line 68
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    const v2, 0x1080041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 70
    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 71
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 72
    const v2, 0x7f090008

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintClosed:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintDialog:Landroid/app/AlertDialog;

    .line 74
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/nrsmagic/sudoku/gui/HintsQueue$3;

    invoke-direct {v2, p0}, Lcom/nrsmagic/sudoku/gui/HintsQueue$3;-><init>(Lcom/nrsmagic/sudoku/gui/HintsQueue;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mMessages:Ljava/util/Queue;

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/HintsQueue;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mOneTimeHintsEnabled:Z

    return-void
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/HintsQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->processQueue()V

    return-void
.end method

.method private addHint(Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;)V
    .locals 2
    .parameter "hint"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mMessages:Ljava/util/Queue;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mMessages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintDialog:Landroid/app/AlertDialog;

    monitor-enter v1

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->processQueue()V

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 91
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private processQueue()V
    .locals 3

    .prologue
    .line 101
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mMessages:Ljava/util/Queue;

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mMessages:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;

    .line 101
    .local v0, hint:Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->showHintDialog(Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;)V

    .line 108
    :cond_0
    return-void

    .line 101
    .end local v0           #hint:Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private showHintDialog(Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;)V
    .locals 4
    .parameter "hint"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintDialog:Landroid/app/AlertDialog;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mContext:Landroid/content/Context;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;->titleResID:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mContext:Landroid/content/Context;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;->messageResID:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 111
    monitor-exit v1

    .line 116
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public legacyHintsWereDisplayed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hint_2131099727"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hint_2131099730"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hint_2131099726"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hint_2131099729"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hint_2131099728"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 179
    :cond_0
    return-void
.end method

.method public resetOneTimeHints()V
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    return-void
.end method

.method public varargs showHint(II[Ljava/lang/Object;)V
    .locals 2
    .parameter "titleResID"
    .parameter "messageResID"
    .parameter "args"

    .prologue
    .line 128
    new-instance v0, Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;-><init>(Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;)V

    .line 129
    .local v0, hint:Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;
    iput p1, v0, Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;->titleResID:I

    .line 130
    iput p2, v0, Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;->messageResID:I

    .line 132
    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->addHint(Lcom/nrsmagic/sudoku/gui/HintsQueue$Message;)V

    .line 133
    return-void
.end method

.method public varargs showOneTimeHint(Ljava/lang/String;II[Ljava/lang/Object;)V
    .locals 4
    .parameter "key"
    .parameter "titleResID"
    .parameter "messageResID"
    .parameter "args"

    .prologue
    .line 136
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mOneTimeHintsEnabled:Z

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->legacyHintsWereDisplayed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hint_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, hintKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {p0, p2, p3, p4}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->showHint(II[Ljava/lang/Object;)V

    .line 149
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
