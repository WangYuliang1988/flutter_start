Flutter 学习工程，参考 https://flutter.dev/docs/get-started/codelab

## Flutter简介及开发环境搭建

### Flutter简介
Flutter是谷歌推出的UI框架，最初的目的是为iOS和Android构建高质量的原生应用，目前已经演变成为支持移动设备（Android、iOS）、网页（Web）、桌面电脑（Windows、MacOS、Linux）、嵌入式设备的全平台UI框架。

谷歌于2015年公布了Flutter的第一个预览版本，当时它被称为"Sky"，运行在Android操作系统上。2018年12月，谷歌正式推出了Flutter的1.0稳定版本。目前，Flutter的最新稳定版本是1.5，于2019年5月发布。

Flutter使用Dart语言进行开发，Dart是谷歌推出的一款专门解决UI创建需求的编程语言（A programming language specialized around the needs of user interface creation），于2013年11月发布1.0稳定版本。目前最新稳定版本是2.3，于2019年5月发布。

Flutter使用Skia图形引擎进行UI组件的渲染，不依赖于操作系统提供的原生UI组件，这是其与React Native等框架在实现上的最大不同。

### 安装Flutter开发环境
Windows平台下安装，Mac和Linux平台可参考：https://flutter.dev/docs/get-started/install
1. 下载Flutter SDK压缩包：https://flutter.dev/docs/get-started/install/windows
2. 将压缩包解压到本地目录，如 D:\flutter
3. 配置环境变量：将D:\flutter\bin添加到环境变量Path中
4. 检测并安装Flutter依赖：通过在命令行中运行flutter doctor，检测并安装Flutter依赖

### 配置Flutter开发工具
针对Visul Studio Code配置，Android Studio可参考：https://flutter.dev/docs/get-started/editor?tab=androidstudio
1. 搜索并安装Flutter插件
2. 验证插件安装成功：打开命令面板，输入Flutter，选择Flutter: Run Flutter Doctor，出现输出信息

### 创建并运行工程
1. 打开VS Code的命令面板，输入Flutter，选择Flutter: New Project
2. 输入工程名称，如：my_flutter，选择工程存放目录，等待创建完成
3. 在VS Code底部状态栏找到“设备选择器”，选择可用的设备，没有的话新建一个
4. 点击VS Code顶部状态栏的“调试-开始调试”，等待工程完成编译，App成功启动，完成！

### 体验代码热加载
1. 打开lib/main.dart文件
2. 将 You have **pushed** the button this many times 调整为 You have **clicked** the button this many times
3. 保存修改，可以看到App上上述修改立即生效，无需重启App或重新编译代码

### 发布模式运行
上述步骤中，App都是在调试模式下运行，调试模式下可以使用代码热加载等功能来提升开发效率，但是会影响App的运行表现。如果想要查看App的实际运行表现，需要在发布模式下运行应用。
通过命令行终端执行：`flutter run --profile` 即可在发布模式下运行应用

### 更新Flutter
在Flutter工程根目录下，通过命令行终端执行：`flutter upgrade` 即可更新Flutter SDK及Flutter工程依赖的各种包