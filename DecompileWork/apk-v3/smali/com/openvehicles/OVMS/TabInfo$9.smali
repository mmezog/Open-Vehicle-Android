.class Lcom/openvehicles/OVMS/TabInfo$9;
.super Ljava/lang/Object;
.source "TabInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openvehicles/OVMS/TabInfo;->downloadLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openvehicles/OVMS/TabInfo;


# direct methods
.method constructor <init>(Lcom/openvehicles/OVMS/TabInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openvehicles/OVMS/TabInfo$9;->this$0:Lcom/openvehicles/OVMS/TabInfo;

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/openvehicles/OVMS/TabInfo$9;->this$0:Lcom/openvehicles/OVMS/TabInfo;

    .line 527
    invoke-virtual {v3}, Lcom/openvehicles/OVMS/TabInfo;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    const-string v3, "/%s.png"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/openvehicles/OVMS/TabInfo$9;->this$0:Lcom/openvehicles/OVMS/TabInfo;

    #getter for: Lcom/openvehicles/OVMS/TabInfo;->data:Lcom/openvehicles/OVMS/CarData;
    invoke-static {v5}, Lcom/openvehicles/OVMS/TabInfo;->access$3(Lcom/openvehicles/OVMS/TabInfo;)Lcom/openvehicles/OVMS/CarData;

    move-result-object v5

    iget-object v5, v5, Lcom/openvehicles/OVMS/CarData;->VehicleImageDrawable:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 529
    .local v0, carLayout:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 530
    iget-object v2, p0, Lcom/openvehicles/OVMS/TabInfo$9;->this$0:Lcom/openvehicles/OVMS/TabInfo;

    const v3, 0x7f090045

    invoke-virtual {v2, v3}, Lcom/openvehicles/OVMS/TabInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 531
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 533
    iget-object v2, p0, Lcom/openvehicles/OVMS/TabInfo$9;->this$0:Lcom/openvehicles/OVMS/TabInfo;

    const-string v3, "Graphics Downloaded"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 534
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 538
    .end local v1           #iv:Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v2, p0, Lcom/openvehicles/OVMS/TabInfo$9;->this$0:Lcom/openvehicles/OVMS/TabInfo;

    const-string v3, "Download Failed"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 537
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
