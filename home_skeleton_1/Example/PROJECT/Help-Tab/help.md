## 涂鸦智能 - 首页皮肤定制

---

### 如何定制

先将 Demo 工程跑起来，相信我，你所需做的工作仅仅只有两件事😜

1. 实现首页骨架项目中所声明的视图
2. 在 `PROJECTImpl` 中返回对应协议的视图实现类

你可以随时在 `预览` 选项卡中，查看视图的展示效果，并作调整

**注意: 类  `PROJECT_RemoveMe` 仅作为占位之用，在您发布代码前，请将它删除**

---

### 如何添加图片资源

图片资源统一放在 `images.xcassets` 资源文件夹中，就像平时开发一样，把图片扔进去就好，它的位置如下:

```
Pods
└─ Development Pods
   └─ PROJECT
      └─ Resources
         └─ images.xcassets
```

需要注意的是，因为皮肤基于 Cocoapods Pod 开发，直接使用 `[UIImage imageNamed:]` 方法不能正确加载图片资源，引用图片的姿势我们需要稍微调整一下：

```objective-c
//使用👇方法来加载你添加入 images.xcassets 的图片
[UIImage tysh_skin_imageNamed:@"xxx"];
```

如果调试时找不到添加的图片，请运行下 Xcode 的 `Product -> Clean Build Folder`，重新编译运行就 OK 了
