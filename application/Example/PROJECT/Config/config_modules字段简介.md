## config_modules字段简介

config_modules.json是涂鸦模块化以后，模块配置的文件。关于[涂鸦模块化](https://tuyainc.github.io/2018/10/12/TYModuleManager%E5%AE%A2%E6%88%B7%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97/)

- schema 项

  务必配置。影响远程唤醒，例如在safari用url唤醒app

- application 项

  key名使用 "appDelegate" 也能兼容。

  配置为你的application模块，如果你业务上没有application模块需求，请配置为你的工程Test内的application模块

  app的主页面加载均依赖于application模块，application模块内还可以接收到一些原本属于AppDelegate的回调。AppDelegate文件无法合并到涂鸦的工程，所以我们为客户提供了application模块。

- tabManager 项

  tabBar的管理者，如无特殊需求，配置为涂鸦提供的 "TYModuleTabManager"

- tabs 项

  需要在tab上展示的模块的 模块名 或 类名，先后顺序影响展示顺序

- tabSelect 项

  tabBar上的默认选中项

-  modules 项

  一些需要注册 service、route、notify、task 的模块

  仅需要注册tab的模块不用配置在这里，它们已经被配置在了 tabs

