.class public abstract Lcom/bwx/bequick/flashlight/SwitchDetector;
.super Ljava/lang/Object;
.source "SwitchDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;
    }
.end annotation


# instance fields
.field protected final mSwitchable:Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;

.field protected final mTextId:I


# direct methods
.method public constructor <init>(Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;I)V
    .locals 0
    .param p1, "switchable"    # Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;
    .param p2, "textId"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bwx/bequick/flashlight/SwitchDetector;->mSwitchable:Lcom/bwx/bequick/flashlight/SwitchDetector$Switchable;

    .line 32
    iput p2, p0, Lcom/bwx/bequick/flashlight/SwitchDetector;->mTextId:I

    .line 33
    return-void
.end method


# virtual methods
.method public abstract activate(Landroid/content/Context;)V
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/bwx/bequick/flashlight/SwitchDetector;->mTextId:I

    return v0
.end method

.method public abstract inactivate(Landroid/content/Context;)V
.end method
