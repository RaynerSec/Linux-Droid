.class La/a/d/a/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/d/a/G;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/a/d/a/G;


# direct methods
.method constructor <init>(La/a/d/a/G;)V
    .locals 0

    iput-object p1, p0, La/a/d/a/l;->a:La/a/d/a/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La/a/d/a/l;->a:La/a/d/a/G;

    new-instance v1, La/a/d/a/k;

    invoke-direct {v1, p0}, La/a/d/a/k;-><init>(La/a/d/a/l;)V

    const-string v2, "ping"

    invoke-static {v0, v2, v1}, La/a/d/a/G;->a(La/a/d/a/G;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
