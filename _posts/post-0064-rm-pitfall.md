---
title: 一个空格引发的惨剧（remix）
date: 2015-11-19
key-words:
tags:
  - remix
  - linux
---

一个空格引发的惨剧（remix）
==========================

没事儿翻翻收藏的博客，[**『一个空格引发的惨剧』**](http://coolshell.cn/articles/4875.html)
快把我笑死了。

部分摘抄

:   这个项目本来不出名，不过，程序在其安装脚本 `install.sh` 里的一个 bug
    让这个项目一下子成了全世界最瞩目的项目，这个 bug 的 fix 如下:

    ```
    @@ -348,7 +348,7 @@ case "$DISTRO" in
    -  rm -rf /usr /lib/nvidia-current/xorg/xorg
    +  rm -rf /usr/lib/nvidia-current/xorg/xorg
    ```

    看明白了吗？空格。这个空格会导致什么样的问题呢？

    呵呵。**你有没有感到菊花一紧？** 这个 bug 绝对的霸气外露！

注：

:   `/usr` 文件夹可以大致当是Windows系统的 `c:\\Program Files (x86)\`

    `rm -rf` 是强制清空文件夹下所有文档

    然后你就知道这有多么"菊花一紧"

然后是各种恶搞图，我顺带 [**神**](http://coolshell.cn/articles/4875.html "还有更多") 翻译一下

:   ![可怜的喵星人：我想要回我的/usr文件夹 （好可怜）](http://pic003.cnblogs.com/2011/1/201106/2011062012574297.jpg)

    ![假设要是女汉子：你干嘛要这样？。。。（好无奈）假设不是女汉子：你tmd有病啊！！！](http://pic003.cnblogs.com/2011/34358/201106/20110620115951524.jpg)

    ![电脑提示：当当当当， 大黄蜂清空 /usr 文件夹完成~](http://pic003.cnblogs.com/2011/34358/201106/2011062011595582.jpg)

    大叔：一刀捅死我吧 （憔悴）

    ![假设是大叔：大黄蜂，你 tmd 不测试嘛？！！！（抓狂）](http://pic003.cnblogs.com/2011/34358/201106/20110620115958644.jpg)

    ![美女：禽兽，放开我的 /usr （有什么冲我来）](http://pic003.cnblogs.com/2011/1/201106/2011062013083437.jpg)

    （为什么不是Julia Roberts？）

    ![Linux 系统提示： 系统卸载完成，你可以关机，但是再也开不了了](http://pic003.cnblogs.com/2011/1/201106/2011062013073049.jpg)

这就是『一个空格引发的惨剧』。

![](https://github-camo.global.ssl.fastly.net/3abffdf4bce3ca164a1136423b754d09452fc4cc/687474703a2f2f692e696d6775722e636f6d2f44674454572e676966)

话说我写 makefile 的时候就中招过一次…

```makefile
clean:
    rm -f $(PODIR)/*
```

结果 $(PODIR) 没有设置……于是把我家清空了。好在不是用的 `rm -rf`{.bash}。
