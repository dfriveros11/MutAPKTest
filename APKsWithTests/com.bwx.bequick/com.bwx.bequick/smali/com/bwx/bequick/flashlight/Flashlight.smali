.class public interface abstract Lcom/bwx/bequick/flashlight/Flashlight;
.super Ljava/lang/Object;
.source "Flashlight.java"


# static fields
.field public static final TYPES_NUMBER:I = 0x4

.field public static final TYPE_DROID22:I = 0x4

.field public static final TYPE_FROYO:I = 0x3

.field public static final TYPE_HTC:I = 0x2

.field public static final TYPE_MOTO21:I = 0x1


# virtual methods
.method public abstract getType()I
.end method

.method public abstract isOn(Landroid/content/Context;)Z
.end method

.method public abstract isSupported(Landroid/content/Context;)Z
.end method

.method public abstract setOn(ZLandroid/content/Context;)V
.end method
