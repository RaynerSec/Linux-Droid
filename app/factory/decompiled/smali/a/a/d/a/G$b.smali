.class final enum La/a/d/a/G$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/d/a/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/d/a/G$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/d/a/G$b;

.field public static final enum b:La/a/d/a/G$b;

.field public static final enum c:La/a/d/a/G$b;

.field public static final enum d:La/a/d/a/G$b;

.field private static final synthetic e:[La/a/d/a/G$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, La/a/d/a/G$b;

    const/4 v1, 0x0

    const-string v2, "OPENING"

    invoke-direct {v0, v2, v1}, La/a/d/a/G$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/d/a/G$b;->a:La/a/d/a/G$b;

    new-instance v0, La/a/d/a/G$b;

    const/4 v2, 0x1

    const-string v3, "OPEN"

    invoke-direct {v0, v3, v2}, La/a/d/a/G$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/d/a/G$b;->b:La/a/d/a/G$b;

    new-instance v0, La/a/d/a/G$b;

    const/4 v3, 0x2

    const-string v4, "CLOSING"

    invoke-direct {v0, v4, v3}, La/a/d/a/G$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/d/a/G$b;->c:La/a/d/a/G$b;

    new-instance v0, La/a/d/a/G$b;

    const/4 v4, 0x3

    const-string v5, "CLOSED"

    invoke-direct {v0, v5, v4}, La/a/d/a/G$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/d/a/G$b;->d:La/a/d/a/G$b;

    const/4 v0, 0x4

    new-array v0, v0, [La/a/d/a/G$b;

    sget-object v5, La/a/d/a/G$b;->a:La/a/d/a/G$b;

    aput-object v5, v0, v1

    sget-object v1, La/a/d/a/G$b;->b:La/a/d/a/G$b;

    aput-object v1, v0, v2

    sget-object v1, La/a/d/a/G$b;->c:La/a/d/a/G$b;

    aput-object v1, v0, v3

    sget-object v1, La/a/d/a/G$b;->d:La/a/d/a/G$b;

    aput-object v1, v0, v4

    sput-object v0, La/a/d/a/G$b;->e:[La/a/d/a/G$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/d/a/G$b;
    .locals 1

    const-class v0, La/a/d/a/G$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/d/a/G$b;

    return-object p0
.end method

.method public static values()[La/a/d/a/G$b;
    .locals 1

    sget-object v0, La/a/d/a/G$b;->e:[La/a/d/a/G$b;

    invoke-virtual {v0}, [La/a/d/a/G$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/d/a/G$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
