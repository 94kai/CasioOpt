.class public Lcom/example/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    const-string v0, "dashang.png"

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 21
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    .local v3, "imageView":Landroid/widget/ImageView;
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 26
    .local v4, "open":Ljava/io/InputStream;
    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 27
    .local v0, "fromStream":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_55

    .line 30
    .end local v0    # "fromStream":Landroid/graphics/drawable/Drawable;
    .end local v4    # "open":Ljava/io/InputStream;
    nop

    .line 31
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "textView":Landroid/widget/TextView;
    const-string v4, "\u8054\u7cfb\u4f5c\u8005\uff1a\u5fae\u4fe1xk3440395\n\n\u76ee\u524d\u652f\u6301\u4ec5\u8fdb\u884c\u5fae\u4fe1\u901a\u77e5\uff0c\u5982\u679c\u6709\u5176\u4ed6\u901a\u77e5\u9700\u6c42\u53ef\u8054\u7cfb\u6211\u5e2e\u4f60\u5b9a\u5236\n(\u8be5App\u4ec5\u6dfb\u52a0\u8fd9\u4e00\u4e2a\u6253\u8d4f\u7801\uff0cApp\u542f\u52a8\u65f6\u5f39\u51fa\uff0c\u6ca1\u6709\u6ce8\u5165\u4efb\u4f55\u5176\u4ed6\u79c1\u8d27\u3002\u5f00\u53d1\u4e0d\u6613\uff0c\u611f\u8c22\u652f\u6301)\n\n\u3010\u5982\u4f55\u6253\u8d4f\u3011\uff1a\u622a\u56fe\u4fdd\u5b58\u4e8c\u7ef4\u7801\uff0c\u8fdb\u5165\u5fae\u4fe1\u626b\u4e00\u626b\uff0c\u53f3\u4e0b\u89d2\u76f8\u518c\u9009\u62e9\u622a\u56fe\u5373\u53ef"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 36
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 37
    .local v4, "button":Landroid/widget/Button;
    const-string v5, "\u611f\u8c22\u652f\u6301\u3002\u70b9\u51fb\u7a7a\u767d\u5904\uff0c\u6216\u8be5\u6309\u94ae\u5173\u95ed"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    new-instance v5, Lcom/example/Utils$1;

    invoke-direct {v5, v1}, Lcom/example/Utils$1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 46
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 47
    return-void

    .line 28
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v4    # "button":Landroid/widget/Button;
    :catch_55
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

