.class Lcom/nrsmagic/sudoku/gui/s/b/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;


# instance fields
.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I

.field public s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->F:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/b/e;->a:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->G:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/b/e;->b:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->H:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/b/e;->c:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->I:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/b/e;->d:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->J:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/b/e;->e:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->K:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/b/e;->f:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->L:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/b/e;->g:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->M:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/b/e;->h:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->N:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/b/e;->i:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->O:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/b/e;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/e;->n:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/e;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/e;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/e;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/e;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/e;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/e;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
