.class public Lcom/bwx/bequick/fwk/RangeSetting;
.super Lcom/bwx/bequick/fwk/Setting;
.source "RangeSetting.java"


# instance fields
.field public max:I

.field public maxIconId:I

.field public min:I

.field public minIconId:I

.field public value:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "iconId"    # I
    .param p3, "title"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bwx/bequick/fwk/Setting;-><init>(IIILjava/lang/String;)V

    .line 29
    iput p4, p0, Lcom/bwx/bequick/fwk/RangeSetting;->min:I

    .line 30
    iput p5, p0, Lcom/bwx/bequick/fwk/RangeSetting;->max:I

    .line 31
    return-void
.end method
