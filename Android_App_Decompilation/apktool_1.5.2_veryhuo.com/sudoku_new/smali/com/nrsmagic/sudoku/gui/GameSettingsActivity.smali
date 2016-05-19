.class public Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "GameSettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mShowHintsChanged:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity$1;-><init>(Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;->mShowHintsChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;->addPreferencesFromResource(I)V

    .line 42
    const-string v1, "show_hints"

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;->mShowHintsChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-direct {v1, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 47
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 68
    return-void
.end method
