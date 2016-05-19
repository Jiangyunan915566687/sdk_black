.class public Lcom/cnvcs/BtReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BtReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 11
    invoke-static {p2}, Lcom/cnvcs/App;->OnBluetooth(Landroid/content/Intent;)V

    .line 12
    return-void
.end method
