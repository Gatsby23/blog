---
title: Notes | 笔记
date: 2015-11-18
keywords:
    - notes
tags:
    - notes
after-before: |
    <style>
    p#dummy::before {
      content: attr(data-foo) " ";
    }
    #hacker-code {
        padding-left: 4em;
    }
    </style>
cssfile:
    - font-awesome.min.css
...

Notes | 笔记
============

[我怕甩出这份追剧表后，没人再看国产的 - 简书](http://www.jianshu.com/p/d9c87039cb1c)

`wp-content` 原来是 wordpress 内容……的意思……我一直以为是 windows phone 来着……

[Create your Google Sitemap Online - XML Sitemaps Generator](https://www.xml-sitemaps.com/)

[链接提交_站长工具_优化PC和移动搜索收录_百度站长平台](http://zhanzhang.baidu.com/linksubmit/index?site=http://tangzx.qiniudn.com/)

- <http://tangzx.qiniudn.com/sitemap.xml>
- <http://tangzx.qiniudn.com/sitemap.html>
- <http://tangzx.qiniudn.com/sitemap.txt>

```bash
cd publish
curl -H 'Content-Type:text/plain' \
        --data-binary @sitemap.txt \
        "http://data.zz.baidu.com/urls?site=tangzx.qiniudn.com&token=SQTpHwK3EiD9dlhh"
```

[qrsctl 命令行辅助工具](http://developer.qiniu.com/code/v6/tool/qrsctl.html)

[Tutorial - Use cursors to customize Web sites - Axialis Software](http://www.axialis.com/tutorials/use-cursors-to-customize-websites.htm)


```javascript
$('div.tzx-drawer').on('click', function(){
    $(this).children().children('dd').toggleClass('tzx-drawer-hide');
    if ($(this).children().children('dd:eq(0)').hasClass('tzx-drawer-hide')) {
        window.scrollTo($(this).offset().left, $(this).offset().top);
    }
    return false;
});
```

It also supports, but does not require, ...

Ajax

Call a local script on the server /api/getWeather with the query parameter zipcode=97201 and replace the element #weather-temp's html with the returned text.

```javascript
$.ajax({
    url: "/api/getWeather",
    data: {
        zipcode: 97201
    },
    success: function( data ) {
        $( "#weather-temp" ).html( "<strong>" + data + "</strong> degrees" );
    }
});
```

---

[如何计算某月某日的weekday](http://butman.club/notes/cyber/%e5%a6%82%e4%bd%95%e8%ae%a1%e7%ae%97%e6%9f%90%e6%9c%88%e6%9f%90%e6%97%a5%e7%9a%84weekday/)

:   ```r
    #input: weekday (n) of the first day in a month,
    #       sum of the days (d) in a month
       date <- c(1:d)
       date.weekday <- (date+(n-1)+7) %% 7
    #output: every weekday in the month
    ```

<div class="tzx-drawer" shy>
[缘份这东西纯属扯淡 全凭喜欢的人说了算 (缘份 影评)](https://movie.douban.com/review/7827324/)

:   ![](https://img1.doubanio.com/view/thing_review/large/public/p118619.jpg)

    两厢情愿的爱情名为缘份，一厢情愿的爱情连声谢谢都显得多余。有情人终成眷属的
    背后，总有那么一两个人在默默承受着孤独。

    有些时候，就算费尽心机，每次每次的刻意安排，人为的制造缘分，也要努力在一起
    ，因为他爱了，就珍惜了。而对于身边的其他人，明明是一而再再而三的各种巧遇，
    因为没有心动，所以就要忽略和无视，尽量躲开。

    接近片尾的时候她牵着他的手在地铁里狂奔着，恍惚间，我仿佛看到梅姑牵着哥哥奔
    向了天堂。当时就想：就你们俩，在一起吧。可是，影片中他是去找另一个她的。哥
    哥，梅姑，在那里过得好吗？

    只是因为不喜欢对方，他从来不会把它当作缘分看待，即使最后的缘份游戏，保罗先
    和安妮遇见了，他也只是丢下一句“这次不算。”而撒腿就跑，继续寻他的莫妮卡去了
    。只是如果没安妮的自我牺牲，为他们牵桥搭线 ，他们还会有圆满美好的结局吗？

    至于梅艳芳，哇，我只能说这个人物太完美而显得不真实。嗯，理想化的人物才那么
    讨人喜欢人气最高。她敢爱敢恨，活的潇洒，她对保罗真可谓“钱到心更到”，但是保
    罗不喜欢她。

    > 我怀疑，我们人生里面，唯一可以相遇的机会，已经错过了。

    而最令人欣赏的是，就算外界都揣测她和张国荣多么投契，那么多人都渴望借着谈论
    他而令自己成为焦点……在那篇《亲爱的哥哥》中，张曼玉却这样说：“虽然我们合作无
    间，我们却从不是很亲密的朋友，因为我们性格和世界观很不同，但这无妨我欣赏他
    的美貌，以及他在电影中散发的敏感和作为一个歌手的才华”。

    ![](https://img3.doubanio.com/view/thing_review/large/public/p118621.jpg)

    最后为了两人的相遇，出钱让地铁站在末班车后加开一列车的举动简直帅炸了，这一
    波炫富炫得漂亮！比起现在的不少影视作品中的“花样炫富”不知道逼格高多少啊！然
    而最后一幕中，当保罗和莫妮卡深情拥吻的时候，一旁安妮落寞神伤的表情也同样让
    人心碎难忘。不得不说安妮是这部作品中最让人动容的一个角色，梅姑也凭借这一角
    色获得了第4届香港金像奖最佳女配角。

    梅艳芳一生珍惜朋友、交游广阔，她在娱乐圈里是公认的豪爽与仗义。正因为这种真
    诚、博爱、侠义的性格使她成为演艺界尊崇的“大姐大”。2002年，梅艳芳在庆祝入行
    二十年的纪念节目上对大家说：我在娱乐圈闯荡二十年，四个字概括：“友情岁月！”

    演唱间隙，梅艳芳深情地说：“特别嘉宾张国荣！我生命中、娱乐圈中唯一的好朋友！
    ”这一棍子打死的人太多了，哥哥暗中提醒她：“喂，你的好朋友有好多。”

    阿梅也改过口来：“我是说，像自家人一样的”

    在香港的演员中，让人最心疼的男人是张国荣，最心疼的女人是梅艳芳。

    ![](http://mmbiz.qpic.cn/mmbiz/67XdDbQWEiakhedtX8cOFV3Upl5yGpIzCzx2qJcN9ExuPOhvjpLU3ZRHkR8S9JINjddQhUAXsdgkeUJQt2bLicGw/640?wx_fmt=png&wxfrom=5&wx_lazy=1)

    1986年两人又合作了一部电影叫《偶然》梅艳芳再以Anita为名恋上了张国荣，这一次他们在戏里以喜剧结束。

    ![](http://mmbiz.qpic.cn/mmbiz/67XdDbQWEiakhedtX8cOFV3Upl5yGpIzC93j1fd0Qx2icibHBDuXiaw3AdceEYbwNX7ibyI9NgKGduJ8LwdCfwsOXKg/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1)

    ![梅艳芳出席张国荣葬礼](http://mmbiz.qpic.cn/mmbiz/67XdDbQWEiakhedtX8cOFV3Upl5yGpIzCoOwEnqSzScqXNkKibEZByvHDM4euudgzgiaCQyvgRnB7NYjeibs8llE2Q/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1)

    记得你（梅艳芳）曾经对我说：‘如果我到了四十岁还没嫁出去，你就娶我好吗？’

    张国荣对梅艳芳说过，等我们到40岁，你未嫁，我未娶，我们就在一起。可是后来，
    他在03年4月1日坠楼殒身，她在同年12月30日肺功能衰竭病逝。那年，她刚好40岁。

    ![哥哥扮女人靓，梅姐扮男人帅](https://img1.doubanio.com/view/photo/photo/public/p990204337.jpg)

    真的好喜欢梅的短发啊~！！！

    综上，哥哥与梅艳芳是好到像一家人一样的朋友，没有半点男女之情。也希望大家不
    要随意猜测。

    红红仍是你，赠我的心中艳阳。
    迟迟年月，难耐这一生的变幻。

    - 张国荣（`1956 年  9 月 12 日 — 2003 年  4 月  1 日`）
    - 梅艳芳（`1963 年 10 月 10 日 — 2003 年 12 月 30 日`）

    refs and see also

      - [所谓缘份，就是一点点憧憬+ 一点点宿命+一点点促成 (缘份 影评)](https://movie.douban.com/review/7835094/)
      - [《缘份》隐藏的后续 (缘份 影评)](https://movie.douban.com/review/5636140/?start=0&post=ok#last)
      - [我怀疑，我们人生里面，唯一可以相遇的机会，已经错过了 (缘份 影评)](https://movie.douban.com/review/7831271/)
      - [张国荣（华语歌手、演员、音乐人）_百度百科](http://baike.baidu.com/subview/6360/5595080.htm)
      - [梅艳芳_百度百科](http://baike.baidu.com/subview/8695/8695.htm)
      - [听说，张国荣梅艳芳情起情灭皆因《缘分》【观影福利】](http://mp.weixin.qq.com/s?__biz=MzIzOTExMzcyOQ==&mid=403173009&idx=1&sn=f921f74a09775b95b44e3f267e1d1a7b#rd)
      - [梅艳芳和张国荣的关系？ - 知乎](https://www.zhihu.com/question/22151195)

    todo

      - [金枝玉叶 (豆瓣)](https://movie.douban.com/subject/1303376/)
      - [金枝玉叶2 (豆瓣)](https://movie.douban.com/subject/1302054/?from=subject-page)
</div>

[Justineo/github-hovercard: Neat user/repo/issue hovercards for GitHub.](https://github.com/Justineo/github-hovercard)

[iamceege/tooltipster: A jQuery tooltip plugin](https://github.com/iamceege/tooltipster/)

[janl/mustache.js: Minimal templating with {{mustaches}} in JavaScript](https://github.com/janl/mustache.js)

---

 GitHub Hovercard is a third party tool which is not affiliated to GitHub (github.com). This page is designed exactly the same as GitHub only to show how the extension actually works on GitHub.

[vim/vimrc at master · vingel/vim](https://github.com/vingel/vim/blob/master/vimrc)

[如何正确接收 GitHub 的消息邮件 · Issue #49 · cssmagic/blog](https://github.com/cssmagic/blog/issues/49)

[Tree-shaking with webpack 2 and Babel 6](http://www.2ality.com/2015/12/webpack-tree-shaking.html)

[搭建一个免费的，无限流量的Blog----github Pages和Jekyll入门 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2012/08/blogging_with_jekyll.html)

:   喜欢写Blog的人，会经历三个阶段。

      - 第一阶段，刚接触Blog，觉得很新鲜，试着选择一个免费空间来写。
      - 第二阶段，发现免费空间限制太多，就自己购买域名和空间，搭建独立博客。
      - 第三阶段，觉得独立博客的管理太麻烦，最好在保留控制权的前提下，让别人来
        管，自己只负责写文章。

    refs and see also

      - [博客是什么 · Issue #123 · lifesinger/blog](https://github.com/lifesinger/blog/issues/123)

[知天下 · 唱灌篮高手主题曲的人现在怎么样了？](http://daily.zhihu.com/story/3020232)

:   《灌篮高手》一共有两首片头和四首片尾曲。全部由当时统治日本乐坛的唱片公司
    Being 旗下的歌手演唱。

    「マイフレンド」我的朋友 乐队 ZARD，主唱坂井泉水。泉水姐姐声音甜润且相貌极
    美，以她为中心的 ZARD 也成为日本最成功的乐队之一，十几年里作品张张大卖，总
    销量近 4000 万张，诞生名曲无数。可惜天妒红颜，2007 年癌症扩散到肺部，入院治
    疗时又发生意外事故，不幸去世，无数歌迷心中永远的痛。

[不曾磨灭的记忆，细数小霸王超经典游戏 TOP 10 - 笔戈科技 - 知乎专栏](http://zhuanlan.zhihu.com/p/20652946)

:   除了《忍者龙剑传》和《热血系列》，其他都喜欢。

    2016 年 1 月 13 日，著名游戏评测机构 IGN 破天荒的给了一款独立游戏满分，它叫《UNDERTALE》（传说之下）。

    开发这款独立游戏的是一名 90 后，他叫 Toby Fox，这是他大学时期在朋友家中完成的作品。

    而这，却也只是国外成功的独立游戏作品中很小的一小部分，无论是《FEZ》、《超级
    食肉男孩》、《时空幻境》，还是如今的《瘟疫公司》、《纪念碑谷》，它们都让国
    外的独立游戏开发者名利双收。

    事情就是这么可笑，在他们拿着独立来编故事，策划着能做出轰动世界的巨作时，《
    UNDERTALE》的作者 Toby Fox 却发出了善意的提醒：「一个真正完成了的创意小游戏
    胜过 10 个未完成的大项目。」

    ![陈星汉和他的《风之旅人》](https://pic3.zhimg.com/77670d72fc55d200166d05463584da4a_b.jpg)

    最后，向各位推荐纪录片《独立游戏：大电影》，即使你不了解独立游戏，我想你也能从中看到人性的脆弱、疯狂和勇敢。

    refs and see also

      - [中国独立游戏的创与灭 - 笔戈科技 - 知乎专栏](http://zhuanlan.zhihu.com/p/20585179)

[欣喜堂 | 活字字体基础讲座](http://www.typeisbeautiful.com/kinkido-1/)

[Type is Beautiful » 维吾尔字体百年掠影——从喀什噶尔到乌鲁木齐 （Uyghurche font tarixi — Qeshqerdin Ürümchigiche）](http://www.typeisbeautiful.com/2016/02/9927/)

:   1959 年维吾尔族设计了以拉丁字母为基础的新文字方案，于1964年开始推行。但是经
    过几年的实践证明，推行维吾尔新文字的条件尚不成熟，为此1982年新疆维吾尔自治
    区第五届人大常委会第十七次会议通过了《全面使用维吾尔、哈萨克老文字的报告》
    ，于是迄今为止，维吾尔族人民仍在使用以阿拉伯字母为基础的维吾尔老文字。不过
    ，由于长期文化交流，现在不少维吾尔人能使用多种语言文字，特别是城市里的的维
    吾尔族知识分子大多会说汉语和使用汉文,很多维吾尔族学习英语，日语，俄语。新疆
    北部阿尔泰，塔城，原伊犁等地区的维吾尔族一般会说哈萨克语。

    ![新维吾尔文字，摄于玉素甫·哈斯·哈吉甫陵墓](http://www.typeisbeautiful.com/wp-content/uploads/2016/01/uyghur_5.jpg)

    1982 年自治区政府重新恢复了老维吾尔文字（Ereb Uyghur Yéziqi），以阿拉伯字母
    为基础的维吾尔文才又见于世。与上一次使用阿拉伯字母的文字时隔近二十年。这二
    十年中，社会发生了天翻地覆的变化，人们的意识形态也有所改变。对于维吾尔文字
    体来说，是一个分水岭。1982 年后的印刷字体与先前的字体有着明显的不同，其强势
    的态度一直延续至今。

    与 1950 年代的字体相比，1982 年的字体少了之前的人文灵动，显得工整。更重要的
    是，传统维吾尔文书法的痕迹明显减少了，字体中甚至出现了一些非传统的特征。在
    以往的几千年，西面的波斯文化就像是中亚的灯塔，源源不断地供给着阿拉伯文字的
    营养；而这百年，来自北方俄罗斯和东方中国内地这两种截然不同的文化又在这里扮
    演者越来越重要的角色，在对新事物的影响中，波斯文化退居二线，从而导致了新字
    体与传统出现了断裂。比如对笔画的过度简化，对部件的误用，以及整体审美的偏移
    。这几点也是今天维吾尔字体与世界上其它阿拉伯字体的显著不同。这些不同点可能
    是当年为了制作铅字方便而来，也可能是一个偶然的错误，由于没有人察觉就约定俗
    成，成了新的标准。

    ![几款不同时代的维吾尔字体比较](http://www.typeisbeautiful.com/wp-content/uploads/2016/01/uyghur_8.jpg)

    2009 年的夏天，在我的朋友古丽米热（Gülmire M.）的协助下，我将 Frutiger
    Arabic 展示给 50 名浙江大学的维吾尔大学生，49 名学生都觉得 Frutiger Arabic
    怪异且略显滑稽。如果将现有的机场指示牌上的字体换成更利于视觉阅读的 Frutiger
    Arabic，照理说肯定会出彩，因为 Frutiger 本身就是一款经典的导示系统字体，其
    阿拉伯文版本必然是继承了这一点，至少很多发达的中东大都市已经用上了它。但可
    以肯定的是，在乌鲁木齐这个做法会遭到极大的抵制。总的来说，维吾尔人并不认同
    其它地方的现代阿拉伯文字体。不禁让我想到当初人们对 Helvetica 的厌恶反应，并
    称之为「丑怪体」（grotesque）。

    ![Frutiger Arabic](http://www.typeisbeautiful.com/wp-content/uploads/2016/01/uyghur_9.png)

    这里的原因是比较深层次的，除了受阅读习惯和环境影响外，主要出于维吾尔人对民
    族传统的强烈保护意识，毕竟任何一个改动，都会松动原有的文化元素。字体当然也
    是民族历史、民族特色的小小代表。

    总的来说，新疆餐厅的字体都是 1982 年后的那种印刷体，横平竖直、端端正正；而
    回族餐厅的阿拉伯文，多选择跳跃性强的手写风格体。

    refs and see also

      - [Type is Beautiful » 维吾尔字体百年掠影——从喀什噶尔到乌鲁木齐 （Uyghurche font tarixi — Qeshqerdin Ürümchigiche）](http://www.typeisbeautiful.com/2016/02/9927/)


---

`make -p` see implicit rules

网上的说法是由于bower默认采用git://协议，而当git://协议被屏蔽时就会出现这个错误，此时只需将默认git://协议换成https://就行了。在shell中执行如下指令

`$ git config --global url."https://".insteadOf git://`

refs and see also

  - [bower install提示github connection timeout解决办法 | halfcrazy在疯言疯语](http://halfcrazy.me/2014/12/09/bower-install%E8%B6%85%E6%97%B6/)

[zornlemma/bilibili_RE_block_list: bilibili_block_list/哔哩哔哩弹幕屏蔽正则表达式列表](https://github.com/zornlemma/bilibili_RE_block_list)

:   RegExp 之奇怪应用……

    ```perl
    ^(.)\1*$
    (\S+)(\S*\1){4,}
    ^\d+$
    ^[a-z]+$|^[A-Z]+$
    \d{2,4}\D\d{1,2}\D\d{1,2}
    (前|qian|第)(\d|[一二三四五六七八九十百千万两几])|\d\d(个|名|以内)|观众数|在线|^前
    [!?！？～]{3,}$
    更新|更了|画质|养肥|火钳|我刷|刷出了|^终于|有生之|^看过|首页|见.滚|路过|
    ^来(了|早|晚|一发|啦|拉)|人好[少多]|小电视|高产|^没人|^我是来|失踪人口|从隔壁
    [不又]卡|卡[在哭死出]|进度条
    好[早前晚快慢]|[么靠]前|[深半]夜|早啊
    每日|循环|打卡|周目|欢迎回|根本停不|顶上去
    原版|报警|违和|打开方式|^(什么|shenme)(鬼|gui)|开口跪|画面太美|硬币|头像
    弹幕|会员|休想|霸屏|刷屏|承包|版聊|报复社会|占位
    (白|赤|红|橙|黄|绿|青|蓝|紫)字|我是..(白|赤|红|橙|黄|绿|青|蓝|紫)
    老婆|[Ff][Ll][Aa][Gg]$|弗.格
    \+1|只有我|别(跑|走)|是一个人|(等等|带上|还有)我|[加带]我一|[人党]表示|笑尿|保
    证不|快够|贺电|大家(好|都在)|^都在
    [Yy][Oo][Oo]|红红火火|[dD][uU][aA][nN][gG]|^233
    挖掘机技术|技术哪家
    马丹|妈的|尼玛|艹|我(擦|次|操|cao)|卧槽|屌|鸡巴|日了|二[逼比]
    侵略|法西斯
    非洲农业|危害大|克拉|种庄稼|氮磷钾|不流失|不蒸发|谁说对了
    ```

- cherry, coco, candy, sounds like stripper name.

http://emeeks.github.io/d3ia/

D3.js fundamentals

D3 is about selecting and binding

- `d3.selectAll("circle.a").style("fill", "red").attr("cx", 100);`{.javascript}
- `d3.selectAll("div.market").data([1,5,11,3])`{.javascript}

```html
<!DOCTYPE html><meta charset="utf-8">
<script charset="utf-8" src="d3.js"></script>
```

`.style("background","lightblue")`

---

- scapegoat, 替罪羔羊.
- model minority
- actress
- supporting actress
- best picutre
- best directory
- toksido? 燕尾服
- bowtie
- money management
- manage money, finacies
- wealth, loaded...
- living from paycheck to paycheck
- swiping the credit card
- take out a loan
- get a morgage
- refinancing (抵押) your house, ballsy?

---

[Inplace Editing](http://www.perlmonks.org/?node=Inplace%20Editing)

:   `perl -p -i -n -e 's/this/that/g' *.txt`,
    BTW when I use `-pine` for the switches it doesn't work, anyone know why?

    因为 `i` 需要参数啊……

    不过别人的回答很专业：

    > Know your command line switches ;-) ... two things
    > - `-p` and `-n` contradict each other (and actually p overrides n).
    > - `-pin`e switches on the p switch and uses backup files which append ne to the filename
    > so my suggestion is -pi -e.
    >
    >      -- Hofmator

---

Dumb Makefile

:   ```makefile
    all: gh
    gh:
        git add -A; git commit -m "`date` - `uname`"; git push;
    ```

---

Simple HTTP Server

:   ```bash
    python -m SimpleHTTPServer 8888          # python 2
    python -m http.server      8888          # python 3+
    php -S localhost:8888                    # php
    ruby -run -e httpd . -p 8888             # ruby
    http-server                              # node.js: [c]npm install http-server -g
    java -jar jetty-runner.jar --port 8888 . # java
    double click `mongoose-free-5.5.exe`     # windows
    ```

    downloads:

      - [Java: jetty-runner](http://central.maven.org/maven2/org/eclipse/jetty/jetty-runner/9.3.0.M0/jetty-runner-9.3.0.M0.jar)
      - [Windows: mongoose-free-5.5.exe (免安装，win binary)](http://whudoc.qiniudn.com/2016/mongoose-free-5.5.exe)

---

<div class="tzx-drawer">
[CSS selector for "foo that contains bar"? - Stack Overflow](http://stackoverflow.com/questions/2000582/css-selector-for-foo-that-contains-bar)

:   <div class="tzx-drawer">
    一句话说就是，不行……
    :   JSYK (Just So You Know), the CSS parent selector will be coming in
        CSS4, as the ability to select which element in a selector is styled by
        putting a dollar sign in front of it: `$div > span` would select the
        div that has a span as a direct child.

        <div class="tzx-drawer" shy>
        FOO
        :   BAR
        </div>

        Put a dollar sign before a selector part, so it could interfere with
        **SCSS/SASS** syntax, cool. Why don't they use the many times proposed
        `<` sign, or `:parent` pseudo class, or even the `!` sign after a
        selector part? They all seem more logical to me, than using the `$`
        sign...
    </div>
</div>

[ImageMap - bl.ocks.org](http://bl.ocks.org/nswamy14/df13d67b6efeb19eb640)

Learning D3.js Mapping

:   For quick access to developer tools on the Mac, use <kbd>alt + command + I</kbd>;
    for Windows PCs, use <kbd>Ctrl + Shift + I</kbd>.

    These three components create a D3 visualization:

      - HTML5 (the SVG and path elements)
      - JavaScript (the D3.js library and map code)
      - CSS (the styling of the HTML5 elements)

    SVG elements:

      - circle : A standard circle with a defined radius and position attributes
      - rect : A standard rectangle with height, width, and position attributes
      - polygon : Any polygon, described by a list of points
      - line : A line with start and end points
      - path : A complex line created through a series of drawing commands

    coords:

    ```tzx-bigquote
                o---------> x
                |
                |
                |
                |
               \|/
                .   y
    ```

    ```html
    <!-- line -->
    <line x1="10" y1="10" x2="100" y2="100" stroke-width="1" stroke="red"/>

    <!-- rect -->
    <rect width="100" height="20" x="10" y="10"></rect>

    <!-- rect with rounded borders -->
    <rect with="100" height="20" x="10" y="10" rx="5" ry="5"></rect>

    <!-- circle -->
    <circle cx="62" cy="62" r="50"></circle>

    <!-- polygon -->
    <polygon points="60,5 10,120 115,120"/>

    <!-- path -->
    <path d="M 120 120 L 220 220, 420 120 Z"
          stroke="steelblue"
          fill="lightyellow"
          stroke-width="2"></path>
    ```

    ```css
    line {
        stroke: red;
        stroke-linecap: round;
        stroke-width: 5;
    }

    rect {
        stroke-width: 1;
        stroke:steelblue;
        fill:#888;
         fill-opacity: .5;
    }
    ```

    [SVG `<path>`](http://www.w3school.com.cn/svg/svg_path.asp):

      - **M** = moveto
      - **L** = lineto
      - **H** = horizontal lineto
      - **V** = vertical lineto
      - **C** = curveto
      - **S** = smooth curveto
      - **Q** = quadratic Belzier curve
      - **T** = smooth quadratic Belzier curveto
      - **A** = elliptical Arc
      - **Z** = closepath

    Curves:

      - Cubic Bézier, `C x1 y1 x2 y2 x y`
      - Quadratic Bézier
      - Elliptical Arc

    SVG paths are the main tool leveraged (杠杆的) when drawing geographic
    regions. However, imagine if you were to draw an entire map by hand using
    SVG paths; the task would become **exhausting**

    transform:

    -   translate: `transform="translate(x,y)"`

    -   scale: `transform="scale(2,2)"`

    -   translate + scale:

        ```html
        <path d="M 120 120 L 220 220 C 200 70 480 290 320 120 Z"
              stroke="steelblue" fill="lightyellow" stroke-width="2"
              transform="translate(-200,-200), scale(2,2)"></path>
        ```

    group: `<g>`:

    ```html
    <svg height="500" width="800">
        <g transform="translate(-200,-100), scale(2,2)">
            <path d="M 120 120 L 220 220 C 200 70 480 290 320 120 Z"></path>
            <line x1="220" y1="220" x2="200" y2="70"></line>
            <circle cx="200" cy="70" r="5" ></circle>
            <line x1="200" y1="70" x2="480" y2="290"></line>
            <circle cx="480" cy="290" r="5" ></circle>
            <line x1="480" y1="290" x2="320" y2="120"></line>
        </g>
    </svg>
    ```

    `<text>`

    :   `<text x="250" y="150" class="myText">Hello world!</text>`{.html}

        ```css
        .myText {
            font-size:22px;
            font-family:Helvetica;
            stroke-width:2;
        }
        ```

        ```html
        <svg width="600" height="600">
            <text x="250" y="150" class="myText"
                transform="rotate(45,200,0)" font-family="Verdana"
                font-size="100">Hello world!</text>
        </svg>
        ```

---

d3.js

:   ```javascript
    var svg = d3.select("body")
        .append("svg")
        .attr("width", 200)
        .attr("height", 200)

    svg.append('rect')
        .attr('x', 10)
        .attr('y', 10)
        .attr("width",50)
        .attr("height",100);

    svg.selectAll('rect').data(data).enter()
        .append('rect')
        .attr('x', function(d){ return d.x})
        .attr('y', function(d){ return d.y})
        .attr("width", function(d){ return d.width})
        .attr("height", function(d){ return d.height});
    ```

    The `enter` function can be thought of as a section of code that executes
    **when data is applied to the visualization for the first time**.

    ```javascript
    function makeData(n){
        var arr = [];
        for (var i=0; i<n; i++){
            arr.push({
                x:Math.floor((Math.random() * 100) + 1),
                y:Math.floor((Math.random() * 100) + 1),
                width:Math.floor((Math.random() * 100) + 1),
                height:Math.floor((Math.random() * 100) + 1)
            })
        };
        return arr;
    }

    var rect = svg.selectAll('rect').data(data);
    // Enter
    rect.enter().append('rect')
        .attr('test', function(d,i) {
            console.log('enter placing initial rectangle: ', i)
        });
    ```

    the `enter()` section is called only when there are more elements in the array
    than in the DOM.

    ```javascript
    // Update
    rect.transition().duration(500)
        .attr('x', function(d){ return d.x; })
        .attr('y', function(d){ return d.y; })
        .attr('width', function(d){ return d.width; })
        .attr('height', function(d){ return d.height; })
        .attr('test', function(d, i) {
            // update every data change
            console.log('updating x position to: ', d.x)
        });

    rect.exit()
        .attr('test', function(d) { console.log('no data...') })
        .remove();

    // HttpRequest
    d3.json("data/dataFile.json", function(error, json) {
        // ...
    });
    ```

    In this chapter, we explained the core elements of D3 (`enter`, `update`,
    and `exit`).  We understood the power of joining data to our visualization.
    Not only can data come from many different sources, but it is possible to
    have the visualization automatically updated as well.  Many detailed
    examples can be found in the D3 Gallery at
    <https://github.com/mbostock/d3/wiki/Gallery>

<div class="tzx-drawer" shy>
[Geo Projections · mbostock/d3 Wiki](https://github.com/mbostock/d3/wiki/Geo-Projections)

:   > [Wiki](Home) ▸ [[API Reference]] ▸ [[Geo]] ▸ **Geo Projections**

    <table class="highlight">
    <tr height="146" valign="top">
    <td>d3.geo.albersUsa<br><a href="http://bl.ocks.org/mbostock/4090848"><img src="http://bl.ocks.org/mbostock/raw/4090848/thumbnail.png" width="202"></a></td>
    <td>d3.geo.azimuthalEqualArea<br><a href="http://bl.ocks.org/mbostock/3757101"><img src="http://bl.ocks.org/mbostock/raw/3757101/thumbnail.png" width="202"></a></td>
    <td>d3.geo.azimuthalEquidistant<br><a href="http://bl.ocks.org/mbostock/3757110"><img src="http://bl.ocks.org/mbostock/raw/3757110/thumbnail.png" width="202"></a></td>
    </tr>
    <tr height="146" valign="top">
    <td>d3.geo.conicEqualArea<br><a href="http://bl.ocks.org/mbostock/3734308"><img src="http://bl.ocks.org/mbostock/raw/3734308/thumbnail.png" width="202"></a></td>
    <td>d3.geo.conicConformal<br><a href="http://bl.ocks.org/mbostock/3734321"><img src="http://bl.ocks.org/mbostock/raw/3734321/thumbnail.png" width="202"></a></td>
    <td>d3.geo.conicEquidistant<br><a href="http://bl.ocks.org/mbostock/3734317"><img src="http://bl.ocks.org/mbostock/raw/3734317/thumbnail.png" width="202"></a></td>
    </tr>
    <tr height="146" valign="top">
    <td>d3.geo.equirectangular<br><a href="http://bl.ocks.org/mbostock/3757119"><img src="http://bl.ocks.org/mbostock/raw/3757119/thumbnail.png" width="202"></a></td>
    <td>d3.geo.gnomonic<br><a href="http://bl.ocks.org/mbostock/3757349"><img src="http://bl.ocks.org/mbostock/raw/3757349/thumbnail.png" width="202"></a></td>
    <td>d3.geo.mercator<br><a href="http://bl.ocks.org/mbostock/3757132"><img src="http://bl.ocks.org/mbostock/raw/3757132/thumbnail.png" width="202"></a></td>
    </tr>
    <tr height="146" valign="top">
    <td>d3.geo.orthographic<br><a href="http://bl.ocks.org/mbostock/3757125"><img src="http://bl.ocks.org/mbostock/raw/3757125/thumbnail.png" width="202"></a></td>
    <td>d3.geo.stereographic<br><a href="http://bl.ocks.org/mbostock/3757137"><img src="http://bl.ocks.org/mbostock/raw/3757137/thumbnail.png" width="202"></a></td>
    <td>d3.geo.transverseMercator<br><a href="http://bl.ocks.org/mbostock/5126418"><img src="http://bl.ocks.org/mbostock/raw/5126418/thumbnail.png" width="202"></a></td>
    </tr>
    </table>

    Projects forward from spherical coordinates (in degrees) to Cartesian
    coordinates (in pixels). Returns an array `[x, y]` given the input array
    `[longitude, latitude]`.

    Projects backward from Cartesian coordinates (in pixels) to spherical
    coordinates (in degrees).

    `projection.rotate([rotation])`

    :   If rotation is specified, sets the projection’s three-axis rotation to
        the specified angles `λ(lambda), φ(phi) and γ(gamma)` (yaw, pitch and
        roll, or equivalently **l**ongitude, latitude and roll) in degrees and
        returns the projection. If rotation is not specified, returns the
        current rotation which defaults `[0, 0, 0]`. If the specified rotation
        has only two values, rather than three, the roll is assumed to be 0°.

        Constructs a new projection from the specified *raw* point projection
        function. For example, a Mercator projection can be implemented as:

        ```javascript
        var mercator = d3.geo.projection(function(λ, φ) {
          return [
            λ,
            Math.log(Math.tan(π / 4 + φ / 2))
          ];
        });
        ```

        (See
        [src/geo/mercator.js](/mbostock/d3/blob/master/src/geo/mercator.js) for
        the full implementation.) If the raw function supports an *invert*
        method, then the returned projection will expose a corresponding
        [invert](#invert) method.

    <a name="_projection" href="#_projection">#</a> <b>projection</b>(<i>location</i>)

    Projects forward from spherical coordinates (in degrees) to Cartesian
    coordinates (in pixels). Returns an array [<i>x</i>, <i>y</i>] given the
    input array [<i>longitude</i>, <i>latitude</i>]. May return null if the
    specified *location* has no defined projected position, such as when the
    location is outside the clipping bounds of the projection.

    <a name="invert" href="#invert">#</a> projection.<b>invert</b>(<i>point</i>)

    Projects backward from Cartesian coordinates (in pixels) to spherical
    coordinates (in degrees). Returns an array [<i>longitude</i>,
    <i>latitude</i>] given the input array [<i>x</i>, <i>y</i>]. Not all
    projections implement *invert*; for noninvertible projections, this method
    is undefined.

    <a name="rotate" href="#rotate">#</a> projection.<b>rotate</b>([<i>rotation</i>])

    If *rotation* is specified, sets the projection’s [three-axis
    rotation](http://bl.ocks.org/mbostock/4282586) to the specified angles λ, φ
    and γ ([yaw, pitch and
    roll](http://en.wikipedia.org/wiki/Aircraft_principal_axes), or
    equivalently [longitude,
    latitude](http://en.wikipedia.org/wiki/Geographic_coordinate_system) and
    roll) in degrees and returns the projection. If *rotation* is not
    specified, returns the current rotation which defaults [0, 0, 0]. If the
    specified *rotation* has only two values, rather than three, the roll is
    assumed to be 0°.

    <a name="center" href="#center">#</a> projection.<b>center</b>([<i>location</i>])

    If *location* is specified, sets the projection’s center to the specified
    *location*, a two-element array of longitude and latitude in degrees and
    returns the projection. If *center* is not specified, returns the current
    center which defaults to ⟨0°,0°⟩.

    <a name="translate" href="#translate">#</a> projection.<b>translate</b>([<i>point</i>])

    If *point* is specified, sets the projection’s translation offset to the
    specified two-element array [<i>x</i>, <i>y</i>] and returns the
    projection. If *point* is not specified, returns the current translation
    offset which defaults to [480, 250]. The translation offset determines the
    pixel coordinates of the projection’s [center](#center). The default
    translation offset places ⟨0°,0°⟩ at the center of a 960×500 area.

    <a name="scale" href="#scale">#</a> projection.<b>scale</b>([<i>scale</i>])

    If *scale* is specified, sets the projection’s scale factor to the
    specified value and returns the projection. If *scale* is not specified,
    returns the current scale factor which defaults to 150. The scale factor
    corresponds linearly to the distance between projected points. However,
    scale factors are not consistent across projections.

    <a name="clipAngle" href="#clipAngle">#</a> projection.<b>clipAngle</b>(<i>angle</i>)

    If *angle* is specified, sets the projection’s clipping circle radius to
    the specified angle in degrees and returns the projection. If *angle* is
    null, switches to [antimeridian
    cutting](http://bl.ocks.org/mbostock/3788999) rather than small-circle
    clipping. If *angle* is not specified, returns the current clip angle which
    defaults to null. Small-circle clipping is independent of viewport clipping
    via [clipExtent](#clipExtent).

    <a name="clipExtent" href="#clipExtent">#</a> projection.<b>clipExtent</b>(<i>extent</i>)

    If *extent* is specified, sets the projection’s viewport clip extent to the
    specified bounds in pixels and returns the projection. The *extent* bounds
    are specified as an array [​[<i>x0</i>, <i>y0</i>], [<i>x1</i>,
    <i>y1</i>]​], where <i>x0</i> is the left-side of the viewport,
    <i>y0</i> is the top, <i>x1</i> is the right and <i>y1</i> is the bottom.
    If *extent* is null, no viewport clipping is performed. If *extent* is not
    specified, returns the current viewport clip extent which defaults to null.
    Viewport clipping is independent of small-circle clipping via
    [clipAngle](#clipAngle).

    <a name="precision" href="#precision">#</a> projection.<b>precision</b>(<i>precision</i>)

    If *precision* is specified, sets the threshold for the projection’s
    [adaptive resampling](http://bl.ocks.org/mbostock/3795544) to the specified
    value in pixels and returns the projection. This value corresponds to the
    [Douglas–Peucker](http://en.wikipedia.org/wiki/Ramer–Douglas–
    Peucker_algorithm) distance. If *precision* is not specified, returns the
    projection’s current resampling precision which defaults to
    `Math.SQRT(1/2)`.

    A *precision* of `0` disables adaptive resampling.

    <a name="stream" href="#stream">#</a> projection.<b>stream</b>(<i>listener</i>)

    Returns a projecting [stream](Geo-Streams) wrapper for the specified
    *listener*. Any geometry streamed to the wrapper is projected before being
    streamed to the wrapped listener. A typical projection involves several
    stream transformations: the input geometry is first converted to radians,
    rotated on three axes, clipped to the small circle or cut along the
    antimeridian, and lastly projected to the Cartesian plane with adaptive
    resampling, scale and translation.

    <a name="projectionMutator" href="#projectionMutator">#</a> d3.geo.<b>projectionMutator</b>(<i>rawFactory</i>)

    Constructs a new projection from the specified *raw* point projection
    function *factory*. This function does not return the projection directly,
    but instead returns a *mutate* method that you can call whenever the raw
    projection function changes. For example, say you’re implementing the
    Albers equal-area conic projection, which requires configuring the
    projection's two parallels. Using closures, you can implement the raw
    projection as follows:

    ```javascript
    // φ0 and φ1 are the two parallels
    function albersRaw(φ0, φ1) {
      return function(λ, φ) {
        return [
          /* compute x here */,
          /* compute y here */
        ];
      };
    }
    ```

    Using d3.geo.projectionMutator, you can implement a standard projection
    that allows the parallels to be changed, reassigning the raw projection
    used internally by d3.geo.projection:

    ```javascript
    function albers() {
      var φ0 = 29.5,
          φ1 = 45.5,
          mutate = d3.geo.projectionMutator(albersRaw),
          projection = mutate(φ0, φ1);

      projection.parallels = function(_) {
        if (!arguments.length) return [φ0, φ1];
        return mutate(φ0 = +_[0], φ1 = +_[1]);
      };

      return projection;
    }
    ```

    Thus, when creating a mutable projection, the *mutate* function is never
    exposed, but can be used to recreate the underlying raw projection easily.
    For the full implementation, see
    [src/geo/albers.js](/mbostock/d3/blob/master/src/geo/albers.js).

    **Standard Projections**

    :   <a name="albers" href="#albers">#</a> d3.geo.<b>albers</b>()

        An alias for [d3.geo.conicEqualArea](#conicEqualArea), with USA-centric
        defaults: scale 1000, translate [480, 250], rotation [96°, 0°], center
        ⟨-0.6°, 38.7°⟩ and parallels [29.5°, 45.5°], making it suitable for
        displaying the United States, centered around [Hutchinson,
        Kansas](https://maps.google.com/maps?q=Hutchinson,+Kansas&z=5) in a
        960×500 area. The central meridian and parallels are specified by the
        [USGS](http://www.usgs.gov/) in the 1970 [National
        Atlas](http://www.nationalatlas.gov/).

        <a name="albersUsa" href="#albersUsa">#</a> d3.geo.<b>albersUsa</b>()

        <a href="http://bl.ocks.org/mbostock/4090848"><img src="http://bl.ocks.org/mbostock/raw/4090848/thumbnail.png" width="202"></a>

        The Albers USA projection is a composite projection of four Albers
        projections designed to display the forty-eight lower United States
        alongside Alaska and Hawaii. Although intended for choropleths (`/ˈkɔːrəˌplɛθ/` 等值), it
        scales the area of Alaska by a factor of 0.35x (a <i>lie factor</i> of
        3); Hawaii is shown at the same scale as the lower forty-eight.

        The Albers USA projection does not support rotation or centering.

        <a name="azimuthalEqualArea" href="#azimuthalEqualArea">#</a> d3.geo.<b>azimuthalEqualArea</b>()

        <a href="http://bl.ocks.org/mbostock/3757101"><img src="http://bl.ocks.org/mbostock/raw/3757101/thumbnail.png" width="202"></a>

        The azimuthal equal-area projection is also suitable for choropleths. A
        [polar aspect](http://bl.ocks.org/mbostock/4364903) of this projection
        is used for the United Nations logo.

        <a name="azimuthalEquidistant" href="#azimuthalEquidistant">#</a> d3.geo.<b>azimuthalEquidistant</b>()

        <a href="http://bl.ocks.org/mbostock/3757110"><img src="http://bl.ocks.org/mbostock/raw/3757110/thumbnail.png" width="202"></a>

        The azimuthal equidistant projection preserves distances from the
        projection’s center: the distance from any projected point to the
        projection’s center is proportional to the great arc distance. Thus,
        circles around the projection’s center are projected to circles on the
        Cartesian plane. This can be useful for visualizing distances relative
        to a point of reference, such as commute distances.

        <a name="conicConformal" href="#conicConformal">#</a> d3.geo.<b>conicConformal</b>()

        <a href="http://bl.ocks.org/mbostock/3734321"><img src="http://bl.ocks.org/mbostock/raw/3734321/thumbnail.png" width="202"></a>
        <a href="http://bl.ocks.org/mbostock/9764521"><img src="http://bl.ocks.org/mbostock/raw/9764521/thumbnail.png" width="202"></a>

        Lambert’s conformal conic projection projects the globe conformally onto a cone.

        <a name="conicConformal_parallels" href="#conicConformal_parallels">#</a> conicConformal.<b>parallels</b>([<i>parallels</i>])

        If *parallels* is specified, sets the projection’s standard parallels
        to the specified two-element array of latitudes (in degrees) and
        returns the projection. If *parallels* is not specified, returns the
        current parallels.

        <a name="conicEqualArea" href="#conicEqualArea">#</a> d3.geo.<b>conicEqualArea</b>()

        <a href="http://bl.ocks.org/mbostock/3734308"><img src="http://bl.ocks.org/mbostock/raw/3734308/thumbnail.png" width="202"></a>

        The Albers projection, as an
        [equal-area](http://en.wikipedia.org/wiki/Map_projection#Equal-area)
        projection, is recommended for
        [choropleths](http://mbostock.github.com/d3/ex/choropleth.html) as it
        preserves the relative areas of geographic features.

        <a name="conicEqualArea_parallels" href="#conicEqualArea_parallels">#</a> conicEqualArea.<b>parallels</b>([<i>parallels</i>])

        If *parallels* is specified, sets the Albers projection’s standard
        parallels to the specified two-element array of latitudes (in degrees)
        and returns the projection. If *parallels* is not specified, returns
        the current parallels. To minimize distortion, the parallels should be
        chosen to surround the projection’s [center](#center).

        <a name="conicEquidistant" href="#conicEquidistant">#</a> d3.geo.<b>conicEquidistant</b>()

        <a href="http://bl.ocks.org/mbostock/3734317"><img src="http://bl.ocks.org/mbostock/raw/3734317/thumbnail.png" width="202"></a>

        <a name="conicEquidistant_parallels" href="#conicEquidistant_parallels">#</a> conicEquidistant.<b>parallels</b>([<i>parallels</i>])

        If *parallels* is specified, sets the projection’s standard parallels to
        the specified two-element array of latitudes (in degrees) and returns the
        projection. If *parallels* is not specified, returns the current parallels.

        <a name="equirectangular" href="#equirectangular">#</a> d3.geo.<b>equirectangular</b>()

        <a href="http://bl.ocks.org/mbostock/3757119"><img src="http://bl.ocks.org/mbostock/raw/3757119/thumbnail.png" width="202"></a>

        The equirectangular, or plate carrée projection, is the simplest possible
        geographic projection: the identity function. It is neither equal-area nor
        conformal, but is sometimes used for raster data. See [raster
        reprojection](http://bl.ocks.org/mbostock/4329423) for an example; the
        source image uses the equirectangular projection.

        <a name="gnomonic" href="#gnomonic">#</a> d3.geo.<b>gnomonic</b>()

        <a href="http://bl.ocks.org/mbostock/3757349"><img src="http://bl.ocks.org/mbostock/raw/3757349/thumbnail.png" width="202"></a>

        The gnomonic projection is an azimuthal projection that projects great
        circles as straight lines. See the [interactive
        gnomonic](http://bl.ocks.org/mbostock/3795048) for an example.

        <a name="mercator" href="#mercator">#</a> d3.geo.<b>mercator</b>()

        <a href="http://bl.ocks.org/mbostock/3757132"><img src="http://bl.ocks.org/mbostock/raw/3757132/thumbnail.png" width="202"></a>

        The spherical Mercator projection is commonly used by tiled mapping
        libraries (such as [OpenLayers](http://openlayers.org/) and
        [Leaflet](http://leafletjs.com)). For an example displaying raster tiles
        with the Mercator projection, see the [d3.geo.tile
        plugin](http://bl.ocks.org/mbostock/4150951). It is
        [conformal](http://en.wikipedia.org/wiki/Map_projection#Conformal);
        however, it introduces severe area distortion at world scale and thus is
        not recommended for choropleths.

    <a name="orthographic" href="#orthographic">#</a> d3.geo.<b>orthographic</b>()

    <a href="http://bl.ocks.org/mbostock/3757125"><img src="http://bl.ocks.org/mbostock/raw/3757125/thumbnail.png" width="202"></a>

    The orthographic projection is an azimuthal projection suitable for
    displaying a single hemisphere; the point of perspective is at infinity.
    See the [animated world tour](http://bl.ocks.org/mbostock/4183330) and
    [interactive orthographic](http://bl.ocks.org/mbostock/3795040) for
    examples. For a general perspective projection, see the [satellite
    projection](http://bl.ocks.org/mbostock/3790444).

    <a name="stereographic" href="#stereographic">#</a> d3.geo.<b>stereographic</b>()

    <a href="http://bl.ocks.org/mbostock/3757137"><img src="http://bl.ocks.org/mbostock/raw/3757137/thumbnail.png" width="202"></a>

    The stereographic projection is another perspective (azimuthal) projection.
    The point of perspective is on the surface of the sphere, looking in; it is
    thus commonly used for celestial charts. See the [interactive
    stereographic](http://bl.ocks.org/mbostock/3763057) for an example.

    <a name="transverseMercator" href="#transverseMercator">#</a> d3.geo.<b>transverseMercator</b>()

    <a href="http://bl.ocks.org/mbostock/5126418"><img src="http://bl.ocks.org/mbostock/raw/5126418/thumbnail.png" width="202"></a>
    <a href="http://bl.ocks.org/mbostock/4695821"><img src="http://bl.ocks.org/mbostock/raw/4695821/thumbnail.png" width="202"></a>

    The transverse Mercator projection.

    **Raw Projections**

    D3 exposes several raw projections, designed for reuse when implementing a
    composite projection (such as [Sinu–
    Mollweide](http://bl.ocks.org/mbostock/4319903), which combines the raw
    [sinusoidal](http://bl.ocks.org/mbostock/3712399) and
    [Mollweide](http://bl.ocks.org/mbostock/3734336) projections). Raw
    projections are typically wrapped using [d3.geo.projection](#projection)
    before use. These are point functions that take spherical coordinates λ and
    φ (in radians) as input and return a two-element array (also in radians) as
    output. Many raw projections also implement an inverse projection for
    mapping from planar to spherical coordinates.

    <a name="albers_raw" href="#albers_raw">#</a> d3.geo.albers.<b>raw</b>(φ<sub>0</sub>, φ<sub>1</sub>)

    An alias for [d3.geo.conicEqualArea.raw](#conicEqualArea_raw).

    <a name="azimuthalEqualArea_raw" href="#azimuthalEqualArea_raw">#</a> d3.geo.azimuthalEqualArea.<b>raw</b>

    The raw [azimuthal equal-area projection](#azimuthalEqualArea).

    <a name="azimuthalEquidistant_raw" href="#azimuthalEquidistant_raw">#</a> d3.geo.azimuthalEquidistant.<b>raw</b>

    The raw [azimuthal equidistant projection](#azimuthalEquidistant).

    <a name="conicConformal_raw" href="#conicConformal_raw">#</a> d3.geo.conicConformal.<b>raw</b>(φ<sub>0</sub>, φ<sub>1</sub>)

    Returns a raw [conformal conic projection](#conicConformal) with the specified parallels in radians.

    <a name="conicEqualArea_raw" href="#conicEqualArea_raw">#</a> d3.geo.conicEqualArea.<b>raw</b>(φ<sub>0</sub>, φ<sub>1</sub>)

    Returns a raw [Albers projection](#conicEqualArea) with the specified parallels in radians.

    <a name="conicEquidistant_raw" href="#conicEquidistant_raw">#</a> d3.geo.conicEquidistant.<b>raw</b>(φ<sub>0</sub>, φ<sub>1</sub>)

    Returns a raw [equidistant conic projection](#conicEquidistant) with the specified parallels in radians.

    <a name="equirectangular_raw" href="#equirectangular_raw">#</a> d3.geo.equirectangular.<b>raw</b>

    The raw [equirectangular projection](#equirectangular).

    <a name="gnomonic_raw" href="#gnomonic_raw">#</a> d3.geo.gnomonic.<b>raw</b>

    The raw [gnomonic projection](#gnomonic).

    <a name="mercator_raw" href="#mercator_raw">#</a> d3.geo.mercator.<b>raw</b>

    The raw [Mercator projection](#mercator).

    <a name="orthographic_raw" href="#orthographic_raw">#</a> d3.geo.orthographic.<b>raw</b>

    The raw [orthographic projection](#orthographic).

    <a name="stereographic_raw" href="#stereographic_raw">#</a> d3.geo.stereographic.<b>raw</b>

    The raw [stereographic projection](#stereographic).
</div>

---

```javascript
// [mə'ketə] n. 墨卡托（地理学家，地图制作家）
var projection = d3.geo.mercator();
// for USA: d3.geo.albersUsa

var path = d3.geo.path().projection(projection);
var svg = d3.select("#map")
    .append("svg")
    .attr("width", width)
    .attr("height", height);

var states = topojson.feature(data, data.objects.MEX_adm1);
```

The bounding box is a spherical box that returns
a two-dimensional array of min/max coordinates, inclusive of the geographic
data passed:

```javascript
var b = path.bounds(states);
var b = path.bounds(states.features[5]);
```

The bounding box is represented by a two-dimensional array:
`[[left, bottom], [right, top]]`, where left is the minimum longitude, bottom
is the minimum latitude, right is maximum longitude, and top is the maximum latitude.

```javascript
var s = .95 / Math.max((b[1][0] - b[0][0]) / width,
        (b[1][1] - b[0][1]) / height);

var t = [
            (width - s * (b[1][0] + b[0][0])) / 2,
            (height - s * (b[1][1] + b[0][1])) / 2
        ];

projection.scale(s).translate(t);
```

```javascript
var map = svg.append('g').attr('class', 'boundary');
```

creating choropleths

```javascript
var color = d3.scale.linear().domain([0,33]).range(['red', 'yellow']);
mexico.attr('fill', function(d,i) {return color(i)});
```

[Scales · mbostock/d3 Wiki](https://github.com/mbostock/d3/wiki/Scales)

:   - Quantitative Scales: for continuous input domains, such as numbers.
        + Linear Scales
            * `d3.scale.linear()`
            * domain, range, output interpolator, clamping behavior,
            * `linear:: x -> x`
            * `insert:: x -> x`
            * `domain:: [x] -> this`, `[from, to]` is fine, 但是多线（polyline）也可以，注意 domain 和 range 数目要一致
            * `range:: [x] -> this`
            * `linear.clamp([boolean])`
            * ticks
              ~ ```javascript
                var x = d3.scale.linear().domain([-1, 1]);
                console.log(x.ticks(5).map(x.tickFormat(5, "+%")));
                // ["-100%", "-50%", "+0%", "+50%", "+100%"]
                ```
        + Power Scales
            * `x: y = mx^k + b`
            * the the default domain [0,1], the default range [0,1]
            *  `d3.scale.sqrt()` == `d3.scale.pow().exponent(.5)`
        + Log Scales
            * x: y = m log(x) + b
            * the default domain [1,10], the default range [0,1], the base 10.
        + Quantize Scales
            * example
              ~ ```javascript
                var q = d3.scale.quantize().domain([0, 1]).range(['a', 'b', 'c']);
                //q(0.3) === 'a', q(0.4) === 'b', q(0.6) === 'b', q(0.7) ==='c';
                //q.invertExtent('a') returns [0, 0.3333333333333333]
                ```
            * `quantize(x)`
            * `quantize.invertExtent(y)`
        + Quantile Scales
            * the input domain is specified as a discrete set of values
            * [Quantile - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Quantile#Quantiles_of_a_population)
                - So the first, second and third 4-quantiles (the "quartiles") of
                  the dataset {3, 6, 7, 8, 8, 10, 13, 15, 16, 20} are {7, 9, 15}.
                  If also required, the zeroth quartile is 3 and the fourth
                  quartile is 20.
        + Threshold Scales
            * example
              ~ ```javascript
                var t = d3.scale.threshold().domain([0, 1]).range(['a', 'b', 'c']);
                t(-1) === 'a';
                t(0) === 'b';
                t(0.5) === 'b';
                t(1) === 'c';
                t(1000) === 'c';
                t.invertExtent('a'); //returns [undefined, 0]
                t.invertExtent('b'); //returns [0, 1]
                t.invertExtent('c'); //returns [1, undefined]
                ```
    - Ordinal Scales - for discrete input domains, such as names or categories.
        + `d3.scale.ordinal()`
        + `domain([values])`
        + `range([values])`
        + `ordinal.rangePoints(interval[, padding])`

            ```javascript
            var o = d3.scale.ordinal()
                .domain([1, 2, 3, 4])
                .rangePoints([0, 100]);

            o.range(); // [0, 33.333333333333336, 66.66666666666667, 100]
            ```

            padding is zero by default.

        + `ordinal.rangeRoundPoints(interval[, padding])`, 保证 range 取整

            ```javascript
            var o = d3.scale.ordinal()
                .domain(d3.range(50))
                .rangeRoundPoints([0, 95]);

            o.range(); // [23, 24, 25, …, 70, 71, 72]
            o.rangeRoundPoints([0, 100]);
            o.range(); // [1, 3, 5, …, 95, 97, 98]
            ```
        + `ordinal.rangeBands(interval[, padding[, outerPadding]])`

            ```javascript
            var o = d3.scale.ordinal()
                .domain([1, 2, 3])
                .rangeBands([0, 100]);

            o.rangeBand(); // 33.333333333333336
            o.range(); // [0, 33.333333333333336, 66.66666666666667]
            o.rangeExtent(); // [0, 100]
            ```

        + Categorical Colors
            * `d3.scale.category10()`
        + ColorBrewer

    - Time Scales - for time domains.

    The following time formats are considered:

      - `%Y` - for year boundaries, such as "2011".
      - `%B` - for month boundaries, such as "February".
      - `%b %d` - for week boundaries, such as "Feb 06".
      - `%a %d` - for day boundaries, such as "Mon 07".
      - `%I %p` - for hour boundaries, such as "01 AM".
      - `%I:%M` - for minute boundaries, such as "01:23".
      - `:%S` - for second boundaries, such as ":45".
      - `.%L` - milliseconds for all other times, such as ".012".

    refs and see also

      - [Ordinal Scales · mbostock/d3 Wiki](https://github.com/mbostock/d3/wiki/Ordinal-Scales)
      - [Time Scales · mbostock/d3 Wiki](https://github.com/mbostock/d3/wiki/Time-Scales)

---

The `ID_1` property contains a unique numeric value for every state in the array.
If we insert this as an `id` attribute into the DOM, then we would create a quick and easy way to select each state in the country.

Let's update the enter method to bind our new `click` method to every new
DOM element that  enter appends:

```javascript
//Enter
mexico.enter()
    .append('path')
    .attr('d', path)
    .attr('id', geoID)
    .on("click", click);
```

```javascript
setInterval(function(){
    mexico.transition().duration(500)
    .style('fill', function(d) {
        return color(Math.floor((Math.random() * 32) + 1));
    });
},2000);
```

```javascript
d3.csv('cities.csv', function(cities) {
    var cityPoints = svg.selectAll('circle').data(cities);
    var cityText = svg.selectAll('text').data(cities);
    cityPoints.enter()
        .append('circle')
        .attr('cx', function(d) {return projection ([d.lon, d.lat])[0]})
        .attr('cy', function(d) {return projection ([d.lon, d.lat])[1]})
        .attr('r', 4);
});
```

---

The Event interface is used to provide **contextual information** about an event to
the handler processing the event. An object that implements the Event interface
is generally passed as the first parameter to an event handler. More specific
context information is passed to event handlers by deriving additional interfaces
from Event which contain information directly relating to the type of event they
accompany. These derived interfaces are also implemented by the object passed to
the event listener.

```javascript
varbtn = document.getElementById('btn');
btn.addEventListener('click', function() {
    console.log('Hello world'); }, false );
```

`false` 是说这个 `event` 处理完了，别人还可以继续处理。（done with it？No(false).）

```css
#tooltip {
    position: absolute;
    z-index: 2;
    background: rgba(0,153,76,0.8);
    width:130px;
    height:20px;
    color:white;
    font-size: 14px;
    padding:5px;
    top:-150px;
    left:-150px;
    font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
    "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
}
```

```javascript
var hover = function(d) {
    var div = document.getElementById('tooltip');
    div.style.left = event.pageX +'px';
    div.style.top = event.pageY + 'px';
    div.innerHTML = d.properties.NAME_1;
};
```

[Towards Reusable Charts](https://bost.ocks.org/mike/chart/)

:   这篇文章写得真是循序渐进！

    I jest (开玩笑的).

    ```javascript
    fun()                                    // no configs?
        -> fun(width, height)                // fixed?
        -> fun(config)                       // cool
        -> fun(config){return fun(){}}       // and efficient, (closure)
    ```

    [Method chaining - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Method_chaining)

    :   Method chaining, also known as named parameter idiom, is a common syntax
        for invoking multiple method calls in object-oriented programming languages.

        cpp

        ```cpp
        ostream & operator << (ostream &os, Person const &person)
        {
            return os << "Hello, my name is "
                      << person.m_name
                      << " and I am "
                      << person.m_age
                      << " years old.";
        }
        ```

        ruby

        ```ruby
        class Person

          def name(value)
            @name = value
            self
          end

          def age(value)
            @age = value
            self
          end

          def introduce
            puts "Hello, my name is #{@name} and I am #{@age} years old."
          end

        end

        person = Person.new
        person.name("Peter").age(21).introduce
        # => Hello, my name is Peter and I am 21 years old.
        ```

        jQuery

        ```javascript
        // chaining
        $("#person").slideDown('slow')
           .addClass('grouped')
           .css('margin-left', '11px');
        ```

        java

        ```java
        public Person setName(String name) {
            this.name = name;
            return this;
        }
        ```

        python

        ```python
        def name(self, value):
            self.name = value
            return self
        ```

    ```javascript
    function chart() {
      var width = 720, // default width
          height = 80; // default height

      function my() {
        // generate chart here, using `width` and `height`
      }

      my.width = function(value) {
        if (!arguments.length) return width;
        width = value;
        return my;
      };

      my.height = function(value) {
        if (!arguments.length) return height;
        height = value;
        return my;
      };

      return my;
    }
    ```

    The chart can now be configured, but two essential ingredients are still
    missing: the DOM element into which to render the chart (such as a particular
    `div` or `document.body`), and the data to display. These could be considered
    configuration, but D3 provides **a more natural representation for data and
    elements: the selection**.

    The simplest way of invoking our chart function on a selection, then, is to
    **pass the selection as an argument**: `myChart(selection);`{.javascript}

    Or equivalently, using selection.call: `selection.call(myChart);`{.javascript}

    From the API reference:

    > `[call]` invokes the specified function once, passing
    > in the current selection…
    > The call operator is identical to invoking a function by hand;
    > but it **makes it easier to use method chaining**.

    Internally, a call-based chart implementation looks something like this:

    ```javascript
    function my(selection) {
      selection.each(function(d, i) {
        // generate chart here; `d` is the data and `this` is the element
      });
    }
    ```

    You could also design your chart function to work directly with selection.each,
    but selection.call is more general and has precedent with the brush and axis
    components.

    We now have a **strawman convention** for reusable visualization components.

    <div class="tzx-drawer" shy>
    Straw Man

    :   In software development, **a crude plan** or document** may serve as
        the strawman or starting point in the evolution of a project. The
        strawman is not expected to be the last word; it is **refined** until a
        final model or document is obtained that resolves all issues concerning
        the scope and nature of the project. In this context, a strawman can
        take the form of an outline, a set of charts, a presentation, or a
        paper.

        The ‘Straw Man’ also fits in neatly with the concept of iterative
        design, repeating and re-drafting to improve an initial concept or
        design. If anything is built, often, it may not end up in the final
        product. It might be that the decision is to not continue at all, in
        which case, the ‘Straw Man’ approach may have saved a lot of wasted
        work in the long run. Or, the final approach may be very different from
        the first model. Either way, the‘Straw Man’ will have proven its worth
        by having re-directed the approach before any significant work is
        undertaken.
    </div>

    refs and see also

      - [Straw man proposal - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Straw_man_proposal)

---

```javascript
var zoomed = function () {
    map.attr("transform",
             "translate("+ d3.event.translate + ") scale(" + d3.event.scale + ")");
};

var zoom = d3.behavior.zoom()
    .scaleExtent([1, 8])
    .on("zoom", zoomed);
    .size([width, height]);
```

<div class="tzx-drawer" shy>
[Zoom Behavior · mbostock/d3 Wiki](https://github.com/mbostock/d3/wiki/Zoom-Behavior)

:   ```javascript
    var zoom = d3.behavior.zoom();
    selection.call(zoom);
    ```

    All registered listeners use the “zoom” namespace, so to subsequently
    remove the behavior: `selection.on(".zoom", null);`{.javascript}

    `zoom.scaleExtent([extent])`, defaults to [0, Infinity].

    `zoom.center([center])`

    :   If center is specified, sets the [focal point](http://bl.ocks.org/mbostock/6226534) `[x, y]`
        for mousewheel zooming and returns this zoom behavior. If center is not
        specified, returns the current focal point, which defaults to null. A
        null center indicates that mousewheel zooming should zoom in and out
        around the current mouse location.

    `zoom.on(type, listener)`

    :   Registers the specified listener to receive events of the specified
        type from the zoom behavior. The following types are supported:

          - zoomstart - at the start of a zoom gesture (e.g., touchstart).
          - zoom - when the view changes (e.g., touchmove).
          - zoomend - at the end of the current zoom gesture (e.g., touchend).
</div>

```javascript
svg.append("rect")
    .attr("class", "overlay")
    .attr("width", width)
    .attr("height", height)
    .call(zoom);
```

```javascript
var height = 600;
var width = 900;
var projection = d3.geo.orthographic().clipAngle(90);
var path = d3.geo.path().projection(projection);

d3.json('world.json', function(data) {
    var countries = topojson.feature(data, data.objects.countries);
    var map = svg.append('g').attr('class', 'boundary');
    var world = map.selectAll('path').data(countries.features);
});

world.enter()
    .append('path')
    .attr('d', path);

mexico.enter()
    .append('path')
    .attr('class', 'mexico')
    .attr('d', path)
    .style('fill', 'lightyellow').style('stroke', 'orange');

project.rotate([0,i,0]);
```

<http://www.jasondavies.com/maps/rotate/>

---

**Finding and Working with Geographic Data**

shapefile:

  - a large repository of free shapefiles located at <http://diva-gis.org>
  - con: too big, binary
  - but we can  leverage the large repository of shapefiles and convert them to
    GeoJSON and TopoJSON. (These are js friendly.)

<https://github.com/mbostock/topojson/wiki/Command-Line-Reference>


```javascript
topojson -o spain-topo.json -p -- ESP_adm0.shp
topojson -o spain-topo.json –p name=ISO -- ESP_adm0.shp
# -p target=source,target=source,target=source
```

- GeoJSON: 6.4 MB
- TopoJSON: 379 KB

<http://bost.ocks.org/mike/simplify/>

simplification

`-p name=ISO -s 7e-7 -- ESP_adm0.shp`

merging files

```javascript
topojson -o ../topojson/spain-topo-simple.json \
    -p name=ISO -s 7e-7 -- \
    ESP_adm0.shp ESP_adm1.shp
topojson -o ../topojson/spain-topo-simple.json \
    -p name=ISO -s 7e-7 -- \
    country=ESP_adm0.shp regions=ESP_adm1.shp
```

- `var country = topojson.feature(data, data.objects.ESP_adm0);`
- `var country = topojson.feature(data, data.objects.country);`

vendor: This directory contains all the external libraries that we need to use
in the visualization and is loaded at the bottom of the `index.html` file:

```html
<script src="vendor/d3.min.js"></script>
<script src="vendor/topojson.v1.min.js"></script>
```

```javascript
var x = d3.scale.linear(),
y = d3.scale.ordinal();

x.domain([0, my.profitMax(chartData)])
.range([0,my.w()]);
y.domain(my.categories(chartData))
.rangeRoundBands([0, my.h()], 0.2);

d3.select("#chart").datum(data()).call(viz.draw);
```

---

git clone git://github.com/NickQiZhu/d3-cookbook.git

The D3 gallery ( https://github.com/mbostock/d3/wiki/Gallery ) contains
some of the most interesting examples that you can find online regarding D3 usage.
It contains examples on different visualization charts, specific techniques, and some
interesting visualization implementations in the wild, among others.
f BioVisualize (http://biovisualize.github.io/d3visualization ) is
another D3 gallery with categorization, to help you find your desired visualization
example online quickly.
f The D3 tutorials page ( https://github.com/mbostock/d3/wiki/Tutorials )
contains a collection of tutorials, talks and slides created by various contributors over
time, to demonstrate in detail how to use a lot of D3 concepts and techniques.
f D3 plugins ( https://github.com/d3/d3-plugins ). Maybe some features are
missing in D3 for your visualization needs? Before you decide to implement your
own, make sure to check out D3 plugin repository. It contains a wide variety of
plugins that provide some of the common and, sometimes, uncommon features in
the visualization world

The D3 API ( https://github.com/mbostock/d3/wiki/API-Reference ) is
very well documented. This is where you can find detailed explanations for every
function and property that the D3 library has to offer.
f Mike Bostok's Blocks ( http://bl.ocks.org/mbostock ) is a D3 example site,
where some of the more intriguing visualization example can be found and which is
maintained by its author Mike Bostock.
f JS Bin ( http://jsbin.com/ugacud/1/edit ) is a pre-built D3 test and
experiment environment completely hosted online. You can easily prototype a simple
script using this tool or share your creation with other members in the community.
f JS Fiddle ( http://jsfiddle.net/qAHC2/ ) is similar to JS

---

[malloc 与 free？ - 知乎](https://www.zhihu.com/question/41567197#answer-32596782)

:   我先问你个问题：指针中是没有所在内存块大小的信息的，那么 free 怎么才能知道
    要释放的内存块有多大呢？于是，对于大多数内存分配器，malloc 申请的实际内存比
    你要求的空间要大几个字节，里面存储了额外的数据来记录这块内存有多大，一般就
    是直接存在指针左边。free 的时候，就会去读取指针地址减去一个常数之后的那块内
    存，来获取内存块的信息。因此如果你 free 一个不指向内存块开始处的指针，free
    的时候就会把其他的数据错误解释成内存块的信息，（大概率）导致程序崩溃。当然
    现代的内存分配器对于不同大小的内存申请，会采用不同的分配策略，但无论策略如
    何，去 free 一个不是 malloc 来的指针，都是非常危险的举动。

    作者：Belleve

    初学者的话，不要多想，把 CSAPP 看了再说。

    C 是一门设计感不是很强的语言，换句话说很多东西就是没什么道理和规律可循的，要
    知道具体的问题和当时的写法才能明白其中道理。

    比如吧，malloc 是个内存管理 package，并不是一个很底层的东西。 更加底层的看，
    一个程序有一大块内存，叫作 heap。但是呢，heap 的大小是有限的，用完了问操作系
    统要更多 heap，是很耗费资源的，于是就需要内存管理系统来帮助整理 heap，提高利
    用率。

    这个时候就要在内存里面建立一个链表，把没有用的内存块，大小等等都储存起来，
    方便按照大小取用。随着内存块被 malloc 和被 free，这些 free block 也会被打散和合
    并。之所以可以做到，就是因为默认每个内存块的首尾都记录有信息。

    你任意在内存块里移动，free 的时候程序自动往前读一个 block，发现的却不是一个完
    整的 tag (你自己放了什么就是什么)，assertion failure 已经是小事了，基本上会
    segfault，运气不好你会跳到别的内存块去，损坏一大片内存。

    所以，不要乱搞。CSAPP 里自己写过一个 malloc 就明白了。

    当然了，国内一般是不教 Linux 和 bash 一类的，国内很多人是不会用的，这也是为啥大
    家都觉得 windows 好的一个原因。我可以负责任地说我在美国读的 CS 本科，系里没有一
    台 Windows 电脑。

    电池是化学工业。

    新材料的研发难度是知乎这群程序员根本无法想象的。程序员们都活在完美的无熵世
    界里，邱奇和图灵命定了整个世界的法则。律法是存在的，而且是万能的，我们只需
    要跟从律法，就能得到想要的结果——如果它不对，一定是我的问题，找到改正就好。
    醒醒吧，真实世界远远比你们的小世界可怕，我们面对的是一片漆黑和死寂，我们不
    知道规则，不知道哪里是致命的陷阱：做材料研究的是在和上帝搏斗。

    做个不恰当的比喻：研发新材料的难度好比 @李阿玲 徒手写 TeX：一次写出一个四万
    行的程序，各个部件耦合性极强且无法解耦，写完前无法预测结果，无法单元测试……
    啊不对，材料研究比 @李阿玲 更加令人绝望，因为 @李阿玲 好歹可以去 debug，材
    料的性质不对无法 debug，只能改配方重新合成一份来 trial-and-error，错了不知
    道为什么，最后成功了也不知道为什么……因此真无怪乎有些人把材料科学比作「往下
    水道扔钱」。有人问计算化学——很好，我们组就是做计算化学的，优化一个 30 原子
    的小分子结构需要两个小时；预测两个小分子的反应产物需要整整一天。我不认为地
    球上有一台超算能在人类可接受的时间内算出某个电池结构的电量。

    refs

      - [电池技术为什么如此高深莫测，以至于一直是手机等相关行业的短板？](https://www.zhihu.com/question/27604615/answer/37295615)

[看了三遍，越发认定它是最好的华语青春片 - 简书](http://www.jianshu.com/p/5be18abc2313#)

:   塞缪尔·乌尔曼

    :   青春不是数量而是一种品质，一旦获得就不会失去。

    塞林格, 《麦田里的守望者》

    :   一个不成熟男人的标志是他愿意为某种事业英勇地死去，一个成熟男人的标志是他愿
        意为某种事业卑贱地活着。

---

离群索居

:   离群索居的意思就是远离人群，自己一个人居住，泛指不合群，孤独的人。索：孤单，离开集体或群众，过孤独的生活。

    > 吾离群而索居，亦已久矣。
    > --《礼记·檀弓上》

    春秋时期，孔子的学生子夏生性孤僻，平时很少与同学合群，只与曾参比较要好。子
    夏的儿子死了，他差一点哭瞎了眼睛。曾参前去批评他，子夏听后，如梦初醒，觉得
    自己离群索居很久就造成这样，于是节哀顺变，与同学玩成一片。

Calibre 不知道为什么书都没了，需要点击 `Calibre Library` 然后 `恢复数据库` 进行恢复。

- [Showdown.js](http://showdownjs.github.io/demo/#/Welcome%20to%20Dvorak4tzx's%20Blog%0A%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D%3D)
- [Les Misérables Co-occurrence](https://bost.ocks.org/mike/miserables/)

[如何成为一名数据科学家？](https://www.zhihu.com/question/21592677#answer-31441560)

[050a125b8009c45a1ed0c362cd341dbe - bl.ocks.org](http://bl.ocks.org/district10/050a125b8009c45a1ed0c362cd341dbe)

More precisely, the username regular expression is `/^[a-z0-9][a-z0-9]*$/i`; it
should be more lenient. (`['linɪənt]` adj. 宽大的；仁慈的)

[About Blocks - bl.ocks.org](http://bl.ocks.org/-/about)

:   - `.block`
        + license - a supported [SPDX](http://bl.ocks.org/licenses.txt) license code
            * apache-2.0
            * bsd-2-clause
            * bsd-3-clause
            * **cc-by-4.0**
            * cc-by-nc-4.0
            * cc-by-nc-nd-4.0
            * cc-by-nc-sa-4.0
            * cc-by-nd-4.0
            * **cc-by-sa-4.0**
            * cddl-1.0
            * epl-1.0
            * **gpl-2.0**
            * gpl-3.0
            * lgpl-2.1
            * lgpl-3.0
            * **mit**
            * mpl-2.0
            * none
        + height - the iframe height in pixels; defaults to 500
        + scrolling - yes if the iframe should scroll; defaults to no
        + border - no if the iframe should not have a border; defaults to yes
    - `230×120`, thumbnail.png. (960×500 preview.png or preview.jpg)

    Protovis: A JavaScript library for visualization; **superseded by D3**.

---

[Poisson-Disc Sampling](https://www.jasondavies.com/poisson-disc/)

D3 is Data ↦ Elements

Show Reels

 CSS Selectors

```tzx-bigquote
Single selector:
#foo        // <any id="foo"> </any>
foo         // <foo> </foo>
.foo        // <any class="foo"> </any>
[foo=bar]   // <any foo="bar"> </any>
foo bar     // <foo><bar> </bar></foo>

Multiple selectors:
foo.bar     // <foo class="bar"> </foo>
foo#bar     // <foo id="bar"> </foo>
```

[数学之美系列二十三：输入一个汉字需要敲多少个键_真小人_新浪博客](http://blog.sina.com.cn/s/blog_4fe312f90100bx5y.html~type=v5_one&label=rela_prevarticle)

:   数学之美我早就看过。但是这段我确实不能恭维。

    以后再说为什么。

    知乎上也有人说这段：

    > ……但是为了证明自己的方法比别人的快，大家继续走偏，单纯追求击键次数少，最
    > 直接的方法就是对词组进行编码，但这样一来，使用者就无法记住了，只有这些输
    > 入法的表演者能记住。这已经不是技术的比赛，而是市场的竞争。最后，王永民的
    > 五笔输入法暂时胜出，但并不是他的编码方法更合理，而是他比其他发明者（大多
    > 数是书呆子）更会做市场而已。现在，即使五笔输入法也已经没有多少市场了，这
    > 一批发没人可以说是全军覆没。

    > 这一代输入法的问题在于减少了每个汉字击键的次数，而忽视了找到每个键的时间
    > 。要求非专业使用者背下这些输入方法里所有汉字的编码是不现实的，这比背 6
    > 000 个 GRE 单词还难。因此，他们在使用这些输入法是都要按照规则临时 “拆字”
    > ，即找到一个字的编码组合，这个时间不仅长，而且在脱稿打字时严重中断思维。
    > 本书一开头就强调语言和文字作为通信的编码手段，一个重要目的是帮助思维和记
    > 忆。如果一个输入法中断了人们的思维过程，就和人的自然行为不符合。认知科学
    > 已经证明，人一心无二用。过去在研究语音识别时做过很多用户测试，发现使用各
    > 种复杂编码输入法的人在脱稿打字时，速度只有他在看稿打字时的一半到四分之一
    > 。因此，虽然每个字平均敲键次数少，但是敲键盘的速度也慢了很多，总的来看并
    > 不快。因此，广大中国计算机用户对这一类输入法的认可度极低，这是自然选择的
    > 结果。

    李笑来当年写的那个为什么要学五笔，才是真言。

    refs and see also

      - [neuxxm的五笔教程](https://www.douban.com/note/218182753/)

---

![](https://pic3.zhimg.com/7ee5eaaed0d45158cf025675e017536e_r.jpg)

---

[What Makes Software Good? — Medium](https://medium.com/@mbostock/what-makes-software-good-943557f8a488)

I don’t want you to learn D3 for the sake of D3. I want you to learn how to explore data and communicate insights effectively.

Good software is approachable.
  ~ It can be understood completely in independent, easy pieces. You don’t need
    to understand everything before you can understand anything.

Good software is consistent.
  ~ It lets you take what you’ve learned about one part and extrapolate it to
    the rest. It doesn’t self-contradict. It is parsimonious, avoiding
    superfluous elements.

Good software explains itself.
  ~ It has affordances for learning and discovery. It is role-expressive and
    minimizes hidden magic.

Good software teaches.
  ~ It doesn’t just automate an existing task, but provides insight or imparts
    knowledge, such as a best practice or a new perspective on a problem.

Good software is for humans.
  ~ It is cognizant of people and the reality in which they live. It does not
    expect elaborate and arbitrary rules to be memorized. It anticipates the
    need for learning and debugging.

[UW Interactive Data Lab](http://idl.cs.washington.edu/)


[Visualizing Algorithms](https://bost.ocks.org/mike/algorithms/)

```javascript
// DON’T DO THIS!
function shuffle(array) {
  return array.sort(function(a, b) {
    return Math.random() - .5; // ಠ_ಠ
  });
}
```

Thank you for reading!

---

- 我对有才华的人特别没办法。
- 因为这些优点都是可以表演出来的。

[知乎周刊・完全不像处女座（总第 045 期） - 知乎用户 | 豆瓣阅读](https://read.douban.com/ebook/5054304/)

:   所谓巴纳姆效应，就是说那些模棱两可，放到谁身上都准确的话。19 人

    占星学是研究星体运行轨迹和特质与人类世界或个人经历的共变关系的一种学问。这
    里的重点是共变关系，不是因果关系。15 人

    人生是什么呢？就是一部分可知，而一部分不可知的一个混合体。10 人

    什么样的人会信星座呢？就是在生活中遇到了问题的人：沟通的问题、关系的问题、
    不确定感的问题、自我怀疑的问题、没有话题可聊的问题、过去未解决的问题、将来
    没发生的问题……而星座，就是他们用来解决问题的一种工具。5 人

    时间和耐心都已变成奢侈品，我们只能靠星座了解彼此。5 人

    信佛也有不同的信法，就好比看别人走钢丝，有人的「信」，是站在安全的位置，口
    中说着「我相信他不会掉下去的」。而另一些人的「信」，则是敢于让走钢丝的的人
    背着他走，说「我相信你不会让我掉下去的」。4 人

    大部分「受骗」的人，往往是心甘情愿地让自己「受骗」。4 人

    黑处女座绝对不是黑处女座本身，而是去黑「具备处女座性格的这类人」。4 人

    你那么美好，你应该爱这个世界。4 人

    我们都是理科生，但不妨碍我们每天聊这种伪科学话题傻呵呵地开心。

---

纵然不是胡编，但基本也和“今天阴间多云，部分地区会有阳光，时有阵风阵雨”一样，总是能准的。

---

[哲学家--王浩_刘湘_博联社](http://home.blshe.com/blog.php?uid=15395&id=30002)

:   跟小璇璇同学聊天的时候说到了王浩。为了确保没说错，过后我又查了一下。
    话说我是在《上学记》里知道的这个人。

    王浩是中国有史以来唯一对哲学做过深刻贡献的学者。尽管在数学、计算机、逻辑都
    做过开拓性工作，但他内心把自己当哲学家，这极像哥德尔。

    王浩在联大的老师有金岳霖、沈有鼎、王宪钧。金是哲学票友，但比同辈的胡适、冯
    友兰更在行。沈有鼎在哈佛学过逻辑，老师有怀特海（罗素的老师）、谢佛（逻辑学
    家），还有蒯因（王浩后来的导师），但他读完硕士就到欧洲找胡塞尔和海德格尔去
    了。王宪钧是哥德尔唯一的中国学生。牛人的圈子真是不大啊。

    在联大，金岳霖开逻辑学入门课，课上基本就是师徒俩对练，金经常讲着讲着就
    问王浩：“哎，你小子说说咋回事啊？” 王宪钧讲数理逻辑，沈有鼎讲维特根斯坦《逻
    辑哲学论》。有一次金岳霖想看哥德尔不完全性定理的论文，沈有鼎当众告诉他：你
    数学不行，看不懂的。金挺识时务，说不看就不看呗。

    王浩1948年哈佛博士毕业，然后拿了三年哈佛的Junior Fellow，比较高级的博士后。
    他是第一个拿这个Fellowship的中国人。那一年哈佛一共给了四个Junior Fellow，其
    中还有一位物理系的，叫托马斯·库恩，对，就是那个提出“科学革命”和“范式”的库恩
    。库恩这三年全干哲学了。但王浩看不起库恩，说库恩干的不是哲学，是科学史。

    他证明了图灵机都可转为一组王氏砖（Wang tile）。

    王浩是机器定理证明的奠基人。他在 1958 年夏天写的程序在 IBM-704 上, 只用九分钟就
    证明了罗素《数学原理》中一阶逻辑的全部定理。

    王浩在后一本著作《超越分析哲学》中改变了方法，通过评论先哲来阐述自己的思想
    。在该书中，王浩评论了罗素、维特根斯坦、卡尔纳普和蒯因，可算现代哲学的学术
    史。他评论逻辑：大部分物理学家赞同基础物理在物理学的核心地位，却很少有数学
    家对逻辑持相同的看法。王浩的这种通过第三方来兜售自己哲学的方法在Reflections
    on Kurt Godel中表现得更突出。康宏逵先生将此书译为《哥德尔》，Reflections其
    实是王浩的哲学方法。他1979后在国内只讲数理逻辑，绝口不提辩证法。他的讲义后
    来编成《数理逻辑通俗讲话》，金岳霖题写书名，这书其实并不通俗。

    他、汉妮和何兆武同去德国海德堡时，何告诉王浩山里有条当年黑格尔散步的“哲学家
    小道”（Philosophers' Walk），何和汉妮休息，王浩自己走了一趟，何问王感觉如何
    ，王说：from nothing to nothing（从无到无）。 ^[这句话就是从《上学记》看到的。]

    refs and see also

      - [王浩 (数学家) - 维基百科，自由的百科全书](https://zh.wikipedia.org/zh-cn/%E7%8E%8B%E6%B5%A9_(%E6%95%B0%E5%AD%A6%E5%AE%B6))
      - [上学记 (豆瓣)](http://book.douban.com/subject/1859140/)
      - [Wang tile - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Wang_tile)
      - [纪念王浩先生](https://www.douban.com/group/topic/5005555/)

[dashed/pandoc-seed-project: Seed git repo for pandoc based projects. Just clone and pandoc.](https://github.com/dashed/pandoc-seed-project)

---

[语言简洁的好处 - 简书](http://www.jianshu.com/p/8b1dc305a26d)

:   举个例子，[偷书贼](http://movie.douban.com/subject/21348876/) 里严厉的老师
    让小女主人公自我介绍：

    > “Chalk，Name，Board（粉笔，名字，黑板）”。

    真是太简洁了~ 如果换成是“用粉笔把你的名字写在黑板上”，那就完全没有味道了。

[把 ANSI 編碼轉化爲 UTF-8 - 简书](http://www.jianshu.com/p/22c2f5af5a21)

:   ```bash
    # 檢測
    $ file -i *
    file1: text/plain; charset=utf-8
    file2: text/plain; charset=iso-8859-1
    file3: text/plain; charset=gbk

    # 轉化
    $ iconv -f gbk -t utf-8 file3 > file3-utf8.txt # or '-f GBK'

    # 列出支持的編碼
    iconv -l               # list all supported encodings
    ```

    ```
    $ vim file3.txt
    # convert to utf-8 in place
    :w ++enc=utf-8
    # write to another file
    :w ++enc=utf-8 file3-utf8.txt

    :set encoding=utf-8
    :set fileencoding=utf-8
    :set fileformat=unix ; ff
    ```

    refs and see also

      - [file encoding, -dvorak4tzx](http://dvorak4tzx.lofter.com/post/1d4021c8_861c876)

---

<small>
```yml
language: c
sudo: required
before_install:
install:
  - cd ~
  - wget https://github.com/jgm/pandoc/releases/download/1.17/pandoc-1.17-1-amd64.deb
  - sudo dpkg -i pandoc*.deb
  - wget http://devtools.qiniu.com/qiniu-devtools-linux_amd64-current.tar.gz
  - tar xfz qiniu-devtools-linux_amd64-current.tar.gz
  - sudo cp qrsync /bin
  - git clone https://github.com/district10/aha.git
  - cd aha && make && sudo make install
script:
  - cd ~/build/district10/blog;
  - cat conf.json.in | sed -e "s/QiNiuAK/$QiNiuAK/" | sed -e "s/QiNiuSK/$QiNiuSK/" > conf.json
  - make
  - # make items make move extras
  - # make filter
  - make qiniu; rm conf.json;
after_success:
  - cd ~/build/district10/blog; rm -Rf .git; rm -Rf publish; mkdir -p publish
  - git init; git add -A; git commit -m "pushing to coding:master, lazy me @ `date`"
  - git remote add origin git@git.coding.net:dvorak4tzx/dvorak4tzx.git
  - git push -u origin HEAD:master --force
  - rm -Rf .git
  - make && make extras
  - cd publish
  - git init; git add -A; git commit -m "pushing to coding:coding-pages, lazy me @ `date`"
  - git remote add origin git@git.coding.net:dvorak4tzx/dvorak4tzx.git
  - git push -u origin HEAD:coding-pages --force
```
</small>

```css
::selection {
    color: #9ddcff;
    background: black;
}
::-moz-selection {
    color: #9ddcff;
    background: black;
}

h1::selection { color: #9ddcff; }
h1::-moz-selection { color: #9ddcff; }
```

---

[Space, Place and GIS – ButMan World](http://butman.club/notes/cyber/space-place-and-gis/)

:   Determining latitude and longitude is a measurement problem, and like all
    measurements these will contain a degree of uncertainty.

    Neogeography (literally “new geography”) is the use of geographical
    techniques and tools for personal and community activities or by a
    non-expert group of users. Application domains of neogeography are
    typically not formal or analytical.

[Big Data, Human Dynamics and Space – Time GIS – ButMan World](http://butman.club/notes/cyber/big-data-human-dynamics-and-space-time-gis/)

:   Moving bundle：感觉更多地强调事物的流动性，相比 Stationary bundle 不同的是，
    Moving bundle 里的个体的更新更为迅速，多数情况下也是自发的。

    Where is google？在不同国家的 google 搜索引擎上检索同一个关键字，得到的结果
    是不尽相同的。随即引出在 virtual space 里的 object 无法用传统 GIS 的
    reference system 进行描述和度量，传统 GIS 需要新的血液。

[花生的别样人生 - 简书](http://www.jianshu.com/p/55dc2e0d192e)

[AlphaGo与人工智能](http://www.yinwang.org/blog-cn/2016/03/09/alpha-go)

:   本来玩个游戏而已，恁要吹成是“历史性的人机大战”，说得好像是机器挑战了人类的
    智能，伤了人类的自尊似的。

[RSS与三不主义](http://www.yinwang.org/blog-cn/2014/09/17/rss)

:   可是有了 RSS 就不一样了，因为它转换了被动与主动的关系。本来读者是“主动”来看
    我的博客，我是“被动”的，是不需要负责的。然而一旦有了 RSS，每一次发布却感觉
    好像是我“主动”在推给他们看，是我很想让他们看一样，是要负责的。某些人取消关
    注别人的微博时，口气总是好像觉得自己关注一个人，是给了他很大的面子一样，所
    以他们用取消关注来表示他们的“惩罚”。这些人显然把自己看得太高贵了。

    机器的“学习能力”，并没有比石头高出很多，因为机器学习说白了，只不过是通过大
    量的数据，统计拟合出某些函数的参数。

    著名的认知科学家 Douglas Hofstadter（《GEB》的作者），早就指出 AI 领域的那些热
    门话题，比如电脑下棋，跟真正意义上的人类智能，几乎完全不搭边。绝大部分人其
    实不明白思考和智能到底是什么。大部分所谓AI专家，对人脑的工作原理所知甚少，
    甚至完全不关心。

[bocker/bocker at master · p8952/bocker](https://github.com/p8952/bocker)

:   I can make no guarantees that it won't trash your system.

    （代码整理过，只为更“好”地查看。）

    ```bash
    #!/usr/bin/env bash
    set -o errexit -o nounset -o pipefail; shopt -s nullglob
    btrfs_path='/var/bocker' && cgroups='cpu,cpuacct,memory';
    [[ $# -gt 0 ]] && while [ "${1:0:2}" == '--' ]; do
        OPTION=${1:2};
        [[ $OPTION =~ = ]] && declare "BOCKER_${OPTION/=*/}=${OPTION/*=/}"
                           || declare "BOCKER_${OPTION}=x";
        shift;
    done

    function bocker_check() {
        btrfs subvolume list "$btrfs_path" | grep -qw "$1" && echo 0 || echo 1
    }

    #HELP Create an image from a directory:\nBOCKER init <directory>
    function bocker_init() {
        uuid="img_$(shuf -i 42002-42254 -n 1)"
        if [[ -d "$1" ]]; then
            [[ "$(bocker_check "$uuid")" == 0 ]] && bocker_run "$@"
            btrfs subvolume create "$btrfs_path/$uuid" > /dev/null
            cp -rf --reflink=auto "$1"/* "$btrfs_path/$uuid" > /dev/null
            [[ ! -f "$btrfs_path/$uuid"/img.source ]] \
                    && echo "$1" > "$btrfs_path/$uuid"/img.source
            echo "Created: $uuid"
        else
            echo "No directory named '$1' exists"
        fi
    }

    #HELP Pull an image from Docker Hub:\nBOCKER pull <name> <tag>
    function bocker_pull() {
        token="$(\
                    curl -sL -o /dev/null -D- \
                        -H 'X-Docker-Token: true' \
                        "https://index.docker.io/v1/repositories/$1/images" \
                | tr -d '\r' \
                | awk -F ': *' '$1 == "X-Docker-Token" { print $2 }'        )"
        registry='https://registry-1.docker.io/v1'
        id="$(\
                    curl -sL -H "Authorization: Token $token" \
                        "$registry/repositories/$1/tags/$2" \
                    | sed 's/"//g'                              )"
        [[ "${#id}" -ne 64 ]] && echo "No image named '$1:$2' exists" && exit 1
        ancestry="$(\
                        curl -sL -H "Authorization: Token $token" \
                            "$registry/images/$id/ancestry"         )"
        IFS=',' && ancestry=(${ancestry//[\[\] \"]/}) && IFS=' \n\t';
        tmp_uuid="$(uuidgen)" && mkdir /tmp/"$tmp_uuid"
        for id in "${ancestry[@]}"; do
            curl -#L -H "Authorization: Token $token" \
                    "$registry/images/$id/layer" \
                    -o /tmp/"$tmp_uuid"/layer.tar
            tar xf /tmp/"$tmp_uuid"/layer.tar \
                    -C /tmp/"$tmp_uuid" && rm /tmp/"$tmp_uuid"/layer.tar
        done
        echo "$1:$2" > /tmp/"$tmp_uuid"/img.source
        bocker_init /tmp/"$tmp_uuid" && rm -rf /tmp/"$tmp_uuid"
    }

    #HELP Delete an image or container:\nBOCKER rm <image_id or container_id>
    function bocker_rm() {
        [[ "$(bocker_check "$1")" == 1 ]] && \
        echo "No container named '$1' exists" && \
        exit 1
        btrfs subvolume delete "$btrfs_path/$1" \
                > /dev/null
        cgdelete -g "$cgroups:/$1" &> /dev/null || true
        echo "Removed: $1"
    }

    function bocker_images() { #HELP List images:\nBOCKER images
        echo -e "IMAGE_ID\t\tSOURCE"
        for img in "$btrfs_path"/img_*; do
            img=$(basename "$img")
            echo -e "$img\t\t$(cat "$btrfs_path/$img/img.source")"
        done
    }

    function bocker_ps() { #HELP List containers:\nBOCKER ps
        echo -e "CONTAINER_ID\t\tCOMMAND"
        for ps in "$btrfs_path"/ps_*; do
            ps=$(basename "$ps")
            echo -e "$ps\t\t$(cat "$btrfs_path/$ps/$ps.cmd")"
        done
    }

    #HELP Create a container:\nBOCKER run <image_id> <command>
    function bocker_run() {
        uuid="ps_$(shuf -i 42002-42254 -n 1)"
        [[ "$(bocker_check "$1")" == 1 ]] \
                && echo "No image named '$1' exists" && exit 1
        [[ "$(bocker_check "$uuid")" == 0 ]] \
                && echo "UUID conflict, retrying..." && bocker_run "$@" \
                && return
        cmd="${@:2}" \
                && ip="$(echo "${uuid: -3}" | sed 's/0//g')" \
                && mac="${uuid: -3:1}:${uuid: -2}"
        ip link add dev veth0_"$uuid" type veth peer name veth1_"$uuid"
        ip link set dev veth0_"$uuid" up
        ip link set veth0_"$uuid" master bridge0
        ip netns add netns_"$uuid"
        ip link set veth1_"$uuid" netns netns_"$uuid"
        ip netns exec netns_"$uuid" \
                    ip link set dev lo up
        ip netns exec netns_"$uuid" \
                    ip link set veth1_"$uuid" address 02:42:ac:11:00"$mac"
        ip netns exec netns_"$uuid" \
                    ip addr add 10.0.0."$ip"/24 dev veth1_"$uuid"
        ip netns exec netns_"$uuid" \
                    ip link set dev veth1_"$uuid" up
        ip netns exec netns_"$uuid" \
                    ip route add default via 10.0.0.1
        btrfs subvolume snapshot \
                "$btrfs_path/$1" "$btrfs_path/$uuid" > /dev/null
        echo 'nameserver 8.8.8.8' > "$btrfs_path/$uuid"/etc/resolv.conf
        echo "$cmd" > "$btrfs_path/$uuid/$uuid.cmd"
        cgcreate -g "$cgroups:/$uuid"
        : "${BOCKER_CPU_SHARE:=512}" \
        && cgset \
            -r cpu.shares="$BOCKER_CPU_SHARE" "$uuid"
        : "${BOCKER_MEM_LIMIT:=512}" \
        && cgset \
            -r memory.limit_in_bytes="$((BOCKER_MEM_LIMIT * 1000000))" "$uuid"
        cgexec -g "$cgroups:$uuid" \
            ip netns exec netns_"$uuid" \
            unshare -fmuip --mount-proc \
            chroot "$btrfs_path/$uuid" \
            /bin/sh -c "/bin/mount -t proc proc /proc && $cmd" \
            2>&1 | tee "$btrfs_path/$uuid/$uuid.log" || true
        ip link del dev veth0_"$uuid"
        ip netns del netns_"$uuid"
    }

    #HELP Execute a command in a running container:
    #       BOCKER exec <container_id> <command>
    function bocker_exec() {
        [[ "$(bocker_check "$1")" == 1 ]] \
                && echo "No container named '$1' exists" && exit 1
        cid="$(\
                    ps o ppid,pid | \
                    grep "^$(ps o pid,cmd | \
                    grep -E "^\ *[0-9]+ unshare.*$1" | \
                    awk '{print $1}')" | \
                    awk '{print $2}' \
               )"
        [[ ! "$cid" =~ ^\ *[0-9]+$ ]] \
                && echo "Container '$1' exists but is not running" && exit 1
        nsenter -t "$cid" -m -u -i -n -p chroot "$btrfs_path/$1" "${@:2}"
    }

    #HELP View logs from a container:\nBOCKER logs <container_id>
    function bocker_logs() {
        [[ "$(bocker_check "$1")" == 1 ]] \
                && echo "No container named '$1' exists" && exit 1
        cat "$btrfs_path/$1/$1.log"
    }

    #HELP Commit a container to an image:
    #   BOCKER commit <container_id> <image_id>
    function bocker_commit() {
        [[ "$(bocker_check "$1")" == 1 ]] \
                && echo "No container named '$1' exists" && exit 1
        [[ "$(bocker_check "$2")" == 1 ]] \
                && echo "No image named '$2' exists" && exit 1
        bocker_rm "$2" \
                && btrfs subvolume snapshot "$btrfs_path/$1" "$btrfs_path/$2" \
                > /dev/null
        echo "Created: $2"
    }

    #HELP Display this message:\nBOCKER help
    function bocker_help() {
        sed -n "s/^.*#HELP\\s//p;" < "$1" | \
        sed "s/\\\\n/\n\t/g;s/$/\n/;s!BOCKER!${1/!/\\!}!g"
    }

    [[ -z "${1-}" ]] && bocker_help "$0"
    case $1 in
        pull|init|rm|images|ps|run|exec|logs|commit) bocker_"$1" "${@:2}" ;;
        *) bocker_help "$0" ;;
    esac
    ```

[Kata (programming) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Kata_(programming))

:   A code kata is an exercise in programming which helps a programmer hone
    their skills through practice and repetition. The term was probably first
    coined by Dave Thomas, co-author of the book The Pragmatic Programmer,[1]
    in a bow to the Japanese concept of kata in the martial arts. As of October
    2011, Dave Thomas (*The Pragmatic Programmer* 的作者之一) has published 21
    different katas.

    You need to try it as many times as it takes, and be comfortable making
    mistakes. You need to look for feedback each time so you can work to
    improve.

    Our suggestions for doing the kata are:

      -  find a place and time where you won’t be interrupted
      -  focus on the essential elements of the kata
      -  remember to look for feedback for every major decision
      -  if it helps, keep a journal of your progress
      -  have discussion groups with other developers, but try to have completed the kata first

    There are no right or wrong answers in these kata: the benefit comes from
    the process, not from the result.

    Materials

      - [Train with Programming Challenges/Kata | Codewars](http://www.codewars.com/)
      - [cyber-dojo.org](http://cyber-dojo.org)<!--91D2BA-->
      - [Home | Codewars](http://www.codewars.com/dashboard)<!--use github oauth2-->

    [Kata01: Supermarket Pricing - CodeKata](http://codekata.com/kata/kata01-supermarket-pricing/)

    :   有几点很有意思：

          - 单位不同如何处理？
          - 买一送一如何处理？
          - 钱有分数吗？还是用小数？
          - 什么时候忽略零头？（rounding）
          - 价钱（price）和费用（cost）用一个东西来表示？

        好像确实有很多东西值得考虑，适合洗澡的时候想。

        I suggest that it might take a couple of weeks worth of showers to
        exhaust the main alternatives.

        Goals
          ~ 1. The goal of this kata is to practice **a looser style of experimental modelling**.
          ~ 2. Look for as many **different ways** of handling the issues as possible.
          ~ 3. Consider the various **tradeoffs** of each.
          ~ 4. What techniques are **best** for exploring these models?
          ~ 5. For recording them? How can you **validate** a model is reasonable?

    [Kata02: Karate Chop - CodeKata](http://codekata.com/kata/kata02-karate-chop/)

    :   A binary chop (sometimes called the more prosaic (`[prə'zeɪk]`, 乏味的)
        **binary search**) finds the position of value in a sorted array of values.

[TCP连接的建立和终止过程 - 辛未羊的博客](http://panqiincs.github.io/blog/2015/10/17/establishment-and-termination-of-tcp-connection/)

:   Richard Stevens 先生在 [UNP2e (UNIX 网络编程 卷 1：套接字联网 API)](http://book.douban.com/subject/4859464/) 的前言中写道：

    > I have found when teaching network programming that about 80% of all
    > network programming problems have nothing to do with network programming,
    > per se. That is, the problems are not with the API functions such as
    > accept and select, but the problems arise from **a lack of understanding of
    > the underlying network protocols**. For example, I have found that once a
    > student understands TCP's **three-way handshake and four-packet connection termination**,
    > many network programming problems are immediately understood.

    下面是我的 remix。

    **TCP 的三路握手**

    肯定是客户端先表白。

    1. 客户端对服务器：我要和你发展关系。
    2. 服务器对客户端：你可以和我发展关系。
    3. 客户端对服务器：在一起~

    于是三次握手后，他们在一起了（连接建立了）。

    ![](http://www.tcpipguide.com/free/diagrams/tcpopen3way.png)

    **TCP 的四次挥手**

    可以是客户端说分手，也可以是客户端。这里以客户端作为负心汉。

    1. 客户端对服务器：恋爱谈完了，我们分手把。
    2. 服务器对客户端：可以的。（如果还有财务纠纷那就先还钱，不让分手的。）
    3. 服务器对客户端：那就分。
    4. 客户端对服务器：恩。

    ![](http://www.tcpipguide.com/free/diagrams/tcpclose.png)

---

at this point in the history.

Generals in the Editor War may note that Emacs users are 35.2% likely to also
hack on Vim, while Vim users are only 17.3% likely to hack on Emacs, so there's
that.

The Google Chrome Extension is available on the Chrome Web Store and if, for
any reason, you want to download directly, it's also available here

There actually is a target on the root Makefile called chrome but it won't
work, because the private key is, well... private.

But you can still build the front end and load the unpacked extensions. Here is how:

  - Run $ cd front && make chrome ( or make chrome.watch if you want to watch for changes)
  - Then go to chrome:extension
  - click on Load unpacked extension... (make sure Developer mode is checked on the top right of the page)
  - Select GithubPulse/chrome_extension
  - Done!

[git log - View the change history of a file using Git versioning - Stack Overflow](http://stackoverflow.com/questions/278192/view-the-change-history-of-a-file-using-git-versioning)

:   ```bash
    git log -- [filename]
    gitk [filename]
    ```

    Was he looking for a command line tool? "right click -> show history"
    certainly doesn't imply it.

---

[javascript - Creating a div element in jQuery - Stack Overflow](http://stackoverflow.com/questions/867916/creating-a-div-element-in-jquery)

:   ```javascript
    $("#foo").append("<div>hello world</div>")

    jQuery('<div/>', {
        id: 'foo',
        href: 'http://google.com',
        title: 'Become a Googler',
        rel: 'external',
        text: 'Go to Google!'
    }).appendTo('#mySelector');

    d = document.createElement('div');
    $(d).addClass(classname)
        .html(text)
        .appendTo($("#myDiv")) //main div
    .click(function () {
        $(this).remove();
    })
        .hide()
        .slideToggle(300)
        .delay(2500)
        .slideToggle(300)
        .queue(function () {
        $(this).remove();
    });
    ```

---

`lsusb`{.bash}

[zenorocha/clipboard.js: Modern copy to clipboard. No Flash. Just 2kb](https://github.com/zenorocha/clipboard.js/)
[chunksnbits/jquery-quickfit: A quick and dirty approach to fitting text into its surrounding container.](https://github.com/chunksnbits/jquery-quickfit)
[Controlling Crawling and Indexing  |  Webmasters  |  Google Developers](https://developers.google.com/webmasters/control-crawl-index/)

---

[Child and Sibling Selectors | CSS-Tricks](https://css-tricks.com/child-and-sibling-selectors/)

:   ```javascript
    // method 1
    $("p:has(img)")

    // method 2
    jQuery.parse.push(/^\s*(<)(\s*)(.*)$/);
    jQuery.expr["<"] = jQuery.expr[":"].has;
    jQuery('p < img')
    ```

    ref and see also

      - [Selectors Level 3](https://www.w3.org/TR/css3-selectors/#selectors)
[Open Link in a New Window | CSS-Tricks](https://css-tricks.com/snippets/html/open-link-in-a-new-window/)

:   html

    `<a href="/" target="_blank">anchor</a>`{.html}

    inline js

    ```html
    <a href="/" onclick="window.open(this.href); return false;"
                onkeypress="window.open(this.href); return false;"> anchor </a>
    ```

    jquery

    ```Javascript
    // technique 1
    $('a').filter(function() {
       return this.hostname && this.hostname !== location.hostname;
    }).addClass("external");

    // technique 2
    $.expr[':'].external = function(obj) {
        return !obj.href.match(/^mailto\:/) && (obj.hostname != location.hostname);
    };
    $('a:external').addClass('external');

    // technique 3
    $('a:not([href^="http://your-website.com"]):not([href^="#"]):not([href^="/"])')
      .addClass('external');

    // technique 4, i use this i my site
    $('a').each(function() {
       var a = new RegExp('/' + window.location.host + '/');
       if (!window.location.host || !a.test(this.href)) {
           // This is an external link
           $(this).click(function(event) {
               event.preventDefault();
               event.stopPropagation();
               window.open(this.href, '_blank');
           });
       }
    });
    ```

    "every link that specifies target="_new" looks for and finds that window by
    name, and opens in it.

    ```css
    p#dummy::before {
      content: attr(data-foo) " ";
    }
    ```


    `<p id="dummy" data-foo="hello">world</p>`
      ~ <p id="dummy" data-foo="hello">world</p>

    refs

      - <http://thedesignspace.net/MT2archives/000316.html>
      - [Target Only External Links | CSS-Tricks](https://css-tricks.com/snippets/jquery/target-only-external-links/)
      - [When to use target="_blank" | CSS-Tricks](https://css-tricks.com/use-target_blank/)
      - [attr - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/attr)

---

<div class="tzx-shy">
本来想看一下 CMake 生成的 Makefile 学习一下 Makefile 的使用。结果……完全一头雾水。
然后去看了一下 CMake 用来测试编译器的 C 和 C++ 代码，好牛逼！这里选两段秀秀：

  - int2dec, int2hex
      ~ ```cpp
        /* Convert integer to decimal digit literals.  */
        #define DEC(n)                   \
          ('0' + (((n) / 10000000)%10)), \
          ('0' + (((n) / 1000000)%10)),  \
          ('0' + (((n) / 100000)%10)),   \
          ('0' + (((n) / 10000)%10)),    \
          ('0' + (((n) / 1000)%10)),     \
          ('0' + (((n) / 100)%10)),      \
          ('0' + (((n) / 10)%10)),       \
          ('0' +  ((n) % 10))

        /* Convert integer to hex digit literals.  */
        #define HEX(n)             \
          ('0' + ((n)>>28 & 0xF)), \
          ('0' + ((n)>>24 & 0xF)), \
          ('0' + ((n)>>20 & 0xF)), \
          ('0' + ((n)>>16 & 0xF)), \
          ('0' + ((n)>>12 & 0xF)), \
          ('0' + ((n)>>8  & 0xF)), \
          ('0' + ((n)>>4  & 0xF)), \
          ('0' + ((n)     & 0xF))
        ```
  - [snippets.html#cmakeccompilerid](snippets.html#cmakeccompilerid)
      ~ ```c
        #ifdef __cplusplus
        # error "A C++ compiler has been selected for C."
        #endif

        #if defined(__18CXX)
        # define ID_VOID_MAIN
        #endif

        #ifdef ID_VOID_MAIN
        void main() {}
        #else
        int main(int argc, char* argv[])
        {
          (void)argv;
          return 0;
        }
        #endif
        ```

</div>

---

one = 1
two = 2
three = 3
four = 4

[An Ode to My Work Laptop · That Mike Flynn](http://thatmikeflynn.com/2016/01/21/ode-to-my-work-laptop/)

:   ode, `[od]`, n. 赋；颂歌；颂诗

    I started at Collective Digital Studio in 2012 as the month of December
    awoke from it's yearly slumber (蛰伏).  I was handed a computer. A Macbook
    Pro Retina. That Retina part was new, as was how thin and light it was.
    Instantly I realized it was the best computer I had ever used. That
    computer has been with me every day since then, and it died today. A little
    piece of me did too.

    It was a tray, it was a paper weight, and it was a way to block my face
    while I laughed at some guy from a different company farting during a sales
    presentation at my office.

    Maybe one day we'll get you repaired, or maybe one day someone will throw
    this cabinet away and forget to open it first, but either way you should
    know that I loved you.

[reformat in vim for a nice column layout - Stack Overflow](http://stackoverflow.com/questions/1229900/reformat-in-vim-for-a-nice-column-layout)

:   `:%!column -t`

[Javascript Key Codes - Cambia Research](http://www.cambiaresearch.com/articles/15/javascript-key-codes)

try it! <input onkeypress="javascript:return false;" id="txtChar" onkeydown="javascript:return displayKeycode(event)" type="text" name="txtchar">&nbsp;&nbsp;&nbsp;<span id="spnCode" name="spnCode"></span>

<script>
function displayKeyCode(evt)
{
    var textBox = getObject('txtChar');
    var charCode = (evt.which) ? evt.which : event.keyCode
    textBox.value = String.fromCharCode(charCode);
    if (charCode == 8) textBox.value = "backspace"; //  backspace
    if (charCode == 9) textBox.value = "tab"; //  tab
    if (charCode == 13) textBox.value = "enter"; //  enter
    if (charCode == 16) textBox.value = "shift"; //  shift
    if (charCode == 17) textBox.value = "ctrl"; //  ctrl
    if (charCode == 18) textBox.value = "alt"; //  alt
    if (charCode == 19) textBox.value = "pause/break"; //  pause/break
    if (charCode == 20) textBox.value = "caps lock"; //  caps lock
    if (charCode == 27) textBox.value = "escape"; //  escape
    if (charCode == 33) textBox.value = "page up"; // page up, to avoid displaying alternate character and confusing people
    if (charCode == 34) textBox.value = "page down"; // page down
    if (charCode == 35) textBox.value = "end"; // end
    if (charCode == 36) textBox.value = "home"; // home
    if (charCode == 37) textBox.value = "left arrow"; // left arrow
    if (charCode == 38) textBox.value = "up arrow"; // up arrow
    if (charCode == 39) textBox.value = "right arrow"; // right arrow
    if (charCode == 40) textBox.value = "down arrow"; // down arrow
    if (charCode == 45) textBox.value = "insert"; // insert
    if (charCode == 46) textBox.value = "delete"; // delete
    if (charCode == 91) textBox.value = "left window"; // left window
    if (charCode == 92) textBox.value = "right window"; // right window
    if (charCode == 93) textBox.value = "select key"; // select key
    if (charCode == 96) textBox.value = "numpad 0"; // numpad 0
    if (charCode == 97) textBox.value = "numpad 1"; // numpad 1
    if (charCode == 98) textBox.value = "numpad 2"; // numpad 2
    if (charCode == 99) textBox.value = "numpad 3"; // numpad 3
    if (charCode == 100) textBox.value = "numpad 4"; // numpad 4
    if (charCode == 101) textBox.value = "numpad 5"; // numpad 5
    if (charCode == 102) textBox.value = "numpad 6"; // numpad 6
    if (charCode == 103) textBox.value = "numpad 7"; // numpad 7
    if (charCode == 104) textBox.value = "numpad 8"; // numpad 8
    if (charCode == 105) textBox.value = "numpad 9"; // numpad 9
    if (charCode == 106) textBox.value = "multiply"; // multiply
    if (charCode == 107) textBox.value = "add"; // add
    if (charCode == 109) textBox.value = "subtract"; // subtract
    if (charCode == 110) textBox.value = "decimal point"; // decimal point
    if (charCode == 111) textBox.value = "divide"; // divide
    if (charCode == 112) textBox.value = "F1"; // F1
    if (charCode == 113) textBox.value = "F2"; // F2
    if (charCode == 114) textBox.value = "F3"; // F3
    if (charCode == 115) textBox.value = "F4"; // F4
    if (charCode == 116) textBox.value = "F5"; // F5
    if (charCode == 117) textBox.value = "F6"; // F6
    if (charCode == 118) textBox.value = "F7"; // F7
    if (charCode == 119) textBox.value = "F8"; // F8
    if (charCode == 120) textBox.value = "F9"; // F9
    if (charCode == 121) textBox.value = "F10"; // F10
    if (charCode == 122) textBox.value = "F11"; // F11
    if (charCode == 123) textBox.value = "F12"; // F12
    if (charCode == 144) textBox.value = "num lock"; // num lock
    if (charCode == 145) textBox.value = "scroll lock"; // scroll lock
    if (charCode == 186) textBox.value = ";"; // semi-colon
    if (charCode == 187) textBox.value = "="; // equal-sign
    if (charCode == 188) textBox.value = ","; // comma
    if (charCode == 189) textBox.value = "-"; // dash
    if (charCode == 190) textBox.value = "."; // period
    if (charCode == 191) textBox.value = "/"; // forward slash
    if (charCode == 192) textBox.value = "`"; // grave accent
    if (charCode == 219) textBox.value = "["; // open bracket
    if (charCode == 220) textBox.value = "\\"; // back slash
    if (charCode == 221) textBox.value = "]"; // close bracket
    if (charCode == 222) textBox.value = "'"; // single quote

    var lblCharCode = getObject('spnCode');
    lblCharCode.innerHTML = 'KeyCode:  ' + charCode;

    return false;
}

function getObject(obj)
{
    var theObj;
    if (document.all) {
        if (typeof obj=='string') {
            return document.all(obj);
        } else {
            return obj.style;
        }
    }
    if (document.getElementById) {
        if (typeof obj=='string') {
            return document.getElementById(obj);
        } else {
            return obj.style;
        }
    }
    return null;
}
</script>

key 	Code
backspace 	8
tab 	9
enter 	13
shift 	16
ctrl 	17
alt 	18
pause/break 	19
caps lock 	20
escape 	27
page up 	33
page down 	34
end 	35
home 	36
left arrow 	37
up arrow 	38
right arrow 	39
down arrow 	40
insert 	45
delete 	46
0 	48
1 	49
2 	50
3 	51
4 	52
5 	53
6 	54
7 	55
8 	56
9 	57
a 	65
b 	66
c 	67
d 	68
e 	69
f 	70
g 	71
h 	72
i 	73
j 	74
k 	75
l 	76
m 	77
n 	78
o 	79
p 	80
q 	81
r 	82
s 	83
t 	84
u 	85
v 	86
w 	87
x 	88
y 	89
z 	90
left window key 	91
right window key 	92
select key 	93
numpad 0 	96
numpad 1 	97
numpad 2 	98
numpad 3 	99
numpad 4 	100
numpad 5 	101
numpad 6 	102
numpad 7 	103

Key 	Code
numpad 8 	104
numpad 9 	105
multiply 	106
add 	107
subtract 	109
decimal point 	110
divide 	111
f1 	112
f2 	113
f3 	114
f4 	115
f5 	116
f6 	117
f7 	118
f8 	119
f9 	120
f10 	121
f11 	122
f12 	123
num lock 	144
scroll lock 	145
semi-colon 	186
equal sign 	187
comma 	188
dash 	189
period 	190
forward slash 	191
grave accent 	192
open bracket 	219
back slash 	220
close braket 	221
single quote 	222

[mikeflynn/egg.js: A simple javascript library to add easter eggs to web pages.](https://github.com/mikeflynn/egg.js)

:   `<script type="text/javascript" src="/path/to/egg.js"></script>`{.html}

    ```javascript
    var egg = new Egg();
    egg
      .addCode("up,up,down,down,left,right,left,right,b,a", function() {
        jQuery('#egggif').fadeIn(500, function() {
          window.setTimeout(function() { jQuery('#egggif').hide(); }, 5000);
        }, "konami-code");
      })
      .addHook(function(){
        console.log("Hook called for: " + this.activeEgg.keys);
        console.log(this.activeEgg.metadata);
      })
      .listen();
    ```

    refs

      - [Egg.js - A Simple Way to Add Easter Eggs to Your Site](http://thatmikeflynn.com/egg.js/)

<!--...-->

    $("img").each(function(index){
        var src = $(this).attr('src');
        $(this).attr({
            src: "data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==",
            'data-src': src,
            onload: "lzld(this)"
        });
    });
    $(document).ready(function(){
        var pathStringList = document.location.toString().split('/');
        var isLocal = 'file' === pathStringList[0].split(':')[0];
        var mdPath = 'https://github.com/district10/blog/commits/master';
        var rawPath = 'https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git/raw/master';
        var basePath = 'https://github.com/district10/blog';

        function show() {
            var hides = document.getElementsByClassName('tzx');
            if ( hides.length !== 0 ) {
                hides[0].style.visibility = 'visible';
            }
        };

        function dvorak4tzx( pathParts ) {
            filename = pathParts[ pathParts.length - 1 ];
            basename = filename.split('.')[0];
            if ( 'index' === basename.substring(0, 5)
               || document.location.toString().endsWith('.com')
               || document.location.toString().endsWith('.me') ) {
                mdPath   = basePath;
                rawPath  = basePath;
            } else if ( 'post-' === basename.substring(0, 5) ) {
                filename = ( '/_posts/' + basename + '.md' );
                mdPath  += filename;
                rawPath += filename;
            } else {
                filename = '/_pages/' + basename + '.md';
                mdPath  += filename;
                rawPath += filename;
            }

            $('#ghraw').href = rawPath;
            $('#ghpage').href = mdPath;
        };

        dvorak4tzx( pathStringList );

        function appendSharpToHdrs( hdrs ) {
            for ( var i = 0; i < hdrs.length; ++i ) {
                var sharp = document.createElement( 'a' );
                sharp.href = '#' + hdrs[i].id;
                sharp.className = 'hdrRef';
                // sharp.innerText = '#';
                sharp.textContent = '#';
                hdrs[i].appendChild( sharp );
            }
        };

        function appendSharp() {
            h1s = document.getElementsByTagName( 'h1' );
            h2s = document.getElementsByTagName( 'h2' );
            h3s = document.getElementsByTagName( 'h3' );
            h4s = document.getElementsByTagName( 'h4' );
            appendSharpToHdrs( h1s );
            appendSharpToHdrs( h2s );
            appendSharpToHdrs( h3s );
            appendSharpToHdrs( h4s );
        };

        function getQueryStrings() {
            var assoc  = {};
            var decode = function (s) { return decodeURIComponent(s.replace(/\+/g, " ")); };
            var queryString = location.search.substring(1);
            var keyValues = queryString.split('&');

            for(var i in keyValues) {
                var key = keyValues[i].split('=');
                if (key.length > 1) {
                    assoc[decode(key[0])] = decode(key[1]);
                }
            }

            return assoc;
        }

        var qs = getQueryStrings();
        var shallShow = 'true' === qs['show'] || 'false' === qs['hide'];
        var shallHavePrivilege = !('off' === qs['local']);

        function hideNoMore( cb ) {
            var hides = document.getElementsByClassName('hide');
            for ( var i = 0; i < hides.length; ++i ) {
                hides[i].style.visibility = 'visible';
                cb( hides[i] );
            }
        };

        if ( ( isLocal && shallHavePrivilege  ) || shallShow ) {
            hideNoMore( function( h ) {
                if ( isLocal ) {
                    if ( shallHavePrivilege ) {
                        h.style.border = '2px dashed pink'; // privilege
                    } else {
                        h.style.border = '2px dashed lime'; // lame
                    }
                }
            });
        };

        if ( isLocal && qs['more'] === 'false' ) {
            if ( document.location.toString().endsWith("index2.html") ) {
                document.location = "index.html"
            }
        };

        appendSharp();
    });
    $(function() {
        $( ".tzx-tabs" ).tabs();
    });
    $(function() {
        $('#showDisqus').on('click', function(){
            console.log('loading disqus...');
            $.ajax({
                type: "GET",
                url: "http://dvorak4tzx.disqus.com/embed.js",
                dataType: "script",
                cache: true
            });
            $(this).fadeOut();
        });
    });


- VS
    + controls
        * solution configurations
        * solution platforms
    + extensions

[substack/browserify-handbook: how to build modular applications with browserify](https://github.com/substack/browserify-handbook)

:   `npm install -g browserify-handbook`{.bash}

    -   `npm install uniq`

    -   nums.js

        ```javascript
        var uniq = require('uniq');
        var nums = [ 5, 2, 1, 3, 2, 5, 4, 2, 0, 1 ];
        console.log(uniq(nums));
        ```

    -   `browserify nums.js > main.js`

        ```javascript
        (function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof
        require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return
        i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw
        f.code="MODULE_NOT_FOUND",f}var
        l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var
        n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var
        i=typeof require=="function"&&require;for(var
        o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
        "use strict"

        function unique_pred(list, compare) {
          var ptr = 1
            , len = list.length
            , a=list[0], b=list[0]
          for(var i=1; i<len; ++i) {
            b = a
            a = list[i]
            if(compare(a, b)) {
              if(i === ptr) {
                ptr++
                continue
              }
              list[ptr++] = a
            }
          }
          list.length = ptr
          return list
        }

        function unique_eq(list) {
          var ptr = 1
            , len = list.length
            , a=list[0], b = list[0]
          for(var i=1; i<len; ++i, b=a) {
            b = a
            a = list[i]
            if(a !== b) {
              if(i === ptr) {
                ptr++
                continue
              }
              list[ptr++] = a
            }
          }
          list.length = ptr
          return list
        }

        function unique(list, compare, sorted) {
          if(list.length === 0) {
            return list
          }
          if(compare) {
            if(!sorted) {
              list.sort(compare)
            }
            return unique_pred(list, compare)
          }
          if(!sorted) {
            list.sort()
          }
          return unique_eq(list)
        }

        module.exports = unique

        },{}],2:[function(require,module,exports){
        var uniq = require('uniq');
        var nums = [ 5, 2, 1, 3, 2, 5, 4, 2, 0, 1 ];
        console.log(uniq(nums));

        },{"uniq":1}]},{},[2]);
        ```

    <https://github.com/substack/browserify-handbook#exports>

    <small>
    ```javascript
    // num
    module.exports = 555

    // list
    var numbers = [];
    for (var i = 0; i < 100; i++) numbers.push(i);
    module.exports = numbers;

    // module.exports vs exports: both an empty object
    exports.beep = function (n) { return n * 1000 } | module.exports.beep = function (n) { return n * 1000 }
    exports.boop = 555                              | module.exports.boop = 555

    # but
    // this doesn't work
    exports = function (n) { return n * 1000 }
    // instead
    module.exports = function (n) { return n * 1000 }
    ```
    </small>

    If you're still confused, try to understand how modules work in the background:

    ```javascript
    var module = {
      exports: {}
    };

    // 下面的括号必须，eval a function
    // If you require a module, it's basically wrapped in a function
    (function(module, exports) {
      exports = function (n) { return n * 1000 };
    }(module, module.exports))

    console.log(module.exports); // it's still an empty object :(
    ```

    `foo.foo` is a bit superfluous (`[sʊ'pɝflʊəs]`, 多余的, 不必要的).
    use this clean version of exports:

    ```javascript
    // foo.js
    module.exports = function (n) { return n * 111 }
    // main.js
    var foo = require('./foo.js');
    console.log(foo(5));
    ```

    Bonus: if you put your script tag right before the `</body>`, you can use
    all of the dom elements on the page without waiting for a dom onready
    event.

    原来如此！！！

    - how browserify works
    - how node_modules works
        + 如果相对路径，那就用相对路径，否则
        + 先搜当前 js 文件所在目录下的 `node_modules` 目录
        + 再搜上一层
        + 再搜家目录

    node also has a mechanism for searching an array of paths, but this
    mechanism is deprecated and you should be using `node_modules/` unless you
    have a very good reason not to.

    why concatenate

      - loads much faster
      - 但不能不容易找到 bug 来源，original files

    AMD

    ```javascript
    define(['jquery'] , function ($) {
        return function () {};
    });
    ```

    原理：<https://github.com/jrburke/requirejs/blob/master/require.js#L17>

    exorcist (`['ɛksɔrsɪst]` n. 驱魔的人；召魂者)

      ~ The downside of inlining all the source files into the inline source map is
        that the bundle is twice as large. This is fine for debugging locally
        but not practical for shipping source maps to production. However, you
        can use exorcist to pull the inline source map out into a separate
        bundle.map.js file:
        `browserify main.js --debug | exorcist bundle.js.map > bundle.js`{.bash}

    auto-recompile & other tools

      - [watchify](https://npmjs.org/package/watchify)
      - beefy (smaller)
      - wzrd (much smaller)
      - [browserify & gulp, a guide for getting started](http://viget.com/extend/gulp-browserify-starter-faq)

    builtins

      - In order to make more npm modules originally written for node work in
        the browser, browserify provides many browser-specific implementations
        of node core libraries:

          + assert
          + buffer
          + console
          + constants
          + crypto
          + domain
          + events
          + http
          + https
          + os
          + path
          + punycode
          + querystring
          + stream
          + string_decoder
          + timers
          + tty
          + url
          + util
          + vm
          + zlib

     - Buffer
     - process
     - `global` (alias for the `window` object)
        + `__filename`
        + `__dirname`

    `browserify main.js | node`{.bash}

    transforms

      - coffeeify (`npm install cofeeify`): `browserify -t coffeeify main.coffee > bundle.js`

    Here are some useful heuristics for **finding good modules** on npm that work in the browser:

      - I can install it with npm
      - code snippet on the readme using require() - from a quick glance I
        should see how to integrate the library into what I'm presently working
        on has a very clear, narrow idea about scope and purpose
      - knows when to delegate to other libraries - doesn't try to do too many
        things itself
      - written or maintained by authors whose opinions about software scope,
        modularity, and interfaces I generally agree with (often a faster
        shortcut than reading the code/docs very closely)
      - inspecting which modules depend on the library I'm evaluating - this is
        baked into the package page for modules published to npm
      - Other metrics like number of stars on github, project activity, or a
        slick (华而不实的) landing page, are not as reliable.

    Packages that are grab-bags of features waste a ton of time policing
    boundaries about which new features belong and don't belong. There is no
    clear natural boundary of the problem domain in this kind of package about
    what the scope is, it's all somebody's smug opinion.

    Node, npm, and browserify are not that. They are avowedly ala-carte,
    participatory, and would rather celebrate disagreement and the dizzying
    proliferation of new ideas and approaches than try to clamp down in the
    name of conformity, standards, or "best practices".

    testing in node and the browser

      ~ Testing modular code is very easy! One of the biggest benefits of
        modularity is that your interfaces become much easier to instantiate in
        isolation and so it's easy to make automated tests.

    Tape

    :   Tape was specifically designed from the start to work well in both node
        and browserify. Suppose we have an index.js with an async interface:

        ```javascript
        module.exports = function (x, cb) {
            setTimeout(function () {
                cb(x * 100);
            }, 1000);
        };
        ```

        ```javascript
        var test = require('tape');
        var hundreder = require('../');

        test('beep', function (t) {
            t.plan(1);

            hundreder(5, function (n) {
                t.equal(n, 500, '5*100 === 500');
            });
        });
        ```

---

Excuse the ads! We need some help to keep our site up.

```javascript
// good
var numbers = [];
for (var i = 0; i < 100; i++) numbers.push(i);

module.exports = numbers;
```

```markup
MyWebsite/
  |--css/
  |  |--materialize.css <-- compiled from scss/materialize.scss
  |
  |--font/
  |  |--material-design-icons/
  |  |--roboto/
  |
  |--js/
  |  |--materialize.js
  |
  |--scss/
  |  |--materialize.scss
  |  |--components/
  |
  |--index.html
```

夺取话语权只有一条路径，就是超出别人的预期；

- wikipedia
- stackoverflow
- github (gh)
- google
- 豆瓣
- 知乎

Now

- jquery

Later

- jquery
- fontawesome
- more pandoc filters (ditta, gant, process chart, etc)

`--file-scope`

[Pandoc - Scripting with pandoc](http://pandoc.org/scripting.html)

:   ```tzx-bigquote
    % cat test.txt
    ### my header

    text with *italics*
    % pandoc -t native test.txt
    Pandoc (Meta {unMeta = fromList []})
    [Header 3 ("my-header",[],[]) [Str "My",Space,Str "header"]
    , Para [Str "text",Space,Str "with",Space,Emph [Str "italics"]] ]
    ```

    A Pandoc document consists of a Meta block (containing metadata like title,
    authors, and date) and a list of Block elements. In this case, we have two
    Blocks, a Header and a Para. Each has as its content a list of Inline
    elements. For more details on the pandoc AST, see the haddock documentation
    for Text.Pandoc.Definition.

    Here’s a short Haskell script that reads markdown, changes level 2+ headers
    to regular paragraphs, and writes the result as markdown. If you save it as
    behead.hs, you can run it using runhaskell behead.hs. It will act like a
    unix pipe, reading from stdin and writing to stdout. Or, if you want, you
    can compile it, using ghc --make behead, then run the resulting executable
    behead.


`// var jq = jQuery.noConflict();`

<small><small><small>
```javascript
$( "li" ).each(function( index ) {
  console.log( index + ": " + $( this ).text() );
});

$(document).ready(function(){
    $('img').each(function(index){
        $(this).attr('data-src', $(this).src);
        $(this).attr(     'src', "data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==");
        $(this).attr(  'onload', "lzld(this)");
    });
    var pathStringList = document.location.toString().split('/');
});
```
</small></small></small>

[Attribute selectors - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors)

:   ```css
    #id_value { style properties }
    [id=id_value] { style properties }

    // has attr
    [attr]

    // has matching attr
    [attr=value]

    // class="a b c" class~="b"
    [attr~=value]

    /* Any span in Chinese is red, matches
       simplified (zh-CN) or traditional (zh-TW) */
    span[lang|="zh"] {color: red;}

    // prefix
    [attr^=value]

    // suffix
    [attr$=value]

    // contains
    [attr*=value]

    // ignore case
    [attr operator value i]
    ```

    `background-color:`{.css} <span style="background-color: DodgerBlue;">DogerBlue</span>;

    Refs

      - [ID selectors - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/ID_selectors)
      - [Attribute selectors - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors)

[cursor - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/cursor?redirectlocale=en-US&redirectslug=CSS%2Fcursor)

:   cursor
      ~ auto // default // none
      ~ pointer
      ~ cell
      ~ crosshair
      ~ zoom-in / -webkit-zoom-in
      ~ url(hyper.cur), auto

[quotes - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/quotes)

:   ```css
    /* Keyword value */
    quotes: none;

    /* <string> values */
    quotes: "«" "»";           /* Set open-quote and close-quote to the French quotation marks */
    quotes: "«" "»" "‹" "›";   /* Set two levels of quotation marks */

    /* Global values */
    quotes: inherit;
    quotes: initial;
    quotes: unset;

    q { quotes: '"' '"' "'" "'" }
    q:before { content: open-quote }
    q:after  { content: close-quote }
    ```

[javascript - window.onload vs $(document).ready() - Stack Overflow](http://stackoverflow.com/questions/3698200/window-onload-vs-document-ready)

:   The ready event occurs after the HTML document has been loaded, while the onload event occurs later, when all content (e.g. images) also has been loaded.

    The onload event is a standard event in the DOM, while the ready event is
    specific to jQuery. The purpose of the ready event is that it should occur
    as early as possible after the document has loaded, so that code that adds
    functionality to the elements in the page doesn't have to wait for all
    content to load.

    I didn't think that it was releveant to the question, and I still don't.

---

I'm agnostic.

[javascript - 'innerText' works in IE, but not in Firefox - Stack Overflow](http://stackoverflow.com/questions/1359469/innertext-works-in-ie-but-not-in-firefox)

:   我以为是浏览器显示的问题，今天一看自己的源码，原来是 Chrome 的 JS 运行出来是有的，Firefox 没有。

    `elem.textContent || elem.innerText`，前者是 IE 原有，不是标准，后者才是。不过貌似火狐也要提供支持了。

    > `innerText` is the "old Internet Explorer" way of doing it.

    refs and see alos

      - [W3C DOM Compatibility - HTML](http://quirksmode.org/dom/html/#t07)
      - [Javascript with Firefox innerText issue - Stack Overflow](http://stackoverflow.com/questions/7461598/javascript-with-firefox-innertext-issue)
      - [javascript - Why is .innerText not working in Firefox? - Stack Overflow](http://stackoverflow.com/questions/22990812/why-is-innertext-not-working-in-firefox)
      - [Plain Text vs innerText vs textContent by Mike Wilcox » Club✩AJAX](http://clubajax.org/plain-text-vs-innertext-vs-textcontent/)

---

Don't get me wrong, except the government, China is my favorite country in the world ;-)

In early development.

[Markdown Style Guide](http://www.cirosantilli.com/markdown-style-guide/)

:   Use `.md`.

    Rationale (`[,ræʃə'næl]`, 原理的阐述): why not .mkd or .markdown?

      - shorter
      - more popular
      - does not have important conflicts

    `file-name.md`

    Rationale: multiple empty lines occupy more vertical screen space, and do not
    significantly improve readability.

    句子后面用一个句点 `.`。

    Use code blocks or inline code for:

      - executables. E.g.: `gcc` is the best compiler available.
        Differentiate between tool and the name of related projects. E.g.: `gcc` vs GCC.
      - file paths
      - version numbers
      - capitalized explanation of abbreviations: xinetd stands for `eXtended Internet daemon`.
      - other terms related to computers that you don’t want to add to your dictionary

    Don't mark as code:

      - names of projects. E.g.: GCC
      - names of libraries. E.g.: libc, glibc

    When in doubt, prefer the same abbreviation as used on Wikipedia.

    Don't add a trailing colon `:` to headers.
      ~ Rationale: every header is an introduction to what is about to come
        next, which is exactly the function of the colon.

    Don't add a trailing period `.` to headers.
      ~ Rationale: every header consists of a single short sentence, so there
        is not need to add a sentence separator to it.

    Bad: item is longer than one line:
      ~ ```markdown
        - item that
          is wrapped

        - item 2
        ```

    Good:
      ~ ```markdown
        -   item that
            is wrapped

        -   item 2
        ```

    -   item that
        is wrapped

    -   item 2

    ```makefile
    Bad, multiple lines:

    -   item that
        is wrapped
    -   item 2
    -   item 3

    Good:

    -   item that
        is wrapped

    -   item 2

    -   item 3

    Good:

    -   item 1

        - item 11
        - item 12
        - item 13

    -   item 2

    -   item 3

    Idem:

    - go to the market
    - then buy some fruit
    - finally eat the fruit

    Good, not terminated by period but by other punctuation.

    - go to the marked
    - then buy fruit?
    - of course!

    Bad, multiple sentences:

    - go to the market
    - then buy some fruit. Bad for wallet
    - finally eat the fruit. Good for tummy

    Good:

    - go to the market
    - then buy some fruit. Bad for wallet.
    - finally eat the fruit. Good for tummy.

    Good:

    Use this code to blow up your PC:

        sudo rm -rf /

    Bad, no colon

    Use this code to blow up your PC

        sudo rm -rf /
    ```

    Don't use horizontal rules except to indicate the End of a header.

    Rationale:

      - headers are better section separators since they say what a section is about.
      - horizontal rules don’t have a generally accepted semantic meaning. This guide gives them one.

    Separate consecutive elements: `<!--...-->`

    ```tzx-plain
    - list 1
    - list 1

    <!-- -->

    - list 2
    - list 2

        code 1
        code 1

    <!-- -->

        code 2
        code 2

    > blockquote 1
    > blockquote 1

    <!-- -->

    > blockquote 2
    > blockquote 2
    ```

    Rationale:
      ~ while omitting `[]` works on most major implementations, it is not
        specified in the documentation not implemented in the original markdown.

    不要直接用邮箱……用图片，混入一点字符，不然你的邮箱整天都是垃圾邮件了。
      ~ "performs a bit of randomized decimal and hex entity-encoding to help
        obscure your address from address-harvesting spambots".

---

[git replacing LF with CRLF - Stack Overflow](http://stackoverflow.com/questions/1967370/git-replacing-lf-with-crlf/20653073#20653073)

:   Unix-style, `lf`, win-style, `crlf`: `git config core.autocrlf true`{.bash}

    `unix2dos filename`, `unix2dos -D filename`

    Yet another way to show how autocrlf works

    ```tzx-bigquote
    1) true:             x -> LF -> CRLF
    2) input:            x -> LF -> LF
    3) false:            x -> x -> x
    ```

    where x is either CRLF (windows-style) or LF (unix-style) and arrows stand for

    `file to commit -> repository -> checked out file`

    ```tzx-bigquote
                     | Resulting conversion when       | Resulting conversion when
                     | committing files with various   | checking out FROM repo -
                     | EOLs INTO repo and              | with mixed files in it and
                     |  core.autocrlf value:           | core.autocrlf value:
    --------------------------------------------------------------------------------
    File             | true       | input      | false | true       | input | false
    --------------------------------------------------------------------------------
    Windows-CRLF     | CRLF -> LF | CRLF -> LF | as-is | as-is      | as-is | as-is
    Unix -LF         | as-is      | as-is      | as-is | LF -> CRLF | as-is | as-is
    Mac  -CR         | as-is      | as-is      | as-is | as-is      | as-is | as-is
    Mixed-CRLF+LF    | as-is      | as-is      | as-is | as-is      | as-is | as-is
    Mixed-CRLF+LF+CR | as-is      | as-is      | as-is | as-is      | as-is | as-is
    ```

    refs

      - [Git 1.6.4 beta on Windows (msysgit) - Unix or DOS line termination - Stack Overflow](http://stackoverflow.com/questions/1249932/git-1-6-4-beta-on-windows-msysgit-unix-or-dos-line-termination/1250133#1250133)


[How do I commit case-sensitive only filename changes in Git? - Stack Overflow](http://stackoverflow.com/questions/17683458/how-do-i-commit-case-sensitive-only-filename-changes-in-git/17688308#17688308)

:   `git config core.ignorecase false`{.bash}

    Case-insensitive file-systems

      ~ The two most popular operating systems that have case-insensitive file
        systems that I know of are

          - Windows
          - OS X

[`make gh CMTMSG='我看这可以。okay? really?'`{.bash}](https://github.com/district10/blog/commit/0bbb5ce82c9044947d10d211892396f7d6a8ba92)

[gnu make - Makefile variable assignment - Stack Overflow](http://stackoverflow.com/questions/448910/makefile-variable-assignment)

:   Lazy Set: `VARIABLE = value`
      ~ Normal setting of a variable - values within it are recursively
        expanded when the variable is used, not when it's declared
    Immediate Set: `VARIABLE := value`
      ~ Setting of a variable with simple expansion of the values inside -
        values within it are expanded at declaration time.
    Set If Absent: `VARIABLE ?= value`
      ~ Setting of a variable only if it doesn't have a value
    Append: `VARIABLE += value`
      ~ Appending the supplied value to the existing value (or setting to that
        value if the variable didn't exist)

    *Simply expanded variables* are defined by lines using `:=` (gnumake) or `::=` (posix)

    ```makefile
    # 换行会变成空格，最后的的换行会被 trim 掉。
    hash != printf '\043'
    file_list != find . -name '*.c'

    # 或者用 simply expanded variable
    hash := $(shell printf '\043')
    var := $(shell find . -name "*.c")
    ```

    ```makefile
    define two-lines =
    echo foo
    echo $(bar)
    endef

    # or
    two-lines = echo foo; echo $(bar)
    ```

    More specific variables taking precedence over the more generic ones:

    :   ```makefile
        %.o: %.c
                $(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@

        lib/%.o: CFLAGS := -fPIC -g
        %.o: CFLAGS := -g           # 即使在后面，但是更 generic，所以不覆盖

        all: foo.o lib/bar.o
        ```

    refs

      - [GNU make](http://www.gnu.org/software/make/manual/make.html#Setting)

    <!--
    koans

      - 看完上面一个页面，makefile 就出师了啊！还不快去看！
    -->

[learnping-cmake](http://www.elpauer.org/stuff/learning_cmake.pdf)

:   好像看过好多遍……

[Starter Examples — Cmake Support for KUSP Software v0.9.1 documentation](http://www.ittc.ku.edu/kurt/kusp_docs/cmake/simple_cmake_example.html)

:   - `target_link_libraries( project m )`{.cmake}
    - `gcc -lm`{.bash}

[GNU make - Using Implicit Rules](http://www.chemie.fu-berlin.de/chemnet/use/info/make/make_10.html)

:   - Using Implicit Rules
        + e.g. `.c` -> `.o`, more:
        + Catalogue of Implicit Rules
            * C: `.c` -> `.o`, $(CC) -c $(CPPFLAGS) $(CFLAGS)`
            * C++: `.cc`, `.C`, `.cpp` -> `.o`, `$(CXX) -c $(CPPFLAGS) $(CXXFLAGS)`
            * RCS, Any file `n' is extracted if necessary from an RCS file named either `n,v' or `RCS/n,v'.
        + Variables Used by Implicit Rules[^implicit-rules]
        + Chains of Implicit Rules
        + Defining and Redefining Pattern Rules
            * Introduction to Pattern Rules
                - `%.o: %.c`
                - `% :: RCS/%,v` (built-in)
                - `%.tab.c %.tab.h: %.y` (two targets)
            * Automatic Variables
                -  `$<`, `$^`, `$@`
                - `$(@D)`
            * Canceling Implicit Rules
        + Defining Last-Resort Default Rules
    - Functions for Transforming Text
        + `$(function arguments)` or `${function arguments}`
        + `$(subst from,to,text)`
            * `bar:= $(subst $(space),$(comma),$(foo))`
            * `$(subst ee,EE,feet on the street)`: "fEEt on the strEEt"
        + `$(patsubst pattern,replacement,text)`
            * `$(patsubst %.c,%.o,x.c.c bar.c)`
            * `$(var:pattern=replacement)`
        + `$(strip string)`
        + `$(filter pattern...,text)`
          ~ ```makefile
            sources := foo.c bar.c baz.s ugh.h
            foo: $(sources)
            cc $(filter %.c %.s,$(sources)) -o foo
            ```
        + `$(filter-out pattern...,text)`
        + `$(sort list)`
        + `dir`, `notdir`
          ~ ```makefile
            $(dir src/foo.c hacks)      # src/ ./
            $(notdir src/foo.c hacks)   # foo.c hacks
            ```
        + `basename`
        + `addsuffix`, `addprefix`
        + `$(word n,text)`, *n*th word of text, `$(word 2, foo bar baz) # returns `bar'`{.makefile}
        + `$(words text)`, `#words`, the last word of text is `$(word $(words text),text)`
        + `$(firstword names...)`
        + `$(wildcard pattern)`
    - `foreach`
      ~ ```makefile
         dirs := a b c d
         files := $(foreach dir,$(dirs),$(wildcard $(dir)/*))
        ```

[^implicit-rules]:

    ```tzx-bigquote
    AR
        Archive-maintaining program; default `ar'.
    AS
        Program for doing assembly; default `as'.
    CC
        Program for compiling C programs; default `cc'.
    CXX
        Program for compiling C++ programs; default `g++'.
    CO
        Program for extracting a file from RCS; default `co'.
    CPP
        Program for running the C preprocessor, with results to standard output; default `$(CC) -E'.
    FC
        Program for compiling or preprocessing Fortran and Ratfor programs; default `f77'.
    GET
        Program for extracting a file from SCCS; default `get'.
    LEX
        Program to use to turn Lex grammars into C programs or Ratfor programs; default `lex'.
    PC
        Program for compiling Pascal programs; default `pc'.
    YACC
        Program to use to turn Yacc grammars into C programs; default `yacc'.
    YACCR
        Program to use to turn Yacc grammars into Ratfor programs; default `yacc -r'.
    MAKEINFOmzthe disqus javascript
            $j.ajax({
                 type: "GET",
                 url: "http://" + disqus_shortname + ".disqus.com/embed.js",
                 dataType: "script",
                 cache: true
             });

                $j(this).fadeOut();  // remove the show comments button
        });
    });
    ```
    </small>

[makefile - Create directories using make file - Stack Overflow](http://stackoverflow.com/questions/1950926/create-directories-using-make-file)

:   If you're targeting a usual or "patterned" file, just use make's internal
    variable `$(@D)`, that means "the directory the current target resides in"
    (*cmp.* with `$@` for the target). For example,

    ```makefile
    $(OUT_O_DIR)/%.o: %.cpp
            @mkdir -p $(@D)
            @$(CC) -c $< -o $@

    title: $(OBJS)
    ```

    <#>(@makefile @target @deps)

[Digest::MD5 - Perl interface to the MD5 Algorithm - metacpan.org](https://metacpan.org/pod/Digest::MD5)

---

GitHub Urls

  - `git@github.com:user/repo.git`
  - `git@github.com:user/repo.wiki.git`
  - `https://github.com/user/repo`
  - `https://github.com/user/repo/wiki`

我的两个域名都在 [DNSPod 控制台](https://www.dnspod.cn/console/dns) 管理。QQ 登录即可。

`ag`{.bash} 会默认 ignore 掉 `.gitignore` 的内容。

<#>(@git @ag @ignore)

- https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git/raw/master/_pages/notes.md
- https://raw.githubusercontent.com/district10/blog/master/_pages/notes.md

---

[Web crawler using perl - Stack Overflow](http://stackoverflow.com/questions/15696375/web-crawler-using-perl)

:   ```perl
    #!/usr/bin/env perl

    use strict;
    use warnings;

    use Mojo::UserAgent;
    use Mojo::URL;

    ##open file to store links
    open my $log, '>', 'extracted_links.txt' or die $!;

    ##starting URL
    my $base = Mojo::URL->new('http://stackoverflow.com/');
    my @urls = $base;

    my $ua = Mojo::UserAgent->new;
    my %visited;
    my $url_count = 0;

    while (@urls) {
      my $url = shift @urls;
      next if exists $visited{$url};

      print "$url\n";
      print $log "$url\n";

      $visited{$url} = 1;
      $url_count++;

      # find all <a> tags and act on each
      $ua->get($url)->res->dom('a')->each(sub{
        my $url = Mojo::URL->new($_->{href});
        if ( $url->is_abs ) {
          return unless $url->host eq $base->host;
        }
        push @urls, $url;
      });

      last if $url_count == 100;

      sleep 1;
    }
    ```

[失败的总和----读《黄河青山：黄仁宇回忆录》 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2012/05/ray_huang_s_memoir.html#comment-355234)

:   如果你看到了历史的长期合理性，那么当你经历了种种失败，年老时回望自己人生，
    才能平静地接受命运，体会其中的必然，然后静静地等待隧道的尽头开始展现一丝曙
    光，证明那些企图逆转命运的举动，并非无谓和徒劳，一切自有内在的因果。这大概
    就是《黄河青山》的写作目的吧。

[How to Create a Search Engine Friendly Website (thesitewizard.com)](http://www.thesitewizard.com/sitepromotion/search-engine-friendly.shtml)

:   - Add Text to Your Images, Flash and Videos, `alt=...`
    - Validate Your HTML Code
    - Create Relevant Title Tags
    - Use Straight HTML Navigation Links on Your Website
    - Eliminate Apparent Content Duplication
        + Specifying a Canonical Web Address (URL)
        + robots.txt
    - Remove Hidden Text (避免被 Google 误会)

    - Keywords and Post Titles in the Permalink or Link Structure
    - Post Titles in the TITLE Tag

    refs & see also

      - [How to Make Your WordPress Blog Search-Engine-Friendly (thesitewizard.com)](http://www.thesitewizard.com/sitepromotion/search-engine-friendly-wordpress-blog.shtml)
      - [How to Create a Search Engine Friendly Website (thesitewizard.com)](http://www.thesitewizard.com/sitepromotion/search-engine-friendly.shtml)

[list-style-type - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/list-style-type)

:   - one (disc)
    - two
        + two1 (circle)
            * two1a (square)
                - two1a一 (decimal-leading-zero)
                    + what (georgian)
                    + the fuck
                - two1a二
            * two1b
        + two2

    <#>(@css @list-style-type)

---

- This is my personal website. I work for Microsoft, but I don't speak for them.
- I always used to eat whatever I felt like, whenever I felt like. (想吃就吃？)
- 与其看什么 Linux 入门书，不如好好看 5 遍 CSAPP

---

[Patellar reflex - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Patellar_reflex)

:   <div class="tzx-fright">
    ![Schematic representation of patellar tendon reflex (knee jerk)
        pathway](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Patellar_tendon_reflex_arc.png/330px-Patellar_tendon_reflex_arc.png)
    </div>

    This is not a knee-jerk action (膝跳反射). I love open source and believe
    that open source community will eventually create a truly free alternative
    for NPM.

    The patellar reflex or knee-jerk is a deep tendon reflex and is a myotatic
    reflex.

[mszep/pandoc_resume: The Markdown Resume](https://github.com/mszep/pandoc_resume)

[aaronwolen/pandoc-letter: A simple letter template for Pandoc](https://github.com/aaronwolen/pandoc-letter)

[pandoc-templates/md2pdf at master · claes/pandoc-templates](https://github.com/claes/pandoc-templates/blob/master/md2pdf)

:   pandoc template

    `pandoc -D latex > template.latex`{.bash}

    ```tzx-plain
    # 说明：这里的排版和实际使用的时候不一样，请体会一下：


      实际使用的格式              这里的说明格式
    ------------------          -------------------
        $if(date)$                  $if(date)
        $date$                          $date$
                                    $endif$
        $endif$

    两者间的不同，以及各自的好处。

    $if(author)$
        $for(author)$$author$$sep$$endfor$
    $endif$

    $if(date)$                      # 可以在 Markdown 开头定义
        $date$
    $endif$

    比如这是一个 Markdown 文本：

            +-----------------------+
            |                       |
            |  ---                  |
            |  author: tzx          |
            |  date: 2016-03-24     |
            |  ...                  |
            |                       |
            |  that's the metadata  |
            |  header section       |
            |  in *yaml* format     |
            |                       |
            +-----------------------+

    ---
    header-includes:
        - \usepackage{fancyhdr}
        - \pagestyle{fancy}
        - \fancyhead[CO,CE]{This is fancy}
        - \fancyfoot[CO,CE]{So is this}
        - \fancyfoot[LE,RO]{\thepage}

    abstract: This is a pandoc test . . .
    shiting: is 诗婷？
    ...

    pandoc -H main.css \            # 会把 css 源码直接插入。
        demo.md -o \
        demo.html                   # -H FILE, --include-in-header=FILE

    $for(include-before)$           # -B before.txt, 文本插入, before body
        $include-before$
    $endfor$

    $for(include-after)$            # -A after.txt, 文本插入, after body
        $include-after$
    $endfor$

    # --self-contained 十分牛逼, 但是不能和 --mathjax 一起用. (毕竟 MathJax 太大)
    # --number-offset=NUMBER[,NUMBER,…]
    # --id-prefix=STRING, 话说我一直用 "tzx-"

    $if(number-sections)$           # --number-sections, 添加 1, 2, 2.3, etc
    $else$
        \setuphead[chapter, section, subsection, subsubsection][number=no]
    $endif$

    $if(toc)$
        \setupcombinedlist[content][list={$placelist$}]
    $endif$

    $for(header-includes)$
        $header-includes$
    $endfor$

    $if(KEY)$                       # -V KEY[=VAL], --variable=KEY[:VAL]
    $endif$
    ```

    ```bash
    pandoc --standalone --template style_chmduquesne.tex \
        --from markdown --to context \
        -V papersize=A4 \
        -o resume.tex resume.md;
    ```

---

dddt

:   demo.md
      ~ ```markdown
        Programming Languages

        :   one

            one1
              ~ one1.1
              ~ one1.2

            one2

        :   two

        :   three

        :   four
        ```

    `pandoc demo.md`{.bash}
      ~ ```html
        <dl>
        <dt>Programming Languages</dt>
        <dd><p>one</p>
        <dl>
        <dt>one1</dt>
        <dd>one1.1
        </dd>
        <dd>one1.2
        </dd>
        </dl>
        <p>one2</p>
        </dd>
        <dd><p>two</p>
        </dd>
        <dd><p>three</p>
        </dd>
        <dd><p>four</p>
        </dd>
        </dl>
        ```
    <#>(@dd @dt @html)

---

- GitHub Search: `https://github.com/search?utf8=%E2%9C%93&q=.vimrc`
- However, despite many trials and extensive googling, I still can't figure out
  how to tell pandoc to use the provided template (provided as `.cls` file) to
  render the document correctly.

---

[Simple Pandoc latex.template with comments](https://gist.github.com/bosmacs/1052004)

:   <small>
    ```latex
    %!TEX TS-program = xelatex
    \documentclass[12pt]{scrartcl}

    % The declaration of the document class:

    % The second line here, i.e.
    % \documentclass[12pt]{scrartcl}
    % is a standard LaTeX document class declaration:
    % we say what kind of document we are making in curly brackets,
    % and specify any options in square brackets.

    % (The previous line is a pseudo-comment, declaring that we will
    % use the special XeTeX machinery for its more extensive font list
    % and its use of unicode;
    % in general, LaTeX 'comments' like this one
    %  begin with % and end with a linebreak.)

    % Note that there we have nothing in the nature of a template;
    % it's just a standard bit of LaTeX pandoc will copy unaltered into the
    % LaTeX file it is writing.  But suppose you wrote something
    % more akin to the corresponding line in Pandoc's default
    % latex.template file, say:

    % \documentclass$if(fontsize)$[$fontsize$]$endif${scrartcl}

    % then you would have invented a 'variable', fontsize,
    % and could write things like

    % `markdown2pdf my.txt --xetex --variable=fontsize:12pt -o my.pdf` or
    % `pandoc -r markdown -w html my.txt -s --xetex --variable=fontsize:24pt -o my.tex`.

    % If we specified --variable-fontsize:12, then template substitution
    % would yield a LaTeX document beginning
    % \documentclass[12pt]{scrarcl}
    % which is just what we said anyway.
    % But we could also specify a different fontsize.

    % I don't use this `--variable=....`functionality myself;
    % I have a couple of basic templates I call with
    % `--template=whatever.template` which I can also
    % easily inspect to adjust things like font size as I please.

    % While we are discussing the declaration of the document class...
    % here's an alternative command for two column landscape,
    % not bad for some purposes. (If you strike the word 'landscape'
    % you will have two narrow newspaperlike
    % columns; scientists like that, because irrationality must
    % show itself somewhere):
    %\documentclass[12pt,twocolumn,landscape]{scrartcl}
    % Columns are too close together in LaTeX so we add this
    % `columnsep` command:
    %\setlength{\columnsep}{.5in}


    % I use the special 'komascript' article class "scrartcl"
    % reasons I can't entirely remember; I'm not sure it's that great.
    % One reason is the unimportant one that, like many classes,
    % it allows very big fonts which are convenient for booklet printing
    % in the idiotic American way by shrinking letterpaper pages.

    % the standard minimal LaTeX 'article' class declaration would be something like:

    % \documentclass[12pt]{article}

    % or for big type:

    % \documentclass[24pt]{extarticle}

    % but these restrict you to old-fashioned LaTeX materials.
    % Note that Kieran Healy uses the swank 'Memoir' class,
    % \documentclass[11pt,article,oneside]{memoir}
    % which might be worth a look.

    % Enough about the document class.

    % -- We are in swanky unicode, XeTeX land, and must now import these packages:
    \usepackage{fontspec,xltxtra,xunicode}
    % fontspec means we can specify pretty much any font.
    % Because we are using XeTeX material,
    % this template needs to be called with the `--xetex` flag.


    % Symbols:
    % Pandoc imports the extensive `amsmath` collection of symbols
    % for typesetting ordinary math.
    \usepackage{amsmath}
    % if you use exotic symbols you need to import specific packages, eg. for
    % electrical engineering diagrams, musical notation, exotic currency symbols,
    % the unspeakable rites of freemasonry etc.


    % `babel`:
    % The `babel` package, among other things, lets you determine what
    % language you are using in a given stretch of text, so that typesetting
    % will go well. Here we specify that mostly, we are speaking English:
    \usepackage[english]{babel}


    % Margins, etc:
    % the `geometry` package makes for convenient adjusting of margins, which is what
    % you asked about.  Of course it can do much more, even make coffee for you:
    \usepackage{geometry}
    \geometry{verbose,letterpaper,tmargin=3cm,bmargin=3cm,lmargin=3cm,rmargin=3cm}
    % so if you just keep a copy of this template in the directory you are working in, you
    % can adjust the margins by going into this file and messing with the margins.
    % the syntax is very unforgiving, but permits 3cm and 2.5in and some other things.


    % Font:
    % Here I set my main font, which is an Apple Corporation Exclusive, golly.

    % \setmainfont{Hoefler Text}
    % \setromanfont[Mapping=tex-text,Contextuals={NoWordInitial,NoWordFinal,NoLineInitial,NoLineFinal},Ligatures={NoCommon}]{Hoefler Text}

    % Hoefler Text is okay, but note the long discussion of 'contextuals' which is necessary to cools off
    % some of its show-offy properties. (You can make your essay look like the
    % Declaration of Independence by specifying e.g. Ligatures={Rare} )
    % If you have a copy you might try it; as it is
    % I will comment it out and supply something more certain to be around:

    \setmainfont{Times Roman}

    % Properly one should specify a sanserif font and a monospace font
    % see e.g. the example of Kieran Healy:
    % \setromanfont[Mapping=tex-text,Numbers=OldStyle]{Minion Pro}
    % \setsansfont[Mapping=tex-text]{Minion Pro}
    % \setmonofont[Mapping=tex-text,Scale=0.8]{Pragmata}

    % But I hate sanserif fonts, and anyway there are defaults.



    % Heading styles:
    % These commands keep the koma system from making stupid sans serif section headings
    \setkomafont{title}{\rmfamily\mdseries\upshape\normalsize}
    \setkomafont{sectioning}{\rmfamily\mdseries\upshape\normalsize}
    \setkomafont{descriptionlabel}{\rmfamily\mdseries\upshape\normalsize}



    % I'm puzzled why I have this foonote speciality,
    % I wonder if it's part of my problem I've been having, but wont look
    % into it now.
    \usepackage[flushmargin]{footmisc}
    % \usepackage[hang,flushmargin]{footmisc}


    % So much for my personal template.


    % Everything that follows is copied from the pandoc default template:
    % I will interpolate a few comments, the comments that are in
    % the default template will be marked % --

    % Paragraph format:
    % Pandoc prefers unindented paragraphs in the European style:
    \setlength{\parindent}{0pt}
    %  ... with paragraph breaks marked by a slight lengthening of
    % the space between paragraphs:
    \setlength{\parskip}{6pt plus 2pt minus 1pt}

    % Page format:
    \pagestyle{plain}
    % The default `plain` pagestyle just numbers the pages,
    % whereas
    % \pagestyle{empty}
    % would give you no numbering.
    % After one-million man-years of macro-composition,
    % there are also fancy pagestyles with much wilder options
    % for headers and footers, of course.

    % Footnotes
    % if you have code in your footnotes, the million macro march
    % kind of bumps into itself.
    % Pandoc, having just rendered your text into LaTeX,
    % knows whether the 'variable' `verbatim-in-note` is True, and
    % If it is, it asks for a  LaTeX package that solves the dilemma:
    $if(verbatim-in-note)$
    \usepackage{fancyvrb}
    $endif$

    % Lists formatting:
    % note sure what 'fancy enums' are; something to do with lists,
    % as the further comment suggests:
    $if(fancy-enums)$
    % -- Redefine labelwidth for lists; otherwise, the enumerate package will cause
    % -- markers to extend beyond the left margin.
    \makeatletter\AtBeginDocument{%
      \renewcommand{\@listi}
        {\setlength{\labelwidth}{4em}}
    }\makeatother
    \usepackage{enumerate}
    $endif$


    % Table formatting:
    % What if you make a table? -- Pandoc knows, of course, and
    % then declares that its  variable `table` is True and
    % imports a table package suitable to its pleasantly simple tables.
    % Needless to say infinitely   complicated tables are possible in
    % LaTeX with suitable packages. We are spared the temptation:

    $if(tables)$
    \usepackage{array}

    % Continuing on the topic of tables ... (we havent reached `endif`).
    % The commented out line below is in the default pandoc  latex.template.
    % Some unpleasantness with table formatting must be corrected.

    % -- This is needed because raggedright in table elements redefines \\:
    \newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
    \let\PBS=\PreserveBackslash

    $endif$


    % Subscripts:
    % Pandoc remembers whether you used subscripts, assigning True to
    % its `subscript` variable
    % It then needs to adopt a default with an incantation like this:
    $if(subscript)$
    \newcommand{\textsubscr}[1]{\ensuremath{_{\scriptsize\textrm{#1}}}}
    $endif$


    % Web-style links:

    % markdown inclines us to use links, since our texts can be made into html.
    % Why not have clickable blue links even in
    % learned, scientific, religious, juridical, poetical and other suchlike texts?
    % Never mind that they have been proven to destroy the nervous system!

    % First, what about the fact that links like http://example.com are
    % technically code and thus must not be broken across lines?
    % [breaklinks=true] to the rescue!

    % Nowadays LaTeX can handle all of this with another half million macros:

    \usepackage[breaklinks=true]{hyperref}
    \hypersetup{colorlinks,%
    citecolor=blue,%
    filecolor=blue,%
    linkcolor=blue,%
    urlcolor=blue}
    $if(url)$
    \usepackage{url}
    $endif$



    % Images.
    % In ye olde LaTeX one could only import a limited range of image
    % types, e.g. the forgotten .eps files.  Or else one simply drew the image with suitable
    % commands and drawing packages.  Today we want to import .jpg files we make with
    % our smart phones or whatever:

    $if(graphics)$
    \usepackage{graphicx}
    % -- We will generate all images so they have a width \maxwidth. This means
    % -- that they will get their normal width if they fit onto the page, but
    % -- are scaled down if they would overflow the margins.
    \makeatletter
    \def\maxwidth{\ifdim\Gin@nat@width>\linewidth\linewidth
    \else\Gin@nat@width\fi}
    \makeatother
    \let\Oldincludegraphics\includegraphics
    \renewcommand{\includegraphics}[1]{\Oldincludegraphics[width=\maxwidth]{#1}}
    $endif$



    % Section numbering.
    % Here again is a variable you can specify on the commandline
    % `markdown2pdf my.txt --number-sections --xetex --template=/wherever/this/is -o my.pdf`
    $if(numbersections)$
    $else$
    \setcounter{secnumdepth}{0}
    $endif$

    % Footnotes:
    % Wait, didn't we already discuss the crisis of code in footnotes?
    % Evidently the order of unfolding of macros required that
    % we import a package to deal with them earlier
    % and issue a command it defines now. (Or maybe that's not the reason;
    % very often the order does matter as the insane system of macro expansion
    % must take place by stages.)
    $if(verbatim-in-note)$
    \VerbatimFootnotes % -- allows verbatim text in footnotes
    $endif$

    % Other stuff you specify on the command line:
    % You can include stuff for the header from a file specified on the command line;
    % I've never done this, but that stuff will go here:
    $for(header-includes)$
    $header-includes$
    $endfor$

    % Title, authors, date.
    % If you specified title authors and date at the start of
    % your pandoc-markdown file, pandoc knows the 'values' of the
    % variables: title authors date and fills them in.

    $if(title)$
    \title{$title$}
    $endif$
    \author{$for(author)$$author$$sep$\\$endfor$}
    $if(date)$
    \date{$date$}
    $endif$

    % At last:
    % The document itself!:

    % After filling in all these blanks above, or erasing them
    % where they are not needed, Pandoc has finished writing the
    % famous LaTeX *preamble* for your document.
    % Now comes the all-important command \begin{document}
    % which as you can see, will be paired with an \end{document} at the end.
    % Pandoc knows whether you have a title, and has already
    % specified what it is; if so, it demands that the title be rendered.
    % Pandoc knows whether you want a table of contents, you
    % specify this on the command line.
    % Then, after fiddling with alignments, there comes the real
    % business: pandoc slaps its rendering of your text in the place of
    % the variable `body`
    % It then concludes the document it has been writing.

    \begin{document}


    $if(title)$
    \maketitle
    $endif$

    $if(toc)$
    \tableofcontents

    $endif$


    $if(alignment)$
    \begin{$alignment$}
    $endif$

    $body$

    %$if(alignment)$
    \end{$alignment$}
    $endif$


    \end{document}
    ```
    </small>

---

- That little nugget (`['nʌɡɪt]`, 天然金块，矿块；珍闻，珍品) of information
  just saved my day.
- [展示 GitHub Pages 怎么用 by district10](http://tangzhixiong.com/gh-pages-demo/)
- [Hacking Travis](http://whudoc.qiniudn.com/travis/)
- [osg 学习之十六：osgconv工具(android支持的纹理格式) - xuhaiyan8825的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/xuhaiyan8825/article/details/7999767)
- `osgconv` 是一种非常有用的的工具来读取标准的3D格式，如OpenFlight,3DS,Alias
  Wavefront (OBJ) etc，并且可以将它们转换为一种OSG所支持的格式，如OSG中的ASCII
  格式的.osg，二进制格式的.ive。在程序运行的默认情况下，优化导入的场景图，将形
  成的这样结果：场景图读取的数据量将会更少且速度会更快。尤其值得指出的是，.ive
  格式的的文件，快速装载数据的能力使它非常适合数据页和大型的数据库。

    ```bash
    osgconv cow.obj cow.ive
    osgconv --compressed cow.obj cow.ive
    ```

- `wget in_link -O out_filename`{.bash}
- 浏览器里得 Vim，用 `C-[` 替代 `ESC`。

---

How I Blog

  - I better write this down or I'll never remember it
  - I read something
  - I had a spontaneous epiphany (is there any other kind?)

epiphany `[ɪ'pɪfəni]`
:   对事物真谛的顿悟；主显节（每年一月六日纪念耶稣显灵的节日）；显现（特指神的显现）

---

[`appveyor.yml`{.tzx-filename}](https://github.com/district10/rapidjson/blob/master/appveyor.yml)

:   <small><small><small><small>
    ```yml
    version: 1.0.2.{build}

    configuration:
    - Debug
    - Release

    environment:
      matrix:
      - VS_VERSION: 11
        VS_PLATFORM: win32
      - VS_VERSION: 11
        VS_PLATFORM: x64
      - VS_VERSION: 12
        VS_PLATFORM: win32
      - VS_VERSION: 12
        VS_PLATFORM: x64

    before_build:
    - git submodule update --init --recursive
    - cmake -H. -BBuild/VS -G "Visual Studio %VS_VERSION%" -DCMAKE_GENERATOR_PLATFORM=%VS_PLATFORM% -DBUILD_SHARED_LIBS=true -Wno-dev

    build:
      project: Build\VS\RapidJSON.sln
      parallel: true
      verbosity: minimal

    test_script:
    - cd Build\VS && if %CONFIGURATION%==Debug (ctest --verbose -E perftest --build-config %CONFIGURATION%) else (ctest --verbose --build-config %CONFIGURATION%)
    ```
    </small></small></small></small>

    <small><small>
    ```yml
    # for gcc with C++11 support
    - sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
    - sudo apt-get -qq update
    - sudo apt-get -qq install gcc-4.9 g++-4.9

    # install GTest and GMock
    - sudo apt-get -qq install libgtest-dev
    - "cd /usr/src/gtest && sudo cmake . && sudo cmake --build . && sudo mv libg* /usr/local/lib/ ; cd -"
    - sudo apt-get -qq install google-mock
    - "cd /usr/src/gmock && sudo cmake . && sudo cmake --build . && sudo mv libg* /usr/local/lib/ ; cd -"

    - sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 90
    - sudo update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-4.9 90
    ```
    </small></small>

    ```cmake
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -O0") # debug, no optimisation
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage") # enabling coverage
    ```

    Either by using the supplied helper function.

    ```cmake
    if (COVERALLS)
        include(Coveralls)
        coveralls_turn_on_coverage()
    endif()
    ```

    or you can add it yourself:

    ```cmake
    if (COVERALLS)
        include(Coveralls)
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -O0 -fprofile-arcs -ftest-coverage")
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -O0 -fprofile-arcs -ftest-coverage")
    endif()
    ```

    Replace `CMAKE_CXX_FLAGS`{.cmake} by  `CMAKE_C_FLAGS`{.cmake} for a C project.

    Nothing more is needed. From the GNU GCC man:

    ```tzx-bigquote
    --coverage

    This option is used to compile and link code instrumented for coverage
    analysis. The option is a synonym for -fprofile-arcs -ftest-coverage (when
    compiling) and -lgcov (when linking).
    ```

---

[rapidjson/travis-doxygen.sh at master · district10/rapidjson](https://github.com/district10/rapidjson/blob/master/travis-doxygen.sh)

:   ```bash
    gh_pages_prepare()
    {
        cd "${TRAVIS_BUILD_DIR}/build/doc";
        [ ! -d "html" ] || \
            abort "Doxygen target directory already exists."
        git --version
        git clone -b gh-pages "${GITHUB_CLONE}" html
        cd html
        # setup git config (with defaults)
        git config user.name "${GIT_NAME-travis}"
        git config user.email "${GIT_EMAIL-"travis@localhost"}"
        # clean working dir
        rm -f .git/index
        git clean -df
    }
    ```

    ```bash
    sudo apt-get install ruby-dev
    ```

    ProTip™: You can pre-fill the filename field using just the URL. Typing
    `?filename=yournewfile.txt` at the end of the URL will pre-fill the filename
    field with the name `yournewfile.txt`.

[舌尖上的忘词&背单词的秘诀](http://mp.weixin.qq.com/s?__biz=MjM5NTExMTk5MA==&mid=409398412&idx=1&sn=a592c82fd0a57b15559832c983033ca8&scene=0#wechat_redirect)

:   TOT State (tip of the tongue)

    i. 一外国朋友见到蝌蚪惊呼 look, nigga sperms!
    #. 忘记老鼠怎么说，只好说是 Tom and Jerry 的 Jerry。
    #. 给留学生指路，指着面包车说 "a car like bread"，对方小哥机智的 get 到 "A van car?"
    #. 把拉肚子说成 shit like soup...
    #. 想不起来脚趾怎么说，说成了 foot finger，结果对方笑趴下了
    #. 一个哥们在国外旅游时忘了吸管的英文叫啥，结果说成了sucker...

    Refs

    #. [舌尖上的忘词&背单词的秘诀](http://mp.weixin.qq.com/s?__biz=MjM5NTExMTk5MA==&mid=409398412&idx=1&sn=a592c82fd0a57b15559832c983033ca8&scene=0#wechat_redirect)

---

```bash
sudo dpkg -i DEB_PACKAGE # install
sudo dpkg -r DEB_PACKAGE # remove
```

```markdown
DPKG commands

There are two actions, they are dpkg-query and dpkg-deb.
Install a package

# sudo dpkg -i {package_name}
# sudo dpkg -i skype-ubuntu-precise_4.2.0.11-1_i386.deb

Remove a package

# sudo dpkg -r {package_name}
# sudo dpkg -r vlc

Remove a package and its configuration files

# sudo dpkg -P {package_name}
# sudo dpkg -P vlc

List all installed packages.

You can pipe the command to less (a pager) so you can more easily scroll the content:

# dpkg -l | less

Check if the package is installed or not

# dpkg -l {package_name}
# dpkg -l vlc

Check if the package is installed or not, and if it is, launch it:

# dpkg -l | vlc

See whether a package is installed or not

And this will show the location where the package will be installed. Here -S (capital S) to search whether the package was installed or not.

# sudo dpkg -S {package_name}
# sudo dpkg -S skype

Install a *.deb package from a specified location

Here -R is recursive. (Recursively handle all regular files matching the pattern *.deb found at specified directories and all of its subdirectories).

# sudo dpkg -R --install {package_location}
# sudo dpkg -R --install /home/sysadmin/soft

Show package details

Here -p (lowercase p) will show the package info:

# dpkg -p {package_name}
# dpkg -p apache2

View the content of a package

Use -c (lowercase c) to show the content:

# sudo dpkg -c {package_name}
# sudo dpkg -c skype-ubuntu-precise_4.2.0.11-1_i386.deb

Extract the *.deb package file

Use -x (lowercase x) to extract:

# dpkg -x {package_name} {location_were_to_extract}
# dpkg -x libqt4-phonon_4.6.3-4+squeeze1_i386.deb /home/sysadmin/

Extract and display the filenames contained in a package

Use -X (uppercase X) to display the content with extraction.

# dpkg -X {package_name} {location_were_to_extract}
# dpkg -X libqt4-phonon_4.6.3-4+squeeze1_i386.deb /home/sysadmin/

Display information about a package

Here -I stands for information:

# dpkg -I {package_name}
# dpkg -I libqt4-phonon_4.6.3-4+squeeze1_i386.deb

Reconfigure an already installed package

dpkg-reconfigure reconfigures packages after they already have been installed. Pass it the name(s) of a package or packages to reconfigure. It will ask configuration questions, much like when the package was first installed.

# dpkg-reconfigure postfix

This will reconfigure postfix the same way as when you installed it for the first time.

Need to know more about dpkg commands? Have a look at the manual page:

# man dpkg
```

If you use an RPM-based distro, you may be able to install this deb using alien, or try

`ar p $DEB data.tar.gz | sudo tar xvz --strip-components 2 -C /usr/local`{.bash}

where `$DEB` is the path to the downloaded deb.

  - `sed -i "s/AccessKey/$QAK/g" qiniu_sync`{.bash}
  - `sed -i "s/SecretKey/$QSK/g" qiniu_sync`{.bash}

持续集成（ Continuous Integration）或者CI，是一个已经在软件开发中已经流行好一阵
子的东西了，但是最近逐渐在运维界中获得了越来越多的拥趸。CI提出来是为了解决多个
开发者在同一个代码库开发的时候造成的集成问题。基本上，两个开发者在同一样的代码
上进行开发就会产生冲突，并且只有在之后很久才会发现这些冲突。

The complete build lifecycle, including three optional deployment steps and
after checking out the git repository and changing to the repository directory,
is:

  - before_install
  - install
  - before_script
  - script
  - after_success or after_failure
  - OPTIONAL before_deploy
  - OPTIONAL deploy
  - OPTIONAL after_deploy
  - after_script

---

> 动态语言一时爽，代码重构火葬场。

---

Configs 32-bit x86

:   Deps

      - visual studio 2010
      - qt4.x
      - boost
      - liblas

    ENV Variables

      - `LIBLAS_ROOT` ==> `D:\Liblas (bin, include, lib)`
      - `BOOST_INCLUDEDIR` ==> include
      - `BOOST_LIBDIR` ==> lib

    You then need to set the following two environment variables to point
    respectively to the path of the libraries and the headers

      - `BOOST_LIBRARYDIR=C:\dev\libboost_1_54_0\lib32-msvc-10.0`
      - `BOOST_INCLUDEDIR=C:\dev\libboost_1_54_0`

    You also need to add in your `PATH` environment variable, the path to the
    Boost dll's:

      - `C:\dev\libboost_1_54_0\lib32-msvc-10.0`

    With other versions of Tom installers, the path to libraries may end with
    lib32 instead of lib32-msvc-10.0.

    I selected `C:\Qt\4.8.2` so `QTDIR` is set to `C:\Qt\4.8.2`

    I add `C:\Qt\4.8.2\bin` to my `PATH`

    `C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\bin`
    :   `cvtres.exe` ==> `cvtres1.exe`

PDB what for? For Debugging.

How to in Visual Studio

  - `Tools->Options->Debugging->Symbols`
  - and select checkbox "Microsoft Symbol Servers"

Load PDB, `F5` ==> `Control + F5`

link err, failure to convert to COFF
Incremental Linking: `Yes` ==> `No`

SVN

:   ```bash
    # 1
    svn update
    svn status
    svn diff
    svn commit -m 'commit message'

    # 2
    svn merge ?
    svn revert ?
    svn resolve ?
    # 3
    svn log
    ```

VS Extensions

:   - VsVim
    - tssts

OpenGL: <http://www.opengl.org/resources/libraries/glut/glutdlls37beta.zip>

:   - glut.h ==> `C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Include\gl`
    - glut.lib glut32.lib ==> `C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\lib`
    - glut.dll glut32.dll ==> `C:\Windows\System32`

Refs

:   #. <http://stackoverflow.com/questions/12954821/cannot-find-or-open-the-pdb-file-in-visual-studio-c-2010/12954908#12954908>
    #. <http://fisnikhasani.com/error-lnk1123-failure-during-conversion-to-coff-file-invalid-or-corrupt/>
    #. <http://blog.csdn.net/wlanye/article/details/7561559>

---

CMakeLists.txt Snippets

:   ```cmake
    set_target_properties( ${PROJECT_NAME} PROPERTIES VS_KEYWORD Qt4VSv1.0 )

    set( CMAKE_COLOR_MAKEFILE ON )
    set_property( GLOBAL PROPERTY USE_FOLDERS ON )

    # Set the include directories
    include_directories( ${CMAKE_SOURCE_DIR} )
    include_directories( ${CMAKE_SOURCE_DIR}/src )
    include_directories( ${CMAKE_CURRENT_BINARY_DIR} )

    link_directories( ${CMAKE_BINARY_DIR} )

    # Setup output directories
    set( LIBRARY_OUTPUT_PATH
        ${PROJECT_BINARY_DIR}/bin
        CACHE
        PATH
        "Single directory for all libraries" )

    set( EXECUTABLE_OUTPUT_PATH
        ${PROJECT_BINARY_DIR}/bin
        CACHE
        PATH
        "Single directory for all executables" )

    add_definitions( -DUNICODE )
    add_definitions( -D_CRT_SECURE_NO_WARNINGS )
    add_definitions( -Wall )

    # large address aware option setting
    if( ${MINGW} )
        set( LARGEADDRESSAWARE "--large-address-aware" )
    else(${MINGW})
        if( WIN32 )
            set( LARGEADDRESSAWARE "/LARGEADDRESSAWARE" )
        else( WIN32 )
            set( LARGEADDRESSAWARE " " )
        endif( WIN32 )
    endif( ${MINGW} )

    # this command finds Qt4 libraries and sets all required variables
    # note that it's Qt4, not QT4 or qt4
    find_package( Qt4 REQUIRED )

    set( QT_USE_QTMAIN TRUE )
    set( QT_USE_QTOPENGL TRUE )
    set( QT_USE_QTXML TRUE )

    # (QT_USE_FILE is a variable defined by FIND_PACKAGE( Qt4 ) that contains a
    # path to CMake script)
    include( ${QT_USE_FILE} )

    set( RSCS img.qrc )

    qt4_wrap_cpp( MOC_SRCS ${HDRS_FILES} )
    qt4_add_resources( RSC_SRCS ${RSCS} )
    qt4_wrap_ui( UI_HDRS ${UI_FILES} )

    set( FILES_TO_TRANSLATE ${FILES_TO_TRANSLATE}
         ${SRCS_FILES} ${UI_FILES} ${HDRS_FILES} PARENT_SCOPE )

    source_group( "UI Files" FILES ${UI_FILES} )
    source_group( "Generated Files" FILES ${MOC_SRCS} ${UI_HDRS} ${RSC_SRCS} )
    source_group( "Class Diagrams" FILES ${CD_FILES} )
    source_group( "Resources" FILES ${RSCS} )

    add_executable( ${PROJECT_NAME}
        ${SRCS_FILES} ${UI_FILES} ${HDRS_FILES}
        ${MOC_SRCS} ${UI_HDRS} ${RSC_SRCS} ${CD_FILES} )
    set_source_files_properties( ${CD_FILES} PROPERTIES HEADER_FILE_ONLY TRUE )
    target_link_libraries( ${PROJECT_NAME}
        ${QT_LIBRARIES} ${OPENGL_LIBRARY} ${GLUT_LIBRARIES} ${OpenCV_LIBS} )
    set_target_properties( ${PROJECT_NAME} PROPERTIES
                           LINK_FLAGS ${LARGEADDRESSAWARE} )
    set_target_properties( ${PROJECT_NAME} PROPERTIES
                           VS_KEYWORD Qt4VSv1.0 )

    add_executable( example WIN32
                    main.cpp mainwindow.cpp ${example_MOCS} ) # WIN32 needed

    install( TARGETS ${PROJECT_NAME} DESTINATION bin )

    # this command finds OpenCV libraries and sets all required variables
    find_package( OpenCV REQUIRED )
    include_directories( ${OPENCV_INCLUDE_DIR} )
    include_directories( ${CMAKE_BINARY_DIR} )

    find_package( OpenGL REQUIRED )
    file( GLOB_RECURSE HDRS_FILES *.h *.hpp )
    file( GLOB_RECURSE SRCS_FILES *.cpp )
    file( GLOB_RECURSE UI_FILES *.ui )
    file( GLOB CD_FILES *.cd )

    add_subdirectory( src )

    set (CMAKE_BUILD_TYPE Release) # cmake -DCMAKE_BUILD_TYPE=Debug .
    ```

---

- `uic`{.bash} ==> mainwindow.ui --> mainwindow.h
- `moc`{.bash} ==> mainwindow.h  --> mainwindow.cpp
- `g++`{.bash} ==>
- some bash

    ```bash
    uic mainwindow.ui  -o  ui_mainwindow.h
    moc mainwindow.h   -o moc_mainwindow.cpp  ==> Q_OBJECT
    rcc main.qrc       -o qrc_main.cpp
    g++ main.cpp mainwindow.cpp  moc_mainwindow.cpp \
    -IC:\Qt\4.8.4\include \
    -LC:\Qt\4.8.4\lib \
    -lQtCore4 \
    -lQtGui4 \
    -o main
    ```

---

```cmake
# IF-ELSE-ENDIF
if (exp)
...
else (exp)
...
endif (exp)

# FOREACH
foreach (list)
...
endforeach (list)

# WHILE
while (cond)
...
endwhile (cond)
```

---

Headers & Libs

:   - headers ==> **`include_directories`** --> PATH & LD_LIBRARY_PATH
    - libraries ==> **`find_library`**(good) or **`link_directories`**(bad)
    - include: `*.h` ==> `-I` in gcc
    - link dir: `{*.so/*.dll/*.lib/*.dylib/...}` ==> `-L` in gcc
    - link file: `*.so/*.dll/*.lib/*.dylib/...` ==> `-l` in gcc

Use `FindXXXX.cmake` & set `${CMAKE_MODULE_PATH}` to

```cmake
find_package( Qt4 REQUIRED ) # think of it as an #include
```

Or create your own finders

```cmake
get_filename_component( ... )

# lib files
find_library( ... ) # CMAKE_LIBRARY_PATH

# header files
find_file( ... )    # CMAKE_INCLUDE_PATH

# MISC
find_program( ... )
try_compile( ... )
try_run( ... )
```

PkgConfig

:   - `UsePkgConfig.cmake`
    - `FindPkgConfig.cmake`

---

Qt with CMake

```cmake
project( pfrac )
find_package( QT4 REQUIRED )
include( ${QT_USE_FILE} )
SET( pfrac_SRCS main.cpp client.h client.cpp )
SET( pfrac_MOC_HEADERS client.h )
qt4_add_resoURCES( pfrac_SRCS
     ${PROJECT_SOURCE_DIR}/pfrac.qrc )
qt4_wrap_cpp( pfrac_MOC_SRCS
     ${pfrac_MOC_HEADERS} )
add_executable( pfrac ${pfrac_SRCS} ${pfrac_MOC_SRCS} )
target_link_libraries( pfrac ${QT_LIBRARIES} )
```

Congfigure file

```cmake
set( VALUE 23 )
configure_file( conf.h.in conf.h )
check_include_file( unistd.h HAVE_UNISTD )
```

`conf.h.in`:

:   ```cmake
    #cmakedefine VAL
    #define KEY @VALUE@
    ```

`conf.h`:

:   ```c
    #define VAL
    #define KEY 23
    ```

`*.h`:

:   ```c
    #ifdef VAL
        int keys[KEY];
    #endif

    #include "conf.h"
    #ifdef HAVE_UNISTD
        // ...
    #else
        // ...
    #endif
    ```

MISC

```cmake
# MESSAGE
message( [SEND_ERROR | STATUS | FATAL_ERROR] "message to display" ... )

# LINK
target_link_libraries( wakeup RELEASE ${SRC} )
target_link_libraries( wakeupd DEBUG ${SRC} )

# INSTALL
install( TARGETS ... RUNTIME DESTINATION bin LIBRARY DESTINATION lib )

# MACRO (text substitution)
macro (INSERT_INTO_MAP _KEY _VALUE)
  set ("MyMap_${_KEY}" "${_VALUE}")
endmacro (INSERT_INTO_MAP)

set( MyKey "foo" )
set( MyValue "bar" )
insert_into_map( "${MyKey}" "${MyValue}" )

# FUNCTION
...

# EXECUTE_PROCESS
execute_process( )

# TARGET
add_custom_targets

# CACHE
set( num 23 CACHE ) # use cached 'num' if possible, and save to it
set( num 23 CACHE FORCE ) # force overwrite Cache.

# POLICY (for Back/Forward?compatibility)
...

# Properties
cmake_minimum_required( ... )
option( ... )
get_cmake_property( ... )
get_target_property( ... )
set_target_property( ... )
set_source_files_properties( ... )

# Useful Varibles
cmake_binary_dir( build  dir )    CMAKE_CURRENT_BINARY_DIR
cmake_source_dir( source dir )    CMAKE_CURRENT_SOURCE_DIR

PROJECT_BINARY_DIR   EXECUTABLE_OUTPUT_PATH
PROJECT_SOURCE_DIR   LIBRARY_OUTPUT_PATH

$ENV{name}
```

---

MISC

#. `*.ilk` => **incremental linker file**
#. `LD_LIBRARY_PATH` ==> **Link Dynamically Lib Path**

- CPack (for installer packaging)
- CTest & CDash (for code testing & testing result displaying)

---

- [realforce-to-hhkb2-pro/AutoHotkey.ahk at master ·
  guillaume-nargeot/realforce-to-hhkb2-pro](https://github.com/guillaume-nargeot/realforce-to-hhkb2-pro/blob/master/AutoHotkey.ahk)
- [AutoHotKeyの設定](https://gist.github.com/kawaken/7652588)

---

```bash
# fullname := "/home/user/file.txt"
filename=$(basename "$fullfile")     # file.txt
extension="${filename##*.}"          # txt
filename="${filename%.*}"            # file
```

pdf2img `@`{.tzx-anchor #pdf2img}

:   ```bash
    PDF=$1
    IMG=${PDF%.*}

    convert              \
        -verbose         \
        -density 150     \
        -trim            \
        $PDF             \
        -quality 100     \
        -sharpen 0x1.0   \
        ${IMG}.jpg
    ```

    see also:

    ```bash
    # ppt -> pdf
    libreoffice --headless --invisible --convert-to pdf *.ppt

    # file -> pdf
    unoconv -f pdf file

    # crop pdf
    pdfcrop file.pdf cropped.pdf
    ```

    refs

      - [Note: 批量转换PPT（bash) - gnat - 博客园](http://www.cnblogs.com/gnat-tang/p/3536745.html)
      - [Note: pdfcrop - gnat - 博客园](http://www.cnblogs.com/gnat-tang/p/3536750.html)
      - [Filter Options - Apache OpenOffice Wiki](https://wiki.openoffice.org/wiki/Documentation/DevGuide/Spreadsheets/Filter_Options)

    `A.pdf -> A-{0,1}.jpg`

raw2img:

:   ```bash
    #!/bin/bash

    echo start time: `date`

    for i in *.raw;
    do
        convert -size 5120x3840 -depth 8 gray:$i jpg/`basename $i .raw`.jpg
        mv $i raw/
    done

    echo end time: `date`
    ```

imagemagick:

:   ```bash
    !/bin/bash

    for i in rotate shear roll hue saturation brightness gamma spiff dull \
             grayscale quantize despeckle reduceNoise addNoise sharpen blur \
             threshold edgedetect spread shade raise segment solarize swirl \
             implode wave oilpaint charcoal jpeg;
    do
        convert main.jpg -preview ${i} -gravity south -box "#00000020" \
            -pointsize 36 -fill "#887ddd" -draw "text 0,0 '${i}'" out.${i}.jpg
    done

    montage out.*.jpg -tile 1x$(ls out.*.jpg | wc -l) -geometry 766x936 out.main.jpg
    ```

    ```bash
    var fs = require('fs');
    var gm = require('gm');

    // resize and remove EXIF profile data
    gm('img/600x300.jpg')
    .resize(240, 240)
    .noProfile()
    .write('resized.png', function (err) {
      if (!err) { console.log('done'); }
    });
    ```

curl:

:   <small>
    ```bash
    $ curl -X POST -F file=@./package.json localhost:8090/gridfs
    {
      "method": "POST",
      "url": "/gridfs",
      "header": {
        "user-agent": "curl/7.35.0",
        "host": "localhost:8090",
        "accept": "*/*",
        "content-length": "1022",
        "expect": "100-continue",
        "content-type": "multipart/form-data; boundary=------------------------72fd612aa595d9d6"
      }
    }
    ```
    </small>

    ```bash
    $ curl -X POST -d @./package.json localhost:8090/gridfs
    {
      "method": "POST",
      "url": "/gridfs",
      "header": {
        "user-agent": "curl/7.35.0",
        "host": "localhost:8090",
        "accept": "*/*",
        "content-length": "783",
        "content-type": "application/x-www-form-urlencoded"
      }
    }

    $ curl -X POST \
        -F file=@./package.json \
        -F file=@./upload.js localhost:8000/upload
    ```

awk, word frequency counter

:   ```bash
    # wordfreq.awk --- print list of word frequencies

    {
        $0 = tolower($0)    # remove case distinctions
        # remove punctuation
        gsub(/[^[:alnum:][:blank:]]/, " ", $0)
        for (i = 1; i <= NF; i++)
            freq[$i]++
    }

    END {
        for (word in freq)
            printf "%s\t%d\n", word, freq[word]
    }
    ```

    ```bash
    #!/bin/bash

    FILE=$1

    sed -e 's/\([A-Z]\)/ \L\1/g' $FILE | \
    gawk -f wcf.awk | sort -k 2nr
    ```

read

:   ```bash
    #/bin/bash

    ADDTO="2015.md"
    DATE=`date +%Y-%m-%d`

    echo adding $1
    echo \* \[ \] \[$DATE\] $1 >> $ADDTO
    echo ===================================
    echo Please read, and read with pleasure.

    git add -A && git commit -m `date +%s` && git pull && git push
    ```

```bash
Calibre-nongui

A Calibre-like Ebook Manager
Just Simple
```

---

reputedly `[rɪˈpjuːtɪdli]` adv. 据说，一般认为；根据风评

- [district10/trycmake: Try some CMake](https://github.com/district10/trycmake)
- [district10/tryopenmp: Try some OpenMP](https://github.com/district10/tryopenmp)
- [district10/tryqt: Try some Qt](https://github.com/district10/tryqt)

---

```tzx-plain
; 一、组合键
;             ::WinMinimize, A ; 最小化活动窗口。
;             n::Run, Notepad.exe  ; 打开记事本。
;             & k::MsgBox 您在按住 a 时按下了 k 键。
;             ?::Send, a ; 发送模拟按键 a。


; $Space::Send, Space ;
; $a::Send, a ; 发送模拟按键 a，$ 表示使用钩子创建这个热键，这样避免了循环激发。


; 二、序列键

::btw::by the way ; 输入 btw 后替换为 by the way。需要个终止符
:*:r@::rhong@somewhere.com ; 输入 r@ 后自动替换为邮件地址。不需要个终止符

; 组合键 a & k:: ，可以表示为：{a down}{k down}{k up}{a up}
; 序列键 ::ak:: ，可以表示为：{a down}{a up}{k down}{k up}

; WheelUp::Send {Volume_Up}     ; 向上转动（远离您的方向）鼠标滚轮增加音量。
; WheelDown::Send {Volume_Down} ; 向下转动鼠标滚轮减小音量。

#n::Run Notepad

^!c::Run calc.exe

^!w::
RunWait Notepad
MsgBox The user has finished (Notepad has been closed).
return

^!s::
Send Sincerely,{Enter}John Smith
Send ^c!{tab}pasted:^v
return

^!t::
MsgBox
MsgBox, 4, , Would you like to continue?
IfMsgBox, No
    MsgBox %clipboard%
    return
; 否则, 用户选择了是.
MsgBox You pressed YES.
return

$F1::
while GetKeyState("F1", "P")  ; 当 F1 键实际被按住时.
{
    Click
}
return


::btw::
   MsgBox You typed "btw".
Return
```

- dire prediction, adj. 可怕的；悲惨的；极端的
- devour sth, 毁灭

---

```c
size_t strlen( const char *str )
{
    const char *s;
    for( s=str; *s; ++s ) { }
    return s-str;
}

char *strcpy( char *to, const char *from  )
{
    assert( to && from && "should be both valid." );
    char *p = to;
    int i = 0;
    while( (*p++=*from++) != 0 ) { }
    return to;
}

void strstr( const char *haystack, const char *needle )
{

}

int atoi( const char *str )
{
    int len = strlen( str );
    int sign = 1;

    const char *p = str;
    while ( *p == ' ' ) {
        ++p;
    }

    if ( *p == '+' ) { sign = +1; ++p; }
    if ( *p == '-' ) { sign = -1; ++p; }
    int i = 0;
    while( '0' <= *p && *p <= '9' ) {
        int d = *p - '0';
        i = i * 10 + d;
    }

    stip preceding white chars;
    parse sign, +, -, or no sign
        c = '0'-'9' ?
        overflow?
        *10 + *c-'0'
        return num * sign;
}

substring searching
  kmp

    char *text, char *pattern;
  int n, m;
  n,m,0?
  init _prefix ( pattern, next )
  free (next)
  loop: text[i]=pattern[j]? ++i else j = next(?)

  tests: char *text, char *pattern, int i = kmp(), i>0?printf;

    rabin-karp.
    regexp?

typedef int stack_elem_t;
typedef struct {
    int size;
    int capicity;
    stack_elem_t *elems;
} stack_t;

stack_t *stack_create( const int capacity ) {
    malloc stack_t;
    malloc elements;
    assign;
    return s;
}

void destroy( stack_t *s){
    free(s->elems);
    free(s);
}

bool empty(s);
int size(s);
void push(s, elem){
    full?
    expand size;
    push;
    s->elems[s->size++] = x; // pa: ++size or size++, which is better
}

int top() { } // pa: size++ -> size-1
void pop()
{
    --size;
}

hanoi tower, recursive.
n==1? just move x->z;
hanoi(n, from, bridge, to);

convert base, void (int n, int d)
while(n!=0)
r=n%d; push(r);
n=n/d;

如果可以预估栈的最大空间,则用数组来模拟栈,这时常用的一个技巧。

  - 这里,栈的最大长度是多少?假设 CPU 是 64 位,最大的整数则是 2^64,由于
  - 数制最小为 2,在这个进制下,数的位数最长,这就是栈的最大长度,最长为 64。

10->d, hader,
d->10, easy! char->num, n=n*d+num;

queue.

typedef struct {
    int front;
    int rear;
    int capacity;
    queue_elem_t *elems;
} queue_t;

create(int capacity);
malloc(queue);
malloc(queue->elems);
return queue;

destroy(queue *q);
free(q->elems);
free(q);

empty?: rear==front;
size: (rear-front+capacity)%capacity

push(q, elem x){
    full?: (rear+1)%capacity==front
    realloc, reassign: front<rear? easy : two parts;
    free(origin-elems);
    elems=new mems;
   void *memcpy(void *dest, const void *src, size_t n);

rear = (read+1)%capacity;

binary tree:

typedef struct {
    binary_tree_node_t *left;
    binary_tree_node_t *right;
    tree_node_elem_t elem;
} binary_tree_node_t;

pre_order_r( const *root, int (*visit)(const *tree)) {
    if (!root) return;
    visit( root );
    pre_order_r( root->left, visit );
    pre_order_r( root->right, visit );
}

in_order_r( const *root, int (*visit)(const *tree)) {
    if (!root) return;
    in_order_r( root->left, visit );
    visit( root );
    in_order_r( root->right, visit );
}

post_order_r( const *root, int (*visit)(const *tree)) {
    if (!root) return;
    post_order_r( root->left, visit );
    post_order_r( root->right, visit );
    visit( root );
}

// no recursive version
pre_order( *tree, int (*visit)(*tree) ) {

}
```

这部分全部移到了 [district10/algo: 重复造轮子。](https://github.com/district10/algo)。

---

i3 window manager

:   By pressing `$mod+Enter`, a new terminal will be opened. It will fill the
    whole space available on your screen.

    Therefore, `$mod+j` is left, `$mod+k` is down, `$mod+l` is up and `$mod+;`
    is right. So, to switch between the terminals, use `$mod+k` or `$mod+l.` Of
    course, you can also use the arrow keys.

    To split a window vertically, press `$mod+v` before you create the new
    window. To split it horizontally, press `$mod+h`.

    To switch modes, press `$mod+e` for splith/splitv (it toggles), `$mod+s`
    for stacking and `$mod+w` for tabbed.

    To display a window in fullscreen mode or to go out of fullscreen mode
    again, press `$mod+f`.

    If an application does not provide a mechanism for closing (most
    applications provide a menu, the escape key or a shortcut like
    <kbd>Control+w</kbd> to close), you can press $mod+Shift+q to kill a
    window. For applications which support the WM_DELETE protocol, this will
    correctly close the application (saving any modifications or doing other
    cleanup). If the application doesn’t support the WM_DELETE protocol your X
    server will kill the window and the behaviour depends on the application.

    `$mod+num,` goto workspace,

    `$mod+shift+num,` move window to workspace.

    To restart i3 in place (and thus get into a clean state if there is a bug,
    or to upgrade to a newer version of i3) you can use $mod+Shift+r.

    To cleanly exit i3 without killing your X server, you can use
    `$mod+Shift+e`.  By default, a dialog will ask you to confirm if you really
    want to quit.

    You can toggle floating mode for a window by pressing `$mod+Shift+Space`.
    By dragging the window’s titlebar with your mouse you can move the window
    around.  By grabbing the borders and moving them you can resize the window.
    You can also do that by using the `[floating_modifier]`. Another way to
    resize floating windows using the mouse is to right-click on the titlebar
    and drag.

---

*/character-classes*

| ...    | ...     | ...     | ...                                           |
| :---:  | :---:   | :---:   | :---:                                         |
|  `/\i` |  `\i`   |   `\i`  |   identifier character (see 'isident' option) |
|  `/\I` |  `\I`   |   `\I`  |   like `\i`, but excluding digits |
|  `/\k` |  `\k`   |   `\k`  |   keyword character (see 'iskeyword' option) |
|  `/\K` |  `\K`   |   `\K`  |   like `\k`, but excluding digits |
|  `/\f` |  `\f`   |   `\f`  |   file name character (see 'isfname' option) |
|  `/\F` |  `\F`   |   `\F`  |   like `\f`, but excluding digits |
|  `/\p` |  `\p`   |   `\p`  |   printable character (see 'isprint' option) |
|  `/\P` |  `\P`   |   `\P`  |   like `\p`, but excluding digits |
|  `/\s` |  `\s`   |   `\s`  |   whitespace character: <Space> and <Tab> |
|  `/\S` |  `\S`   |   `\S`  |   non-whitespace character; opposite of \s |
|  `/\d` |  `\d`   |   `\d`  |   digit:              `[0-9]` |
|  `/\D` |  `\D`   |   `\D`  |   non-digit:          `[^0-9]` |
|  `/\x` |  `\x`   |   `\x`  |   hex digit:          `[0-9A-Fa-f]` |
|  `/\X` |  `\X`   |   `\X`  |   non-hex digit:          `[^0-9A-Fa-f]` |
|  `/\o` |  `\o`   |   `\o`  |   octal digit:            `[0-7]` |
|  `/\O` |  `\O`   |   `\O`  |   non-octal digit:        `[^0-7]` |
|  `/\w` |  `\w`   |   `\w`  |   word character:         `[0-9A-Za-z_]` |
|  `/\W` |  `\W`   |   `\W`  |   non-word character:     `[^0-9A-Za-z_]` |
|  `/\h` |  `\h`   |   `\h`  |   head of word character:     `[A-Za-z_]` |
|  `/\H` |  `\H`   |   `\H`  |   non-head of word character: `[^A-Za-z_]` |
|  `/\a` |  `\a`   |   `\a`  |   alphabetic character:       `[A-Za-z]` |
|  `/\A` |  `\A`   |   `\A`  |   non-alphabetic character:   `[^A-Za-z]` |
|  `/\l` |  `\l`   |   `\l`  |   lowercase character:        `[a-z]` |
|  `/\L` |  `\L`   |   `\L`  |   non-lowercase character:    `[^a-z]` |
|  `/\u` |  `\u`   |   `\u`  |   uppercase character:        `[A-Z]` |
|  `/\U` |  `\U`   |   `\U`  |   non-uppercase character     `[^A-Z]` |
|  `/\_` |  `\_x`  |   `\_x` |   where x is any of the characters above: character |

see more at `:h regexp`

- `%s/pattern//gn`, count of matches
- `%s/pattern//n`, count of lines with matches
- `%s///n`, count of current word
- `:10,50s/pattern//gn`, line 10 to line 50
- `:s/\[\d\{,3\}\]//g`, delete `[1]`-like ref links in wikipedia
- `:%s/^\(.*\)(/\L\1/`, cmake, lowercase commands

---

Some DSA keys are not considered secure anymore by OpenSSH 7. Adding
"PubkeyAcceptedKeyTypes ssh-dss" to `~/.ssh/config` helps.

---

```cpp
    bool operator == (const ref_ptr& rp) const { return (_ptr==rp._ptr); }
    bool operator == (const T* ptr) const { return (_ptr==ptr); }
    friend bool operator == (const T* ptr, const ref_ptr& rp) { return (ptr==rp._ptr); }

    bool operator != (const ref_ptr& rp) const { return (_ptr!=rp._ptr); }
    bool operator != (const T* ptr) const { return (_ptr!=ptr); }
    friend bool operator != (const T* ptr, const ref_ptr& rp) { return (ptr!=rp._ptr); }

    bool operator < (const ref_ptr& rp) const { return (_ptr<rp._ptr); }

// follows is an implmentation of the "safe bool idiom", details can be found at:
//   http://en.wikibooks.org/wiki/More_C%2B%2B_Idioms/Safe_bool
//   http://lists.boost.org/Archives/boost/2003/09/52856.php

private:
    typedef T* ref_ptr::*unspecified_bool_type;

public:
    // safe bool conversion
    operator unspecified_bool_type() const { return valid()? &ref_ptr::_ptr : 0; }
#endif

    T& operator*() const { return *_ptr; }
    T* operator->() const { return _ptr; }
    T* get() const { return _ptr; }

    bool operator!() const   { return _ptr==0; } // not required
    bool valid() const       { return _ptr!=0; }

    /** release the pointer from ownership by this ref_ptr<>, decrementing the
     * objects refencedCount() via unref_nodelete() to prevent the Object
     * object from being deleted even if the reference count goes to zero.  Use
     * when using a local ref_ptr<> to an Object that you want to return from a
     * function/method via a C pointer, whilst preventing the normal ref_ptr<>
     * destructor from cleaning up the object. When using release() you are
     * implicitly expecting other code to take over management of the object,
     * otherwise a memory leak will result. */
    T* release() { T* tmp=_ptr; if (_ptr) _ptr->unref_nodelete(); _ptr=0; return tmp; }

    void swap(ref_ptr& rp) { T* tmp=_ptr; _ptr=rp._ptr; rp._ptr=tmp; }
```

---

* If ... Else ... Paradigm

* [Cognitive Bias](http://en.wikipedia.org/wiki/List_of_cognitive_biases)

---------------------------- ------------------------------------------------
**Name**                     **Description**

Ambiguity effect             The tendency to avoid options for which missing
                             information makes the probability seem "unknown".

Anchoring or focalism        The tendency to rely too heavily, or "anchor",
                             on one trait or piece of information when
                             making decisions (usually the first piece of
                             information that we acquire on that subject)

Anthropomorphism             The tendency to characterize animals, objects,
                             and abstract concepts as possessing human-like
                             traits, emotions, and intentions.

Attentional bias             The tendency of our perception to be affected by
                             our recurring thoughts.

Automation bias              The tendency to excessively depend on automated
                             systems which can lead to erroneous automated
                             information overriding correct decisions.

Availability heuristic       The tendency to overestimate the likelihood of
                             events with greater "availability" in memory,
                             which can be influenced by how recent the
                             memories are or how unusual or emotionally
                             charged they may be.

Availability cascade         A self-reinforcing process in which a
                             collective belief gains more and more
                             plausibility through its increasing repetition
                             in public discourse (or "repeat something long
                             enough and it will become true").

Backfire effect              When people react to disconfirming evidence by
                             strengthening their beliefs.

Bandwagon effect             The tendency to do (or believe) things because
                             many other people do (or believe) the same.
                             Related to groupthink and herd behavior.

Base rate fallacy or         The tendency to ignore base rate information
Base rate neglect            (generic, general information) and focus on
                             specific information (information only
                             pertaining to a certain case).

Belief bias                  An effect where someone's evaluation of the
                             logical strength of an argument is biased by
                             the believability of the conclusion.

Bias blind spot              The tendency to see oneself as less biased than
                             other people, or to be able to identify more
                             cognitive biases in others than in oneself.

Cheerleader effect           The tendency for people to appear more
                             attractive in a group than in isolation.

Choice-supportive bias       The tendency to remember one's choices as
                             better than they actually were.

Clustering illusion          The tendency to overestimate the importance of
                             small runs, streaks, or clusters in large
                             samples of random data (that is, seeing phantom
                             patterns).

Confirmation bias            The tendency to search for, interpret, focus on
                             and remember information in a way that confirms
                             one's preconceptions.

Congruence bias              The tendency to test hypotheses exclusively
                             through direct testing, instead of testing
                             possible alternative hypotheses.

Conjunction fallacy          The tendency to assume that specific conditions
                             are more probable than general ones.

Conservatism (Bayesian)      The tendency to revise one's belief
                             insufficiently when presented with new evidence.

Contrast effect              The enhancement or reduction of a certain
                             perception's stimuli when compared with a
                             recently observed, contrasting object.

Curse of knowledge           When better-informed people find it extremely
                             difficult to think about problems from the
                             perspective of lesser-informed people.

Declinism                    The belief that a society or institution is
                             tending towards decline. Particularly, it is
                             the predisposition to view the past favourably
                             and future negatively.

Decoy effect                 Preferences for either option A or B changes in
                             favor of option B when option C is presented,
                             which is similar to option B but in no way
                             better.

Denomination effect          The tendency to spend more money when it is
                             denominated in small amounts (e.g., coins)
                             rather than large amounts (e.g., bills).

Disposition effect           The tendency to sell an asset that has
                             accumulated in value and resist selling an
                             asset that has declined in value.

Distinction bias             The tendency to view two options as more
                             dissimilar when evaluating them simultaneously
                             than when evaluating them separately.

Dunning-Kruger effect        The tendency for unskilled individuals to
                             overestimate their own ability and the tendency
                             for experts to underestimate their own ability.

Duration neglect             The neglect of the duration of an episode in
                             determining its value

Empathy gap                  The tendency to underestimate the influence or
                             strength of feelings, in either oneself or others.

Endowment effect             The tendency for people to demand much more to
                             give up an object than they would be willing to
                             pay to acquire it.

Essentialism                 Categorizing people and things according to
                             their essential nature, in spite of
                             variations.[dubious – discuss]

Exaggerated expectation      Based on the estimates, real-world evidence
                             turns out to be less extreme than our
                             expectations (conditionally inverse of the
                             conservatism bias).

Experimenter's or            The tendency for experimenters to believe,
expectation bias             certify, and publish data that agree with their
                             expectations for the outcome of an experiment,
                             and to disbelieve, discard, or downgrade the
                             corresponding weightings for data that appear
                             to conflict with those expectations.

Focusing effect              The tendency to place too much importance on
                             one aspect of an event.

Forer effect or              The observation that individuals will give high
Barnum effect                accuracy ratings to descriptions of their
                             personality that supposedly are tailored
                             specifically for them, but are in fact vague
                             and general enough to apply to a wide range of
                             people. This effect can provide a partial
                             explanation for the widespread acceptance of
                             some beliefs and practices, such as astrology,
                             fortune telling, graphology, and some types of
                             personality tests.

Framing effect               Drawing different conclusions from the same
                             information, depending on how that information
                             is presented

Frequency illusion           The illusion in which a word, a name, or other
                             thing that has recently come to one's attention
                             suddenly seems to appear with improbable
                             frequency shortly afterwards (not to be
                             confused with the recency illusion or selection
                             bias). Colloquially, this illusion is known as
                             the Baader-Meinhof Phenomenon.

Functional fixedness         Limits a person to using an object only in the
                             way it is traditionally used.

Gambler's fallacy            The tendency to think that future probabilities
                             are altered by past events, when in reality
                             they are unchanged. The fallacy arises from an
                             erroneous conceptualization of the law of large
                             numbers. For example, "I've flipped heads with
                             this coin five times consecutively, so the
                             chance of tails coming out on the sixth flip is
                             much greater than heads."

Hard–easy effect             Based on a specific level of task difficulty,
                             the confidence in judgments is too conservative
                             and not extreme enough

Hindsight bias               Sometimes called the "I-knew-it-all-along"
                             effect, the tendency to see past events as
                             being predictable at the time those events
                             happened.

Hot-hand fallacy             The "hot-hand fallacy" (also known as the "hot
                             hand phenomenon" or "hot hand") is the
                             fallacious belief that a person who has
                             experienced success with a random event has a
                             greater chance of further success in additional
                             attempts.

Hyperbolic discounting       Discounting is the tendency for people to have
                             a stronger preference for more immediate
                             payoffs relative to later payoffs.  Hyperbolic
                             discounting leads to choices that are
                             inconsistent over time –people make choices
                             today that their future selves would prefer not
                             to have made, despite using the same reasoning.
                             Also known as current moment bias,
                             present-bias, and related to Dynamic
                             inconsistency.

Identifiable victim effect   The tendency to respond more strongly to a
                             single identified person at risk than to a
                             large group of people at risk.

Illusion of control          The tendency to overestimate one's degree of
                             influence over other external events.

Illusion of validity         Belief that furtherly acquired information
                             generates additional relevant data for
                             predictions, even when it evidently does not.

Illusory correlation         Inaccurately perceiving a relationship between
                             two unrelated events.

Impact bias                  The tendency to overestimate the length or the
                             intensity of the impact of future feeling states.

Information bias             The tendency to seek information even when it
                             cannot affect action.

Insensitivity to             The tendency to under-expect variation in small
sample size                  samples.

Irrational escalation        The phenomenon where people justify increased
                             investment in a decision, based on the
                             cumulative prior investment, despite new
                             evidence suggesting that the decision was
                             probably wrong. Also known as the sunk cost
                             fallacy.

Less-is-better effect        The tendency to prefer a smaller set to a
                             larger set judged separately, but not jointly.

Loss aversion                The disutility of giving up an object is
                             greater than the utility associated with
                             acquiring it. (see also Sunk cost effects and
                             endowment effect).

Mere exposure effect         The tendency to express undue liking for things
                             merely because of familiarity with them.

Money illusion               The tendency to concentrate on the nominal
                             value (face value) of money rather than its
                             value in terms of purchasing power.

Moral credential effect      The tendency of a track record of non-prejudice
                             to increase subsequent prejudice.

Negativity effect            The tendency of people, when evaluating the
                             causes of the behaviors of a person they
                             dislike, to attribute their positive behaviors
                             to the environment and their negative behaviors
                             to the person's inherent nature.

Negativity bias              Psychological phenomenon by which humans have a
                             greater recall of unpleasant memories compared
                             with positive memories.

Neglect of probability       The tendency to completely disregard
                             probability when making a decision under
                             uncertainty.

Normalcy bias                The refusal to plan for, or react to, a
                             disaster which has never happened before.

Not invented here            Aversion to contact with or use of products,
                             research, standards, or knowledge developed
                             outside a group. Related to IKEA effect.

Observer-expectancy effect   When a researcher expects a given result and
                             therefore unconsciously manipulates an
                             experiment or misinterprets data in order to
                             find it (see also subject-expectancy effect).

Omission bias                The tendency to judge harmful actions as worse,
                             or less moral, than equally harmful omissions (inactions).

Optimism bias                The tendency to be over-optimistic,
                             overestimating favorable and pleasing outcomes
                             (see also wishful thinking, valence effect,
                             positive outcome bias).

Ostrich effect               Ignoring an obvious (negative) situation.

Outcome bias                 The tendency to judge a decision by its
                             eventual outcome instead of based on the
                             quality of the decision at the time it was
                             made.

Overconfidence effect        Excessive confidence in one's own answers to
                             questions. For example, for certain types of
                             questions, answers that people rate as "99%
                             certain" turn out to be wrong 40% of the time.

Pareidolia                   A vague and random stimulus (often an image or
                             sound) is perceived as significant, e.g.,
                             seeing images of animals or faces in clouds,
                             the man in the moon, and hearing non-existent
                             hidden messages on records played in reverse.

Pessimism bias               The tendency for some people, especially those
                             suffering from depression, to overestimate the
                             likelihood of negative things happening to
                             them.

Planning fallacy             The tendency to underestimate task-completion
                             times.

Post-purchase                The tendency to persuade oneself through
rationalization              rational argument that a purchase was good value.

Pro-innovation bias          The tendency to have an excessive optimism
                             towards an invention or innovation's usefulness
                             throughout society, while often failing to
                             identify its limitations and weaknesses.

Pseudocertainty effect       The tendency to make risk-averse choices if the
                             expected outcome is positive, but make
                             risk-seeking choices to avoid negative
                             outcomes.

Reactance                    The urge to do the opposite of what someone
                             wants you to do out of a need to resist a
                             perceived attempt to constrain your freedom of
                             choice (see also Reverse psychology).

Reactive devaluation         Devaluing proposals only because they
                             purportedly originated with an adversary.

Recency illusion             The illusion that a word or language usage is a
                             recent innovation when it is in fact
                             long-established (see also frequency illusion).

Regressive bias              A certain state of mind wherein high values and
                             high likelihoods are overestimated while low
                             values and low likelihoods are
                             underestimated.

Restraint bias               The tendency to overestimate one's ability to
                             show restraint in the face of temptation.
                             Rhyme as reason effect  | Rhyming statements
                             are perceived as more truthful. A famous
                             example being used in the O.J Simpson trial
                             with the defense's use of the phrase "If the
                             gloves don't fit, then you must acquit."

Risk compensation /          The tendency to take greater risks when
Peltzman effect              perceived safety increases.

Selective perception         The tendency for expectations to affect perception.

Semmelweis reflex            The tendency to reject new evidence that
                             contradicts a paradigm.

Social comparison bias       The tendency, when making hiring decisions, to
                             favour potential candidates who don't compete
                             with one's own particular strengths.

Social desirability bias     The tendency to over-report socially desirable
                             characteristics or behaviours in oneself and
                             under-report socially undesirable
                             characteristics or behaviours.

Status quo bias              The tendency to like things to stay relatively
                             the same (see also loss aversion, endowment
                             effect, and system justification).

Stereotyping                 Expecting a member of a group to have certain
                             characteristics without having actual
                             information about that individual.

Subadditivity effect         The tendency to judge probability of the whole
                             to be less than the probabilities of the parts.

Subjective validation        Perception that something is true if a
                             subject's belief demands it to be true. Also
                             assigns perceived connections between
                             coincidences.

Survivorship bias            Concentrating on the people or things that
                             "survived" some process and inadvertently
                             overlooking those that didn't because of their
                             lack of visibility.

Time-saving bias             Underestimations of the time that could be
                             saved (or lost) when increasing (or decreasing)
                             from a relatively low speed and overestimations
                             of the time that could be saved (or lost) when
                             increasing (or decreasing) from a relatively
                             high speed.

Third-person effect          Belief that that mass communicated media
                             messages have a greater effect on others than
                             on themselves.

Triviality /                 The tendency to give disproportionate weight to
Parkinson's Law of           trivial issues. Also known as bikeshedding,
                             this bias explains why an organization may
                             avoid specialized or complex subjects, such as
                             the design of a nuclear reactor, and instead
                             focus on something easy to grasp or rewarding
                             to the average participant, such as the design
                             of an adjacent bike shed.

Unit bias                    The tendency to want to finish a given unit of
                             a task or an item. Strong effects on the
                             consumption of food in particular.

Weber–Fechner law            Difficulty in comparing small differences in
                             large quantities.

Well travelled road effect   Underestimation of the duration taken to traverse
                             oft-traveled routes and overestimation of the
                             duration taken to traverse less familiar
                             routes.

Zero-risk bias               Preference for reducing a small risk to zero
                             over a greater reduction in a larger risk.

Zero-sum heuristic           Intuitively judging a situation to be zero-sum
                             (i.e., that gains and losses are correlated).
                             Derives from the zero-sum game in game theory,
                             where wins and losses sum to zero. The
                             frequency with which this bias occurs may be
                             related to the social dominance orientation
                             personality factor
---------------------------- ------------------------------------------------

* [The 12 Cognitive Bias that Prevent you from Being Rational](http://io9.com/5974468/the-most-common-cognitive-biases-that-prevent-you-from-being-rational)
* [心智工具箱（4）：执行意图 | 阳志平的日志](http://www.douban.com/note/256480522/)

---


mnemonic
英 [nɪ'mɒnɪk] 美 [nɪ'mɑnɪk]

    adj. 记忆的；助记的；记忆术的

 Four core pillars: Mnemonic, Discoverable, Consistent and "Crowd-Configured".

---

* [Language Tags in HTML and XML | W3C](http://www.w3.org/International/articles/language-tags/)


vim

- `:b <TAB>`, list buffers.
- `:b PATTERN<TAB>`, list buffers.
- `:set readonly`
- `:set nomodifable`
- `:setlocal textwidth=70`
- `:ls`, or `:buffers`, `:files`, `:b 5`
- `:bdelete`
- `:help ctrl-w`
- `:ball`, open all buffers in current window
- `ctrl-w o`, leave only one window
- `:help 'switchbuf'`
- `:rew[ind]`, `:E`, `:e .`
- `ctrl-o`, older position
- in dir listing:
    + `o`, `v`: open, open vertically
    + `t`: tab open
    + `p`: preview window
- `ctrl-o`, `ctrl-i`, back and forth
- ` `` `, last position, ` `. `, last edit, read more `:help jumplist`
- `:Sex .`

[我不是为她出发，却为她到达。](http://bbs.nju.edu.cn/bbstcon?board=Girls&file=M.1457382613.A)

:   <!-- `ZAK 同学喜欢`{.tzx-tag} -->

    ```tzx-bigquote
    绝大部分 20 左右的小伙子，心里想的都是付出、责任。他们可能没那么多花招，但是
    愿意做一切喜欢的女孩希望的事情。

    20 左右的小姑娘，心里只想着享受，每天纠结于霸道总裁还是知性暖男，韩国偶吧还
    是欧美猛男。总说再不疯狂就老了，总想着轰轰烈烈的恋爱。

    这时的小伙子想的都是奋斗、闯荡，他们会为自己不如其他小伙子而羞愧，渴望着有
    个公主等着自己呵护，认为通向城堡的路布满荆棘，还有可怕的巨龙。

    他还没有把剑擦亮，却看到公主坐着小马车寻欢作乐去了。

    “你能像吟游诗人一样天天为我讲故事么？”

    “你能像杂技演员一样天天逗我笑么？”

    “当我孤独的时候你却不在我身边，但是侍卫长却能温暖我”

    “我和花花公子在一起真的很开心，他带我四处旅游、喝红酒、吃大餐”

    我能理解，真的。可能你并不是我想象中的公主，但我还是会踏上这条荆棘之路。

    因为我们，是英雄啊

    有一天，在路边的田地里会有一个发髻上插着野花的姑娘，粗糙的手，小麦色的肌肤。

    她不美丽，却愿意对我笑。

    我不是为她出发，却为她到达。
    ```

    两条有意思的回复：
      ~ 公主不是夜总会里的么，600 一个，包夜 1000 多。
      ~ ```tzx-bigquote
        20 岁左右的姑娘遇到一个穷小伙。
        她觉得自己喜欢一个人，养他都行。
        然后姑娘读博去了。
        小伙子回家乡了工作了。
        小伙子很快结婚了。
        姑娘成了大龄单身女博士。
        同龄的男博士们都去找 20 的小姑娘了。
        并不是所有 20 岁的小姑娘都在寻欢作乐，有的搞学习，做实验去了。
        然后就浪费了青春，成了被人嫌弃的女博士。
        为什么你一开始目光都在小公主身上，到最后才发现小村姑呢。
        其实小村姑很多，长得不好看，在这个看脸的社会，你根本看不到。
        ```

[scientific-python-lectures](http://nbviewer.jupyter.org/github/jrjohansson/scientific-python-lectures/blob/master/Lecture-4-Matplotlib.ipynb)

:   To create an 800x400 pixel, 100 dots-per-inch figure, we can do:

    ```python
    fig = plt.figure(figsize=(8,4), dpi=100)
    ```

    ```python
    # code
    fig.savefig("filename.png") # fig.savefig("filename.png", dpi=200)

    # code
    fig, axes = plt.subplots(figsize=(12,3))

    axes.plot(x, y, 'r')
    axes.set_xlabel('x')
    axes.set_ylabel('y')
    axes.set_title('title');

    axes.legend(["curve1", "curve2", "curve3"]);

    ax.legend(loc=0) # let matplotlib decide the optimal location
    ax.legend(loc=1) # upper right corner
    ax.legend(loc=2) # upper left corner
    ax.legend(loc=3) # lower left corner
    ax.legend(loc=4) # lower right corner
    # .. many more options are available
    ```

    ```python
    # MATLAB style line color and style
    ax.plot(x, x**2, 'b.-') # blue line with dots
    ax.plot(x, x**3, 'g--') # green dashed line


    # Python style
    fig, ax = plt.subplots()

    ax.plot(x, x+1, color="red", alpha=0.5) # half-transparant red
    ax.plot(x, x+2, color="#1155dd")        # RGB hex code for a bluish color
    ax.plot(x, x+3, color="#15cc55")        # RGB hex code for a greenish color

    # plot range
    axes[1].axis('tight')
    axes[1].set_yscale("log")

    axes[2].set_ylim([0, 60])
    axes[2].set_xlim([2, 5])

    ax.set_xticks([1, 2, 3, 4, 5])
    ax.set_xticklabels([r'$\alpha$', r'$\beta$', r'$\gamma$', r'$\delta$', r'$\epsilon$'],
                       fontsize=18)

    # scientific notation
    fig, ax = plt.subplots(1, 1)

    ax.plot(x, x**2, x, np.exp(x))
    ax.set_title("scientific notation")

    ax.set_yticks([0, 50, 100, 150])

    from matplotlib import ticker
    formatter = ticker.ScalarFormatter(useMathText=True)
    formatter.set_scientific(True)
    formatter.set_powerlimits((-1,1))
    ax.yaxis.set_major_formatter(formatter)

    # distance between x and y axis and the numbers on the axes
    matplotlib.rcParams['xtick.major.pad'] = 5
    matplotlib.rcParams['ytick.major.pad'] = 5

    fig, ax = plt.subplots(1, 1)

    ax.plot(x, x**2, x, np.exp(x))
    ax.set_yticks([0, 50, 100, 150])

    ax.set_title("label and axis spacing")

    # padding between axis label and axis numbers
    ax.xaxis.labelpad = 5
    ax.yaxis.labelpad = 5

    ax.set_xlabel("x")
    ax.set_ylabel("y");
    ```

---

```python
pd.read_clipboard()
```

---

> You can **think of the meaning of the words column and feature as
> interchangeable** for this notebook.

---


```python
> import re
> str = 'Zhouy a Python learner and i am now learning Regular Expression'
> m = re.match('(\w+)\s',str)
> print m
> print m.group(0)
<MatchObject object>
Zhouy
```

re.match, re.search, re.split, re.findAll, re.replace,

```python
> s = '100 NORTH BROAD ROAD'
> s_new = s[:-4] + s[-4:].replace('ROAD', 'RD.')
> print s_new
100 NORTH BROAD RD.
```

```python
> import re
> s = '100 NORTH BROAD ROAD'
> s_new = re.sub('ROAD$', 'RD.', s)
> print s_new
Out: 100 NORTH BROAD RD.
```

```python
import re
pattern = '^M{0,3}$'
print re.search(pattern, 'M')
```

带有内联注释 (Inline Comments) 的正则表达式

```python
pattern = """
^ # beginning of string
M{0,3} # thousands - 0 to 3 M's
(CM|CD|D?C{0,3}) # hundreds - 900 (CM), 400 (CD), 0-300 (0 to 3 C's),
# or 500-800 (D, followed by 0 to 3 C's)
(XC|XL|L?X{0,3}) # tens - 90 (XC), 40 (XL), 0-30 (0 to 3 X's),
# or 50-80 (L, followed by 0 to 3 X's)
(IX|IV|V?I{0,3}) # ones - 9 (IX), 4 (IV), 0-3 (0 to 3 I's),
# or 5-8 (V, followed by 0 to 3 I's)
$ # end of string
"""
print re.search(pattern, 'M', re.VERBOSE)
```

```python
> import re
> print re.search(r'^(\d{3})-(\d{3})-(\d{4})$','800-555-1212').groups()
800 555 1212
```

```python
import re
print re.search(r'^(\d{3})-(\d{3})-(\d{4})-(\d+)$','800-555-1212-1234').groups()
print re.search(r'^(\d{3})-(\d{3})-(\d{4})-(\d+)$','800 555 1212 1234')
```

`\D 匹配任意字符，除了数字位，+ 表示“1 个或者多个”`

```python
import re
def plural(noun):
    if re.search('[sxz]$', noun):
        return re.sub('$', 'es', noun)
    elif re.search('[^aeioudgkprt]h$', noun):
        return re.sub('$', 'es', noun)
    elif re.search('[^aeiou]y$', noun):
        return re.sub('y$', 'ies', noun)
    else:
        return noun + 's'
```

---

![](http://whudoc.qiniudn.com/python-regexp.png)


[Python正则表达式指南 - AstralWind - 博客园](http://www.cnblogs.com/huxi/archive/2010/07/04/1771073.html)

:   与大多数编程语言相同，正则表达式里使用 `\` 作为转义字符，这就可能造成反斜杠
    困扰。假如你需要匹配文本中的字符 `\`，那么使用编程语言表示的正则表达式里将
    需要4个反斜杠 `\\\\`：前两个和后两个分别用于在编程语言里转义成反斜杠，转换
    成两个反斜杠后再在正则表达式里转义成一个反斜杠。Python 里的原生字符串很好地
    解决了这个问题，这个例子中的正则表达式可以使用 `r"\\"` 表示。同样，匹配一个
    数字的`"\\d"` 可以写成 `r"\d"`。有了原生字符串，你再也不用担心是不是漏写了
    反斜杠，写出来的表达式也更直观。

---

* `pip install --upgrade pip`{.bash}
* `pip install jupyter`{.bash}

Python2 & Python3 on Windows: `python3.bat`
:   ```bash
    @ echo off
    C:\Python34\python.exe %*
    ```
---

附 [In My Secret Life][in-my-secret-life] 的 [歌词][in-my-secret-life-lyrics]：

:   ```tzx-bigquote
    I saw you this morning.
    You were moving so fast.
    Can't seem to loosen my grip
    On the past.
    And I miss you so much.
    There's no one in sight.
    And we're still making love
    In My Secret Life.

    I smile when I'm angry.
    I cheat and I lie.
    I do what I have to do
    To get by.
    But I know what is wrong,
    And I know what is right.
    And I'd die for the truth
    In My Secret Life.

    Hold on, hold on, my brother.
    My sister, hold on tight.
    I finally got my orders.
    I'll be marching through the morning,
    Marching through the night,
    Moving cross the borders
    Of My Secret Life.

    Looked through the paper.
    Makes you want to cry.
    Nobody cares if the people
    Live or die.
    And the dealer wants you thinking
    That it's either black or white.
    Thank G-d it's not that simple
    In My Secret Life.

    I bite my lip.
    I buy what I'm told:
    From the latest hit,
    To the wisdom of old.
    But I'm always alone.
    And my heart is like ice.
    And it's crowded and cold
    In My Secret Life.
    ```

[in-my-secret-life]: http://www.xiami.com/song/1014582?spm=a1z1s.3521865.23309997.2.NsmCfy
[in-my-secret-life-lyrics]: http://www.lyrics.com/in-my-secret-life-lyrics-leonard-cohen.html

---

<!--
http://dict.youdao.com/search?q=
-->

- tantamount
- resemblance
- reciprocal
- adjective
- agitated
- a fortiori
- pathology
- tacitly
- mutatis mutandis
- synonyn
- stymy the enemy
- duel killed in a duel
- friezen
- reciprocal
- informally
- alleged
- anew
- lessen
- reminiscent
- isoscele
- equilateral
- scalene
- inordinate
- doubly
- trichotomy
- legitimate
- execlusively
- parallelogram
- viz.
- conform
- constructible
- unity
- diacritical marks
- etymology
- cognate
- botanical
- synonym
- dichotomy
- flamboyant
- regurgitartion
- gullet
- thrice
- coerced integer
- fallible
- underpaid
- rage \folio
- protractor | 圆规
- plea
- courant
- deplore
- obscured
- stochastic
- residual
- sought after (seek after)
- maneuver
- cramped display style
- secular  世俗
- synoptic gospels 对观福音书的
- designation
- avoirdupois
- obscured
- grook
- slate
- supersed
- stratum
- pipe dreams

---

* [True Table](http://en.wikipedia.org/wiki/Truth_table)

    ```txz-plain
    0            (F F F F)(p, q)            ⊥            false, Opq            Contradiction
    1            (F F F T)(p, q)            NOR            p ↓ q, Xpq            Logical NOR
    2            (F F T F)(p, q)            \nleftarrow            p \nleftarrow q, Mpq            Converse nonimplication
    3            (F F T T)(p, q)            ¬p, ~p            ¬p, Np, Fpq            Negation
    4            (F T F F)(p, q)            \nrightarrow            p \nrightarrow q, Lpq            Material nonimplication
    5            (F T F T)(p, q)            ¬q, ~q            ¬q, Nq, Gpq            Negation
    6            (F T T F)(p, q)            XOR            p ⊕ q, Jpq            Exclusive disjunction
    7            (F T T T)(p, q)            NAND            p ↑ q, Dpq            Logical NAND
    8            (T F F F)(p, q)            AND            p ∧ q, Kpq            Logical conjunction
    9            (T F F T)(p, q)            XNOR            p If and only if q, Epq            Logical biconditional
    10            (T F T F)(p, q)            q            q, Hpq            Projection function
    11            (T F T T)(p, q)            p \rightarrow q            if p then q, Cpq            Material implication
    12            (T T F F)(p, q)            p            p, Ipq            Projection function
    13            (T T F T)(p, q)            p \leftarrow q            p if q, Bpq            Converse implication
    14            (T T T F)(p, q)            OR            p ∨ q, Apq            Logical disjunction
    15            (T T T T)(p, q)            ⊤            true, Vpq            Tautology
    ```

---

Eye exercise for speed reading:
:   ![](http://upload.wikimedia.org/wikipedia/commons/3/3c/Eye-exercise-for-speed-reading_thumb.gif)

Refs & See also
:   * [Visual acuity - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Visual_acuity)
    * [Fixation (visual) - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Fixation_(visual))
    * [Subvocalization - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Subvocalization)
    * [Study skills - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Study_skills)
    * [SQ3R - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/SQ3R)
    * [Tony Buzan - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Tony_Buzan)
    * [Saccade - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Saccade)
    * [Speed reading - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Speed_reading)

---

- **Close your eyes.** Do this sitting up to prevent you from falling asleep.

![][eye-01]

- **Relax your body.** This can help relax your eyes.

![][eye-02]

- **Rub your eyes.** Rub your eyes very gently, as if almost tickling them.

![][eye-03]

- **Relax your face.** move your jaw side to side. Make sure you are not
  pressing your eyebrows together. Relax your cheeks and forehead.

![][eye-04]

- **Try To keep your eyes closed during this process.**

![][eye-05]

- **Gently open your eyes when you are done.** try to barely open them and
  focus on your eyelids. Follow them up and as you look at your eyelids your
  eyes will open up.

![][eye-06]

- **Wash eyes with cold water frequently.**

![][eye-07]

- **Try "pushing" your nose down, this will pull your eyes down with the rest
  of the face**

![][eye-08]

[how-to-relax-your-eyes]: http://www.wikihow.com/Relax-Your-Eyes
[eye-01]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-1.jpg
[eye-02]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-2.jpg
[eye-03]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-3.jpg
[eye-04]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-4.jpg
[eye-05]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-5.jpg
[eye-06]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-6.jpg
[eye-07]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-7.jpg
[eye-08]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-8.jpg

---

**[UrbanDictionary][ud]** 是一个用户定义的单词本网站。

[Roza](http://www.urbandictionary.com/define.php?term=Roza&defid=7301080)
:   Roza means simply beautiful. A girl who has beautiful hair, gorgeous, big
    eyes and a smile that could brighten the ocean.

    She looks gorgeous even in the morning or without any makeup on.  Everytime
    you look at her, she stuns you with her looks n by the way she looks at
    you.

    She is like a rose, closed in the beginning but if you give her time n
    nurture her, she will blossom into a mesmerizing beauty, who u feel blessed
    to have by your side.

    She is smart n amazing just the way she is. The girl of your dreams, she is
    wanted n appreciated by everyone. She is all you could wish for.

      - Guy 1: she is so pretty !!!
      - Guy 2: yeah that she is..cuz she is Roza ...guys usually drool over her
        but she is not just like any other pretty girl ...she is different yet
        amazing.
      - Guy 1: yeah, thats cuz she is Roza i guess Just as beautiful as her
        name :)

[Vagina](http://www.urbandictionary.com/define.php?term=vagina&defid=3998266)
:   a tasty treat

    my vagina smells like sugarcane but taste like flowers

[ud]: http://www.urbandictionary.com/

---

[Pierre de Fermat](http://en.wikipedia.org/wiki/Pierre_de_Fermat)

:   <div class="tzx-fright">
    ![Pierre de Fermat](https://upload.wikimedia.org/wikipedia/commons/f/f3/Pierre_de_Fermat.jpg)
    </div>

    Pierre de Fermat (French: `[pjɛːʁ dəfɛʁma]`; 17 August 1601 – 12 January
    1665) was **a French lawyer** at the Parlement of Toulouse, France, and **a
    mathematician who is given credit for early developments that led to
    infinitesimal calculus, including his technique of adequality**. In
    particular, he is recognized for his discovery of an original method of
    finding the greatest and the smallest ordinates of curved lines, which is
    analogous to that of the differential calculus, then unknown, and his
    research into number theory. He made notable contributions to analytic
    geometry, probability, and optics. He is best known for **Fermat's Last
    Theorem**, which he described in a note at the margin of a copy of
    Diophantus' Arithmetica.

[Johannes Kepler](http://en.wikipedia.org/wiki/Johannes_Kepler)

:   <div class="tzx-fright">
    ![A 1610 portrait of Johannes Kepler by an unknown artist](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Johannes_Kepler_1610.jpg/330px-Johannes_Kepler_1610.jpg)
    </div>

    Johannes Kepler (German: `[ˈkɛplɐ]`; December 27, 1571 – November 15, 1630)
    was **a German mathematician, astronomer, and astrologer**. A key figure in
    the 17th century scientific revolution, he is best known for his laws of
    planetary motion, based on his works Astronomia nova, Harmonices Mundi, and
    Epitome of Copernican Astronomy. These works also provided one of the
    foundations for Isaac Newton's theory of universal gravitation.

    During his career, Kepler was **a mathematics teacher at a seminary
    school** in Graz, Austria, where he became an associate of Prince Hans
    Ulrich von Eggenberg. Later he became an assistant to astronomer Tycho
    Brahe, and eventually the imperial mathematician to Emperor Rudolf II and
    his two successors Matthias and Ferdinand II. He was also a mathematics
    teacher in Linz, Austria, and an adviser to General Wallenstein.
    Additionally, he did fundamental work in the field of optics, invented an
    improved version of the refracting telescope (the Keplerian Telescope), and
    mentioned the telescopic discoveries of his contemporary Galileo Galilei.

    Kepler lived in an era when there was no clear distinction between
    astronomy and astrology, but there was a strong division between astronomy
    (a branch of mathematics within the liberal arts) and physics (a branch of
    natural philosophy). Kepler also incorporated religious arguments and
    reasoning into his work, motivated by the religious conviction and belief
    that God had created the world according to an intelligible plan that is
    accessible through the natural light of reason. Kepler described his new
    astronomy as "celestial physics", as "an excursion into Aristotle's
    Metaphysics", transforming the ancient tradition of physical cosmology by
    treating astronomy as part of a universal mathematical physics.

[Richard Dedekind](http://en.wikipedia.org/wiki/Richard_Dedekind)

:   <div class="tzx-fright">
    ![East German stamp from 1981,
        commemorating Richard Dedekind.](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Stamps_of_Germany_%28DDR%29_1981%2C_MiNr_2605.jpg/330px-Stamps_of_Germany_%28DDR%29_1981%2C_MiNr_2605.jpg)
    </div>

    Julius Wilhelm Richard Dedekind (6 October 1831 – 12 February 1916) was a
    German mathematician who made important contributions to abstract algebra
    (particularly ring theory), algebraic number theory and the definition of
    the real numbers.

    Dedekind's theorem states that if there existed a one-to-one correspondence
    between two sets, then Dedekind said that the two sets were "similar". He
    invoked similarity to give the first precise definition of an infinite set:
    a set is infinite when it is "similar to a proper part of itself," in
    modern terminology, is equinumerous to one of its proper subsets. Thus the
    set N of natural numbers can be shown to be similar to the subset of N
    whose members are the squares of every member of N, (N →N2):

        N    1  2  3  4  5  6  7  8  9  10 ...
                 ↓
        N2   1  4  9  16 25 36 49 64 81 100 ...

[Sir George Stokes, 1st Baronet](http://en.wikipedia.org/wiki/Sir_George_Stokes,_1st_Baronet)

:   <div class="tzx-fright">
    ![](https://upload.wikimedia.org/wikipedia/commons/a/ad/Ggstokes.jpg)
    </div>

    Sir George Gabriel Stokes, 1st Baronet, PRS (`/stoʊks/`; 13 August 1819 –
    1 February 1903), was a mathematician, physicist, politician and theologian.
    Born in Ireland, Stokes spent all of his career at University of Cambridge,
    where he served as the Lucasian Professor of Mathematics from 1849 until
    his death in 1903. Stokes made seminal contributions to fluid dynamics
    (including the Navier–Stokes equations), optics, and mathematical physics
    (including the first version of what is now known as Stokes' theorem). He
    was secretary, then president, of the Royal Society.

[René Descartes](http://en.wikipedia.org/wiki/Ren%C3%A9_Descartes)

:   <div class="tzx-fright">
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Frans_Hals_-_Portret_van_Ren%C3%A9_Descartes.jpg/360px-Frans_Hals_-_Portret_van_Ren%C3%A9_Descartes.jpg)
    </div>

    René Descartes (`/ˈdeɪˌkɑrt/`, French: `[ʁəne dekaʁt]`, 31 March 1596 – 11
    February 1650) was a French philosopher, mathematician and writer who spent
    most of his life in the Dutch Republic. He has **been dubbed the father of
    modern philosophy**, and much subsequent Western philosophy is a response
    to his writings, which are studied closely to this day. In particular, his
    Meditations on First Philosophy continues to be a standard text at most
    university philosophy departments. Descartes' **influence in mathematics is
    equally apparent**; the Cartesian coordinate system — allowing reference to
    a point in space as a set of numbers, and allowing algebraic equations to
    be expressed as geometric shapes in a two-dimensional coordinate system
    (and conversely, shapes to be described as equations) — was named after
    him. He is credited as **the father of analytical geometry**, the bridge
    between algebra and geometry, crucial to the discovery of infinitesimal
    calculus and analysis.  Descartes was also one of the key figures in the
    scientific revolution and has been described as an example of genius. He
    refused to accept the authority of previous philosophers and also refused
    to accept the obviousness of his own senses.

[William Thomson, 1st Baron Kelvin](http://en.wikipedia.org/wiki/William_Thomson,_1st_Baron_Kelvin) `@`{#lord-kelvin .tzx-anchor}

:   <div class="tzx-fright">
    ![Lord Kelvin by Hubert von Herkomer](https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Hubert_von_Herkomer03.jpg/330px-Hubert_von_Herkomer03.jpg)
    </div>

    William Thomson, 1st Baron Kelvin (/ˈkɛlvɪn/; 26 June 1824 – 17 December
    1907) was an **Irish mathematical physicist and engineer** who was born in
    Belfast in 1824. At the University of Glasgow he did important work in the
    mathematical analysis of electricity and formulation of the first and
    second laws of thermodynamics, and did much to unify the emerging
    discipline of physics in its modern form. He worked closely with
    mathematics professor Hugh Blackburn in his work. He also had a career as
    an electric telegraph engineer and inventor, which **propelled him into the
    public eye and ensured his wealth, fame and honour**. For his work on the
    transatlantic telegraph project he was knighted by Queen Victoria, becoming
    Sir William Thomson. He had extensive maritime interests and was most noted
    for his work on the mariner's compass, which had previously been limited in
    reliability.

    **Absolute temperatures are stated in units of kelvin in his honour.**
    While the existence of a lower limit to temperature (absolute zero) was
    known prior to his work, Lord Kelvin is widely known for determining its
    correct value as approximately −273.15 degree Celsius or −459.67 degree
    Fahrenheit.

---

**AFI's 100 Years... 100 Movie Quotes** (AFI: American Film Institute)

:   #. "Frankly, my dear, **I don't give a damn.**" *Gone with the Wind*
    #. "**I'm going to make him an offer he can't refuse.**" *The Godfather*
    #. "You don't understand! I coulda had class. I coulda been a contender. I
       could've been somebody, instead of a bum, which is what I am." *On the
       Waterfront*
    #. "Toto, I've got a feeling we're not in Kansas anymore." *The Wizard of Oz*
    #. "Here's looking at you, kid." *Casablanca*
    #. "Go ahead, make my day." *Sudden Impact*
    #. "All right, Mr. DeMille, I'm ready for my close-up." *Sunset Boulevard*
    #. "Fasten your seatbelts. It's going to be a bumpy night." *All About Eve*
    #. "**You talkin' to me?**" *Texi Driver*
    #. "What we've got here is failure to communicate" *Cool Hand Luke*
    #. "I love the smell of napalm (凝固汽油弹) in the morning." * Apocalypse Now*
    #. "Love means never having to say you're sorry." *Love Story*
    #. "The stuff that dreams are made of." *The Maltese Falcon*
    #. "E.T. phone home." *E.T. the Extra-Terrestrial*
    #. "They call me Mister Tibbs!" *In the Heat of the Night*
    #. "Rosebud." *Citizen Kane*
    #. "Made it, Ma! Top of the world!" *White Heat*
    #. "I'm as mad as hell, and I'm not going to take this anymore!" *Network*
    #. "Louis, I think this is the beginning of a beautiful friendship."  *Casablanca*
    #. "**A census taker once tried to test me. I ate his liver with some fava beans
       (`['fa:və]` 蚕豆) and a nice Chianti (`[ki'ænti]` 基安蒂红葡萄酒).**"
       *The Silence of the Lambs*
    #. "Bond. James Bond." *Dr. No*
    #. "There's no place like home." *Sunset Boulevard*
    #. "I am big! It's the pictures that got small." *Sunset Boulevard*
    #. "Show me the money!" *Jerry Maguire*
    #. "Why don't you come up sometime and see me?" *She Done Him Wrong*
    #. "I'm walking here! I'm walking here!" *Midnight Cowboy*
    #. "Play it, Sam. Play 'As Time Goes By.'" *Casablanca*
    #. "You can't handle the truth!" *A Few Good Men*
    #. "I want to be alone." *Grand Hotel*
    #. "After all, tomorrow is another day!" *Gone with the Wind*
    #. "Round up the usual suspects." *Casablanca*
    #. "I'll have what she's having." *When Harry Met Sally...*
    #. "You know how to whistle, don't you, Steve? You just put your lips
        together and blow." *To Have and Have Not*
    #. "You're gonna need a bigger boat." *Jaws*
    #. "Badges? We ain't got no badges! We don't need no badges! I don't have
        to show you any stinking badges!" *The Treasure of the Sierra Madre*
    #. "I'll be back." *The Terminator*
    #. "Today, I consider myself the luckiest man on the face of the Earth."
        *The Pride of Yankees*
    #. "If you build it, he will come." *Field of Dreams*
    #. "Mama always said **life was like a box of chocolates**. You never know what
        you're gonna get." *Forrest Gump*
    #. "We rob banks." *Bonnie and Clyde*
    #. "Plastics." *The Graduate*
    #. "We'll always have Paris." *Casablanca*
    #. "I see dead people." *The Sixth Sense*
    #. "Stella! Hey, Stella!" *A Streetcar Named Desire*
    #. "Oh, Jerry, don't let's ask for the moon. We have the stars." *Now, Voyager*
    #. "Shane. Shane. Come back!" *Shane*
    #. "Well, nobody's perfect." *Some Like It Hot*
    #. "**It's alive! It's alive!**" *Frankenstein*
    #. "Houston, we have a problem." *Apollo 13*
    #. "You've got to ask yourself one question: 'Do I feel lucky?' Well, do ya, punk?" *Dirty Harry*
    #. "You had me at 'hello.'" *Jerry Maguire*
    #. "One morning I shot an elephant in my pajamas. How he got in my pajamas,
        I don't know." *Animal Crackers*
    #. "There's no crying in baseball!" *A League of Their Own*
    #. "La-dee-da, la-dee-da." *Annie Hall*
    #. "A boy's best friend is his mother." *Psycho*
    #. "**Greed, for lack of a better word, is good.**" *Wall Street*
    #. "Keep your friends close, but your enemies closer." *The Godfather Part II*
    #. "As God is my witness, I'll never be hungry again." *Gone with the Wind*
    #. "Well, here's another nice mess you've gotten me into!" *Sons of the Desert*
    #. "Say 'hello' to my little friend!" *Scarface*
    #. "What a dump." *Beyond the Forest*
    #. "Mrs. Robinson, you're trying to seduce me. Aren't you?" *The Graduate*
    #. "Gentlemen, you can't fight in here! This is the War Room!" *Dr.
        Strangelove or: How I Learned to Stop Worrying and Love the Bomb*
    #. "Elementary, my dear Watson." *The Adventures of Sherlock Holmes*
    #. "Get your stinking paws off me, you damned dirty ape." *Planet of the Apes*
    #. "Of all the gin joints in all the towns in all the world, she walks into mine." *Casablanca*
    #. "Here's Johnny!" *The Shining*
    #. "They're here!" *Poltergeist*
    #. "Is it safe?" *Marathon Man*
    #. "Wait a minute, wait a minute. You ain't heard nothin' yet!" *The Jazz Singer*
    #. "No wire hangers, ever!" *Mommie Dearest*
    #. "Mother of mercy, is this the end of Rico?" *Little Caesar*
    #. "Forget it, Jake, it's Chinatown." *Chinatown*
    #. "I have always depended on the kindness of strangers." *A Streetcar Named Desire*
    #. "Hasta la vista, baby." *Terminator 2: Judgment Day*
    #. "Soylent Green is people!" *Soylent Green*
    #. "Open the pod bay doors please, HAL." *2001: A Space Odyssey*
    #. Striker: "Surely you can't be serious." Rumack: "I am serious...and don't call me Shirley." *Airplane!*
    #. "Yo, Adrian!" *Rocky*
    #. "Hello, gorgeous." *Funny Girl*
    #. "Toga! Toga!" *National Lampoon's Animal House*
    #. "Listen to them. Children of the night. What music they make." *Dracula*
    #. "Oh, no, it wasn't the airplanes. It was Beauty killed the Beast." *King Kong*
    #. "**My precious.**" *The Lord of the Rings: The Two Towers*
    #. "Attica! Attica!" *Dog Day Afternoon*
    #. "Sawyer, you're going out a youngster, but you've got to come back a star!" *42nd Street*
    #. "Listen to me, mister. You're my knight in shining armor. Don't you
        forget it. You're going to get back on that horse, and I'm going to be
        right behind you, holding on tight, and away we're gonna go, go, go!"
        *On Golden Pond*
    #. "Tell 'em to go out there with all they got and win just one for the Gipper." *Knute Rockne, All American*
    #. "A martini. Shaken, not stirred." *Godfather*
    #. "Who's on first?" *The Naughty Nineties*
    #. "Cinderella story. Outta nowhere. A former greenskeeper, now, about to
        become the Masters champion. It looks like a mirac...It's in the hole!
        It's in the hole! It's in the hole!" *Caddyshack*
    #. "Life is a banquet, and most poor suckers are starving to death!" *Auntie Mame*
    #. "I feel the need—the need for speed!" *Top Gun*
    #. "Carpe diem. Seize the day, boys. Make your lives extraordinary." *Dead Poets Society*
    #. "Snap out of it!" *Moonstruck*
    #. "My mother thanks you. My father thanks you. My sister thanks you. And I
        thank you." *Yankee Doodle Dandy*
    #. "Nobody puts Baby in a corner." *Dirty Dancing*
    #. "I'll get you, my pretty, and your little dog too!" *The Wizard Oz*
    #. "**I'm the king of the world!**" *Titanic*

More quotes

:   #. “曾经有一份真诚的爱情摆在我的面前，我没有珍惜，等到失去的时候才追悔莫及
        ，人世间最痛苦的事情莫过于此。如果上天能够给我一个重新来过的机会，我会
        对那个女孩子说三个字：‘我爱你’。如果非要给这份爱加上一个期限，我希望是
        ，一万年。” **大话西游**
    #. 你可以说我是跑龙套的，但是你不可以说我是“臭跑龙套”的！ *喜剧之王*
    #. 所以说做妖就像做人一样，要有仁慈的心，有了仁慈的心，就不再妖，是人妖。*
        大话西游*
    #. 不是我喜欢打架，是有很多人喜欢被我打！ *鹿鼎记*
    #. "你那忧郁的眼神,唏嘘的胡渣子,神呼奇迹的刀法,还有那杯晶莹透亮的马蒂尼,都
        掩饰不住你的出众,但是再怎么出众也要把过夜费付了吧" *零零柒*
    #. “准确的说，我是一个演员。”
    #. 你可以叫我“跑龙套的”，但不可以前面不要加"死”字！！！！ *喜剧之王*
    #. 实在令人太失望。听到你的声音，我还以为你是一个很有感性，很有电影幻想的人
        。看你这一身造型，就知道你太没有内涵了 *92家有喜事*
    #. 喂!你介不介意把裤子拉高一点,让我看看你的腿? *少林足球*
    #. 大不了我发个毒誓，如果以后我再赌钱的话，就让天下最丑的女人夜夜轮奸，直到
        体无完肤，摇摇欲坠为止，这样可以了吧 ！ *唐伯虎点秋香*
    #. 阿飞正传*：我听别人说这世界上有一种鸟是没有脚的，它只能一直飞呀飞呀，飞
        累了就在风里面睡觉，这种鸟一辈子只能下地一次，那边一次就是它死亡的时候。
    #. 英雄本色*：有信心不一定会成功，没信心一定不会成功。
    #. 笑傲江湖之东方不败*：有人就有恩怨，有恩怨就有江湖。人就是江湖，你怎么退出？
    #. *开往春天的地铁*：我一直怀疑27岁是否还会有一见钟情的倾心。我不知道该说什
        么，我只是突然在那一刻很想念她。
    #. *情人*：我以经老了，在人来人往的大厅，有一位老人他向我走来，他说我认识你
        ，那时的你还很年轻，美丽，你的身边有许许多多的追求者，不过跟那时相比，
        我更喜欢现在你这经历了沧桑的容颜？
    #. *春光乍泄*：一直以为我跟他不一样，原来寂寞的时候，所有的人都一样。
    #. *春光乍泻*：每个成功男人的背后，都有一个女人。每个不成功男人的背后，都有两个。
    #. *好想好想谈恋爱*：**承诺是男人给女人的定心丸。吃了安心，虽然这定心丸的药性
        有待考证，但女人都希望吃了再说。**
    #. “如果，我多一张船票，你会不会跟我一起走？” *花样年华*
    #. 往往都是事情改变人，人却改变不了事情。 *无间道*
    #. 我最讨厌你们这些打劫的了，一点技术含量都没有！！！！ *天下无贼*
    #. 给我一个机会，我想做好人！ *无间道*
    #. 做人如果没有梦想，那跟咸鱼有什么区别？ *少林足球*

Refs

:   * [AFI 100 Year ... 100 Movie Quotes](http://en.wikipedia.org/wiki/AFI%27s_100_Years...100_Movie_Quotes)
    * <http://www.lz13.cn/jingdiantaici/7987.html>
    * <http://blog.sina.com.cn/s/blog_701c7e240100nmwj.html>
    * <http://www.china.com.cn/info/zhuanti/zxc08/2008-01/24/content_9582793.htm>

---

What is MathJax?

:   * Open-source JS display engine
    * Modular, load components only when necessary
    * Rich API

Getting Started

:   * Using the MathJax Content Delivery Network (CDN)
    * Add these to your src code (.html or .md)

    ```html
    <script type="text/javascript"
             src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
    </script>
    ```

* MathJax hosted on GitHub: [mathjax | MathJax](https://github.com/mathjax/MathJax/)
* TeX and LaTeX input
    * display: `$$...$$` or `\[...\]`
    * inline: `\(...\)` (default) or `$...$`
* MathML, etc.

Installing and Testing MathJax

Loading and Configuring MathJax

Common Configurations

Use `default.js` or use this request:

```html
<script type="text/javascript"
         src="path-to-MathJax/MathJax.js?config=default">
</script>
```

Using MathJax in popular web platforms

MathJax TeX and LaTeX Support

Note that the TeX input processor implements only the **math-mode** macros of TeX and LaTeX, not the **text-mode** macros.

In Markdown, the back-tick (` ` `) is used to mark **verbatim text**

And sometime you may double backslashs to escape

```latex
\\begin{array}{cc}
  a & b \\\\
  c & c
\\end{array}
```

You can use the `\def`, `\newcommand`, `\renewcommand`, `\newenvironment`,
`\renewenvironment`, and `\let` commands to **create your own macros and
environments**.

Some Examples I Tried

```plain
We'll define our own macros and use them, $$
   \def\RR{\bf R}
   \def\bold#1{\bf #1}
   \bold{``bold\ face"}$$
And do that again: \(\bold{``bold\ face"}\)
And do that again: $$\bold{``bold\ face"}$$
And do that again: $$\bold{``bold  face"}$$
```

And you could create a file in `MathJax/config/local` called `local.js`
that contains your macro definitions:

```javascript
MathJax.Hub.Config({
  TeX: {
    Macros: {
      RR: "{\\bf R}",
      bold: ["{\\bf #1}",1]
    }
  }
});

MathJax.Ajax.loadComplete("[MathJax]/config/local/local.js");
```

and then load it along with your main configuration file on the script that
loads MathJax.js:

`<script src="/MathJax/MathJax.js?config=TeX-AMS_HTML,local/local.js"></script>`{.html}

Automatic Equation Numbering

:   ```html
    <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
      TeX: { equationNumbers: { autoNumber: "AMS" } }
    });
    </script>
    ```

Refs
:   * [MathJax Document](http://docs.mathjax.org/en/latest/mathjax.html)

---

- **AC** – Axiom of Choice.
- **AL** - Action limit.
- **Ai** – [Airy function.](http://en.wikipedia.org/wiki/Airy_function)
- **Alt** – alternating group (Alt(n) is also written as An.)
- **An.** - alternate
- **Aut** – automorphism group.
- **Bi** – Airy function of the second kind.
- **Card** – cardinality(基数) of a set. (Card(X) is also written #X, ♯X or
  |X|.)
- **Chi** - hyperbolic cosine (ch*x*) integral function. `ch+i`
- **Ci** - cosine integral function.
- **Cl** – topological closure.
- **DNE** - a solution for an expression does not exist, or is undefined.
  Generally used with limits and integrals. **D**efine **N**one **E**quation
  *or* **D**oes **N**ot **E**xist
- **Ei** – exponential integral function.
- **End** – categories of endomorphisms.
- **Eqn** – equation.
- **Ext** – Ext functor.
- **FOL** – first-order logic.
- **Frob** – Frobenius endomorphism.
- **GF** - Galois field.
- **GL** – general linear group.
- **Gal** – Galois group. (Also written as Γ.)
- **HOL** – higher-order logic.
- **Hom** – Hom functor.
- **Im** – either image of a function or imaginary part of a complex number.
- **Ker** – kernel.
- **LHS** – left-hand side of an equation.
- **LST** – language of set theory.
- **Li** – offset logarithmic integral function.
- **NAND** – not-and in logic, *see* [*Sheffer stroke*](http://en.wikipedia.org/wiki/Sheffer_stroke)
- **NOR** – not-or in logic.
- **NTS** – need to show.
- **No.** – number.
- **PGL** – projective general linear group.
- **PSL** – projective special linear group.
- **Pr** – probability of an event.
- **QED** – "Quod erat demonstrandum", a Latin phrase used at the end of a
  definitive proof. [how to
  pronunce?](http://zh.forvo.com/word/quod_erat_demonstrandum/)
- **QEF** – "quod erat faciendum", a Latin phrase sometimes used at the end of
  a construction.
- **RHS** – right-hand side of an equation.
- **RTP** – required to prove.
- **RV** – Random Variable. (or as R.V.)
- **Re** – real part of a complex number.[2] (Also written \Re.)
- **Rk** – rank.
- **SL** – special linear group.
- **STP** – it is sufficient to prove.
- **Shi - hyperbolic sine integral function.
- **Si - sine integral function.
- **Soln** – solution.
- **Sp** – linear span of a set of vectors. (Also written with angle brackets.)
- **Spec** – spectrum of a ring.
- **Sym** – symmetric group (Sym(n) is also written as Sn.)
- **TFAE** – the following are equivalent.
- **Thm** – theorem.
- **Tor** – Tor functor.
- **Tr** – trace, either the field trace, or the trace of a matrix or linear
  transformation.
- **WMA** - we may assume.
- **WO** – well-ordered set.
- **WTP** – want to prove.
- **WTS** – want to show.
- **W^5** – which was what we wanted. Synonym of Q.E.D.
- **XOR** - exclusive or in logic.
- **ZF** – Zermelo–Fraenkel axioms of set theory.
- **ZFC** – Zermelo–Fraenkel axioms (with the Axiom of Choice) of set theory.
- **a.e.** – almost everywhere
- **a.s.** – almost surely
- **adj** – adjugate of a matrix.
- **arccos** – inverse cosine function.
- **arccosec** – inverse cosecant function. (Also written as arccsc.)
- **arccot** – inverse cotangent function.
- **arccsc** – inverse cosecant function. (Also written as arccosec.)
- **arcosech** – inverse hyperbolic cosecant function. (Also written as
  arcsch.)
- **arcosh** – inverse hyperbolic cosine function.
- **arcoth** – inverse hyperbolic cotangent function.
- **arcsch** – inverse hyperbolic cosecant function. (Also written as
  arcosech.)
- **arcsec** – inverse secant function.
- **arcsin** – inverse sine function.
- **arctan** – inverse tangent function.
- **arg max** – argument of the maximum.
- **arg min** – argument of the minimum.
- **arg** – argument of a complex number.
- **arsech** – inverse hyperbolic secant function.
- **arsinh** – inverse hyperbolic sine function.
- **artanh** – inverse hyperbolic tangent function.
- **cdf** – cumulative distribution function.
- **char** – characteristic
- **cis - cos + i sin function.
- **cod** – codomain. (Also written as codom.)
- **codom** – codomain. (Also written as cod.)
- **cos** – cosine function.
- **cosec** – cosecant function. (Also written as csc.)
- **cosech** – hyperbolic cosecant function. (Also written as csch.)
- **cosh** – hyperbolic cosine function.
- **cot** – cotangent function.
- **coth** – hyperbolic cotangent function.
- **cov** – covariance of a pair of random variables.
- **csc** – cosecant function. (Also written as cosec.)
- **csch** – hyperbolic cosecant function. (Also written as cosech.)
- **curl** – curl of a vector field. (Also written as rot.)
- **deg** – degree of a polynomial. (Also written as ∂.)
- **del** – del, a differential operator. (Also written as [\nabla][nabla]（倒
  三角）).)
- **det** – determinant of a matrix or linear transformation.
- **dim** – dimension of a vector space.
- **div** – divergence of a vector field.
- **dkl** – decalitre（ 公斗；十升）`deca + litre（就是我们常用的 1L 矿泉水）`
- **dom** – domain of a function. (Or, more generally, a relation.)
- **erf** – [error function](http://en.wikipedia.org/wiki/Error_function)
- **erfc** – complementary error function.
- **exp** – exponential function. (exp x is also written as ex.)
- **ext** – exterior.
- **gcd** – greatest common divisor of two numbers. (Also written as hcf.)
- **glb** – greatest lower bound. (Also written as inf.)
- **grad** – gradient of a scalar field.
- **hcf** – highest common factor of two numbers. (Also written as gcd.)
- **iff** – if and only if.
- **iid - independent and identically distributed random variables.
- **inf** – infimum of a set. (Also written as glb.)
- **int** – interior.
- **lcm** – lowest common multiple of two numbers.
- **lerp** – linear interpolation.
- **lg** – common logarithm (log10) or binary logarithm (log2).
- **li** – logarithmic integral function or linearly independent.
- **lim inf** – limit inferior.
- **lim sup** – limit superior.
- **lim** – limit of a sequence, or of a function.
- **ln** – natural logarithm, loge.
- **log** – logarithm. (If without a subscript, this may mean either log10 or
  loge.)
- **logh** – natural logarithm, loge.
- **lub** – least upper bound. (Also written sup.)
- **max** – maximum of a set.
- **min** – minimum of a set.
- **mod** – modulo.
- **mx** – matrix.
- **ord** – ordinal number of a well-ordered set.
- **pdf** – probability density function.
- **pf** – proof.
- **pmf** – probability mass function.
- **ran** – range of a function.
- **resp** – respectively.
- **rng** – non-unital ring.
- **rot** – rotor of a vector field. (Also written as curl.)
- **sec** – secant function.
- **sech** – hyperbolic secant function.
- **seg** – initial segment of.
- **sgn** – signum function.
- **sin** – sine function.
- **sinc** – sinc function.
- **sinh** – hyperbolic sine function.
- **st** – such that or so that.
- **sup** – supremum of a set. (Also written lub.)
- **supp** – support of a function.
- **tan** – tangent function.
- **tanh** – hyperbolic tangent function.
- **undef** - a function or expression is undefined
- **var** – variance of a random variable.
- **walog** – without any loss of generality.
- **wff** – well-formed formula.
- **whp - with high probability.
- **wlog** – without loss of generality.
- **wrt** – with respect to or with regard to.

[nabla]: http://en.wikipedia.org/wiki/Nabla_symbol

Refs & See also
:   * <https://en.wikipedia.org/wiki/List_of_mathematical_jargon>
    * <https://en.wikipedia.org/wiki/List_of_mathematical_abbreviations>

---

M3U

:   M3U is a computer file format that contains multimedia playlists.  It
    originally was designed for audio files, such as MP3, but various software
    now uses it to play video file lists.  M3U's can also point a media player
    to an online streaming audio source.  Numerous media players and software
    applications supports the M3U file format.

    Samples

      * Example 1

        ```tzx-plain
        #EXTM3U

        #EXTINF:123, Sample artist - Sample title
        C:\Documents and Settings\I\My Music\Sample.mp3

        #EXTINF:321,Example Artist - Example title
        C:\Documents and Settings\I\My Music\Greatest Hits\Example.ogg
        ```
      * Example 2

        ```tzx-plain
        C:\Music
        ```

      * Example 3

        ```tzx-plain
        #EXTM3U

        #EXTINF:123, Sample artist - Sample title
        ```

      * Example 4

        ```tzx-plain
        Alternative\Band - Song.mp3
        Classical\Other Band - New Song.mp3
        Stuff.mp3
        D:\More Music\Foo.mp3
        ..\Other Music\Bar.mp3
        http://emp.cx:8000/Listen.pls
        http://www.example.com/~user/Mine.mp3
        ```

      * Example 5

        ```tzx-plain
        #EXTM3U
        #EXTINF:233,Everclear - So Much For The Afterglow
        Alternative\everclear_SMFTA.mp3
        #EXTINF:227,Weird Al - Everything You Know Is Wrong
        Comedy\Weird_Al_Everything_You_Know_Is_Wrong.mp3
        #EXTINF:187,Weird Al Yankovic - This is the Life
        Weird_Al_This_Is_The_Life.mp3
        #EXTINF:129,Weird Al: Bad Hair Day - Gump
        http://www.site.com/~user/gump.mp3
        #EXTINF:-1,My Cool Stream
        http://www.site.com:8000/listen.pls
        ```

    `#EXTM3U` At the VERY top of the Extended M3U file is this header, which
    signifies this is an extended M3U file. `#EXTM3U` must be all capital
    letters.

    `#EXTINF:233,Everclear - So Much For The Afterglow`
      ~ This is the line that tends to confuse people. Let's break it up into parts
      ~ `#EXTINF`: This signifies this is an Extended Information field. It
        ends with a colorn.
      ~ `233`: This is the time of the file in seconds followed by a comma.
        (233 seconds = 3:53). On the last entry there is a negative one, this
        is usually seen on streams, it tells the program to ignore the time
        entry.
      ~ `Everclear - So Much For The Afterglow`: Title to display. This is
        usually the title read from the file name or ID3 tags. This also can be
        the name of a stream. No characters follow the title.
      ~ `Alternative\everclear_SMFTA.mp3`: File location as described above
        with basic playlists.

M3U8

:   M3U8 is a Unicode UTF-8 version of M3U files for support of
    Unicode/"international" characters/text. M3U8 follows the same principles as
    explained above.

    Example

    ```tzx-plain
    #EXTM3U

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1217000,RESOLUTION=1280x720
    2013girlwithipad-1200k.m3u8

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=824000,RESOLUTION=896x504
    2013girlwithipad-800k.m3u8

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=629000,RESOLUTION=640x360
    2013girlwithipad-600k.m3u8

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=430000,RESOLUTION=512x288
    2013girlwithipad-400k.m3u8

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=216000,RESOLUTION=400x300
    2013girlwithipad-200k.m3u8

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=121000,RESOLUTION=400x300
    2013girlwithipad-110k.m3u8
    ```

[PLS]: http://en.wikipedia.org/wiki/PLS_(file_format)
[M3U]: https://gist.github.com/district10/a982f999a7e853d3ca1b

Refs & See also

:   * [M3U - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/M3U)
    * [M3U Play List Specification - The Schworak Site](http://schworak.com/blog/e39/m3u-play-list-specification/)
    * [M3U and PLS Specification - Winamp Forums](http://forums.winamp.com/showthread.php?threadid=65772)
    * [What is an .M3U8 file? m3u8 template - GravityLab](http://www.gravlab.com/2013/07/05/what-is-an-m3u8-file/)
    * [PLS (file format) - Wikipedia, the free encyclopedia][PLS]
    * [draft-pantos-http-live-streaming-08 - HTTP Live Streaming](http://tools.ietf.org/html/draft-pantos-http-live-streaming-08)

---

[Leonhard Euler](https://en.wikipedia.org/wiki/Leonhard_Euler)

:   <div class="tzx-fright">
    ![Leonhard Euler](https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Leonhard_Euler_2.jpg/220px-Leonhard_Euler_2.jpg)
    </div>

    Leonhard Euler (`/ˈɔɪlər/ oy-lər`;) (15 April 1707 – 18 September 1783) was
    a pioneering **Swiss mathematician and physicist**. He made important
    discoveries in fields as diverse as infinitesimal calculus and graph
    theory. He also introduced much of the modern mathematical terminology and
    notation, particularly for mathematical analysis, such as the notion of a
    mathematical function. He is also renowned for his work in mechanics, fluid
    dynamics, optics, astronomy, and music theory.

    无穷小量积分、图论，现代的数学命名和标记

    Euler is considered to be the **pre-eminent mathematician of the 18th
    century** and one of the greatest mathematicians to have ever lived. He is
    also one of the most prolific mathematicians; his collected works fill 60–
    80 [quarto（四开）](http://en.wikipedia.org/wiki/Quarto) volumes. He spent
    most of his adult life in St.  Petersburg, Russia, and in Berlin, Prussia.

    A statement attributed to Pierre-Simon Laplace expresses Euler's influence
    on mathematics: "*Read Euler, read Euler, he is the master of us all.*"

[Karl Weierstrass](http://en.wikipedia.org/wiki/Karl_Weierstrass)

:   <div class="tzx-fright">
    ![Karl Weierstrass](http://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Karl_Weierstrass.jpg/220px-Karl_Weierstrass.jpg)
    </div>

    Karl Theodor Wilhelm Weierstrass (German: `Weierstraß`; 31 October 1815 –
    19 February 1897) was a German mathematician often cited as the "father of
    modern analysis". Despite leaving university without a degree, he studied
    mathematics and trained as a teacher, eventually teaching mathematics,
    physics, botany and gymnastics.

    Weierstrass formalized the definition of the continuity of a function, and
    used it and the concept of uniform convergence to prove the Bolzano–
    Weierstrass theorem and Heine–Borel theorem.


[Joseph-Louis Lagrange](http://en.wikipedia.org/wiki/Joseph-Louis_Lagrange)

:   <div class="tzx-fright">
    ![Joseph-Louis Lagrange](http://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Lagrange_portrait.jpg/200px-Lagrange_portrait.jpg)
    </div>

    Joseph-Louis Lagrange (`/ləˈɡrɑːndʒ/` or /ləˈɡreɪndʒ/; French: `[laˈgrɑ̃ʒ]`),
    born Giuseppe Lodovico Lagrangia or Giuseppe Ludovico De la Grange
    Tournier (also reported as Giuseppe Luigi Lagrange or Lagrangia) (25
    January 1736 – 10 April 1813), was an Italian Enlightenment Era
    mathematician and astronomer. He made significant contributions to the
    fields of analysis, number theory, and both classical and celestial
    mechanics.

    In 1766, on the recommendation of Euler and d'Alembert, Lagrange succeeded
    Euler as the director of mathematics at the Prussian Academy of Sciences in
    Berlin, Prussia, where he stayed for over twenty years, producing volumes
    of work and winning several prizes of the French Academy of Sciences.
    Lagrange's treatise on analytical mechanics (Mécanique analytique, 4. ed.,
    2 vols. Paris: Gauthier-Villars et fils, 1888–89), written in Berlin and
    first published in 1788, offered the most comprehensive treatment of
    classical mechanics since Newton and formed a basis for the development of
    mathematical physics in the nineteenth century.

    In 1787, at age 51, he moved from Berlin to Paris and became a member of
    the French Academy. He remained in France until the end of his life. He was
    significantly involved in the decimalisation in Revolutionary France,
    became the first professor of analysis at the École Polytechnique upon its
    opening in 1794, founding member of the Bureau des Longitudes and Senator
    in 1799.

[James Stirling]

:   <div class="tzx-fright">
    ![Stirling's grave in Greyfriars Kirkyard, Edinburgh, general view. It is
        the small plate between the two large tablets.](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Grave_of_James_Stirling_%281692-1770%29%2C_general_view.jpg/330px-Grave_of_James_Stirling_%281692-1770%29%2C_general_view.jpg)
    </div>

    James Stirling (May 1692 Garden, Stirlingshire – 5 December 1770 Edinburgh)
    was a Scottish mathematician. The Stirling numbers, Stirling permutations,
    and Stirling's approximation are named after him. He also proved the
    correctness of Isaac Newton's classification of cubics.

    Stirling was the third son of Archibald Stirling of Garden, Stirling of
    Keir (Lord Garden, a lord of session). At 18 years of age he went to
    Balliol College, Oxford, where, chiefly through the influence of the Earl
    of Mar, he was nominated (1711) one of Bishop Warner's exhibitioners (or
    Snell exhibitioner) at Balliol. In 1715 he was expelled on account of his
    correspondence with members of the Keir and Garden families, who were noted
    Jacobites, and had been accessory to the "Gathering of the Brig o' Turk" in
    1708.

[James Stirling]: http://en.wikipedia.org/wiki/James_Stirling_(mathematician)

[Joseph Fourier](http://en.wikipedia.org/wiki/Joseph_Fourier)

:   <div class="tzx-fright">
    ![Jean-Baptiste Joseph Fourier](https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Fourier2.jpg/375px-Fourier2.jpg)
    </div>

    Jean-Baptiste Joseph Fourier (`/ˈfʊəriˌeɪ, -iər/`; French: `[fuʁje]`; 21
    March 1768 – 16 May 1830) was a French mathematician and physicist born in
    Auxerre and best known for initiating the investigation of Fourier series
    and their applications to problems of heat transfer and vibrations. The
    Fourier transform and Fourier's law are also named in his honour. Fourier
    is also generally credited with the discovery of the greenhouse effect.

    There were three important contributions in this work, one purely
    mathematical, two essentially physical. In mathematics, Fourier claimed
    that any function of a variable, whether continuous or discontinuous, can
    be expanded in a series of sines of multiples of the variable. Though this
    result is not correct without additional conditions, Fourier's observation
    that some discontinuous functions are the sum of infinite series was a
    breakthrough. The question of determining when a Fourier series converges
    has been fundamental for centuries.  Joseph-Louis Lagrange had given
    particular cases of this (false) theorem, and had implied that the method
    was general, but he had not pursued the subject.  Peter Gustav Lejeune
    Dirichlet was the first to give a satisfactory demonstration of it with
    some restrictive conditions. This work provides the foundation for what is
    today known as the Fourier transform.

    One important physical contribution in the book was the concept of
    dimensional homogeneity in equations; i.e. an equation can be formally
    correct only if the dimensions match on either side of the equality;
    Fourier made important contributions to dimensional analysis. The other
    physical contribution was Fourier's proposal of his partial differential
    equation for conductive diffusion of heat. This equation is now taught to
    every student of mathematical physics.

[Henri Poincaré](http://en.wikipedia.org/wiki/Henri_Poincar%C3%A9)

:   <div class="tzx-fright">
    ![Henri Poincaré](http://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Henri_Poincar%C3%A9-2.jpg/230px-Henri_Poincar%C3%A9-2.jpg)
    </div>

    Jules Henri Poincaré (French: `[ʒyl ɑ̃ʁi pwɛ̃kaʁe]`; 29 April 1854 – 17 July
    1912) was a French mathematician, theoretical physicist, engineer, and a
    philosopher of science. He is often described as a polymath, and in
    mathematics as The Last Universalist by Eric Temple Bell, since he excelled
    in all fields of the discipline as it existed during his lifetime.

    As a mathematician and physicist, he made many original fundamental
    contributions to pure and applied mathematics, mathematical physics, and
    celestial mechanics. He was responsible for formulating the Poincaré
    conjecture, which was one of the most famous unsolved problems in
    mathematics until it was solved in 2002–2003. In his research on the
    three-body problem, Poincaré became the first person to discover a chaotic
    deterministic system which laid the foundations of modern chaos theory. He
    is also considered to be one of the founders of the field of topology.

    Poincaré made clear the importance of paying attention to the invariance of
    laws of physics under different transformations, and was the first to
    present the Lorentz transformations in their modern symmetrical form.
    Poincaré discovered the remaining relativistic velocity transformations and
    recorded them in a letter to Dutch physicist Hendrik Lorentz (1853–1928) in
    1905. Thus he obtained perfect invariance of all of Maxwell's equations, an
    important step in the formulation of the theory of special relativity.

    The Poincaré group used in physics and mathematics was named after him.

[Issac Newton](http://en.wikipedia.org/wiki/Isaac_Newton)

:   <div class="tzx-fright">
    ![Issac Newton](http://upload.wikimedia.org/wikipedia/commons/thumb/3/39/GodfreyKneller-IsaacNewton-1689.jpg/220px-GodfreyKneller-IsaacNewton-1689.jpg)
    </div>

    Sir Isaac Newton Kt, PRS (`/ˈnjuːtən/`; 25 December 1642 – 20 March
    1726/27) was an English physicist and mathematician (described in his own
    day as a "natural philosopher") who is widely recognised as one of the most
    influential scientists of all time and a key figure in the scientific
    revolution. His book Philosophiæ Naturalis Principia Mathematica
    ("Mathematical Principles of Natural Philosophy"), first published in 1687,
    laid the foundations for classical mechanics. Newton made seminal
    contributions to optics, and he shares credit with Gottfried Leibniz for
    the development of calculus.

    Newton's Principia formulated the laws of motion and universal gravitation,
    which dominated scientists' view of the physical universe for the next
    three centuries. By deriving Kepler's laws of planetary motion from his
    mathematical description of gravity, and then using the same principles to
    account for the trajectories of comets, the tides, the precession of the
    equinoxes, and other phenomena, Newton removed the last doubts about the
    validity of the heliocentric model of the Solar System. This work also
    demonstrated that the motion of objects on Earth and of celestial bodies
    could be described by the same principles. His prediction that Earth should
    be shaped as an oblate spheroid was later vindicated by the measurements of
    Maupertuis, La Condamine, and others, which helped convince most
    Continental European scientists of the superiority of Newtonian mechanics
    over the earlier system of Descartes.

    Newton built the first practical reflecting telescope and developed a
    theory of colour based on the observation that a prism decomposes white
    light into the many colours of the visible spectrum. He formulated an
    empirical law of cooling, studied the speed of sound, and introduced the
    notion of a Newtonian fluid. In addition to his work on calculus, as a
    mathematician Newton contributed to the study of power series, generalised
    the binomial theorem to non-integer exponents, developed a method for
    approximating the roots of a function, and classified most of the cubic
    plane curves.

    Newton was a fellow of Trinity College and the second Lucasian Professor of
    Mathematics at the University of Cambridge. He was a devout but unorthodox
    Christian and, unusually for a member of the Cambridge faculty of the day,
    he refused to take holy orders in the Church of England, perhaps because he
    privately rejected the doctrine of the Trinity. Beyond his work on the
    mathematical sciences, Newton dedicated much of his time to the study of
    biblical chronology and alchemy, but most of his work in those areas
    remained unpublished until long after his death. In his later life, Newton
    became president of the Royal Society. Newton served the British government
    as Warden and Master of the Royal Mint.

[Henri Lebesgue](http://en.wikipedia.org/wiki/Henri_Lebesgue)

:   <div class="tzx-fright">
    ![Henri Lebesgue](http://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Lebesgue_2.jpeg/225px-Lebesgue_2.jpeg)
    </div>

    Henri Léon Lebesgue (French: `[ɑ̃ʁi leɔ̃ ləbɛɡ]`; June 28, 1875 –
    July 26, 1941) was a French mathematician most famous for his theory of
    integration, which was a generalization of the 17th century concept of
    integration—summing the area between an axis and the curve of a function
    defined for that axis. His theory was published originally in his
    dissertation Intégrale, longueur, aire ("Integral, length, area") at the
    University of Nancy during 1902.

    <div class="tzx-fleft">
    ![Approximation of the Riemann integral by rectangular areas.](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Riemann.gif/330px-Riemann.gif)
    </div>

    Lebesgue invented a new method of integration to solve this problem.
    Instead of using the areas of rectangles, which put the focus on the domain
    of the function, Lebesgue looked at the codomain of the function for his
    fundamental unit of area. Lebesgue's idea was to first define measure, for
    both sets and functions on those sets. He then proceeded to build the
    integral for what he called simple functions; measurable functions that
    take only finitely many values. Then he defined it for more complicated
    functions as the least upper bound of all the integrals of simple functions
    smaller than the function in question.

    Lebesgue integration has the property that every function defined over a
    bounded interval with a Riemann integral also has a Lebesgue integral, and
    for those functions the two integrals agree. Furthermore, every bounded
    function on a closed bounded interval has a Lebesgue integral and there are
    many functions with a Lebesgue integral that have no Riemann integral.

    <div class="tzx-fright">
    ![Method of Lebesgue's integration.](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Integral_of_positive_function.svg/330px-Integral_of_positive_function.svg.png)
    </div>

    As part of the development of Lebesgue integration, Lebesgue invented the
    concept of measure, which extends the idea of length from intervals to a
    very large class of sets, called measurable sets (so, more precisely,
    simple functions are functions that take a finite number of values, and
    each value is taken on a measurable set). Lebesgue's technique for turning
    a measure into an integral generalises easily to many other situations,
    leading to the modern field of measure theory.

    The Lebesgue integral is deficient in one respect. The Riemann integral
    generalises to the improper Riemann integral to measure functions whose
    domain of definition is not a closed interval. The Lebesgue integral
    integrates many of these functions (always reproducing the same answer when
    it did), but not all of them. For functions on the real line, the Henstock
    integral is an even more general notion of integral (based on Riemann's
    theory rather than Lebesgue's) that subsumes both Lebesgue integration and
    improper Riemann integration. However, the Henstock integral depends on
    specific ordering features of the real line and so does not generalise to
    allow integration in more general spaces (say, manifolds), while the
    Lebesgue integral extends to such spaces quite naturally.

[Guillaume de l'Hôpital](http://en.wikipedia.org/wiki/Guillaume_de_l%27H%C3%B4pital)

:   <div class="tzx-fright">
    ![Guillaume de l'Hôpital](http://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Guillaume_de_l%27H%C3%B4pital.jpg/220px-Guillaume_de_l%27H%C3%B4pital.jpg)
    </div>

    Guillaume François Antoine, Marquis de l'Hôpital (French: `[ɡijom fʁɑ̃swa ɑ̃
    twan maʁki də lopital]`; 1661 – 2 February 1704) was a French
    mathematician. His name is firmly associated with l'Hôpital's rule for
    calculating limits involving indeterminate forms 0/0 and ∞/∞. Although the
    rule did not originate with l'Hôpital, it appeared in print for the first
    time in his treatise on the infinitesimal calculus, entitled Analyse des
    Infiniment Petits pour l'Intelligence des Lignes Courbes. This book was a
    first systematic exposition of differential calculus. Several editions and
    translations to other languages were published and it became a model for
    subsequent treatments of calculus.

    L'Hôpital was born into a military family. His father was Anne-Alexandre de
    l'Hôpital, a Lieutenant-General of the King's army, Comte de Sainte-Mesme
    and the first squire of Gaston, Duke of Orléans. His mother was Elisabeth
    Gobelin, a daughter of Claude Gobelin, Intendant in the King's Army and
    Councilor of the State.

    L'Hôpital abandoned a military career due to poor eyesight and pursued his
    interest in mathematics, which was apparent since his childhood. For a
    while, he was a member of Nicolas Malebranche's circle in Paris and it was
    there that in 1691 he met young Johann Bernoulli, who was visiting France
    and agreed to supplement his Paris talks on infinitesimal calculus with
    private lectures to l'Hôpital at his estate at Oucques. In 1693, l'Hôpital
    was elected to the French academy of sciences and even served twice as its
    vice-president. Among his accomplishments were the determination of the arc
    length of the logarithmic graph, one of the solutions to the
    brachistochrone problem, and the discovery of a turning point singularity
    on the involute of a plane curve near an inflection point.

    L'Hôpital exchanged ideas with Pierre Varignon and corresponded with
    Gottfried Leibniz, Christiaan Huygens, and Jacob and Johann Bernoulli. His
    Traité analytique des sections coniques et de leur usage pour la résolution
    des équations dans les problêmes tant déterminés qu'indéterminés ("Analytic
    treatise on conic sections") was published posthumously in Paris in 1707.

[Gottfried Willhelm Leibniz](http://en.wikipedia.org/wiki/Gottfried_Wilhelm_Leibniz)

:   <div class="tzx-fright">
    ![leibniz-portrait](http://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Gottfried_Wilhelm_von_Leibniz.jpg/220px-Gottfried_Wilhelm_von_Leibniz.jpg)
    </div>

    Gottfried Wilhelm (von) Leibniz (`/ˈlaɪbnɪts/`; German: `[ˈɡɔtfʁiːt ˈvɪlhɛ
    lm fɔn ˈlaɪbnɪts]` or `[ˈlaɪpnɪts]`; French: Godefroi Guillaume Leibnitz;
    July 1, 1646 – November 14, 1716) was **a German polymath and philosopher
    who occupies a prominent place in the history of mathematics and the
    history of philosophy. Scholars including Bertrand Russell believe Leibniz
    developed calculus independently of Isaac Newton, and Leibniz's notation
    has been widely used ever since it was published. It was only in the 20th
    century that his Law of Continuity and Transcendental Law of Homogeneity
    found mathematical implementation (by means of non-standard analysis). He
    became one of the most prolific inventors in the field of mechanical
    calculators.  While working on adding automatic multiplication and division
    to Pascal's calculator, he was the first to describe a pinwheel calculator
    in 1685 and invented the Leibniz wheel, used in the arithmometer, the first
    mass-produced mechanical calculator. He also refined the binary number
    system, which is the foundation of virtually all digital computers.

    In philosophy, Leibniz is most noted for his **optimism**, i.e. his
    conclusion that our Universe is, in a restricted sense, the best possible
    one that God could have created, an idea that was often lampooned by others
    such as Voltaire. Leibniz, along with René Descartes and Baruch Spinoza,
    was one of the three great 17th-century advocates of rationalism. The work
    of Leibniz anticipated modern logic and analytic philosophy, but his
    philosophy also looks back to the scholastic tradition, in which
    conclusions are produced by applying reason of first principles or prior
    definitions rather than to empirical evidence.

    Leibniz made major contributions to physics and technology, and anticipated
    notions that surfaced much later in philosophy, probability theory,
    biology, medicine, geology, psychology, linguistics, and computer science.
    He wrote works on philosophy, politics, law, ethics, theology, history, and
    philology. Leibniz's contributions to this vast array of subjects were
    scattered in various learned journals, in tens of thousands of letters, and
    in unpublished manuscripts. He wrote in several languages, but primarily in
    Latin, French, and German. There is no complete gathering of the writings
    of Leibniz.

[Giuseppe Peano](http://en.wikipedia.org/wiki/Giuseppe_Peano)

:   <div class="tzx-fright">
    ![Giuseppe Peano](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Giuseppe_Peano.jpg/330px-Giuseppe_Peano.jpg)
    </div>

    Giuseppe Peano (Italian: `[dʒuˈzɛppe peˈaːno]`; 27 August 1858 – 20 April
    1932) was **an Italian mathematician**. The author of over 200 books and
    papers, he was a founder of mathematical logic and set theory, to which he
    contributed much notation. The standard axiomatization of the natural
    numbers is named the Peano axioms in his honor. As part of this effort, he
    made key contributions to the modern rigorous and systematic treatment of
    the method of mathematical induction. He spent most of his career teaching
    mathematics at the University of Turin.

    After his mother died in 1910, Peano divided his time between teaching,
    working on texts aimed for secondary schooling including a dictionary of
    mathematics, and developing and promoting his and other auxiliary
    languages, becoming a revered member of the international auxiliary
    language movement. He used his membership of the Accademia dei Lincei to
    present papers written by friends and colleagues who were not members (the
    Accademia recorded and published all presented papers given in sessions).

    During the years 1913–1918, Peano published several papers that dealt with
    the remainder term for various numerical quadrature formulas, and
    introduced the Peano kernel.

    In 1925 Peano switched Chairs unofficially from Infinitesimal Calculus to
    Complementary Mathematics, a field which better suited his current style of
    mathematics. This move became official in 1931. Giuseppe Peano continued
    teaching at Turin University until the day before he died, when he suffered
    a fatal heart attack.

[George Green](http://en.wikipedia.org/wiki/George_Green)

:   <div class="tzx-fright">
    ![The title page to Green's original essay on what is now known as
        Green's theorem.](http://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/GreenEssay.png/220px-GreenEssay.png)
    </div>

    George Green (14 July 1793 – 31 May 1841) was a British mathematical
    physicist who wrote An Essay on the Application of Mathematical Analysis to
    the Theories of Electricity and Magnetism (Green, 1828). The essay
    introduced several important concepts, among them a theorem similar to the
    modern Green's theorem, the idea of potential functions as currently used
    in physics, and the concept of what are now called Green's functions. Green
    was the first person to create a mathematical theory of electricity and
    magnetism and his theory formed the foundation for the work of other
    scientists such as James Clerk Maxwell, William Thomson, and others. His
    work on potential theory ran parallel to that of Carl Friedrich Gauss.

    Green's life story is remarkable in that he was almost entirely
    self-taught. He received only about one year of formal schooling as a
    child, between the ages of 8 and 9.

    In his final years at Cambridge, Green became rather ill, and in 1840 he
    returned to Sneinton, only to die a year later. There are rumours that at
    Cambridge, Green had "succumbed to alcohol", and some of his earlier
    supporters, such as Sir Edward Bromhead, tried to distance themselves from
    him.

    Green's work was not well known in the mathematical community during his
    lifetime. Besides Green himself, the first mathematician to quote his 1828
    work was the Briton Robert Murphy (1806–1843) in his 1833 work. In 1845,
    four years after Green's death, Green's work was rediscovered by the young
    William Thomson (then aged 21), later known as [Lord Kelvin](#lord-kelvin), who popularised
    it for future mathematicians. According to the book "George Green" by D.M.
    Cannell, William Thomson noticed Murphy's citation of Green's 1828 essay
    but found it difficult to locate Green's 1828 work; he finally got some
    copies of Green's 1828 work from William Hopkins in 1845.

[Gamma Function](http://en.wikipedia.org/wiki/Gamma_function)

:   <div class="tzx-fleft">
    ![](http://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Factorial_Interpolation.svg/250px-Factorial_Interpolation.svg.png)
    </div>

    <div class="tzx-fright">
    ![](http://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Jahnke_gamma_function.png/300px-Jahnke_gamma_function.png)
    </div>

    In mathematics, the gamma function (represented by the capital Greek letter
    Γ) is an extension of the factorial function, with its argument shifted
    down by 1, to real and complex numbers. That is, if n is a positive
    integer:

    $$\Gamma(n) = (n-1)!.$$

    The gamma function is defined for all complex numbers except the
    non-positive integers. For complex numbers with a positive real part, it is
    defined via a convergent improper integral:

    $$\Gamma(t) = \int_0^\infty x^{t-1} e^{-x}\,dx.$$

    This integral function is extended by analytic continuation to all complex
    numbers except the non-positive integers (where the function has simple
    poles), yielding the meromorphic function we call the gamma function. In
    fact the gamma function corresponds to the Mellin transform of the negative
    exponential function:

    <!--
    no mathjax support in reads.html (supporting mathjax in this page will slow page rendering)
    $$\Gamma(t) = { \mathcal M e^{-x} }(t).$$

    use codecogs instead
    ![](http://latex.codecogs.com/gif.latex?%5CGamma%28t%29%20%3D%20%5C%7B%20%5Cmathcal%20M%20e%5E%7B-x%7D%20%5C%7D%28t%29.)

    or use wikipedia equation image url
    ![](https://upload.wikimedia.org/math/c/a/5/ca5a7eb3de47e2cc3c06348778780ee8.png)

    eh... sames they are all the same... BTW, Codecogs is open source.
    -->

    ![](https://upload.wikimedia.org/math/c/a/5/ca5a7eb3de47e2cc3c06348778780ee8.png)

    The gamma function is a component in various probability-distribution
    functions, and as such it is applicable in the fields of probability and
    statistics, as well as combinatorics.

[Georg Cantor](http://en.wikipedia.org/wiki/Georg_Cantor)

:   <div class="tzx-fleft">
    ![Georg Cantor](http://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Georg_Cantor2.jpg/225px-Georg_Cantor2.jpg)
    </div>

    Georg Ferdinand Ludwig Philipp Cantor (`/ˈkæntɔːr/` KAN-tor; German: `[ˈɡeɔ
    ʁkˈfɛʁdinant ˈluːtvɪç ˈfɪlɪp ˈkantɔʁ]`; March 3 [O.S. February 19] 1845 –
    January 6, 1918) was a German mathematician. He invented set theory, which
    has become a fundamental theory in mathematics. Cantor established the
    importance of one-to-one correspondence between the members of two sets,
    defined infinite and well-ordered sets, and proved that the real numbers
    are more numerous than the natural numbers. In fact, Cantor's method of
    proof of this theorem implies the existence of an "infinity of infinities".
    He defined the cardinal and ordinal numbers and their arithmetic. Cantor's
    work is of great philosophical interest, a fact of which he was well aware.

    Cantor's theory of transfinite numbers was originally regarded as so
    counter-intuitive – even shocking – that it encountered resistance from
    mathematical contemporaries such as Leopold Kronecker and Henri Poincaré
    and later from Hermann Weyl and L. E. J. Brouwer, while Ludwig Wittgenstein
    raised philosophical objections. Cantor, a devout Lutheran, believed the
    theory had been communicated to him by God. Some Christian theologians
    (particularly neo-Scholastics) saw Cantor's work as a challenge to the
    uniqueness of the absolute infinity in the nature of God – on one occasion
    equating the theory of transfinite numbers with pantheism – a proposition
    that Cantor vigorously rejected.

    The objections to Cantor's work were occasionally fierce: Henri Poincaré
    referred to his ideas as a "grave disease" infecting the discipline of
    mathematics, and Leopold Kronecker's public opposition and personal attacks
    included describing Cantor as a "scientific charlatan", a "renegade" and a
    "corrupter of youth." Kronecker objected to Cantor's proofs that the
    algebraic numbers are countable, and that the transcendental numbers are
    uncountable, results now included in a standard mathematics curriculum.
    Writing decades after Cantor's death, Wittgenstein lamented that
    mathematics is "ridden through and through with the pernicious idioms of
    set theory," which he dismissed as "utter nonsense" that is "laughable" and
    "wrong". Cantor's recurring bouts of depression from 1884 to the end of his
    life have been blamed on the hostile attitude of many of his
    contemporaries, though some have explained these episodes as probable
    manifestations of a bipolar disorder.

    The harsh criticism has been matched by later accolades. In 1904, the Royal
    Society awarded Cantor its Sylvester Medal, the highest honor it can confer
    for work in mathematics. David Hilbert defended it from its critics by
    declaring: "No one shall expel us from the Paradise that Cantor has
    created."

---

Αα	Alpha	Νν	Nu
Ββ	Beta	Ξξ	Xi
Γγ	Gamma	Οο	Omicron
Δδ	Delta	Ππ	Pi
Εε	Epsilon	Ρρ	Rho
Ζζ	Zeta	Σσ	Sigma
Ηη	Eta		Ττ	Tau
Θθ	Theta	Υυ	Upsilon
Ιι	Iota	Φφ	Phi
Κκ	Kappa	Χχ	Chi
Λλ	Lambda	Ψψ	Psi
Μμ	Mu		Ωω	Omega

* [Brook Taylor](http://en.wikipedia.org/wiki/Brook_Taylor)
![][taylor-portrait]

[taylor-portrait]: http://upload.wikimedia.org/wikipedia/commons/thumb/2/25/BTaylor.jpg/220px-BTaylor.jpg

* [Carl Friedrich Gauss](http://en.wikipedia.org/wiki/Carl_Friedrich_Gauss)
![gauss-portrait]

[gauss-portrait]: http://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Carl_Friedrich_Gauss.jpg/220px-Carl_Friedrich_Gauss.jpg

![](http://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/KnuthAtOpenContentAlliance.jpg/192px-KnuthAtOpenContentAlliance.jpg)

Donald Ervin Knuth (/kəˈnuːθ/ kə-nooth; born January 10, 1938) is an American
computer scientist, mathematician, and Professor Emeritus at Stanford
University.

美国程序员、数学家、Stanford 大学教授

He is the author of the multi-volume work The Art of Computer Programming.
Knuth has been called the "father" of the analysis of algorithms. He
contributed to the development of the rigorous analysis of the computational
complexity of algorithms and systematized formal mathematical techniques for
it. In the process he also popularized the [asymptotic notation]. In addition
to fundamental contributions in several branches of theoretical computer
science, Knuth is the creator of the TeX computer typesetting system, the
related METAFONT font definition language and rendering system, and the
Computer Modern family of typefaces.

TAOCP（计算机程序艺术）的作者；算法分析之父；TeX、METAFONT 作者；

As a writer and scholar, Knuth created the WEB and CWEB computer programming
systems designed to encourage and facilitate **literate programming**, and
designed the MIX/MMIX instruction set architectures. As a member of the
academic and scientific community, Knuth is strongly opposed to the policy of
granting software patents. He has expressed his disagreement directly to both
the United States Patent and Trademark Office and European Patent Organization.

文学性编程；反对软件专利；

**Early life**

winning a contest when he was in eighth grade by finding over 4,500 words that
could be formed from the letters in "Ziegler's Giant Bar"; the judges had only
about 2,500 words on their master list.

**Education**

Physics or Music

1963 PhD in mathematics MIT

**Early work**

*TAOCP*

**Writings**

*TAOCP* TeX, METAFONT *TAOCP*
*Surreal Numbers*
*3:16 Bible Texts Illuminated*

**Health concerns**

2006 prostate cancer pretty good

**Computer musings**

informal lectures at Stanford

**Humor**

pay a [finder's fee]

**Awards**

Honors bestowed on Knuth include:

First ACM Grace Murray Hopper Award, 1971
Turing Award, 1974
Josiah Willard Gibbs Lecturer, 1978[28][29]
National Medal of Science, 1979
Franklin Medal, 1988
John von Neumann Medal, 1995
Harvey Prize from the Technion, 1995[30]
Kyoto Prize, 1996
Fellow of the Computer History Museum, 1998
Katayanagi Prize, 2010[31]
BBVA Foundation Frontiers of Knowledge Award, 2010[32]
Stanford University School of Engineering Hero Award, 2011[33]

![](http://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Donald_Knuth_in_front_of_statue_St._Mesrop_Mashtots_%28inventor_of_the_Armenian%2C_Georgian_and_Caucasian_Albanian_alphabets_in_the_4th_century%29%2C_Matenadaran%2C_Yerevan%2C_Armenia%2C_June_2006%2C_LA.jpg/195px-thumbnail.jpg)

### Homepage

![](http://www-cs-faculty.stanford.edu/~uno/don.gif)

**F.A.Q.**

[关于退休](http://www-cs-faculty.stanford.edu/~uno/retd.html)

> I retired early because I realized that I would need about 20 years of
> full-time work to complete The Art of Computer Programming (TAOCP), which I
> have always viewed as the most important project of my life.

[邮件](http://www-cs-faculty.stanford.edu/~uno/email.html)

1990 再不用邮箱

解释 e-mail -> email

[最爱的编程语言](http://www-cs-faculty.stanford.edu/~uno/cweb.html)

*The CWEB System of Structured Documentation*
*Literate Programming*

[出版的书](http://www-cs-faculty.stanford.edu/~uno/books.html)

* *TAOCP*
* *The TeXbook*, *The METAFONTbook*, *Computers & Typesetting*
* *Concrete Mathematics*

[为什么不写支票了？](http://www-cs-faculty.stanford.edu/~uno/news08.html)

How do you pronounce your last name?
Knuth (Ka-NOOTH)

关于中文名 ![](http://www-cs-faculty.stanford.edu/~uno/gaoduhnah.gif)

![](http://www-cs-faculty.stanford.edu/~uno/chop.jpeg)

**[Curriculum Vitæ](http://www-cs-faculty.stanford.edu/~uno/vita.html)**

> I may not be able to read your message until many months have gone by,
> because I'm working intensively on The Art of Computer Programming. However,
> I promise to reply in due time.

[Programs to Read](http://www-cs-faculty.stanford.edu/~uno/programs.html)


[![](http://gnat.qiniudn.com/pic/Donald-E.-Knuth.png)](http://www-cs-faculty.stanford.edu/~uno/dek-14May10-1.jpeg)

段子等

* [科学网—图灵奖史上最年轻获奖者高德纳：把一件平常事做到人间极致](http://news.sciencenet.cn/htmlnews/2010/3/229434.shtm)
* [八卦高德纳 (评论: 计算机程序设计艺术（第 1 卷）)](http://book.douban.com/review/5384627/)
* [科学松鼠会 » 近看图灵碗 (8. 我就是上帝) (上)](http://songshuhui.net/archives/33469)
* [科学松鼠会 » 近看图灵碗 (8. 我就是上帝) (下)](http://songshuhui.net/archives/34291)

* [Donald E. Knuth | Wikipedia](http://en.wikipedia.org/wiki/Donald_Knuth)

* [Galileo Galilei](http://en.wikipedia.org/wiki/Galileo_Galilei)
![galilei-portrait]

[galilei-portrait]: http://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Justus_Sustermans_-_Portrait_of_Galileo_Galilei%2C_1636.jpg/220px-Justus_Sustermans_-_Portrait_of_Galileo_Galilei%2C_1636.jpg

[asymptotic notation]: http://mathworld.wolfram.com/AsymptoticNotation.html
[finder's fee]: http://en.wikipedia.org/wiki/Finder%27s_fee

**Pros**

* Balanced load of left/right hand: Alternative of left/right land
* Upper row is more frequently used.
*


**Cons**

* 适应与转变难，和世界不协调
* Cons，C 是左手 Shift，右手 c，o 是左手，有点不适应（开始阶段）
* 缩写词比如，dbl（double）都是右手的活儿了

---

Function

![](http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Function_machine2.svg/220px-Function_machine2.svg.png)


Affine Function

![](http://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Gerade.svg/220px-Gerade.svg.png)


Quadric Function

![](http://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Polynomialdeg2.svg/220px-Polynomialdeg2.svg.png)

Continuous Function

![](http://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Uniform_continuity_animation.gif/220px-Uniform_continuity_animation.gif)

Trignometric Function

![](http://gnat-tang-shared-image.qiniudn.com/pic/sin.png)
![](http://gnat-tang-shared-image.qiniudn.com/pic/cos.png)
![](http://gnat-tang-shared-image.qiniudn.com/pic/tan.png)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Trigonometry_triangle.svg/288px-Trigonometry_triangle.svg.png)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Circle_cos_sin.gif/300px-Circle_cos_sin.gif)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Circle-trig6.svg/640px-Circle-trig6.svg.png)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Synthesis_square.gif/340px-Synthesis_square.gif)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Sawtooth_Fourier_Animation.gif/280px-Sawtooth_Fourier_Animation.gif)

Exponential

![](http://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Root_graphs.svg/450px-Root_graphs.svg.png)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/ExpIPi.gif/300px-ExpIPi.gif)

Refs

:   * [Function | Wikipedia][function]
    * [Affine Transformation](http://en.wikipedia.org/wiki/Affine_transformation)
    * [Quadric Function](http://en.wikipedia.org/wiki/Quadratic_function)
    * [Continuous Function](http://en.wikipedia.org/wiki/Continuous_function)
    * [Trignometric Function](http://en.wikipedia.org/wiki/Trigonometric_functions)
    * [Hyperbolic Function](http://en.wikipedia.org/wiki/Hyperbolic_function)
    * [幂函数](http://zh.wikipedia.org/wiki/%E5%B9%82%E5%87%BD%E6%95%B0)
    * [Exponential](http://en.wikipedia.org/wiki/Exponentiation#rational-exponents)

[function]: http://en.wikipedia.org/wiki/Function_(mathematics)

"**Even Homer nods**"，太过分了。。。

---

The Hacker's Code

:   > "A hacker of the Old Code."

    - Hackers come and go, but a great hack is forever.
    - Public goods belong to the public.
    - Software hoarding is evil.
      Software does the greatest good given to the greatest number.
    - Don't be evil.
    - Sourceless software sucks.
    - People have rights.
      Organizations live on sufferance(容许).
    - Governments are organizations.
    - If it is wrong when citizens do it,
      it is wrong when governments do it.
    - Information wants to be free.
      Information *deserves* to be free.
    - Being legal doesn't make it right.
    - Being illegal doesn't make it wrong.
    - Subverting tyranny is the highest duty.
    - Trust your technolust!

The Hacker's Code of Ethics

:   Levy (1984) suggests that there is a "code of ethics" for hacking which,
    though not pasted on the walls, is in the air:

    - Access to Computers - and anything which might teach you something about
      the way the world works - should be unlimited and total. Always yield to
      the Hands-On Imperative!
    - All information should be free.
    - Mistrust Authority - Promote Decentralization.
    - Hackers should be judged by their hacking, not bogus criteria such as
      degrees, age, race, or position.
    - You can create art and beauty on a computer.
    - Computers can change your life for the better.

*DRAFT* The Hacker's Code *DRAFT*

:   Preamble: We, the people of the electronic universe, in order to establish
    a society of knowledge and skills, do hereby proclaim the following.

    - Hackers are diverse, from all cultures and backgrounds. Every hacker is
      unique, yet we all share some characteristics. While not every hacker
      follows this Code, many believe it is a fair description of our shared
      traditions, goals and values.
    - Hackers share and are willing to teach their knowledge
    - Hackers are skilled. Many are self-taught, or learn by interacting with
      other hackers.
    - Hackers seek knowledge. This knowledge may come from unauthorized or
      unusual sources, and is often hidden.
    - Hackers are tinkerers. They like to understand how things work, and want
      to make their own improvements or modifications.
    - Hackers often disagree with authority, including parents, employers,
      social customs and laws. They often seek to circumvent authority they
      disagree with.
    - Hackers disagree with each other. Different hackers have different
      values, and come from all backgrounds. This means that what one hacker is
      opposed to might be embraced by another.
    - Hackers are persistent, and are willing to devote hours, days and years
      to pursuing their individual passions.
    - This Code is not to prescribe how hackers act. Instead, it is to help us
      to recognize our own diversity and identify.
    - Every hacker must make his or her own decisions about what is right or
      wrong, and some might do things they believe are illegal, amoral or
      anti-social to achieve higher goals.
    - Hackers' motivations are their own, and there is no reason for all
      hackers to agree.
    - Hackers have a shared identify, however, and many shared interests.
    - By reading this Code, hackers can recognize themselves and each other,
      and understand better the group they are a part of. This will be
      beneficial to all hackers.


The Conscience of a Hacker

:   ~~~ {.tzx-poem #hacker-code}
                                   ==Phrack Inc.==

                        Volume One, Issue 7, Phile 3 of 10

    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    The following was written shortly after my arrest...

                           \/\The Conscience of a Hacker/\/

                                          by

                                   +++The Mentor+++

                              Written on January 8, 1986
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

            Another one got caught today, it's all over the papers.  "Teenager
    Arrested in Computer Crime Scandal", "Hacker Arrested after Bank Tampering"...
            Damn kids.  They're all alike.

            But did you, in your three-piece psychology and 1950's technobrain,
    ever take a look behind the eyes of the hacker?  Did you ever wonder what
    made him tick, what forces shaped him, what may have molded him?
            I am a hacker, enter my world...
            Mine is a world that begins with school... I'm smarter than most of
    the other kids, this crap they teach us bores me...
            Damn underachiever.  They're all alike.

            I'm in junior high or high school.  I've listened to teachers explain
    for the fifteenth time how to reduce a fraction.  I understand it.  "No, Ms.
    Smith, I didn't show my work.  I did it in my head..."
            Damn kid.  Probably copied it.  They're all alike.

            I made a discovery today.  I found a computer.  Wait a second, this is
    cool.  It does what I want it to.  If it makes a mistake, it's because I
    screwed it up.  Not because it doesn't like me...
                    Or feels threatened by me...
                    Or thinks I'm a smart ass...
                    Or doesn't like teaching and shouldn't be here...
            Damn kid.  All he does is play games.  They're all alike.

            And then it happened... a door opened to a world... rushing through
    the phone line like heroin through an addict's veins, an electronic pulse is
    sent out, a refuge from the day-to-day incompetencies is sought... a board is
    found.
            "This is it... this is where I belong..."
            I know everyone here... even if I've never met them, never talked to
    them, may never hear from them again... I know you all...
            Damn kid.  Tying up the phone line again.  They're all alike...

            You bet your ass we're all alike... we've been spoon-fed baby food at
    school when we hungered for steak... the bits of meat that you did let slip
    through were pre-chewed and tasteless.  We've been dominated by sadists, or
    ignored by the apathetic.  The few that had something to teach found us will-
    ing pupils, but those few are like drops of water in the desert.

            This is our world now... the world of the electron and the switch, the
    beauty of the baud.  We make use of a service already existing without paying
    for what could be dirt-cheap if it wasn't run by profiteering gluttons, and
    you call us criminals.  We explore... and you call us criminals.  We seek
    after knowledge... and you call us criminals.  We exist without skin color,
    without nationality, without religious bias... and you call us criminals.
    You build atomic bombs, you wage wars, you murder, cheat, and lie to us
    and try to make us believe it's for our own good, yet we're the criminals.

            Yes, I am a criminal.  My crime is that of curiosity.  My crime is
    that of judging people by what they say and think, not what they look like.
    My crime is that of outsmarting you, something that you will never forgive me
    for.

            I am a hacker, and this is my manifesto.  You may stop this individual,
    but you can't stop us all... after all, we're all alike.

                                   +++The Mentor+++
    _______________________________________________________________________________
    ~~~

Refs

:   * [黑客的价值观 | 酷 壳 - CoolShell.cn](http://coolshell.cn/articles/2439.html)
    * [The Hacker's Code](http://muq.org/~cynbe/hackers-code.html)
    * [The Hacker's Code of Ethics](http://courses.cs.vt.edu/cs3604/lib/WorldCodes/Hackers.Code.html)
    * [The Hacker's Code: Related](http://www.petascale.org/code/code.html)
    * [The Conscience of a Hacker](http://www.phrack.org/archives/issues/7/3.txt)
    * [Hacker Manifesto - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Hacker_Manifesto)

---

1. 管卫东？
2. 心态
    * 理性对待今天（面对考试和申请）
	* 惯性是否干扰了你的学习？
3. SAT
    * 理念
	    1. ~~Why~~ *vs.* **How**
		2. 阅读
		    * 不是博闻强记的能力，是在大量信息时一眼获得有效信息的能力（不要精度）
			* 决策能力（比较）
			* 速度：1. 找；2. (002)
		3. xxxx
		4. 写作
		    * 遣词（形象化）
			* Preferred 更好的
			* 思维与语序

* 选真题
* 第一次做题时，能操作吗？
* 理性 --> 感性（考前两三周）
* 快速定位
* 选项的有效信息
* 原文的有效信息

[管卫东]: http://baike.baidu.com/view/1209052.htm

---

* 公理，定理
* 函数，幂函数，指数函数（和对数函数），三角函数==> e^x
* Group，Field，Ring

数学符号

* a, b, c, d, e, f, g, h
* i, j, k
* m, n
* p, q, r, s, t
* u, v, w
* x, y, z
* omega, episilon
* pi, tau, etc

---

```tzx-bigquote
大哥大嫂过年好，大哥大嫂过年好，大哥大嫂过年好

抱歉用姜文的鬼子来了开个恶趣味的玩笑

本小站是成人英语学习研究基地，站长呢，没啥本事，在一家所谓外企工作，大学时候参
加过 CCTV 杯，对英文教学试验特别感兴趣，因为工作关系大姨妈经常犯，所以就在线做
些感兴趣的事情减减压

本小站目标：以最科学高效的语言学理论和最牛叉有趣的学习材料作支撑，加上你自己的
一点小坚持——每天 1-2 小时，依个人基础不同，1-2 年后人人都可习得英文，美剧电影随
便看，口语流利自然说，原版教材小说随便读

很有趣是么？很不幸，先自问下一天 1-2 时，一年时间不动摇你能做到么？哈哈哈

在进入正文之前，先做个自测

1，在此前有没有照着录音一句话一句话暂停反复模仿的经历，如果有，请问每天一小时，
最长坚持过多久，有没有超过三周？2，在此前有没有坚持做听写的经历，如果有，每天一
小时，请问有没有坚持超过两周？3，你觉得自己看到不认识的单词的音标能做到比较标准
的读出来么？4，估算下自己听英语的输入量大概有多少个小时，是否曾经每天坚持听 1-2
个小时的英文（随便什么，新闻，有声书之类，但中文字幕或中英字幕的美剧不算）5，请
问你丢弃英文，从未接触，低于三年么？6，请问你高考英语及格了么？7，请问过去时，
现在时，完成时，虚拟语气，副词性从句，名词性从句，形容词性从句这些基本语法概念
有么？不要求精通，但是请问你知道么？8，请问你能听懂多快速度的英文？VOA 慢速那种
？还是 VOA 慢速已经可以听懂但是常速仍然力不从心的？或者你根本就不知道 VOA 是什
么，而且从来就没有过听英文的习惯？

如果以上问题，你给出的否定答案超过 3 个问题，那么下面正文并不适合你，你看完也不
会有任何直接收获，请点开右边零基础那个房间，寻求赖世雄老师的帮助，每天一课，一
年后学完全套教材，英文自然大成！

好，正文！

由于**直接决定英文水平的其实就是听力，没错，这是一切英文能力基础中的基础**，我
相信二语教学中从听力入手的假说—婴幼儿接触语言，无一不是从声音入手，然后认字，学
阅读和写作的，so，我在教程初期决定：所有级别的划定，统统只以听力材料的难度来划
分，所以大声哭诉不知道自己英文级别的人，把我推荐的材料听下，觉得能听懂 70% 的，
说明你就适合这个级别，如果全都能听懂但是英文仍然很烂的（我暂时先不计较你是不是
在撒谎和跟我瞎操蛋），那么提高写要求，看自己能复述出多少，复述率 70% 左右的，甭
管你听懂 100% 还是 120%，都只当作符合这个水平

最后废话句，虽然对本教程对号入座全部学完（不一定要从初始级别开始），应付任何考
试都无问题，但是它本质上不针对考试，我只是在做英文习得的试验而已，再有人发帖发
邮，说自己四六级 / 考研 / 口译 / 托福等垃圾考试要到了，所以进组要好好努力，或者
求各种考试办法（比如托福雅思口语），我送你几个字：滚你妈逼的！

如果你说自己要晋升，或者要去外企，或者赚大钱，或者要移民出国做假洋鬼子，或者装
逼说要看懂各类原版书做文艺青年，或者志向高洁说要使用英文多读专业书，学好本专业
高精尖技术，出国留学做科学家报效祖国，那么小组对各位无任欢迎！赚到钱了也请记得
请我吃饭

OK，先简单扫盲下

国外的 ESL 教学早就已经上升到心理学和脑神经学的高度了，各类语言学实验室开的兴旺
，成果大批量产出，无数语言学家前赴后继殚精竭虑穷极一生，只为了追求拿最高效和最
科学的教学手段方法，跟国内某机构或某名师拍脑袋想出来的办法（背熟新概念，背熟 2W
单词之类的言论）截然不同（庆父不死鲁难不已啊），其中的开宗立派的祖师爷，惹无数
屌丝嫉妒，无数伪君子打压，国内无数英语系砖家叫兽故意掩盖伪装，被国人一只挡在门
外的顶尖儿人物，就是南加州大学的 Dr Krashen！

技插：南加州的语言学专家怎么这么多，祖师爷是那的，我一外教是那毕业的，下文中要
提到的 Jeff 也是哪的，真是风水宝地出人才啊

Dr Krashen 提出了几条著名的外语习得假说，根据我们今天的网络丰富资源，我们完全可
以按照这几条假说来全面最大化的优化自己的学习，简单介绍下

1，输入 input 假说：绝大部分人的英文不好并不是因为他们 practice 的不够多，而是
因为 input 不够，换言之没事喜欢瞎找老外搭讪无疑是个蠢办法，至于那种认为去国外了
英文自然就会好，或者美国卖菜的英文都比我们好的多人的人都是傻逼，当然，这只是条
假说，目前并无法证据其为完全真理，所以只能假定这些人是傻逼2，i+1 理论：也叫做可
理解性输入假说，在你认同输入假说的基础上，进行输入练习时，要遵守 i+1 的原则，i
即你现在的水平，1 即稍微高一点点的水平，这点被很多人熟悉，但是大家容易忽略的就
是，在学习了一段时间后，水平提高了，以前的 i+1 其实已经是你现在 i 水准了，这个
时候一定要 push 自己，去主动开拓，寻求进一步的提升，主动给自己的学习难度升级，
这个是很少有人会做的

这条可理解性输入假说是最重要，也是最核心的 ESL 教学理论，跟其它语言学派不同，这
个还靠谱点，事实上，有一种自然学习学派的观点，起码我是绝对不赞同的：一开始就应
该拿常速英文来练习，好像刚出生的小孩一样，静心打坐聆听，就算听不懂也听下去，总
有一天会顿悟，突然打通耳朵。就好像打通了任督二脉一样，你的英文的小宇宙就可以爆
发，因为没有特别多的人试验过这种自然学习法，而且我相信绝大部分人不会有胆量拿自
己的时间来试验这种办法，所以老老实实思索自己的级别，找一些略难的材料好好学一学
，学好了，再升个级别，这样有阶段性的上升和提高，收获的是扎扎实实的进步和提高3，
Narrow input 假说，意思就是，输入的材料在一定时间内相对要狭窄些，但是这条假说却
是小组里无一人会愿意遵守的，比如今晚还有人问我入门级别的语法相关，求推荐简单的
原版书（入门语法想读原版书，这个太高级了些）。我的观点很明确，既然确定了自己的
级别，那么就在一定时间内，只接触这个级别的材料，起码在学完前，尽量不要接触其它
材料，分散注意力。不要订出那种手捧赖世雄，脚填 Cloze，眼读原版书之类的天才计划
，就算你订了，按照小组的时间设定，我很怀疑你每天都有那么多时间能每个方面都
cover 到，订这种不切实际的计划没什么意思，更何况，一天数课的赖世雄老师已经占了
你很大时间，再去读原版书既不靠谱，也不实际，我也很怀疑，作为一个需要赖世雄老师
帮忙的小白，能看得懂 Peter Pan 么？

4，情绪机制 学习的材料和环境应该是有趣的，轻松自如的，才能实现效果的最大化

以上，是我个人比较赞同的 Krashen 的理论，具体的，可自己谷歌，或参照我之前写的帖
子：为什么一定要听 ESLPOD 和 Egnlishpod

So，根据这几条假说，我估摸着把国内目前已经有了一些基础的学习者分成三个级别，这
个级别划分很简单，就是按照 1，听力能力；2，词汇能力来划分的 3，语法能力来划分

中级：能够听懂慢速英语，但是对慢速英语都要求认真听仔细听，还不能随心所欲的人，
词汇量在 3-4K 左右

高级：轻松看懂无字幕美剧，原版专业书籍流畅读，词汇量 1W 以上，主动词汇超过 3K，
各种英文从句和主句的造句方法都熟练使用，流畅阅读时代和经济学人等国际性报刊无障
碍，与人交流或写作时，可以准确的使用单词和句式来表达自己的思想，语言文字不会地
道，但一定会准确，清楚，易懂，口语表达会有自己个人口音，但比较流利

我相信 stuck 在中级水平的人多——毕竟这个级别努努力就上来了，但达到高级水平的人却
少，且中级水平的人想达到高级，只觉得路漫漫其修远兮，道阻且长啊，穷此生未必能达
到，不知道如何规划学习时长，监控学习效果

所以中级和高级之间肯定有个阶层，在这个阶层修炼的如鱼得水之后，闯下一关的高级就
属于跳一跳，肯定摸得着的那种了

中高级：词汇在 4K—6K 左右，好一点背单词勤快的大概能达到 7K-8K，可以很轻松的听懂
VOA 慢速，但是在听常速英文的时候觉得困难重重，听懂率可能在 60%-70% 左右，看原版
书觉得处处掣肘到处有生词不认识，在说和写方面，可以较为流畅的写，也可以表达，但
是离轻松自如，并且写出来就知道对错的程度自己觉得很远，且困难重重，看不到什么提
高的希望

国内普遍学习者的水平（通过最上面自测的学习者），大抵可以分成这三个级别——废话一
句，平时没有输入习惯也就是听和读的习惯的人，自然是无法知道自己级别的，如果你看
到这里还是不清楚自己级别，我只能 give up on you 了，请立刻 X 了此页转零基础帖

这种学习的巨大断层是国内基础教育和江湖派培训双重疏忽导致

国内基础教育就是大家熟悉的 语法 - 翻译 - 背诵法，尤其是对词汇的背诵，懂语法背词
汇多的人基本上都能通过考试——但这样对确实英文的输入并无多少增长，考试自然也检测
不了什么水平——连听力题都是靠连蒙带猜，选择题和阅读题也多是靠所谓语感，这样一路
蒙 + 猜过了四六八级，只能说明你运气好——发音，because 肯定发成 becaurse,famous
也是 famours，r 音到处飞，w 和 h 这两个字母一读就错；语法，各种名词性从句和形容
词性从句以及副词性从句的构成规则一片糊涂，浑浑噩噩，简化从句更是掌握的一塌糊涂
，更不知道怎么写好各种复合句了；阅读，因为从句知识一片糊涂，稍微长一点的句子满
目抓瞎，压根不知道什么意思，连一开始的句子都读不懂，之后更不可能加快阅读速度了
，自豪的做阅读题的高正确率无非是在大量做题之后依靠题目本身的简化句子连蒙带猜而
已，基本的行文逻辑思维全无，更别提欣赏英美文学文字的艺术美感了。连这三项最简单
的部分大家都做的极差，那么我们也不用和口语和写作表达了吧。。。辞不达意还在其次
，对英文的 instant reflection 完全没有

（请问诸君感到膝盖中满箭木有？）

有些专家说国人对语法掌握很好，大家一说到学英文也常说自己的词汇好，书面英文好，
阅读没问题，知识口语烂了些

但很不幸，在我看来，大部分人的英文，包括高分学习者都是狗屁不通，语法更烂——基本
的造句知识大部分人掌握的都很差，选择题都是靠 语感 ，和专家所说完全相反——用屁股
想也知道了，如果大家的语法真的想你们所说的那么好，不会有那么多人抱怨英文难了，
语法乃是英文根本中的根本，只要通了，以后不会很难

所以基础教育全面崩溃，一片苍凉，虽然自称 语法 - 翻译法，但是连语法教授这一最基
本的教学任务全部失败——大部分狗屁老师自己语法都未通。一言蔽之，失败！

而真正个人学习的时候，网络时代来临前资料缺乏有限，我们当时多是用广播收听 VOA 和
BBC，钟道隆老师的理论出来了之后总算是有了很好的学习方法，当时各种英文学习杂志本
质上和这些广播没有什么不同，学习效果固然不错，但是在学习上有着一个巨大的断层。
VOA specail 每分钟只有 80 个词，词汇量在 3K 左右，常用的只有 1.5K，而 VOA 常速
每分钟至少有 140 个词，词汇量高达 9K。从 80 个词到 140 个词的听力速度可以说是个
彻底飞跃，词汇量也有个巨大鸿沟，英文学习的难度巨大分层——明显完全违背了 Dr
Krashen 的 i+1 理论，所以很多人听 VOA 慢速听的开头一切良好，但是很多因为适应不
了常速而放弃——这种时候就不是毅力和坚持的问题了，个人认为纯粹是方法和材料选择的
问题了。。。

所以你看，学习是件痛苦的事情，尤其是你过了四六级一看美剧一读原版书还是满眼抓瞎
的时候，哈哈哈（我们这里还没有讲复杂的英文造句呢）

纵观整个学习流派，没有任何一家提出过一个很好的系统的流程，让你从初级学到高级，
尤其是在难度极大的中高级阶段的学习——大量泛听输入和连读弱读的讲解造句方法之类过
渡阶段必须学习的东西也完全没人提及过——甚至连这个概念都从未有人提起过

是因为众多人的英文永远 stuck 在初级所以没人有中高级学习的体验吗？是侥幸顺利过渡
完毕的高级学习者不屑来教人怎么过渡吗？但国内机构集体选择眼盲耳盲这一事实不能让
人觉得不吊诡

如果没有人愿意或者不屑，那么让我来！我愿意来讲授自己当年好不容易突破的艰难困苦
！我愿意来分享突破的最高效办法！我愿意撕下各种名师传奇的假面具！让我来踢爆国内
各类跳梁小丑！

就好像洛杉矶的把妹界，众人都是无脑而跟风的，看到一种办法有效就纷纷效仿，讲故事
有用就到处给妹子讲故事，幽默有用就到处到酒吧给妹子讲笑话——结果发现有的办法有用
，有的办法只能被妹子扇耳光，为什么呢？没有任何一个人有好对策，一直到一位奇才——
迷男的出现

迷男彻底扫清了把妹学上的流俗，肃清了那种一招鲜吃遍天的荒谬状况，革命性的指出，
跟妹子交往是分成不同阶段的，搭讪认识是一个，约会是一个，约人家到你家里玩是一个
，最后成功上垒把妹得手又是一个（好比英文的高级水平），每个阶段，都必须用不同的
方法才能最和妹子的心思，尤其还要思考和认清自己和妹子的关系所处阶段，结合了当代
女性心理学与 NLP 理论，大量实践，总结经验，开班授课，成功案例众多，随后出版书籍
，众拙男花 25 人民币加上一颗不要脸的心反复练习，此生便可永远左拥右抱，常有温香
软玉漂亮妹子在怀，社会从此稳定，造福于民，伟大！

你们可以想象下 威尔斯密斯在 Hitch 全民情圣中的角色，虽然迷男大师跟这种角色有很
大不同，你们有空自己去优酷看看他的教程便知道了

奶爸不才，但我自愿做英文学习界的迷男，设定系统，指出不同阶段的不同战略，教你认
清自己，并仔细思考，时刻监控，你们身边的英文高手很多，一说学英文，每个人的方法
可能都不同，什么跟读模仿，看美剧，听 BBC，看原版书，背词典也好，背课文也好，大
家就会觉得每个人学习方法不同，要靠自己去琢磨，要找适合自己的，殊不知，这种所谓
最适合自己的，往往背后的意思就是 固步自封，真正的原因还是一个，不同阶段要做的事
情是不一样的，看自己的水平选择相应的材料。这样大家都能学好英文，以后去英语角，
男生可以靠一口流利英语泡到心仪女生，搞死洋垃圾和死老外，女生可以傍上老美改变国
籍，从此一生不愁

而且随着网络时代的到来和数码技术的进步，过渡阶段的问题已经完美解决了，想知道？
请在中级和中高阶段的帖子好好阅读吧!
```

---

* 状态和变化
* 衡量 =》 坐标系，表示系统，形式系统
* 抽象的方式，研究状态和变化，以期推测

---

引用 Joseph J. Rotman 的
[*The First Course in Abstract Algebra with Applications*][douban-abstract-algebra]：

> Giving the etymology of mathematical terms is rarely done. Let me explain,
> with an analogy, why I have included derivations of many terms.
>
> There are many variations of standard poker games and, in my poker group, the
> dealer announces the game of his choice by naming it. Now some names are
> better than others.  For example, "Little Red" is a game in which one's
> smallest red card is wild; this is a good name because it reminds the players
> of its distinctive feature. On the other hand, "Aggravation" is not such a
> good name, for thought it is, indeed, suggestive, the name does not
> distinguish this particular game from several others.
>
> Most terms in mathematics have been well chosen; there are more red names
> than aggravating ones. An example of a good name is *even* permutation, for a
> permutation is even if it is a product of an even number of transpositions.
> Another example of a good term is the *parallelogram law* describing vector
> addition. But many good names, clear when they were chosen, are now obscure
> because their roots are either in another language or in another discipline.
> The trigonometric terms *tangent* and *secant* are good names for those
> knowing some Latin, but they are obscure otherwise.
>
> The term *mathematics* is obscure only because most of us do not know that it
> comes from the classical Greek word meaning "to learn". The term *corollary*
> is doubly obscure; it comes from the Latin word meaning "flower", but why
> should some theorems be called flowers? A plausible explanation is that it
> was common, in ancient Rome, to give flowers as gifts, and so a corollary is
> a gift bequeathed by a theorem. The term *theorem* comes from the Greek word
> meaning "to watch" or "to contemplate" (*theatre* has the same root); it was
> used by Euclid with its present meaning. The term *lemma* comes from the
> Greek word meaning "taken" or "received"; it is a statement that is taken for
> granted (for it has already been proved) in the course of proving a theorem.
> **I believe that etymology of terms is worthwhile (and interesting!), for it
> often aids understanding by removing unnecessary obscurity.**

[douban-abstract-algebra]: https://book.douban.com/subject/2853503/

Etymology of Mathematical Terms

:   大量 etymology 源自此书

    | 英文 | 中文 | 溯源 |
    | :---: | :---: | :---: |
    | Mathematics | 数学 | From Greek, "to learn" |
    | Corollary | ？ | From Latin, "flower", 花当时是一种礼物。类似现在文中常用的 Bonus |
    | Theorem | 定理 | From Greek, "to watch", "to contemplate" |
    | Z, Q, R, C | ? | *Zahl*(*German*) meanning "number"; Rational Numbers; Real Numbers; Complex Numbers. |
    | Lemma | ? | From Greek, "taken", "received", a.k.a. taken for granted |
    | Induction | 归纳法，演绎法 | From Latin, "to lead", came to mean "prevailing to do something" or "influencing" |
    | Factor | ? | From Latin, "to make", or "to contribute" |
    | Binomial | ? | *bi*(*Latin*, "two") + *nomen*(*Latin*, "name", "term"); trinomial, monomial |
    | Polynomial | ? | *poly*(*Greek*, many) + *namen*(*Latin*, "name", "term") |
    | Cyclotomic | ? | From Greek, "circle splitting" |
    | Algorithm | ? | 来自一个印度数学家 Khwarizmi |
    | Googol | ? | 10^100 |
    | Leap Year | ? | 闰年的 2 月比平年的多一天，因为在 Roman calender 里三月一号才是一年的第一天 |
    | Calendar | ? | From Greek, "to call", evolved into the Latin for the first day of a month(when accounts were due) |
    | Signum | ? | From Latin, "mark", or "token", now we use "sign" |
    | Matrix | ? | Derived from the word meaning "mother", means "womb" in Latin. More generally, it means something that contains the essence of a thing. |
    | Translation | ? | From Latin, "to transfer". Language to language, point(of thoughts) to point. |
    | Dihedron | ? | *di*(*Latin*, "two") + *hedron*(*Greek*, "two dimensional side") |
    | Stochastic | ? | From Greek, "to guess" |
    | Homomorphism | ? | *homo*(*Greek*, "same") + *morphism*(*Greek*, "shape" or "form") |
    | Isomorphism | ? | *iso*(*Greek*, "equal") + *morphism*(*Greek*, "shape" or "form") |
    | Kernel | ? | From German, "grain" or "seed". Indicating an important ingredient of a homomorphism |
    | quaternion | ? | ? |
    | Group, , Ring | ? | First used by E. H. Moore in 1893 |
    | Field | ? | *K<o">rper*(*German*), a "realm", a "body" of things, or "collections of things" |
    | Ring | ? | *Corps*(*French*), a "realm", a "body" of things, or "collections of things" |
    | Domain | ? | Abbrev. of *integral domain* of the German word *Integret<a">tsbereich; A collection of things |
    | Quadratic | ? | From Latin, "four". Four-sided figures(Like a square, with area *x^2*). Linear, quadratic, cubic. |
    | Vector | ? | From Latin, "to carry", vectors in euclidean space carry the data of length and direction. |
    | Scalar | ? | From scale, which is from the Latin word meaning "ladder", 因为梯子的横均匀（可以作为度量） |
    | Orthogonal | ? | *ortho*(*Greek*, "right") + *gon*(*Greek*, "angle"); Right angled or perpendicular |
    | Echelon | ? | "Wings"; A matrix in echelon form（矩阵的梯形形式） |
    | Eigenvalue | ? | From *Eigenwert*(*German*). *Wert* means *value*, *Eigen* is *characteristic* or *proper* |
    | Automorphism | ? | *auto*(*Greek*, "self") + *morphism*("shape" or "form"). |
    | Variety | ? | Arose as a translation by E. Beltami(inspired by Gauss) of the German term *Mannigfaltigkeit* used by Riemann; nowdays, this term is usually tranlated as *manifold* |
    | Sine | ? | 参考 [Sine 的故事](url here) |
    | Root | ? | 参考 [Root 的故事](url here) |
    | Tangent | ? | The Latin word *tangere* means "to touch"; a tangent is a line which touches the circle in only one point |
    | Secant | ? | The Latin word *secare* means "to cut"; a secant is a line that cuts a circle |
    | Modulo | ? | From Latin, "measure" |

Refs
:   * The First Course in Abstract Algebra with Applications: url to douban

---

| Letter | Letter Name | Pronunciation |
| :---: | :---: | :---: |
| A a | a | /ˈeɪ/ |
| B b | bee | /ˈbiː/ |
| C c | cee | /ˈsiː/ |
| D d | dee | /ˈdiː/ |
| E e | e | /ˈiː/ |
| F f | ef | /ˈɛf/ |
| G g | gee | /ˈdʒiː/ |
| H h | aitch | /ˈeɪtʃ/ |
| - - | haitch | /ˈheɪtʃ/ |
| - - | hetch | /ˈhetʃ/ |
| I i | i | /ˈaɪ/ |
| J j | jay | /ˈdʒeɪ/ |
| - - | jy | /ˈdʒaɪ/ |
| K k | kay | /ˈkeɪ/ |
| L l | el or ell | /ˈɛl/, /ˈɛɫ/ |
| M m | em | /ˈɛm/ |
| N n | en | /ˈɛn/ |
| O o | o | /ˈəʊ/ |
| P p | pee | /ˈpiː/ |
| Q q | cue | /ˈkjuː/ |
| R r | ar | /ˈɑː/ |
| S s | ess | /ˈɛs/ |
| T t | tee | /ˈtiː/ |
| U u | u | /ˈjuː/ |
| V v | vee | /ˈviː/ |
| W w | double-u | /ˈdʌbəl.juː/ |
| X x | ex | /ˈɛks/ |
| Y y | wy or wye | /ˈwaɪ/ |
| Z z | zed | /ˈzɛd/ |
| - - | zee | /ˈziː/ |
| - - | izzard | /ˈɪzərd/ |

Greek Alphabet

| Letter | Name | In LaTeX | Transliteration | Pronunciation |
| :---: | :---: | :----: | :--------------: | :--------------: |
| A α | [alpha][alpha] | - \alpha | a | [AL-fuh][p-alpha] |
| B β | [beta][beta] | - \beta | b | [BAY-tuh, BEE-tuh][p-beta] |
| Γ γ | [gamma][gamma] | \Gamma \gamma | g | [GAM-uh][p-gamma] |
| Δ δ | [delta][delta] | \Delta \delta | d | [DELL-tuh][p-delta] |
| E ϵ ε | [epsilon][epsilon] | - \epsilon \varepsilon | e | [EP-suh-lon][p-epsilon] |
| F ϝ ϛ | [digamma][digamma] | - \digamma [~~stigma~~][stigma] | f | dee-GAM-uh ? |
| Z ζ | [zeta][zeta] | - \zeta | z | [ZAY-tuh][p-zeta] |
| H η | [eta][eta] | \eta | ē | [AY-tuh][p-eta] |
| Θ θ ϑ | [theta][theta] | \Theta \theta \vartheta | th | [THAY-tuh, THEE-tuh][p-theta] |
| Ι ι | [iota][iota] | - \iota | i | [eye-OH-tuh][p-iota] |
| K κ ϰ | [kappa][kappa] | - \kappa \varkappa | k | [CAY-uh][p-kappa] |
| Λ λ | [lambda][lambda] | \Lambda \lambda | l | [LAM-duh][p-lambda] |
| M μ | [mu][mu] | - \mu | m | [MYOO, MOO][p-mu] |
| N ν | [nu][nu] | - \nu | n | [NOO, NYOO][p-nu] |
| Ξ ξ | [xi][xi] | \Xi \xi | x | [ZIGH, SIGN, KSEE][p-xi] |
| Ο ο | [omicron][omicron] | -  \omicron | o | [AH-mih-cron, OH-mih-cron][p-omicron] |
| Π π ϖ | [pi][pi] | \Pi \pi \varpi | p | [PIE][p-pi] |
| Ρ ρ ϱ | [rho][rho] | - \rho \varrho | r / rh | [ROE][p-rho] |
| Σ σ ς | [sigma][sigma] | \Sigma \sigma \varsigma | s | [SIG-muh][p-sigma] |
| T τ | [tau][tau] | - \tau | t | [TOW, TAW][p-tau] |
| Υ υ | [upsilon][upsilon] | \Upsilon \upsilon | u | [UP-suh-lon, YOOP-suh-lon][p-upsilon] |
| Φ ϕ φ | [phi][phi] | \Phi \phi \varphi | phi | [FIE, FEE][p-phi] |
| Χ χ | [chi][chi] | \chi | ch | [KIGN, KEE][p-chi] |
| Ψ ψ | [psi][psi] | \Psi \psi | ps | [SIGH, PSIGH, PSEE][p-psi] |
| Ω ω | [omega][omega] | \Omega \omega | ō | [oh-MEG-uh, oh-MEE-guh, oh-MAY-guh][p-omega] |

Latin Alphabet, etc

Archaic(古体的) Latin alphabet

**Others**

Aleph: `/ˈɑːlɛf/`

---

> The 18th and 19th centuries saw the creation and
> standardization of mathematical notation as used today.
> Euler was responsible for many of the notations in use today:
> the use of a, b, c for constants and x, y, z for unknowns,
> e for the base of the natural logarithm, sigma (Σ) for summation,
> i for the imaginary unit, and the functional notation f(x).
> He also popularized the use of π for Archimedes constant
> (due to William Jones' proposal for the use of π in this way
> based on the earlier notation of William Oughtred).
>
> Many fields of mathematics bear the imprint of their creators for notation:
> the differential operator is due to Leibniz,
> the cardinal infinities to Georg Cantor (in addition to the lemniscate (∞) of John Wallis),
> the congruence symbol (≡) to Gauss, and so forth.

看的英文数学书越多，越发感觉英文教材的“好处”，符号都是不言自明，不用特别的提示就能明白要表达的意思。
先上一份整理自 Wikipedia 的“说明书”。

Αα (alpha)

:   α represents:

      - the first angle in a triangle, opposite the side A
      - one root of a quadratic equation, where β represents the other
      - the ratio of collector current to emitter current in a bipolar junction
        transistor (BJT) in electronics
      - the statistical significance of a result
      - the false positive rate in statistics ("Type I" error)
      - the reciprocal of the sacrifice ratio
      - the fine structure constant in physics
      - the angle of attack of an aircraft
      - an alpha particle (He2+)
      - angular acceleration in physics
      - the linear thermal expansion coefficient
      - the thermal diffusivity
      - the alpha carbon is the first carbon after the carbon that attaches to
        a functional group in organic chemistry
      - the α-carbon is the backbone carbon next to the carbonyl carbon in
        amino acids
      - right ascension in astrometry
      - The brightest star in a constellation.
      - Iron Ferrite and numerous phases within materials science.
      - the return in excess of the compensation for the risk borne in
        investment
      - the α-conversion in lambda calculus

Ββ (beta)

:   Β represents the beta function

    β represents:

      - the thermodynamic beta, equal to (kBT)−1, where kB is Boltzmann's
        constant and T is the absolute temperature.
      - the second angle in a triangle, opposite the side B
      - one root of a quadratic equation, where α represents the other
      - the ratio of collector current to base current in a bipolar junction
        transistor (BJT) in electronics (current gain)
      - the false negative rate in statistics ("Type II" error)
      - the beta coefficient, the non-diversifiable risk, of an asset in
        mathematical finance
      - the sideslip angle of an airplane
      - the first-order effects of variations in Coriolis force with latitude
        in planetary dynamics
      - a beta particle (e-)
      - sound intensity
      - velocity divided by the speed of light in special relativity
      - the beta brain wave in brain or cognitive sciences
      - ecliptic latitude in astrometry
      - The ratio of plasma pressure to magnetic pressure in plasma physics
      - β-reduction in lambda calculus

Γγ (gamma)

:   Γ represents:

      - the reflection coefficient of a transmission or telecommunication line.
      - the confinement factor of an optical mode in a waveguide
      - the gamma function, a generalization of the factorial
      - the upper incomplete gamma function
      - the modular group, the group of fractional linear transformations
      - the gamma distribution, a continuous probability distribution defined
        using the gamma function
      - second-order sensitivity to price in mathematical finance
      - the Christoffel symbols of the second kind
      - the neighbourhood of a vertex in a graph
      - the stack alphabet in the formal definition of a pushdown automaton

    γ represents:

      - the partial safety factors applied to loads and materials in structural
        engineering
      - the specific weight of substances
      - the lower incomplete gamma function
      - the third angle in a triangle, opposite the side C
      - the Euler–Mascheroni constant in mathematics
      - gamma rays and the photon
      - the heat capacity ratio in thermodynamics
      - the Lorentz factor in special relativity
      - the damping constant (kg/s)

Δδ (delta)

:   Δ represents:

      - a finite difference
      - a difference operator
      - a symmetric difference
      - the Laplace operator
      - the angle that subtends the arc of a circular curve in surveying
      - the determinant of an inverse matrix[1]
      - the maximum degree of any vertex in a given graph
      - the difference or change in a given variable, e.g. ∆v means a
        difference or change in velocity
      - sensitivity to price in mathematical finance
      - distance to Earth, measured in astronomical units
      - heat in a chemical formula
      - the discriminant in the quadratic formula which determines the nature
        of the roots
      - the degrees of freedom in a non-pooled statistical hypothesis test of
        two population means

    δ represents:

      - percent error
      - a variation in the calculus of variations
      - the Kronecker delta function
      - the Feigenbaum constant
      - the force of interest in mathematical finance
      - the Dirac delta function
      - the receptor which enkephalins have the highest affinity for in
        pharmacology [2]
      - the Skorokhod integral in Malliavin calculus, a subfield of stochastic
        analysis
      - the minimum degree of any vertex in a given graph
      - a partial charge. δ− represents a negative partial charge, and δ+
        represents a positive partial charge chemistry (See also: Solvation)
      - the Chemical shift of an atomic nucleus
      - declination in astrometry
      - the Turner function in computational material science
      - depreciation in macroeconomics
      - noncentrality measure in statistics[3]

Εε (epsilon)

:   ε represents:

      - a small positive quantity; see limit
      - a random error in regression analysis
      - the absolute value of an error [4]
      - in set theory, the limit ordinal of the sequence
        \omega,\omega^{\omega},\omega^{\omega^{\omega}},\dots
      - in computer science, the empty string
      - the Levi-Civita symbol
      - in electromagnetics, dielectric permittivity
      - emissivity
      - strain in continuum mechanics
      - permittivity
      - the Earth's axial tilt in astrometry
      - elasticity in economics
      - expected value in probability theory and statistics
      - electromotive force
      - in chemistry, the molar extinction coefficient of a chromophore.
      - set membership symbol ∈ is based on ε

Ϝϝ (digamma)

:   Ϝ is sometimes used to represent the digamma function, though the Latin
letter F (which is nearly identical) is usually substituted.

Ζζ (zeta)

:   ζ represents:

      - the Riemann zeta function and other zeta functions in mathematics
      - the coefficient of viscous friction in polymer dynamics
      - the damping ratio
      - relative vertical vorticity in fluid dynamics

Ηη (eta)

:   Η represents:

      - the Eta function of Ludwig Boltzmann's H-theorem ("Eta" theorem), in
        statistical mechanics

    η represents:

      - the intrinsic impedance of medium (usually free space)
      - the partial regression coefficient in statistics
      - elasticities in economics
      - the absolute vertical vorticity (relative vertical vorticity + Coriolis
        effect) in fluid dynamics
      - an index of refraction
      - a type of meson
      - viscosity
      - efficiency (statistics)
      - efficiency (physics and engineering)
      - the Minkowski metric tensor in relativity
      - noise in communication system models

Θθ (theta)

:   Θ represents:

      - an asymptotically tight bound related to big O notation.
      - sensitivity to the passage of time in mathematical finance
      - Θ (set theory), a certain ordinal number

    θ represents:

      - a plane angle in geometry
      - the angle to the x axis in the xy-plane in spherical or cylindrical
        coordinates (mathematics)
      - the angle to the z axis in spherical coordinates (physics)
      - potential temperature in thermodynamics
      - the mean time between failure in reliability engineering
      - soil water contents in soil science
      - Debye temperature
      - In mathematical statistics, represents an unknown parameter
      - theta functions
      - sometimes also ϑ ("script theta"), cursive form of theta, often used in
        handwriting
      - the first Chebyshev function in number theory

Ιι (iota)

:   ι represents:

      - the index generator function in APL (in the form ⍳)
      - the orbital inclination with respect to the line of sight, used when
        describing gravitational wave sources.

Κκ (kappa)

:   Κ represents:

      - the Kappa number
      - κ represents:
      - the Von Kármán constant
      - the kappa curve
      - the condition number of a matrix in numerical analysis
      - the connectivity of a graph in graph theory
      - curvature
      - dielectric constant (\varepsilon / \varepsilon_0)
      - thermal conductivity (usually a lowercase Latin k)
      - thermal diffusivity
      - a spring constant (usually a lowercase Latin k)
      - the heat capacity ratio in thermodynamics (usually γ)
      - the receptor which dynorphins have the highest affinity for in
        pharmacology[2]

Λ λ (lambda)

:   Λ represents:

      - the von Mangoldt function in number theory
      - the set of logical axioms in the axiomatic method of logical deduction
        in first-order logic
      - the cosmological constant
      - a type of baryon
      - a diagonal matrix of eigenvalues in linear algebra
      - the permeance of a material in electromagnetism

    λ represents:

      - one wavelength of electromagnetic radiation
      - the decay constant in radioactivity
      - function expressions in the lambda calculus
      - a general eigenvalue in linear algebra
      - the expected number of occurrences in a Poisson distribution in
        probability
      - the arrival rate in queueing theory
      - the average lifetime or rate parameter in an exponential distribution
        (commonly used across statistics, physics, and engineering)
      - the failure rate in reliability engineering
      - the mean or average value (probability and statistics)
      - the latent heat of fusion
      - the lagrange multiplier in the mathematical optimization method, known
        as the shadow price in economics
      - the Lebesgue measure denotes the volume or measure of a Lebesgue
        measurable set
      - longitude in geodesy
      - linear density
      - ecliptic longitude in astrometry
      - the Liouville function in number theory
      - the Carmichael function in number theory
      - a unit of measure of volume equal to one microlitre (1 μL) or one cubic
        millimetre (1 mm³)
      - the empty string in formal grammar

Μμ (mu)

:   μ represents:

      - the Möbius function in number theory
      - the ring representation of a representation module
      - the population mean or expected value in probability and statistics
      - a measure in measure theory
      - micro-, an SI prefix denoting 10−6 (one millionth)
      - the coefficient of friction in physics
      - the service rate in queueing theory
      - the dynamic viscosity in physics
      - magnetic permeability in electromagnetics
      - a muon
      - reduced mass
      - chemical potential in condensed matter physics
      - the ion mobility in plasma physics

Νν (nu)

:   ν represents:

      - frequency in physics in hertz (Hz)
      - Degrees of freedom in statistics
      - Poisson's ratio in material science
      - a neutrino
      - kinematic viscosity of liquids
      - stoichiometric coefficient in chemistry
      - dimension of nullspace in mathematics

Ξ ξ (xi)

:   Ξ represents:

      - the original Riemann Xi function, i.e. Riemann's lower case ξ, as
        denoted by Edmund Landau and currently
      - the grand canonical ensemble found in statistical mechanics
      - a type of baryon
      - ξ represents:
      - the original Riemann Xi function
      - the modified definition of Riemann xi function, as denoted by Edmund
        Landau and currently
      - a random variable
      - the extent of a chemical reaction
      - coherence length
      - the damping ratio
      - universal set
      - Οο (omicron)[edit]

    Ο represents:

      - big O notation (may be represented by an uppercase Latin O)
      - o represents:
      - small o notation (may be represented by a lowercase Latin o)

Π π (pi)

:   Π represents:

      - the product operator in mathematics
      - a plane
      - osmotic pressure
      - π represents:
      - Archimedes' constant, the ratio of a circle's circumference to its
        diameter
      - the prime-counting function
      - profit in microeconomics and game theory
      - inflation in macroeconomics, expressed as a constant with respect to
        time
      - the state distribution of a Markov chain
      - a type of covalent bond in chemistry (pi bond)
      - a pion (pi meson) in particle physics
      - in statistics, the population proportion of success
      - in electronics, a special type of small signal model is referred to as
        a hybrid-pi model
      - in relational algebra for databases, represents project

    ϖ (a graphic variant, see pomega) represents:

      - angular frequency of a wave, in fluid dynamics (angular frequency is
        usually represented by \omega but this may be confused with vorticity
        in a fluid dynamics context)
      - longitude of pericenter, in celestial mechanics[5]
      - comoving distance, in cosmology[6]

Ρρ (rho)

:   Ρ represents:

      - one of the Gegenbauer functions in analytic number theory.

    ρ represents:

      - one of the Gegenbauer functions in analytic number theory.
      - the Dickman-de Bruijn function
      - the radius in a polar, cylindrical, or spherical coordinate system
      - the correlation coefficient in statistics
      - the sensitivity to interest rate in mathematical finance
      - density (mass or charge per unit volume)
      - resistivity
      - the shape and reshape operators in APL (in the form ⍴)
      - the utilization in queueing theory
      - the rank of a matrix

Σσ (sigma)

:   Σ represents:

      - the summation operator
      - the covariance matrix
      - the set of terminal symbols in a formal grammar

    σ represents:

      - Stefan–Boltzmann constant in blackbody radiation
      - the divisor function in number theory
      - the real part of the complex variable s = σ + i t in analytic number
        theory
      - the sign of a permutation in the theory of finite groups
      - the population standard deviation, a measure of spread in probability
        and statistics
      - a type of covalent bond in chemistry (sigma bond)
      - the selection operator in relational algebra
      - stress in mechanics
      - electrical conductivity
      - area density
      - nuclear cross section
      - uncertainty
      - utilization in operations management
      - surface charge density for microparticles

Ττ (tau)

:   τ (lower-case) represents:

      - an interval of time
      - a mean lifetime
      - torque, the rotational force in mechanics
      - the elementary tau lepton in particle physics
      - the lifetime of a spontaneous emission process
      - the time constant of any device, such as an RC circuit
      - proper time in relativity
      - Kendall tau rank correlation coefficient, a measure of rank correlation
        in statistics
      - the golden ratio 1.618... (although φ (phi) is more common)
      - Ramanujan's tau function in number theory
      - in astronomy, a measure of opacity, or how much sunlight cannot
        penetrate the atmosphere
      - the intertwining operator in representation theory
      - the tau in biochemistry, a protein associated to microtubules
      - Shear stress in continuum mechanics
      - the number of divisors of highly composite numbers (sequence A000005 in
        OEIS)
      - the prefix of many stars, via the Bayer stellar designation system
      - an internal system step in transition systems
      - a type variable in type theories, such as the simply typed lambda
        calculus
      - path tortuosity in reservoir engineering
      - in Topology, a given topology
      - a proposed name [7] for the mathematical constant of the ratio of a
        circle's circumference to its radius, with value 2π (6.283...).

Υυ (upsilon)

:   Υ represents:

      - an elementary particle
      - υ represents:
      - frequency in physics textbooks

Φφ (phi)

:   Φ represents:

      - the work function in physics; the energy required by a photon to remove
        an electron from the surface of a metal
      - magnetic flux
      - the cumulative distribution function of the normal distribution in
        statistics
      - phenyl functional group
      - the reciprocal of the golden ratio (represented by φ, below), also
        represented as 1/φ
      - the value of the integration of information in a system (based on
        Integrated Information Theory)
      - note: a symbol for the empty set, \varnothing, resembles Φ but is not Φ

    φ represents:

      - the golden ratio 1.618... in mathematics, art, and architecture
      - Euler's totient function in number theory
      - a holomorphic map on an analytic space
      - the argument of a complex number in mathematics
      - the value of a plane angle in physics and mathematics
      - the angle to the z axis in spherical coordinates (mathematics)
      - the angle to the x axis in the xy-plane in spherical or cylindrical
        coordinates (physics)
      - latitude in geodesy
      - a scalar field
      - radiant flux
      - electric potential
      - the probability density function of the normal distribution in
        statistics
      - a feature of a syntactic node giving that node characteristics such as
        gender, number and person in syntax
      - the diameter of a vessel (engineering)

Χχ (chi)

:   χ represents:

      - the chi distribution in statistics (χ^2 is the more frequently
        encountered chi-squared distribution)
      - the chromatic number of a graph in graph theory
      - the Euler characteristic in algebraic topology
      - electronegativity in the periodic table
      - the Rabi frequency
      - the spinor of a fundamental particle
      - the Fourier transform of a linear response function
      - a character in mathematics; especially a Dirichlet character in number
        theory
      - the Sigma vectors in the unscented transform used in the unscented
        Kalman filter
      - sometimes the mole fraction
      - a characteristic or indicator function in mathematics

Ψψ (psi)

:   Ψ represents:

      - water potential
      - a quaternary combinator in combinatory logic

    ψ represents:

      - the wave function in the Schrödinger equation of quantum mechanics
      - the stream function in fluid dynamics
      - yaw angle in vehicle dynamics
      - the angle between the x-axis and the tangent to the curve in the
        intrinsic coordinates system
      - the reciprocal Fibonacci constant
      - the second Chebyshev function in number theory
      - the polygamma function in mathematics

Ω ω (omega)

:   Ω represents:

      - the Omega constant
      - an asymptotic lower bound related to big O notation
      - in probability theory and statistical mechanics, the set of possible
        distinct system states
      - the SI unit measure of electrical resistance, the ohm
      - the rotation rate of an object, particularly a planet, in dynamics
      - a solid angle
      - a baryon
      - the arithmetic function counting a number's prime factors
      - the right ascension of the ascending node in celestial mechanics
      - the density parameter in cosmology

    ω represents:

      - the first infinite ordinal
      - the differentiability class (i.e. C^\omega) for functions that are
        infinitely differentiable because they are complex analytic
      - the set of natural numbers in set theory (although \mathbb{N} or N is
        more common in other areas of mathematics)
      - an asymptotically dominant quantity related to big O notation
      - in probability theory, a possible outcome of an experiment
      - angular velocity / radian frequency
      - a complex cube root of unity — the other is ω² — (used to describe
        various ways of calculating the discrete Fourier transform)
      - vertical velocity in pressure-based coordinate systems (commonly used
        in atmospheric dynamics)
      - a meson
      - the arithmetic function counting a number's distinct prime factors
      - a differential form (esp. on an analytic space)
      - the argument of periapsis in celestial mechanics
      - the symbol ϖ, a graphic variant of π, is sometimes construed as omega
        with a bar over it; see π

Refs & See also

:   * <https://en.wikipedia.org/wiki/Greek_alphabet>
    * <https://en.wikipedia.org/wiki/Latin_alphabet>
    * <http://www.greekgrammar.org>
    * <http://www.skyandtelescope.com/astronomy-resources/stargazing-basics/the-greek-alphabet/>
    * <https://en.wikipedia.org/wiki/Greek_letters_used_in_mathematics,_science,_and_engineering>
    * <https://en.wikipedia.org/wiki/Mathematical_notation>
    * <https://en.wikipedia.org/wiki/Notation_in_probability_and_statistics>
    * <https://en.wikipedia.org/wiki/Latin_letters_used_in_mathematics>
    * <https://en.wikipedia.org/wiki/List_of_logic_symbols>

[alpha]: http://en.wikipedia.org/wiki/Alpha
[beta]: http://en.wikipedia.org/wiki/Beta
[gamma]: http://en.wikipedia.org/wiki/Gamma
[delta]: http://en.wikipedia.org/wiki/Delta_(letter)
[epsilon]: http://en.wikipedia.org/wiki/Epsilon
[digamma]: http://en.wikipedia.org/wiki/Digamma
[zeta]: http://en.wikipedia.org/wiki/Zeta
[eta]: http://en.wikipedia.org/wiki/Eta
[theta]: http://en.wikipedia.org/wiki/Theta
[iota]: http://en.wikipedia.org/wiki/Iota
[kappa]: http://en.wikipedia.org/wiki/Kappa
[lambda]: http://en.wikipedia.org/wiki/Lambda
[mu]: http://en.wikipedia.org/wiki/Mu_(letter)
[nu]: http://en.wikipedia.org/wiki/Nu_(letter)
[xi]: http://en.wikipedia.org/wiki/Xi_(letter)
[omicron]: http://en.wikipedia.org/wiki/Omicron
[pi]: http://en.wikipedia.org/wiki/Pi_(letter)
[rho]: http://en.wikipedia.org/wiki/Rho
[sigma]: http://en.wikipedia.org/wiki/Sigma
[tau]: http://en.wikipedia.org/wiki/Tau
[upsilon]: http://en.wikipedia.org/wiki/Upsilon
[phi]: http://en.wikipedia.org/wiki/Phi
[chi]: http://en.wikipedia.org/wiki/Chi_(letter)
[psi]: http://en.wikipedia.org/wiki/Psi_(letter)
[omega]: http://en.wikipedia.org/wiki/Omega
[stigma]: http://en.wikipedia.org/wiki/Stigma_(letter)
[p-alpha]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_alpha.mp3
[p-beta]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_beta.mp3
[p-gamma]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_gamma.mp3
[p-delta]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_delta.mp3
[p-epsilon]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_epsilon.mp3
[p-zeta]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_zeta.mp3
[p-eta]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_eta.mp3
[p-theta]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_theta.mp3
[p-iota]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_iota.mp3
[p-kappa]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_kappa.mp3
[p-lambda]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_lambda.mp3
[p-mu]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_mu.mp3
[p-nu]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_nu.mp3
[p-xi]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_xi.mp3
[p-omicron]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_omicron.mp3
[p-pi]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_pi.mp3
[p-rho]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_rho.mp3
[p-sigma]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_sigma.mp3
[p-tau]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_tau.mp3
[p-upsilon]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_upsilon.mp3
[p-phi]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_phi.mp3
[p-chi]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_chi.mp3
[p-psi]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_psi.mp3
[p-omega]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_omega.mp3
[Aleph]: http://en.wikipedia.org/wiki/Aleph

---

* 政无安，九月常常杀一万
* [Euler's Formula](https://en.wikipedia.org/wiki/Euler_characteristic#Planar_graphs): `#Loop - #Edge + #Node = 0`

矩阵的 Rank 是其基底（Group）的不变量，决定了
能存储的信息量。如果 Rank = 0，意思是不能存储信息。
如果因为 Rank = 0，而导致信息丢失，那就是 Unknown unknown。

Det 则是线性变换中 Simplex 对应的 Signed Volume，在变幻中其实是一个置换群。
Det 是 Grand Metric 下的不变量。
如果 Det 不为 0，信息可以完全恢复。但是如果 Det = 0，信息将（可能）会丢失，
多次变换后可能信息将消灭。

向量则是在 Base 下的衡量。如果向量为 0，即 “我知道我不知道”。

群，是 Metric 的基础。

---

[4ker/SharedPainter](https://github.com/4ker/SharedPainter)

:   Goods

    #. CSS 专门放到一个文件里
    #. namespace & class static functions
    #. `QFontComboBox`
    #. try... catch...
    #. `const_cast` & meta programming
    #. `QFrame` (Container Widget), `QTextEditor`
    #. UI 组件化
    #. pure virtual class
    #. `hover{Enter, leave}Event`

    Bads

    #. too much license
    #. not work on my computer
    #. code is messy
    #. violate 80 char rule

    Snippets

    ```cpp
    clr_ = QColorDialog::getColor( clr_, this, tr("Pen Color"));

    if( !clr_.isValid() )
        return;

    class CS
    {
    #if defined(WIN32)
    private:
        CRITICAL_SECTION m_lock;
    public:
        CS() { ::InitializeCriticalSectionAndSpinCount( &m_lock, 4000 ); }
        ~CS() { ::DeleteCriticalSection( &m_lock ); }
        void Lock() { ::EnterCriticalSection( &m_lock ); }
        void Unlock() { ::LeaveCriticalSection( &m_lock ); }
        ...
    };

    struct SPaintData
    {
        double posX;
        double posY;
        double scale;
        bool posSetFlag;
        int itemId;
        std::string owner;
    };

    void hoverEnterEvent( QGraphicsSceneHoverEvent * event )
    {
        if( scene_->isFreePenMode() )
            return;

        scene_->setCursor( Qt::OpenHandCursor );
    }


    drawingItem->setFlags( QGraphicsItem::ItemIsMovable
                         | QGraphicsItem::ItemIsFocusable
                         | QGraphicsItem::ItemIsSelectable
                         | QGraphicsItem::ItemSendsGeometryChanges );
    addItem( drawingItem );

    QString tooltip = eventTarget_->onICanvasViewEvent_GetToolTipText( this, item );
    if( tooltip.isEmpty() == false )
        drawingItem->setToolTip( tooltip );

    QAbstractGraphicsShapeItem* i =
        reinterpret_cast<QAbstractGraphicsShapeItem *>(lastAddItem_->drawingObject());
    if( ! i )
        return;

    // setting style..
    QPainterPath path = createCoveringBorderPath( lastItemBorderType_, i );
    if ( path.isEmpty() )
        return;

    clearLastItemBorderRect();

    QAbstractGraphicsShapeItem* lastBorderItem = addPath( path );
    lastBorderItem->setPen(
            QPen( Util::getComplementaryColor(backgroundColor_, penColor() ), 2) );
    lastBorderItem->setZValue( currentZValue() );
    lastCoverGraphicsItem_ = lastBorderItem;

    void CSharedPainterScene::clearBackgroundImage( void )
    {
        backgroundImageItem_ = boost::shared_ptr<CBackgroundImageItem>();
        backgroundPixmap_ = QPixmap();
        resetBackground( sceneRect() );
    }
    ```
---

* [Blaise Pascal](http://en.wikipedia.org/wiki/Blaise_Pascal)

* [Augustin-Louis Cauchy](http://en.wikipedia.org/wiki/Augustin-Louis_Cauchy)

* [Bernhard Riemann](http://en.wikipedia.org/wiki/Bernhard_Riemann)
![riemann-portrait]

[riemann-portrait]: http://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Georg_Friedrich_Bernhard_Riemann.jpeg/225px-Georg_Friedrich_Bernhard_Riemann.jpeg


* [Archidemes of Syracuse](http://en.wikipedia.org/wiki/Archimedes)
![archidemes-portrait]

[archidemes-portrait]: http://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Domenico-Fetti_Archimedes_1620.jpg/220px-Domenico-Fetti_Archimedes_1620.jpg

---

**`\mathbb`** `\mathbb` use font [blackboard bold](https://en.wikipedia.org/wiki/Blackboard_bold)

**`\mathfrak`**

`\mathfrak` use font [fraktur](https://en.wikipedia.org/wiki/Fraktur) Here is the entire alphabet of English in Fraktur, using the \mathfrak font of the mathematical typesetting package TeX:

**`\mathcal`** calligraphy font， Script typefaces

LaTeX has defined two commands that can be used anywhere in documents (not just maths) to insert some horizontal space. They are \quad and \qquad

A \quad is a space equal to the current font size. So, if you are using an 11pt font, then the space provided by \quad will also be 11pt (horizontally, of course.) The \qquad gives twice that amount. As you can see from the code from the above example, \quads were used to add some separation between the maths and the text.

**`\tt`** typewriter text

* https://en.wikipedia.org/wiki/Calligraphy
* http://www.urbanfonts.com/fonts/calligraphy-fonts.htm
* https://en.wikipedia.org/wiki/Blackletter
* https://en.wikipedia.org/wiki/Calligraphy
* https://en.wikipedia.org/wiki/Typeface
* https://en.wikipedia.org/wiki/Emphasis_(typography)
* http://www.math.uiuc.edu/~hildebr/tex/packages.html
* https://en.wikipedia.org/wiki/Fraktur
* https://en.wikipedia.org/wiki/Blackboard_bold
* https://en.wikibooks.org/wiki/LaTeX/Mathematics

---

数学是一个高手必备技能。

数学学习使用英文能少走弯路。

举例：

- σ(X), the Standard Deviation of the Random Variable X. (`S`igma, `S`tandard)
- π(R), Projection from R to π(R), π(`p`i) for `p`rojection)
- k, constant. (konstant)

感悟：

- 结论很有意思，证明过程更有意思。记住结论往往不能记忆深刻，了解了证明的过程，记住一两个要点，就能把整条线拎清楚。

---

The progress of abstraction

:   1. Everything is an object.
    2. A program is a bunch of objects telling each other what to do by sending
       messages.
    3. Each object has its own memory made up of other objects.
    4. Every object has a type.
    5. All objects of a particular type can receive the same messages.

* An object has state, behavior and identity.
* An object has an interface
* An object provides services
* The hidden implementation (private, protected, public)
* Reusing the implementation

`Is-a` vs. `is-like-a` relationships

* Interchangeable objects with polymorphism
* upcasting
* The singly rooted hierarchy
* Containers
* Object creation & lifetime
* Exception handling: dealing with errors
* Concurrent programming
* Java and the Internet

You know what a procedural program looks like: data definitions and function
calls. To find the meaning of such a program, you must work at it, looking
through the function calls and low-level concepts to create a model in your
mind. This is the reason we need intermediate representations when designing
procedural programs—by themselves, these programs tend to be confusing because
the terms of expression are oriented more toward the computer than to the
problem you’re solving.

* Where storage lives
    * The Stack.
    * The Heap.
    * Constant storage.
    * Non-RAM storage.
* High-precision numbers
    * BigInteger, BigDecimal

An important use of static for methods is to allow you to call that method
without creating an object. This is essential, as you will see, in defining the
`main()` method that is the entry point for running an application.

JavaDoc, Embedded HTML, @see, @version, @author, @since, @param, @return

This phenomenon is often called `aliasing(t1 = t2)`, and it's a fundamental way
that Java works with objects. But what if you don't want aliasing to occur in
this case? You could forego the assignment and say: `t1.level = t2.level`

A trailing character after a literal value establishes its type. Uppercase or
lowercase L means long (however, using a lowercase l is confusing because it
can look like the number one). Uppercase or lowercase `F` means float. Uppercase
or lowercase `D` means double.

`Integer.toBinaryString(b)`{.java}

```java
int i = 23;
long l = (long)i; // "Widening," so cast not really required, long l = i;
int i2 = (int)l; // A "narrowing conversion"
```

java.lang.Math

A compendium `[kəm'pɛndɪəm]` 概略 of operators

```java
Character.isLowerCase(c)
return, break, continue, break, switch,
Random.nextInt(23),
Random.nextDouble(23.45)
```

```java
public class Leaf {
    int i = 0;
    Leaf increment() {
        i++;
        return this;
    }
    void print() {
        System.out.println("i = " + i);
    }
    public static void main(String[] args) {
        Leaf x = new Leaf();
        x.increment().increment().increment().print();
    }
}
```

`new`, `finalize()`,

1. Your objects might not get garbage collected.
2. Garbage collection is not destruction.
3. Garbage collection is only about memory.

`super.finalize()`
`System.gc() /* gabage collection */`

---

本章介绍了使用 NodeJS 操作文件时需要的 API 以及一些技巧，总结起来有以下几点：

  * 学好文件操作，编写各种程序都不怕。
  * 如果不是很在意性能，fs模块的同步API能让生活更加美好。
  * 需要对文件读写做到字节级别的精细控制时，请使用fs模块的文件底层操作API。
  * 不要使用拼接字符串的方式来处理路径，使用path模块。
  * 掌握好目录遍历和文件编码处理技巧，很实用。

---

```bash
cat >>.rspec-test <<EOF
--no-color
--format-doc
--no-profile
EOF
```

```bash
git reset --hard HEAD^
git reset --hard e8b4121
git reflog
```

* 场景1：当你改乱了工作区某个文件的内容，想直接丢弃工作区的修改时，用命令 `git checkout -- file`{.bash}
* 场景2：当你不但改乱了工作区某个文件的内容，还添加到了暂存区时，想丢弃修改，分
  两步，第一步用命令 `git reset HEAD file`{.bash}，就回到了场景1，第二步按场景 1 操作。

```bash
git remote add origin git@server-name:path/repo-name.git
git checkout -b dev
git branch dev && git checkout dev
git checkout master && git merge dev
```

* 查看分支：`git branch`{.bash}
* 创建分支：`git branch <name>`{.bash}
* 切换分支：`git checkout <name>`{.bash}
* 创建+切换分支：`git checkout -b <name>`{.bash}
* 合并某分支到当前分支：`git merge <name>`{.bash}
* 删除分支：`git branch -d <name>`{.bash}

```bash
$ git status
On branch master
You have unmerged paths.
  (fix conflicts and run "git commit")

Unmerged paths:
  (use "git add <file>..." to mark resolution)

both modified:      good.txt

no changes added to commit (use "git add" and/or "git commit -a")
```

![](http://www.liaoxuefeng.com/files/attachments/001384909239390d355eb07d9d64305b6322aaf4edac1e3000/0)

```bash
git stash
git stash,
git stash apply,
git stash pop
```

```bash
git remote
git branch --set-upstream branch-name origin/branch-name
git tag <tag-name>
git show tag
git tag -a <tag-name> -m <commit-msg> <commit-id>
git tag -s <secret-tag-name> -m <commit-msg> <commit-id>
git tag -d <tag-name>
git push origin <tag-name> # push local tag to remote origin
git push origin --tags
```

delete romete tag
:   `git push origin :refs/tags/<tag-name>`{.bash}

```bash
git config --global alias.st status
git config --global alias.last "log -1"
cat ~/.gitconfig
cat .git/config
[core]
repositoryformatversion = 0
filemode = true
bare = false
logallrefupdates = true
[remote "origin"]
url = git@gitcafe.com:gnat/learngit.git
fetch = +refs/heads/*:refs/remotes/origin/*
```

* `/etc/gitconfig` 文件：系统中对所有用户都普遍适用的配置。若使用 `git config`{.bash} 时用 `--system` 选项，读写的就是这个文件。
* `~/.gitconfig` 文件：用户目录下的配置文件只适用于该用户。若使用 `git config`{.bash} 时用 `--global` 选项，读写的就是这个文件。
* `git config --global core.editor emacs`{.bash}
* `git config --global merge.tool vimdiff`{.bash}

```tzx-plain
:smile: :smiley: :relaxed: :relieved: :smirk: :flushed: :worried: :worried: :sweat_smile:
:pensive: :frowning: :disappointed: :cry: :joy: :scream: :sleepy: :yum: :mask:
:dizzy_face: :neutral_face: :heart: :+1: :-1: :pill:
```

```python
name = raw_input()
print "your name is ", name
ord('A') # char -> integer ordinal
chr(65)  # integer ordinal -> char
u'中文'
u'中文转换'.encode('utf-8').decode('utf-8')
len(u'abc')
```

A quine `/kwi:n/` is a non-empty computer program which takes no input and produces a
copy of its own source code as its only output. The standard terms for these
programs in the computability theory and computer science literature are
"**self-replicating programs**", "self-reproducing programs", and "self-copying
programs".


```bash
awk BEGIN{c=BEGIN{c=%c%s%c;printf(c,34,c,34);}
awk BEGIN{c="BEGIN{c=%c%s%c;printf(c,34,c,34);}";printf(c,34,c,34);}
```

How many Computer Languages are there?

:   ```tzx-plain
    late 1940s
        first electronic computers & LLLs
    1950s
        first HLLs for computers
    1969
        about 120 HLLs, about 15 in widespread use
    1977
        about 80 HLLs in active (non-trivial) use
    Today
        more than 2000 HLLs
    ```

Scripting Paradigm

So far, we have been thinking about languages suitable for solving very large
problems, where the resulting programs are tens of thousands or more lines
long, written and maintained by more than one person. However, not all problems
require industrial-strength solutions, and different requirements have given
rise to different kinds of languages. The situations where they are applicable
are:

building applications by *gluing together existing components* controlling
applications that have a programmable interface writing programs where ease of
development is more important than anything else (such as run-time efficiency,
or maintainability)

---

Google Search

:   ```tzx-bigquote
    inurl:text
    intitle:text allintitle:text
    filetype:pdf
    site:pan.baidu.com
    weather:wuhan
    see more and...
    ```

---

- CGI（公共网关接口，Common Gateway Interface） — 在 Web 服务器上，用来在脚本和
  ／或应用程序之间传输数据，然后将该数据返回给 Web 页面或浏览器。CGI 脚本经常是
  使用 Perl 语言创建的，它能够生成动态 Web 内容（包括电子商业购物篮、讨论组、调
  查表单以及实时新闻等）。
- CHS（柱面／磁头／扇区，Cylinder/Head/Sector） — FDISK 在分区期间所需的磁盘信
  息。
- CLU（命令行实用程序，Command Line Utility） — 从命令行会话或 shell 运行的程序
  ，如 Tar 或 Mkdir。
- LILO（Linux 装载程序，LInux LOader） — 一种流行的分区引导管理器实用程序，能够
  引导到 Linux 以外的操作系统。它并不特定于文件系统。
- MIME（多用途因特网邮件交换，Multipurpose Internet Mail Exchange） — 允许文本
  电子邮件消息包含非文本（例如图形、视频或音频）数据的通信协议。
- PAM（可插入的认证模块，Pluggable Authentication Modules） — 用于系统安全性的
  可替换的用户认证模块，它允许在不知道将使用何种认证方案的情况下进行编程。这允
  许将来用其它模块来替换某个模块，却无需重写软件。
- RCS（修订控制系统，Revision Control System） — 一组程序，它们控制组环境下文件
  的共享访问并跟踪文本文件的变化。常用于维护源代码模块的编码工作。
- RFS（远程文件共享，Remote File Sharing） — 一个程序，它让用户访问其它计算机上
  的文件，就好象文件在用户的系统上一样。
- RPM（RPM 软件包管理器，RPM Package Manager） — 一种用于因特网下载包的打包及安
  装工具，它包含在某些 Linux 分发版中。它生成具有 .RPM 扩展名的文件。与 Dpkg 类
  似。
- `ag --pager less <qry> [<filename>]`{.bash}
- 假脱机（Spool）（外围设备联机并发操作，Simultaneous Peripheral Operation
  On-Line） — 将数据发送给一个程序，该程序将该数据信息放入队列以备将来使用（例
  如，打印假脱机程序）。
- 隐写术（Steganography, `[,stegə'nɔgrəfi]` n. 速记式加密）— 将一段信息隐藏在另
  一段信息中的做法。一个示例是在数字化照片中放置不可见的数字水印。
- Tux— 虚构的 Linux 企鹅吉祥物的名字。
- 工作目录（Working Directory）— 当前目录或用户当前工作时所在的目录的另一名称。
- `"kyy` *vs.* `"Kyy`
- `"kp` === `"Kp`
- `:reg`

> Yank the text you want to copy with `y[motion]` - this text is saved in `"`
> and `0` registers. Delete the text you want to replace with `d[motion]` - this
> text is saved in `"` register. Paste the yanked text with `"0p`

We can now just type `@m` to run this macro on the current line. Furthermore,
we can type `100@m` to do this 100 times! Lifes looking pretty good.

`:%normal @a` apply to this region.

* `J` 合并行，并两行之间增加一个空格
* `gJ` 合并行没有空格
* `vip` 我一直使用 <kbd>v</kbd> <kbd>i</kbd> <kbd>p</kbd> 按键组合，快速选中一
  段，在代码块间使用非常方便。
* `<c-a> <c-x>` number++, number--
23

* `cat /etc/fstab`{.bash}
* `mount /cdrom`{.bash}
* `eject /cdrom`{.bash}
* `cd`{.bash} + <kbd>TAB</kbd>

* `md path/to/dir` === `mkdir -p path/to/dir`
* `rd path/to/dir` === `rmdir path/to/dir`
* `d` === `dirs -V`: lists last used directories
* Bash: `set -o vi`, `set -o emacs`
* Zsh:  `bindkey -v`, `bindkey -e`
* `C-t` 交换光标所在字符与其前的字符
* `M-t` 交换光标所在的单词与前面单词的位置
* `C-m` 相当于“回车键”

> “Unix 用起来容易，但学习起来难”。

Unix/Linux 操作系统的使用作为实践性非常强的一门“技术”，有章可循。每一个命令的命
令格式、参数、选项都可以通过阅读手册获得，所以用起来很容易。

但它学习起来，并不是每天扫地的阿姨一眼就能轻松掌握的工具。如作者所言，“设计
Unix 的目的不是为了学习而是为了使用。”为了达到使用 Unix 这一工具的目的，我们需
要了解其“然”，也就是基本操作：了解如何登陆 Unix、如何使用 Unix 编辑文件、操作目
录……

Helpful aliases for common git tasks

- `g`{.bash} &rarr; `git`
- `gst`{.bash} &rarr; `git status`
- `gl`{.bash} &rarr; `git pull`
- `gup`{.bash} &rarr; `git pull --rebase`
- `gp`{.bash} &rarr; `git push`
- `gd`{.bash} &rarr; `git diff`
- `gdc`{.bash} &rarr; `git diff --cached`
- `gdv`{.bash} &rarr; `git diff -w "$@" | view -`
- `gc`{.bash} &rarr; `git commit -v`
- `gcR`{.bash} &rarr; `git commit -v --amend`
- `gca`{.bash} &rarr; `git commit -v -a`
- `gcaR`{.bash} &rarr; `git commit -v -a --amend`
- `gcmsg`{.bash} &rarr; `git commit -m`
- `gco`{.bash} &rarr; `git checkout`
- `gcm`{.bash} &rarr; `git checkout master`
- `gr`{.bash} &rarr; `git remote`
- `grv`{.bash} &rarr; `git remote -v`
- `grmv`{.bash} &rarr; `git remote rename`
- `grrm`{.bash} &rarr; `git remote remove`
- `gsetr`{.bash} &rarr; `git remote set-url`
- `grup`{.bash} &rarr; `git remote update`
- `grbi`{.bash} &rarr; `git rebase -i`
- `grbc`{.bash} &rarr; `git rebase --continue`
- `grba`{.bash} &rarr; `git rebase --abort`
- `gb`{.bash} &rarr; `git branch`
- `gba`{.bash} &rarr; `git branch -a`
- `gcount`{.bash} &rarr; `git shortlog -sn`
- `gcl`{.bash} &rarr; `git config --list`
- `gcp`{.bash} &rarr; `git cherry-pick`
- `glg`{.bash} &rarr; `git log --stat --max-count=10`
- `glgg`{.bash} &rarr; `git log --graph --max-count=10`
- `glgga`{.bash} &rarr; `git log --graph --decorate --all`
- `glo`{.bash} &rarr; `git log --oneline --decorate --color`
- `glog`{.bash} &rarr; `git log --oneline --decorate --color --graph`
- `gss`{.bash} &rarr; `git status -s`
- `ga`{.bash} &rarr; `git add`
- `gm`{.bash} &rarr; `git merge`
- `grh`{.bash} &rarr; `git reset HEAD`
- `grhh`{.bash} &rarr; `git reset HEAD --hard`
- `gclean`{.bash} &rarr; `git reset --hard && git clean -dfx`
- `gwc`{.bash} &rarr; `git whatchanged -p --abbrev-commit --pretty=medium`
- `gsts`{.bash} &rarr; `git stash show --text`
- `gsta`{.bash} &rarr; `git stash`
- `gstp`{.bash} &rarr; `git stash pop`
- `gstd`{.bash} &rarr; `git stash drop`
- `ggpull`{.bash} &rarr; `git pull origin $(current_branch)`
- `ggpur`{.bash} &rarr; `git pull --rebase origin $(current_branch)`
- `ggpush`{.bash} &rarr; `git push origin $(current_branch)`
- `ggpnp`{.bash} &rarr; `git pull origin $(current_branch) && git push origin $(current_branch)`
- `glp`{.bash} &rarr; `git log prettily`

---

- what the fuck barbecue = WTFBBQ
- `extract`{.bash} 'x' alias - swiss knife for archive extracting

---

* 表面上看，tuple 的元素确实变了，但其实变的不是 tuple 的元素，而是 list 的元素。
* list 和 tuple 是 Python 内置的有序集合，一个可变，一个不可变。根据需要来选择使用它们。

```python
if <条件判断1>:
    <执行1>
elif <条件判断2>:
    <执行2>
elif <条件判断3>:
    <执行3>
else:
    <执行4>
```

`birth = int(raw_input(birth: ))`{.python}

要避免 key 不存在的错误，有两种办法，一是通过 `in` 判断 `key` 是否存在：

```python
>>> Thomas in d
>>> False
```

所以，对于不变对象来说，调用对象自身的任意方法，也不会改变该对象自身的内容。相
反，这些方法会创建新的对象并返回，这样，就保证了不可变对象本身永远是不可变的。

要保证 hash 的正确性，作为 key 的对象就不能变。在 Python 中，字符串、整数等都是
不可变的，因此，可以放心地作为 key。而 list 是可变的，就不能作为 key

* `int()`, `float()`, `str()`, `bool()`

原来返回值是一个 tuple！但是，在语法上，返回一个 tuple 可以省略括号，而多个变量
可以同时接收一个 tuple，按位置赋给对应的值，所以，Python 的函数返回多值其实就是
返回一个 tuple，但写起来更方便。

```python
def power(x, n=2):
    s = 1
    while n > 0:
    n = n - 1
    s = s * x
    return s
```

默认参数必须指向不变对象！ `def add_end(L=None):`{.python}

为什么要设计 `str`、`None` 这样的不变对象呢？因为不变对象一旦创建，对象内部的数
据就不能修改，这样就减少了由于修改数据导致的错误。此外，由于对象不变，多任务环
境下同时读取对象不需要加锁，同时读一点问题都没有。我们在编写程序时，如果可以设
计一个不变对象，那就尽量设计成不变对象。

* list: `[1, 2, 3]`
* tuple: `(1, 2, 3)`

定义可变参数和定义 list 或 tuple 参数相比，仅仅在参数前面加了一个 `*` 号。在函
数内部，参数 numbers 接收到的是一个 tuple，因此，函数代码完全不变。但是，调用该
函数时，可以传入任意个参数，包括 0 个参数

```python
def calc(*numbers):
    sum = 0
    for n in numbers:
    sum = sum + n * n
    return sum

nums = [1, 2, 3]
calc(*nums)
14
```

```python
>>> kw = {city: Beijing, job: Engineer}
>>> person(Jack, 24, **kw)
name: Jack age: 24 other: {city: Beijing, job: Engineer}
```

* 参数定义的顺序必须是：**必选参数**、**默认参数**、**可变参数**和**关键字参数**。
* args 是可变参数，args 接收的是一个 tuple；
* `**kw` 是关键字参数，kw 接收的是一个 dict。

尾递归是指，在函数返回的时候，调用自身本身，并且，return 语句不能包含表达式。这
样，编译器或者解释器就可以把尾递归做优化，使递归本身无论调用多少次，都只占用一
个栈帧，不会出现栈溢出的情况。

```python
>>> L[1:3]
[Sarah, Tracy]

for key in d:
for value in d.itervalues():
for k, v in d.iteritems():

[x*x for x in range(1, 11)]

isinstance(x, str)
g = (x * x for x in range(10))
g.next()
```

* [生成器 - 廖雪峰的官方网站](http://www.liaoxuefeng.com/wiki/001374738125095c955c1e6d8bb493182103fac9270762a000/00138681965108490cb4c13182e472f8d87830f13be6e88000) :smile:

![](http://www.liaoxuefeng.com/files/attachments/0013879622109990efbf9d781704b02994ba96765595f56000/0)

* map, reduce
* `filter(function, list)`{.python}

```python
def not_empty(s):
    return s and s.strip()

filter(not_empty, [A, , B, None, C,  ])
# 结果: [A, B, C]
```

* `sorted([list], <function>)`{.python}
* 高阶函数除了可以接受函数作为参数外，还可以把函数作为结果值返回。

```python
In [9]: def lazy_sum(*args):
   ...:     def sum():
   ...:         ax = 0
   ...:         for n in args:
   ...:             ax = ax + n
   ...:         return ax
   ...:     return sum
   ...:

In [10]: f = lazy_sum( 1, 2, 3, 4)

In [11]: f
Out[11]: <function __main__.sum>

In [12]: f()
Out[12]: 10
```

在这个例子中，我们在函数 lazy_sum 中又定义了函数 sum，并且，内部函数 sum 可以引
用外部函数 lazy_sum 的参数和局部变量，当 lazy_sum 返回函数 sum 时，相关参数和变
量都保存在返回的函数中，这种称为“闭包（Closure）”的程序结构拥有极大的威力。

`lambda x: x*x`

:   ```python
    import functools
    int2 = functools.partial(int, base=2)
    int2('1000000')
    ```

    注意到上面的新的 int2 函数，仅仅是把 base 参数重新设定默认值为 2，但也可以
    在函数调用时传入其他值: `int2("1000000", base=10)`{.python}

    请注意，每一个包目录下面都会有一个 `__init__.py` 的文件，这个文件是必须存在
    的，否则，Python 就把这个目录当成普通目录，而不是一个包。`__init__.py` 可以
    是空文件，也可以有 Python 代码，因为 `__init__.py` 本身就是一个模块，而它的模块
    名就是 mycompany

    ```python
    if __name__ == '__main__':
        test()
    ```

```python
try:
    import json # python >= 2.6
except ImportError:
    import simplejson as json # python <= 2.5
```

类似 `__xxx__` 这样的变量是特殊变量，可以被直接引用，但是有特殊用途，比如上面的
`__author__`，`__name__` 就是特殊变量，hello 模块定义的文档注释也可以用特殊变量
`__doc__` 访问，我们自己的变量一般不要用这种变量名；

类似 `_xxx` 和 `__xxx` 这样的函数或变量就是非公开的（private），不应该被直接引
用，比如 `_abc`，`__abc` 等；

外部不需要引用的函数全部定义成 private，只有外部需要引用的函数才定义为 public。

`from __future__ import division`, use python3.x in python2.x

```python
class Student(object):

    def __init__(self, name, score):
        self.name = name
        self.score = score

In [16]: class Me(object):
   ....:     def __init__(this):
   ....:         this.name = "shit"
this.__private_var, this.__not_private_var__, this._not_private_but_dont_touch_me_please
class Dog(Animal):
    pass
instanceof (dog, Dog)
instanceof (dog, Animal) # true

def run_twice(animal):
    animal.run()
    animal.run()
```

对于一个变量，我们只需要知道它是 Animal 类型，无需确切地知道它的子类型，就可以
放心地调用 `run()` 方法，而具体调用的 `run()` 方法是作用在 Animal、Dog、Cat 还
是 Tortoise 对象上，由运行时该对象的确切类型决定，这就是**多态**真正的威力：调
用方只管调用，不管细节，而当我们新增一种 Animal 的子类时，只要确保 `run()` 方法
编写正确，不用管原来的代码是如何调用的。这就是著名的“开闭”原则：

* 对扩展开放：允许新增 Animal 子类；
* 对修改封闭：不需要修改依赖 Animal 类型的 `run_twice()` 等函数。

```python
type(123), type("string")
>>> import types
__slots__ = (name, gender)

class Student(object):

    def get_score(self):
        return self._score

    def set_score(self, value):
        if not isinstance(value, int):
            raise ValueError('score must be an integer!')
        if value < 0 or value > 100:
            raise ValueError('score must between 0 ~ 100!')
        self._score = value
>>> s.score = 60 # OK，实际转化为s.set_score(60)
```

* `@score.setter`
* `@property` 的实现比较复杂，我们先考察如何使用。把一个 getter 方法变成属性，
  只需要加上 `@property` 就可以了，此时，`@property` 本身又创建了另一个装饰器
  `@score.setter`，负责把一个 setter 方法变成属性赋值，于是，我们就拥有一个可控
  的属性操作

```python
class Student(object):

    @property
    def birth(self):
        return self._birth

    @birth.setter
    def birth(self, value):
        self._birth = value

    @property
    def age(self):
        return 2014 - self._birth
```

由于 Python 允许使用多重继承，因此，**Mixin** 就是一种常见的设计。
只允许单一继承的语言（如 Java）不能使用 Mixin 的设计。

* Mixin
* `__str__()`, `print(Student("Michael"))`
* `__repr__ = __str__`
* `__iter__`
* `__getitem__`, `s = Student()`, `s[2]`
* `__getattr__`

当调用不存在的属性时，比如 score，Python 解释器会试图调用 `__getattr__(self, score)` 来尝试获得属性

`__call__`, `s = Student()`, `s()`

```python
import types
type(u'abc')==types.UnicodeType
isinstance(a, (str, unicode)) # string or unicode
```

如果要获得一个对象的所有属性和方法，可以使用 `dir()` 函数，它返回一个包含字符串
的 list，比如，获得一个 str 对象的所有属性和方法: `dir(Dog)`

* `getattr()`, `setattr()`, `hasattr()`
* `hasattr(Dog, "__init__")`
* `callable(Student())` # true
* `__getattr__`

`type()` 函数可以查看一个类型或变量的类型，Hello 是一个 class，它的类型就是
type，而 h 是一个实例，它的类型就是 `class Hello`。

* `type()` to create class,
* `__metaclass__ = <Class>`
* `try... except ...finally`.

第二个 except 永远也捕获不到 ValueError，因为 ValueError 是 StandardError 的子
类，如果有，也被第一个 except 给捕获了。

也就是说，不需要在每个可能出错的地方去捕获错误，只要在合适的层次去捕获错误就可
以了。这样一来，就大大减少了写 `try...except...finally` 的麻烦。

`import logging # log error and run, with error`{.python}

虽然用 IDE 调试起来比较方便，但是最后你会发现，**logging 才是终极武器**。

如果你听说过“测试驱动开发”（TDD：Test-Driven Development），单元测试就不陌生。

```python
d = dict(a=1,b=2)
d = dict({"a":1,"b":2})
raise FooError("invalid value: %s" % s)
assert n != 0, "n is zero"
logging, logging.info("n =%d" %n)
import logging
logging.basicConfig(level=logging.INFO)
python -m pdb err.py
pdb.set_trace()
import pdb

file-like object, `StringIO`
<mode>=rb, f.read().decode("gbk")
import codecs
import os
os.name
os.path.abspath(".")
os.getenv("PATH")
os.path.split("url....") # dirname, basename
import shutil
split extension: os.path.splitext(str)[1]==".py"
```

我们把变量从内存中变成可存储或传输的过程称之为序列化，在 Python 中叫
**pickling**，在其他语言中也被称之为 **serialization**，**marshalling**(集结待发的)，
**flattening** 等等，都是一个意思。

```python
try:
    import cPickle as pickle
except ImportError:
    import pickle
```

![](http://static.oschina.net/uploads/img/201306/27011038_KCGY.jpg)

python 语言特定的序列化模块是 pickle，但如果要把序列化搞得更通用、更符合 Web 标准，就可以使用 json 模块。

json 模块的 `dumps()` 和 `loads()` 函数是定义得非常好的接口的典范。当我们使用时
，只需要传入一个必须的参数。但是，当默认的序列化或反序列机制不满足我们的要求时
，我们又可以传入更多的参数来定制序列化或反序列化的规则，既做到了接口简单易用，
又做到了充分的扩展性和灵活性。如果要启动大量的子进程，可以用进程池(pool)的方式
批量创建子进程在 Unix/Linux 下，可以使用 fork() 调用实现多进程。

要实现跨平台的多进程，可以使用 multiprocessing 模块。

进程间通信是通过 Queue、Pipes 等实现的。当多个线程同时执行 `lock.acquire()` 时，
只有一个线程能成功地获取锁，然后继续执行代码，其他线程就继续等待直到获得锁为止。

获得锁的线程用完后一定要释放锁，否则那些苦苦等待锁的线程将永远等待下去，成为死线程。所以我们用try...finally来确保锁一定会被释放。

`import threading`{.python}

:   ```python
    # 创建全局 ThreadLocal 对象:
    local_school = threading.local()

    import re
    s = r'ABC\-001' # Python的字符串

    In [21]: if re.match(r'^/d{3}\-\d{3,8}$', '010-12345'):
       ....:     print 'ok'
       ....:

    In [22]:

    >>> re.split(r'\s+', 'a b   c')
    ['a', 'b', 'c']
    >>> re.split(r'[\s\,]+', 'a,b, c  d')
    ['a', 'b', 'c', 'd']


    >>> m = re.match(r'^(\d{3})-(\d{3,8})$', '010-12345')
    >>> m
    <_sre.SRE_Match object at 0x1026fb3e8>
    >>> m.group(0)
    '010-12345'
    >>> m.group(1)
    '010'
    >>> m.group(2)
    '12345'
    ```

贪婪匹配

:   ```python
    >>> re.match(r'^(\d+)(0*)$', '102300').groups()
    ('102300', '')
    ```

非贪婪匹配

:   ```python
    >>> re.match(r'^(\d+?)(0*)$', '102300').groups()
    ('1023', '00')

	# 编译:
	>>> re_telephone = re.compile(r'^(\d{3})-(\d{3,8})$')
	# 使用：
	>>> re_telephone.match('010-12345').groups()
    # ('010', '12345')
    ```

Python 之所以自称“batteries included”，就是因为内置了许多非常有用的模块，无需额
外安装和配置，即可直接使用。

modules

:   ```python
    from collections import namedtuple
    from collections import deque
    q = deque(["a", "b", "c"])
    q.append("x")
    q.appendleft("y")
    q
    append(), pop(), appendleft(), popleft()
    from collections import defaultdict
    from collections import OrderdDict
    from collections import counter

    %Base64
    >>> n = 10240099
    >>> b1 = chr((n & 0xff000000) >> 24)
    >>> b2 = chr((n & 0xff0000) >> 16)
    >>> b3 = chr((n & 0xff00) >> 8)
    >>> b4 = chr(n & 0xff)
    >>> s = b1 + b2 + b3 + b4
    >>> s
    ' ?@c'
    ```

```python
import struct

struct.pack('>I', 234523452345)
import hashlib
md5 = haslib.md5()
md5.update(how to use md5 in python hashlib?)
print md5.hexdigest()
```

要注意摘要算法不是加密算法，不能用于加密（因为无法通过摘要反推明文），只能用于
防篡改，但是它的单向计算特性决定了可以在不存储明文口令的情况下验证用户口令。

```python
import itertools
natuals = itertools.count(1)
for n in natuals:
    print n

>>> cs = itertools.cycle('ABC') # 注意字符串也是序列的一种
>>> ns = itertools.repeat('A', 10)

>>> natuals = itertools.count(1)
>>> ns = itertools.takewhile(lambda x: x <= 10, natuals)
>>> for n in ns:
...     print n

打印出1到10

chain('abc', 'def')
imap(), *vs.* map()
ifilter()
```

XML 虽然比 JSON 复杂，在 Web 中应用也不如以前多了，不过仍有很多地方在用，所以，有
必要了解如何操作 XML。

```python
# 打开一个 jpg 图像文件，注意路径要改成你自己的:
im = Image.open('/Users/michael/test.jpg')
# 获得图像尺寸:
w, h = im.size
# 缩放到50%:
im.thumbnail((w//2, h//2))
# 把缩放后的图像用jpeg格式保存:
im.save('/Users/michael/thumbnail.jpg', 'jpeg')

msg = MIMEText('hello, send by Python...', 'plain', 'utf-8')
msg['From'] = _format_addr(u'Python爱好者 <%s>' % from_addr)
msg['To'] = _format_addr(u'管理员 <%s>' % to_addr)
msg['Subject'] = Header(u'来自SMTP的问候……', 'utf-8').encode()
```

这就是传说中的 ORM 技术：`Object-Relational Mapping`，把关系数据库的表结构映射
到对象上。是不是很简单？

但是由谁来做这个转换呢？所以 ORM 框架应运而生
这个接口就是 **WSGI：Web Server Gateway Interface**。

```bash
find where-to-look criteria what-to-do
find /tmp /var/tmp . $HOME -name foo
find / -name foo 2>/dev/null
find -type f | ag some.\*.txt\$ | xargs tar -rf some.tar
```

`xsel -ob # paste text to >`{.bash}

The first `--` argument that is not an option-argument should be accepted as a
delimiter indicating the **end of options**. Any following arguments should be
treated as operands, even if they begin with the `-` character.

For utilities that use operands to represent files to be opened for either
reading or writing, the `-` operand should be used to mean only standard input
(or standard output when it is clear from context that an output file is being
specified) or a file named `-`.

**"options" (or, historically, "flags")**

When a utility has only a few permissible options, they are sometimes shown
individually, as in the example. Utilities with many flags generally show all
of the individual flags (that do not take option-arguments) grouped, as in:

* `utility_name [-abcDxyz][-p arg][operand]`{.bash}
* `utility_name [options][operands]`{.bash}

Utilities with very complex arguments may be shown as follows:

![](http://www.liaoxuefeng.com/files/attachments/001400339839622665127663fb840b5870864895b103c2f000)

在 Jinja2 模板中，我们用 `{{ name }}` 表示一个需要替换的变量。很多时候，还需要
循环、条件判断等指令语句，在 Jinja2 中，用 `{% ... %}` 表示指令。

* Jinja2, Mako, Cheetah, Django

看起来 A、B 的执行有点像多线程，但协程的特点在于是一个线程执行，那和多线程比，
协程有何优势？

最大的优势就是**协程极高的执行效率**。因为子程序切换不是线程切换，而是由程序自
身控制，因此，没有线程切换的开销，和多线程比，线程数量越多，协程的性能优势就越
明显。

第二大优势就是**不需要多线程的锁机制**，因为只有一个线程，也不存在同时写变量冲突，
在协程中控制共享资源不加锁，只需要判断状态就好了，所以执行效率比多线程高很多。

因为协程是一个线程执行，那怎么利用多核 CPU 呢？最简单的方法是`多进程+协程`，既
充分利用多核，又充分发挥协程的高效率，可获得极高的性能。注意到 consumer 函数是
一个 generator（生成器），把一个 consumer 传入 produce 后：

* 首先调用 `c.next()` 启动生成器；
* 然后，一旦生产了东西，通过 `c.send(n)` 切换到 consumer 执行；
* consumer 通过 yield 拿到消息，处理，又通过 yield 把结果传回；
* produce 拿到 consumer 处理的结果，继续生产下一条消息；
* produce 决定不生产了，通过 c.close() 关闭 consumer，整个过程结束。
* 整个流程无锁，由一个线程执行，produce 和 consumer 协作完成任务，所以称为“协程”，
  而非线程的抢占式多任务。

最后套用 Donald Knuth 的一句话总结协程的特点：

> “子程序就是协程的一种特例。”

当一个 greenlet 遇到 IO 操作时，比如访问网络，就自动切换到其他的 greenlet，等到
IO 操作完成，再在适当的时候切换回来继续执行。由于 IO 操作非常耗时，经常使程序处
于等待状态，有了 gevent 为我们自动切换协程，就保证总有 greenlet 在运行，而不是
等待 IO。

Clojure 提供了很多函数来操作序列（sequence), 而序列是集合的逻辑视图。很多东西可
以被看作序列：Java 集合, Clojure 的集合, 字符串, 流, 文件系统结构以及 XML 树.从
已经存在的 clojure 集合来创建新的集合的效率是非常高的，因为这里使用了
**persistent data structures** 的技术(这对于 clojure 在数据不可更改的情况下，同
时要保持代码的高效率是非常重要的)。

```clojure
'(a b c)
(quote (a b c))

hash-map, sorted-map
list, vector

'(), []
```

When a set is used as a function, it returns the argument if it is in the set
and nil otherwise.

Because the Java invocation syntax in Clojure is clean and simple, it is
idiomatic to use Java directly, rather than to hide Java behind Lispy wrappers.

* `defn`: define a function
* user=> `(load-file "/home/gnat/test.clj")`
* `(conj coll item)`
* this is a set: `#{}`
* `conj`: conjoin
* `(def visitors (ref #{}))`
* `(dosync (commute visitors conj "stu"))`

```clojure
@vistors
(deref vistors)
user=> (@vistors "stu")
"stu"
user=> (if (@vistors "stu") (str "true") (str "false"))
"true"
user=> (if (@vistors "tu") (str "true") (str "false"))
"false"
```

Here we've got your project's `README`, a `src/` directory containing the code, a
`test/` directory, and a `project.clj` file which describes your project to
Leiningen. The `src/my_stuff/core.clj` file corresponds to the `my-stuff.core`
namespace.

```tzx-plain
:dependencies [[org.clojure/clojure "1.5.1"]]
list in a list, [[],[],[],[]] like this
[[<group-id>/<artifact-id> version-number]]
```

```clojure
>> lein run one
This is the foo, and your args are one
>> lein run -m my-stuff.core -main good
hello main, see you. (-main good)

(require 'clojure.string 'clojure.test)
vector: (require '[clojure.string :as string])
user=> (string/capitalize "good")
"Good"

(require 'clojure.string '[clojure.test :as test])
Using other namespaces’ code as though it’s yours:
Using other namespaces’ code as though it’s yours:
Using other namespaces’ code as though it’s yours:
Using other namespaces’ code as though it’s yours: use
user=> (split (str (java.util.Date.)) #":")
["Mon Feb 16 22" "55" "56 CST 2015"]

(import 'java.util.Date)
(Date.)
require and then import: (require 'stuff)
(import 'stuff.BigWidget)
```

```clojure
user=> (let [[x y z] v]
  #_=> (println "x is: " x ", y is: " y ", z is: " z))
x is:  11 , y is:  22 , z is:  33
nil
user=>

name, namespace, class, #"string as regex"
user=> (let [[& x ] v] x)
(11 22 33 "string 44")
user=> (let [[x & z ] v] z)
(22 33 "string 44")

user=> (if "true" "true..." "false...")
"true..."
user=> (if (true? "true") "true..." "false...")
"false..."
```

![](http://math.ecnu.edu.cn/~latex/images/Bezier_2.gif)
![](http://math.ecnu.edu.cn/~latex/images/Bezier_3.gif)
![](http://math.ecnu.edu.cn/~latex/images/Bezier_4.gif)

`sudo apt-get install cowsay`{.bash}

```javascript
var o = {
    banana: function () {},
    apple: function () {},
    default: function () {}
}

if (o[fruit]) {
    o[fruit]();
} else {
    o['default']();
}

if () {} else {}
if () {} else if () {} else {}

switch (VAR) { case VAR1: CMD; break; ...; default: CMD; }

while () {}

for (INIT; TEST; INC) {}

do {} while();

try {} catch {}

break; continue;
lable, break lable; continue lable;

number, string, boolean,
object, array, function,
null, undefined,
typeof, instenceof, Object.prototype.toString
true, false,
&&, ||, !, ===, !==, ==, !=
```

```javascript
"abc".length
"abc"
.length
Number.MAX_VALUE
Number.MIN_VALUE
var longString = "Long \
long \
long \
string";
// unicode
var s = '\u0049'; // "@"
s.charAt(0) // char
s.charCodeAt(0) // base-10
// Base64
window.btoa('Hellow world')
window.atob('...')
```

要将非 ASCII 码字符转为 Base64 编码，必须中间插入一个浏览器转码的环节，再使用这两个方法。

```javascript
function b64Encode( str ) {
    return window.btoa(unescape(encodeURIComponent( str )));
}

function b64Decode( str ) {
    return decodeURIComponent(escape(window.atob( str )));
}

// 使用方法
b64Encode('你好') // "5L2g5aW9"
b64Decode('5L2g5aW9') // "你好"
```

```bash
$ echo '你好' | base64
5L2g5aW9

$ echo '5L2g5aW9Cg==' | base64 -d
你好

$ echo '5L2g5aW9Cg' | base64 -d
你好
base64: invalid input

# 还要注意换行
$ echo 'good' | base64
Z29vZAo=
$ echo -n 'good' | base64
Z29vZA==

```

object

```javascript
var o = {
    p: "Hello World"
    q: "Quit, bye"
};
o.p // "Hello World"
o["p"] // "Hello World"
if ("p" in o) {} // method 1
if ("0" in o) {} // method 2
if (0 in o) {} // method 3
Object.keys(o); // ["p", "q"]
delete o.p // true

var o = new Object();
o.hasOwnProperty('toString'); // true
'toString' in o // true
for (i in o) {console.log(o.i);}

// with
o.p1 = 1;
o.p2 = 2;
with (o) {
    p1 = 3;
    p2 = 6;
}
mZ
var a = [, , ,]; // legth = 3 not enumerable
var b = [undefined, undefined, undefined]; // length = 3, enumerable
var c = new Array(3); // length = 3, not enumerable
```

`easy_install statsmodels`

---

[数据处理 API 参考手册#md2html](http://developer.qiniu.com/code/v6/api/dora-api/index.html#md2html)

:   * <http://whudoc.qiniudn.com/keybr.md?md2html/0/css/aHR0cDovL3Rhbmd6eC5xaW5pdWRuLmNvbS9tYWluLmNzcw==>
    * <http://tangzx.qiniudn.com/main.css> --[base64 encoding]--> `aHR0cDovL3Rhbmd6eC5xaW5pdWRuLmNvbS9tYWluLmNzcw==`

[base64 encoding]: https://www.base64encode.org/

HTTP Redirection
:   `<meta HTTP-EQUIV="REFRESH" content="0; url=http://district10.github.io/">`{.html}

fatality `[fə'tæləti]`: n. 死亡；宿命；致命性；不幸；灾祸

```css
article hr::after {
    letter-spacing: 0.5em;
    content: "✼ ✼ ✼";
    position: relative;
    top: -0.4em;
}

article hr {
    text-align: center;
    color: #CCC;
}
```

markdown blog: `<a id="id"></a>`, then use `url#id`, or in tzx-blog, use `｀＠｀｛.ｔｚｘ－ａｎｃｈｏｒ ＃ｉｄ｝`

把「逼格」改爲「屄格」不是「惡意編輯」。把屄格這樣一個氣質低俗的詞柔化、諱飾成
「逼格」，造成「其實沒有那麼難聽」的假象，繼續鼓勵人們使用，纔是真正的大惡。因
此禁言，誠爲黑白顛倒。做出這一決策的知乎管理員應該爲此感到羞恥。

---

去掉 QDockWidget 的标题栏

```cpp
QWidget* titleBar = mPropertyWindow->titleBarWidget();
mPropertyWindow->setTitleBarWidget( new QWidget() );
delete titleBar;
```

---

QPixmap 与 HBITMAP、HICON 互转

#. `QPixmap::toWinHICON();`{.cpp}
#. `QPixmap::toWinHBITMAP();`{.cpp}
#. `QPixmap::fromWinHICON();`{.cpp}
#. `QPixmap::fromWinHBITMAP();`{.cpp}

Qt 编译后移植到其他地方后，qt 寻找库的路径可能出现错误，这时：

在 Qt 的 `bin` 目录下自己建一个 `qt.conf`

```plain
[Paths]
Prefix=C:/dev/qt-4.8.6
``

```cpp
void glFrustum( GLdouble left,
                GLdouble right,
                GLdouble bottom,
                GLdouble top,
                GLdouble nearVal,
                GLdouble farVal );
```

`glFrustum` describes a perspective matrix that produces a perspective
projection.  The current matrix (see `glMatrixMode`) is multiplied by this matrix
and the result replaces the current matrix, as if glMultMatrix were called with
the following matrix as its argument:

$$\begin{bmatrix}
\frac{2nearVal}{right - left} & 0 & A & 0 \\
0 & \frac{2nearVal}{top - bottom} & B & 0 \\
0 & 0 & C & 0 \\
0 & 0 & -1 & 0
\end{bmatrix}$$

$A = \frac{right + left}{right - left}$
$B = \frac{top + bottom}{top - bottom}$
$C = -\frac{farVal + nearVal}{farVal - nearVal}$
$D = -\frac{2farVal \times nearVal}{farVal - nearVal}$

Typically, the matrix mode is `GL_PROJECTION`, and $(left, bottom, -nearVal)$
and $(right, top, -nearVal)$ specify the points on the near clipping plane that
are mapped to the lower left and upper right corners of the window, assuming
that the eye is located at (0, 0, 0).  - farVal specifies the location of the
far clipping plane.  Both nearVal and farVal must be positive.

Depth buffer precision is affected by the values specified for nearVal and
farVal.  The greater the ratio of farVal to nearVal is, the less effective the
depth buffer will be at distinguishing between surfaces that are near each
other.  If r = farVal nearVal roughly log 2 ⁡r bits of depth buffer precision
are lost.  Because r approaches infinity as nearVal approaches 0, nearVal must
never be set to 0.

<div class="tzx-fright">
![A view frustum](https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/ViewFrustum.svg/330px-ViewFrustum.svg.png)
</div>

VPN
:   the view-plane normal – a normal to the view plane.

VUV
:   the view-up vector – the vector on the view plane that indicates the upward
    direction.

VRP
:   the viewing reference point – a point located on the view plane, and the
    origin of the VRC.

PRP
:   the projection reference point – the point where the image is projected
    from, for parallel projection, the PRP is at infinity.

VRC
:   the viewing-reference coordinate system.

The geometry is defined by a field of view angle (in the 'y' direction), as
well as an aspect ratio. Further, a set of z-planes define the near and far
bounds of the frustum.

```cpp
// osg::Camera
/** Get the orthographic settings of the orthographic projection matrix.
 * Returns false if matrix is not an orthographic matrix, where parameter
 * values are undefined.*/
bool getProjectionMatrixAsOrtho(double& left, double& right,
                                double& bottom, double& top,
                                double& zNear, double& zFar) const;

/** Get the frustum setting of a perspective projection matrix.
  * Returns false if matrix is not a perspective matrix, where parameter values
  * are undefined.*/
bool getProjectionMatrixAsFrustum(double& left, double& right,
                                  double& bottom, double& top,
                                  double& zNear, double& zFar) const;

/** Get the frustum setting of a symmetric perspective projection matrix.
  * Returns false if matrix is not a perspective matrix, where parameter values
  * are undefined.  Note, if matrix is not a symmetric perspective matrix then
  * the shear will be lost.  Asymmetric matrices occur when stereo, power
  * walls, caves and reality center display are used.  In these configurations
  * one should use the 'getProjectionMatrixAsFrustum' method instead.*/
bool getProjectionMatrixAsPerspective(double& fovy,double& aspectRatio,
                                      double& zNear, double& zFar) const;
```

经过透视投影 （正射投影也一样）变换， 能够把点 从 观察空间（相机坐标系）转换到
齐次裁剪空间坐标系（又叫规则观察体(Canonical View Volume)中）。这个转化后的空间
体 不仅独立于 把三维场景转换为二维屏幕空间的投影类型（透视、正射），也独立于屏
幕的分辨率(Resolution) 以及长宽比(Aspect Ratio).。

![](http://img.blog.csdn.net/20150514145737857?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvemh1eWluZ3FpbmdmZW4=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Pyramid_of_vision.svg/900px-Pyramid_of_vision.svg.png)

齐次裁剪空间坐标系（范围  -1<=x <=1,-1<=y<=1,-1<=z <=1, )是左手坐标系，为什么？ 其实也很好理解，如上图 ， A和B点经过投影变换后其x坐标是一样的（不再是投影平截体中的那种相对关系）， 而近裁剪面上的点的z坐标经过投影变换后变为-1 ， 而远裁剪面上的z坐标为1 ，所以齐次裁剪空间坐标系的z轴的正方向正好和相机坐标系中的z轴正方向是相反的。

经过透视投影后，每个顶点的x和y坐标还要除以其z坐标，这个除法是产生透视收缩的方法

<small>
```cpp
osgUtil::PolytopeIntersector // 具体不同算法实现类
osgUtil::IntersectionVisitor //用来遍历节点树的每个节点
osg::Node * mNode;  //  你要做相交测试的根节点

osg::ref_ptr<osgUtil::PolytopeIntersector> intersector =
        new osgUtil::PolytopeIntersector(osgUtil::Intersector::WINDOW, xMin, yMin, xMax, yMax);
intersector->setIntersectionLimit(osgUtil::Intersector::LIMIT_ONE_PER_DRAWABLE);
osgUtil::IntersectionVisitor iv( intersector.get() );

mRootNode->accept(iv);
```
</small>

总结：

- 在 `osg::ref_ptr<osg::Node>node = new osg::Node;` 其中 node 为 `osg::ref_ptr`
  的对象，而不是指针。
- OSG 中新创建的场景对象建议使用 `ref_ptr` 进行内存分配和管理
- 对于不使用 `ref_ptr` 的对象，引用计数值变得没有意义，并且它无法自动从场景中卸
  载。
- 新建对象作为函数结果返回时，应该返回 `release()`。并尽快引入到别的场景中，否
  则发生内存泄露
- 只有 `osg::ref_ptr` 类来管理 osg 对象的引用计数，其他脱离了（和osg::ref_ptr对
  象无关的操作）osg::ref_ptr 管理的操作如：赋值等将不会对引用计数产生影响

`inline void setNodeMask(NodeMask nm) { _nodeMask = nm; }`{.cpp}

```cpp
osg::ref_ptr <osg::MatrixTransform> mat=new osg::MatrixTransform();
osg::Matrix m = osg::Matrix::scale(1.0f,1.0f,1.0f)
              * osg ::Matrix::translate(osg::Vec3(0,0,10.0f));
mat->setMatrix(m);
mat->addChild(node1.get());

osg::ref_ptr<osg::AnimationPathCallback> apcb = new osg::AnimationPathCallback;
apcb->setAnimationPath( createAnimationPath(50.0f, 6.0f) );
mat->setUpdateCallback( apcb.get() );
```

```cpp
//创建一个光照
osg::ref_ptr<osg::Node>createLight(osg::ref_ptr<osg::Node>model)
{
    osg::ComputeBoundsVisitor cbbv;
    model->accept(cbbv);

    osg::BoundingBox bb=cbbv.getBoundingBox();


    osg::ref_ptr<osg::Light>lt=new osg::Light;
    lt->setLightNum(0);

    //设置环境光的颜色
    lt->setAmbient(osg::Vec4(1.0f,1.0f,1.0f,1.0f));

    osg::ref_ptr<osg::LightSource>ls=new osg::LightSource();

    ls->setLight(lt.get());

    return ls.get();
}
```

<small><small>
```cpp
int main()
{
    osg::ref_ptr<osgViewer::Viewer> viewer = new osgViewer::Viewer();
    viewer->addEventHandler(new osgViewer::WindowSizeHandler);
    //创建一个组节点
    osg::ref_ptr<osg::Group> root = new osg::Group();

    //创建一个阴影节点，并标识接收对象和投影对象
    osg::ref_ptr<osgShadow::ShadowedScene> shadowedScene = new osgShadow::ShadowedScene();
    shadowedScene->setReceivesShadowTraversalMask(ReceivesShadowTraversalMask);
    shadowedScene->setCastsShadowTraversalMask(CastsShadowTraversalMask);

    //创建阴影纹理，使用的是shadowTexture技法
    osg::ref_ptr<osgShadow::ShadowTexture> st = new osgShadow::ShadowTexture;
    osg::ref_ptr<osgShadow::ParallelSplitShadowMap> pss = new osgShadow::ParallelSplitShadowMap;
    //osg::ref_ptr<osgShadow::ShadowVolume> sv = new osgShadow::ShadowVolume;
    osg::ref_ptr<osgShadow::MinimalShadowMap> ms = new osgShadow::MinimalShadowMap;
    osg::ref_ptr<osgShadow::StandardShadowMap> ss = new osgShadow::StandardShadowMap;
    osg::ref_ptr<osgShadow::SoftShadowMap> softS = new osgShadow::SoftShadowMap;
    osg::ref_ptr<osgShadow::ViewDependentShadowTechnique> vds = new osgShadow::ViewDependentShadowTechnique;
    //关联阴影纹理
    shadowedScene->setShadowTechnique(softS);

    //创建一个根节点，并将场景数据、模型赋予节点
    osg::ref_ptr<osg::Node> node =createModel();

    //添加场景数据并添加光源
    shadowedScene->addChild(createLight(node.get()));
    shadowedScene->addChild(node.get());


    root->addChild(shadowedScene.get());

    //优化场景数据
    osgUtil::Optimizer optimizer ;
    optimizer.optimize(root.get()) ;

    viewer->setSceneData(root.get());
    viewer->realize();
    viewer->run();

    return 0 ;
}
```
</small></small>

其实简而言之  就是 `glOrtho` 设置相片的大小，`glViewport` 指定相框大小。如果 `glOrtho`
指定的相片小了，那么放到同等大小的相框上就相当于放大了。

而如果 `glOrtho` 指定的相片大了，放到同等大小的相框上相当于缩小了场景。

在 `OpenGL` 中有两个比较重要的投影变换函数，`glViewport` 和 `glOrtho`。

`glOrtho` 是创建一个正交平行的视景体。 一般用于物体不会因为离屏幕的远近而产生大小
的变换的情况。比如，常用的工程中的制图等。需要比较精确的显示。 而作为它的对立情
况, `glFrustum` 则产生一个透视投影。这是一种模拟真是生活中，人们视野观测物体的真实
情况。例如：观察两条平行的火车到，在过了很远之后，这两条铁轨是会相交于一处的。
还有，离眼睛近的物体看起来大一些，远的物体看起来小一些。

`glOrtho(left, right, bottom, top, near, far)`， left 表示视景体左面的坐标，right
表示右面的坐标，bottom 表示下面的，top 表示上面的。这个函数简单理解起来，就是一个
物体摆在那里，你怎么去截取他。这里，我们先抛开 glViewport 函数不看。先单独理解
glOrtho 的功能。 假设有一个球体，半径为 1，圆心在 (0, 0, 0)，那么，我们设定
`glOrtho(-1.5, 1.5, -1.5, 1.5, -10, 10);` 就表示用一个宽高都是 3 的框框把这个球体整
个都装了进来。  如果设定 `glOrtho(0.0, 1.5, -1.5, 1.5, -10, 10);` 就表示用一个宽是
1.5， 高是 3 的框框把整个球体的右面装进来;如果设定 `glOrtho(0.0, 1.5, 0.0, 1.5,
-10, 10);` 就表示用一个宽和高都是1.5的框框把球体的右上角装了进来。

```cpp
if(root->getChild(i)->getName().compare("Hello") == 0) {
    osg::Node * tmp = root->getChild(i);
    root->removeChild(tmp);
    *node = tmp;
    // 在这里tmp 已经析构，因为 只有root引用了hello节点，而在root 节点
    // removechild后 tmp的引用计数为0，此时将析构
}
```

Refs

  - [OpenGL 透视投影 齐次裁剪空间 深度缓存 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/45721643)
  - [Qt 小技巧 记录 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/44019915)
  - [glFrustum](https://www.opengl.org/sdk/docs/man2/xhtml/glFrustum.xml)
  - [OSG 中 相交测试 模块 工作流程及原理 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/37923417)
  - [OSG 智能指针陷阱 总结 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/25311989)

Read more

  - [OSG 自定义数据类型 关键帧动画 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/12651017)
  - [OSG 一个简单的着色器例子 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/8656913)
  - [osg 路径 动画 效果 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/8248157)
  - [osg 漫游器 代码框架 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/8249501)

---

```lisp
(defun smart-open-line ()
  "Insert an empty line after the current line.
Position the cursor at its beginning, according to the current mode."
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(global-set-key [(shift return)] 'smart-open-line)
```

```elisp
(defun prelude-open-with (arg)
  "Open visited file in default external program.

With a prefix ARG always prompt for command to use."
  (interactive "P")
  (when buffer-file-name
    (shell-command (concat
                    (cond
                     ((and (not arg) (eq system-type 'darwin)) "open")
                     ((and (not arg) (member system-type '(gnu gnu/linux gnu/kfreebsd))) "xdg-open")
                     (t (read-shell-command "Open current file with: ")))
                    " "
                    (shell-quote-argument buffer-file-name)))))
```

```elisp
(defun copy-file-name-to-clipboard ()
  "Copy the current buffer file name to the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename))))
```

```elisp
(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indented selected region."))
      (progn
        (indent-buffer)
        (message "Indented buffer.")))))
```

```elisp
(defun google ()
  "Google the selected region if any, display a query prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "http://www.google.com/search?ie=utf-8&oe=utf-8&q="
    (url-hexify-string (if mark-active
         (buffer-substring (region-beginning) (region-end))
       (read-string "Google: "))))))
```

```elisp
(defun indent-defun ()
  "Indent the current defun."
  (interactive)
  (save-excursion
    (mark-defun)
    (indent-region (region-beginning) (region-end))))
```

```elisp
(electric-indent-mode +1)
```

```elisp
(global-set-key (kbd "C-c o") 'open-with)
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-c g") 'google)
(global-set-key (kbd "C-M-z") 'indent-defun)
(global-set-key (kbd "C-c t") 'visit-term-buffer)
(global-set-key [(control shift up)]  'move-line-up)
(global-set-key [(control shift down)]  'move-line-down)
```

```elisp
(defun visit-term-buffer ()
  "Create or visit a terminal buffer."
  (interactive)
  (if (not (get-buffer "*ansi-term*"))
      (progn
        (split-window-sensibly (selected-window))
        (other-window 1)
        (ansi-term (getenv "SHELL")))
    (switch-to-buffer-other-window "*ansi-term*")))
```

```elisp
(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))
```

```elisp
(require 'paren)
(setq show-paren-style 'parenthesis)
(show-paren-mode +1)
```

```elisp
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-c k") 'kill-other-buffers)
(global-set-key (kbd "C-x O") (lambda ()
                                (interactive)
                                (other-window -1)))
```

```elisp
(defun kill-other-buffers ()
  "Kill all buffers but the current one.
Don't mess with special buffers."
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
      (kill-buffer buffer))))
```

```elisp
(require 'dash)

(defun prelude-kill-other-buffers ()
  "Kill all buffers but the current one.
Doesn't mess with special buffers."
  (interactive)
  (-each
   (->> (buffer-list)
     (-filter #'buffer-file-name)
     (--remove (eql (current-buffer) it)))
   #'kill-buffer))
```

[Repeat last command - Emacs Redux](http://emacsredux.com/blog/2013/03/26/repeat-last-command/)

[Copy filename to the clipboard - Emacs Redux](http://emacsredux.com/blog/2013/03/27/copy-filename-to-the-clipboard/)

[Open file in external program - Emacs Redux](http://emacsredux.com/blog/2013/03/27/open-file-in-external-program/)

[Indent region or buffer - Emacs Redux](http://emacsredux.com/blog/2013/03/27/indent-region-or-buffer/)

[Indent defun - Emacs Redux](http://emacsredux.com/blog/2013/03/28/indent-defun/)

[Google - Emacs Redux](http://emacsredux.com/blog/2013/03/28/google/)

[Network utilities - Emacs Redux](http://emacsredux.com/blog/2013/03/28/network-utilities/)

[Automatic(electric) indentation - Emacs Redux](http://emacsredux.com/blog/2013/03/29/automatic-electric-indentation/)

[Automatic(electric) character pairing - Emacs Redux](http://emacsredux.com/blog/2013/03/29/automatic-electric-character-pairing/)

[Terminal at your fingertips - Emacs Redux](http://emacsredux.com/blog/2013/03/29/terminal-at-your-fingertips/)

[Kill other buffers - Emacs Redux](http://emacsredux.com/blog/2013/03/30/kill-other-buffers/)

[Go back to previous window - Emacs Redux](http://emacsredux.com/blog/2013/03/30/go-back-to-previous-window/)

[Playing with Font Sizes - Emacs Redux](http://emacsredux.com/blog/2013/04/01/playing-with-font-sizes/)

[Highlight matching parentheses - Emacs Redux](http://emacsredux.com/blog/2013/04/01/highlight-matching-parentheses/)

[Highlight current line - Emacs Redux](http://emacsredux.com/blog/2013/04/02/highlight-current-line/)

---

`sudo update-alternatives –config x-terminal-emulator`{.bash}
`scrot # caputre screenshot`{.bash}

i3

:   ```tzx-plain
    X-f: fullscreen
    arrow keys: get focus
    e, s, w
    X-e: toggle
    X-s: stacked
    X-w: tabbed, X-left, X-right
    shift r: restart i3 inplace
    ```

---

```vimrc
%s/重车,运营/运营,重车/g
%s/,超速报警//g
%s/,登录//g
g/,设备工作正常/d
g!/ACC/d
```

删除中文字符: `:%s/\v[^\x00-\xff]+//g`

<#>(@vim @chinese)

You could use **more expressive version of substitution** you employed when
assigning OBJECTS: `OBJECTS=$(SOURCES:%.cpp=obj/%.o)`{.makefile}

or use a **standard text transformation** function:
`OBJECTS=$(addprefix obj/,$(SOURCES:.cpp=.o))`{.makefile}

<div class="tzx-tabs">
* [refs](#line14550)
* [codes](#line14551)

<div id="line14550">
* [dynamic_cast Operator](https://msdn.microsoft.com/en-us/library/cby9kycs.aspx)
* [Casting](https://msdn.microsoft.com/en-us/library/x9wzb5es.aspx)
</div>

~~~ {#line14551 .c}
// static_cast_Operator.cpp
// compile with: /LD
class B {};

class D : public B {};

void f(B* pb, D* pd) {
   D* pd2 = static_cast<D*>(pb);   // Not safe, D can have fields
                                   // and methods that are not in B.

   B* pb2 = static_cast<B*>(pd);   // Safe conversion, D always
                                   // contains all of B.
}

// static_cast_Operator_2.cpp
// compile with: /LD /GR
class B {
public:
   virtual void Test(){}
};
class D : public B {};

void f(B* pb) {
   D* pd1 = dynamic_cast<D*>(pb);
   D* pd2 = static_cast<D*>(pb);
}

// static_cast_Operator_3.cpp
// compile with: /LD /GR
typedef unsigned char BYTE;

void f() {
   char ch;
   int i = 65;
   float f = 2.5;
   double dbl;

   ch = static_cast<char>(i);   // int to char
   dbl = static_cast<double>(f);   // float to double
   i = static_cast<BYTE>(ch);
}

// dynamic_cast_1.cpp
// compile with: /c
class B { };
class C : public B { };
class D : public C { };

void f(D* pd) {
   C* pc = dynamic_cast<C*>(pd);   // ok: C is a direct base class
                                   // pc points to C subobject of pd
   B* pb = dynamic_cast<B*>(pd);   // ok: B is an indirect base class
                                   // pb points to B subobject of pd
}

// dynamic_cast_2.cpp
// compile with: /c /GR
class A {virtual void f();};
class B {virtual void f();};

void f() {
   A* pa = new A;
   B* pb = new B;
   void* pv = dynamic_cast<void*>(pa);
   // pv now points to an object of type A

   pv = dynamic_cast<void*>(pb);
   // pv now points to an object of type B
}

// dynamic_cast_3.cpp
// compile with: /c /GR
class B {virtual void f();};
class D : public B {virtual void f();};

void f() {
   B* pb = new D;   // unclear but ok
   B* pb2 = new B;

   D* pd = dynamic_cast<D*>(pb);   // ok: pb actually points to a D
   D* pd2 = dynamic_cast<D*>(pb2);   // pb2 points to a B not a D
}
~~~
</div>

* The emoji repository has a `CNAME` file with the domain `emoji.muan.co`. It
  is owned by muan, whose User Pages repository has a `CNAME` file with the
  domain `muan.co`.
* The Project Pages site at `muan.github.io/emoji` redirects to `muan.co/emoji`
  and is also available at `emoji.muan.co`.

a **`type qualifier`** is not allowed on a static member function.

```tzx-plain
文件夹 PATH 列表
卷序列号为 00000200 BC08:BFBA
D:.
├─data
│  └─textures
├─demo
│  ├─3rdParty
│  │  └─QtPropertyBrowser
│  │      ├─canvas_typed
│  │      ├─canvas_variant
│  │      ├─decoration
│  │      ├─demo
│  │      │  └─images
│  │      ├─extension
│  │      ├─object_controller
│  │      └─simple
│  ├─btExplorerDemo
│  ├─btLoggerDemo
│  ├─btMainWindowDemo
│  ├─btTextureEditorDemo
│  ├─IODemo
│  ├─JsonReaderDemo
│  ├─ModelStructureDemo
│  ├─OSGDemo
│  ├─QtPropertyBrowserVariantDemo
│  ├─RapidJSONDemo
│  ├─SignCutterDemo
│  ├─SignTransformerDemo
│  ├─TextureEditorDemo
│  ├─TextureNotationDemo
│  └─TheBrowserDemo
├─docs
├─images
├─includes
│  ├─OSGDemo
│  └─rapidjson
│      ├─error
│      ├─internal
│      └─msinttypes
├─lib
│  ├─debug
│  └─release
├─notes
│  └─images
│      ├─deprecated
│      ├─icon
│      └─material
├─src
│  ├─3rdParty
│  ├─btGUI
│  ├─Global
│  ├─Handlers
│  ├─IO
│  ├─ModelStructure
│  ├─Parts
│  ├─QtPropertyBrowser
│  │  └─images
│  ├─SignCutter
│  ├─SignLogger
│  ├─SignTransformer
│  ├─TextureEditor
│  ├─TextureNotation
│  ├─TheBrowser
│  └─Utils
└─tryouts
    └─StackedBoxes
        └─images
```

> 'The enjoyment of one's tools is an essential ingredient of successful work.'
> -- Donald E. Knuth

Better Emacs shortcut for Neo users:

* delete last word: ESC Backspace
* get back to last word: ESC b

| Movement | Shortcut |
| :---: | :---: |
| next word | X-s(ESC) d |
| previous word | X-s(ESC) X-d(Backspace) |
| go to previous word | X-s(ESC) b |

Just in case this sounds annoying, the major advantage is that you can always
get back a previous state. In most editors, undoing several changes and then
accidentally typing a character would leave you 'stranded' with no way to redo
what you had undone. Emacs makes this trivial. – phils

`/ə/` 和 `/ʌ/` 这两个发音，在语言学上有区别，在发音中没区别，再说一遍，麻痹没区
别！！！！！！！！！！！！！

朙（míng）月拼音

- [gat json](http://whudoc.qiniudn.com/gat.json)
- [tag json](http://whudoc.qiniudn.com/tag.json)

you flinched! (畏惧)

[豆瓣](http://www.douban.com/)

[Complex Network Notes](file:///D:/tzx/git/blog/publish/post-0084-complex-network-notes.html)

[Complex network - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Complex_network)

[小波变换在图像处理分析中的应用](file:///D:/tzx/git/blog/publish/post-0077-wavelet-transform.html)

[复杂网络 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlQTQlOEQlRTYlOUQlODIlRTclQkQlOTElRTclQkIlOUM=)

[学术海报 | LaTeX工作室](http://www.latexstudio.net/archives/category/tex-slides/latex-poster)

[一个清新典雅的beamer主题样式 | LaTeX工作室](http://www.latexstudio.net/archives/4948)

[用LaTeX重现1875年的广告样式 | LaTeX工作室](http://www.latexstudio.net/archives/4935)

[伯尔尼高等专业学院的beamer主题样式 | LaTeX工作室](http://www.latexstudio.net/archives/4931)

[一个清爽的beamer主题样式 | LaTeX工作室](http://www.latexstudio.net/archives/4894)

[一个所见即所得的科学公式编辑软件–GNU TeXmacs | LaTeX工作室](http://www.latexstudio.net/archives/4876)

[黄正华老师的课件beamer分享 | LaTeX工作室](http://www.latexstudio.net/archives/4853)

[LaTeX技巧826:TeXLive的安装与使用-黄正华 | LaTeX工作室](http://www.latexstudio.net/archives/4816)

[实现TeX的算法：回首编程技术的过去三十年 | LaTeX工作室](http://www.latexstudio.net/archives/4759)

[LaTeX排版The AWK Programming Language中译本 | LaTeX工作室](http://www.latexstudio.net/archives/4736)

[一个电子书LaTeX模板分享 | LaTeX工作室](http://www.latexstudio.net/archives/4665)

[LaTeX排版精致的数学笔记 | LaTeX工作室](http://www.latexstudio.net/archives/4625)

[中国科学技术大学研究生官网为LaTeX模板正名 | LaTeX工作室](http://www.latexstudio.net/archives/4542)

[中国科学技术大学学位与研究生教育 - 学位授予——文档下载](http://gradschool.ustc.edu.cn/ylb/material/xw/wdxz.html)

[一个用户的LaTeX笔记 | LaTeX工作室](http://www.latexstudio.net/archives/4429)

[Tikz绘制Android的短信息聊天界面 | LaTeX工作室](http://www.latexstudio.net/archives/4384)

[2015 GNOME年会beamer主题模板 | LaTeX工作室](http://www.latexstudio.net/archives/4347)

[莲枝专栏–来作笔记吧。 | LaTeX工作室](http://www.latexstudio.net/archives/4898)

[乌普萨拉大学的科技海报主题模板 | LaTeX工作室](http://www.latexstudio.net/archives/3012)

真爱其实叫牺牲 -- 给永远的鼬 (by zak)

:   ```tzx-bigquote
    修罗之道是什么,它通往何方?在火影忍者中,有如此一人,他便在此道上踏歌而行.在他
    之后,留下了无尽之血与泪水；在他前方,只有看不见尽头的黑暗；而他红中泛黑的双
    瞳中,映射出了太多的死亡与破灭。

    未来没有救赎,只有灭亡,抱此觉悟,宇智波鼬------即使在宇智波这个原本就自悲剧中
    诞生的家族之中也是最具悲剧色彩的男人, 背负了太多诅咒与怨恨, 在名为终结的黑
    色的华尔兹舞曲中艰难而孤傲的独舞.

    其实,他只是一位兄长，他只想保护自己的弟弟，就算被自己的弟弟憎恨也无所谓，就
    算被弟弟杀掉也无所谓。“我愚蠢的弟弟啊，如果你想杀我的话，就憎我恨我吧，不断
    地逃，不断地逃只是为了活着而活着，然后，等你哪一天得到了和我相同的眼睛，就
    来到我面前吧。”他只想让弟弟活下去，便只得噙着泪水这样冷酷的说道，在乱世之中
    ，这是唯一可以让弟弟强大起来的办法—给予他杀死自己的目标，让他把仇恨全部发泄
    到自己的身上。

    其实,他只是一名忍者，忍者本来就是活在黑暗中的，鼬更把这一忍道贯彻的淋漓尽致
    。自我牺牲是忍者的本分，这便是鼬的信念。他所渴望的，是村子的兴盛，是整个忍
    者世界的和平，也许我们看来这个词过于恶俗，但鼬却义无反顾的为之奋斗。他亲手
    为自己的一族落下了帷幕，是为了避免更惨痛的战争，所谓战争…就一定伴随着双方的
    死亡伤病和痛苦… 但鼬宁愿独自吞下着苦果，他这么做了。在那个月圆之夜，他亲自
    动手将自己的族人全部抹杀，唯独他的弟弟，他下不了手。然后，为了不让弟弟仇恨
    自己的村子，他说了那样的话，他宁愿一个人背负弟弟所有的仇恨。

    鼬，这个顶级的幻术高手，给自己的弟弟制造了一个最大的幻术，单纯的佐助，自以
    为自己的写轮眼能看穿一切幻术，但是，他的眼睛，没能看破鼬的任何真相，鼬所制
    造的幻象，他一个都没能看穿。“人都是依靠自己的知识和认识又被其束缚的活着的，
    还将其称之为现实，但知识和认识是暧昧不清的东西，那个现实，也许只是镜花水月
    而已，人都是活在自己的意识世界里，你不这样认为吗？”面对鼬的质问，这个愚蠢的
    弟弟依然浑然没有觉察到，自己的哥哥是如何的爱自己，被仇恨吞噬的佐助，只想尽
    早杀掉自己的大哥，报仇雪恨。终于，在这一天，他成功了。

    鼬是故意让佐助杀掉自己的，他只想让自己的弟弟活下去，便只能牺牲自己。为了保
    护自己的村子，他也只能牺牲自己，作为一介罪犯，一个叛徒，而悲惨地死去。他时
    刻不忘自己的弟弟，自己的村子，甚至整个忍者世界，为了成全大义，只有牺牲自己
    。

    是鼬告诉了我们，自我牺牲才是真爱，这个冷酷的男人一生都没有哭过，只是在灭族
    的那一天晚上，面对自己的弟弟，落下了悲痛的泪水，没有人知道，这幅冰冷的外表
    下，是一颗温暖的心，充满爱的心。

    他死后，没有认为他立碑立传，甚至在许多人看来是大快人心，只有老天为之动容，
    那淅淅沥沥的雨，或许就是天在哭泣吧！只有他曾经的敌人，斑，给了他最恰当的评
    价。他对佐助说道：“鼬他，杀害上司，杀害朋友，杀害恋人，杀害父亲，杀害母亲，
    唯独没有对自己的弟弟动手。心中流淌着血一般的泪水，将自己的全部感情抹杀的男
    人，却无法对你下手，知道为什么吗·········因为在他心中，你的性命比村子的安危
    更重要！”

    “宁愿舍弃名誉而污名缠身，宁愿放弃爱而选择背负仇恨，但即便如此，鼬还是含着笑
    离开了人世。”

    鼬笑着离开了，了无牵挂的离开了，只留下了唯一的遗言—

    “原谅我，

    佐助，

    这是

    最后一次了
    ```

是命运么，教我如何相信 -- 写给鸣人和佐助 (by zak)

:   ```tzx-bigquote
    一个伴随了我们十年之久的故事，一种在爱与恨中挣扎却无比坚毅的成长，一段用努
    力和汗水去赢得认可的历程。火影的故事就这样铺陈开来，伴随着我们流逝的青春，
    刻下磨不灭的印记。

                                                           ——题记

    两个人，两个完全不同的人。

    鸣人，是那样的炽烈，像骄阳一般，温暖着每一个人，影响着每一个人。冲天的金黄
    的头发，纯粹的蓝色眼眸，带着不变的自信，踏上梦想之路，一步一步跌跌撞撞的走
    来。阳光下，他静静站立，脸上的笑容，满载着难以言明的自信，灿烂的荡漾开来，
    将所有的失落，所有的泪水统统抛下。谁能想到，他曾经地多么的寂寞。小小的心灵
    又怎能承受得住那么都不屑的眼神，明明是想证明自己的，又为什么总是失败？树下
    的秋千上，他默默的坐着，低垂的头掩饰不住的伤心，与周围同学们毕业的欣喜构成
    鲜明的对比。与生俱来的自信与乐观又怎甘心如此弱小的活下去，所以他想当火影，
    为此奋勇前进。他是天生的逐梦者，会为梦想披荆斩棘。

    而佐助，相对于鸣人而言，就是一块寒冰，冷得让人难以靠近。苍白的脸上看不到任
    何表情，黑色的眼睛像一潭深不见底的水，你永远也猜不清他在想什么。很多时候，
    他只是静静的站着，静静的坐着，却让人感到那么的寂寞。他曾经也是个爱笑的孩子
    啊，谁能想到只是一瞬之间，所有的一切就消失殆尽。快乐的时光再也追不回，曾经
    的幸福再也找不到，于是憎恨便滋生开，像是罂粟花，绚丽却有毒。他是真正的复仇
    者，仇恨是他不能释怀的心结，力量才是他真正追求的东西。

    时间真是个奇怪的东西，默默的流逝，却像可以海浪般席卷一切。

    佐助的离开，是鸣人心中的痛。他无数次去追寻，却又无能为力。或许鸣人和佐助的
    那一战，是两人生命线猛烈的撞击，火花四溅，编织出拭不去的羁绊。

    时光流逝，将羁绊编织成命运。

    佐助杀了大蛇丸，得到了想要的力量，鸣人在自来也死后成为了预言之子；佐助杀了
    鼬，本以为复了仇，却发现原来一切都只是个阴谋，是个错误；鸣人拯救了村子，成
    为了英雄，团藏的阴谋却恰巧袭来。成长的路注定不平坦。佐助要向木叶报仇，而鸣
    人想借机会拯救佐助。两个人已经站到了对立的面上，下次相遇，会是难以挽回的命
    运吗？

    “曾经六道真人宣扬忍宗，将世界引导向和平 ，理想为完成之时，他的大限即将来临
    。六道仙人见忍宗的力量和意志托付给两个孩子。哥哥具有仙人之“眼”，于是传授给
    他查克拉的力量和精神力。弟弟天生具有仙人之“肉体“，所以传授给他生命力和身体
    能量。因为领悟到和平必须要有爱……仙人在弥留之际，不得不决定继任者……但是就是
    那个决定导致了永恒持续的憎恨诅咒……仙人觉得比起追求力量的哥哥……追求爱的弟弟
    才是最合适的继任者。作为长男认为自己理所应当继任的 哥哥无法认同仙人的选择……
    因为憎恨他向弟弟宣战。时间流逝，血缘逐渐疏远，两兄弟的子孙依旧持续战争。哥
    哥的子孙被称为宇智波，弟弟的子孙被称为千手……我宇智波斑和初代火影千手柱间之
    间的战斗，也是命运。”(选自火影漫画462集斑所说的话）

    鸣人继承了火的意志，而佐助是宇智波一族的后代。

    这是宿命吗？

    “千手和宇智波，火的意志和憎恨，鸣人和佐助。你们两个将成为命运选中的另一对兄
    弟”。”(选自火影漫画462集斑所说的话）

    真是宿命吗？

    我不是个相信宿命的人，更不相信宿命可以决定一切。

    还记得当鸣人还被大家歧视时，他努力的要得到大家的认可，他成功了；当鸣人还是
    个吊车尾时，他努力要变强，他成功了；中忍考试时，他对战信命的宁次，他胜利了
    。因此他一次一次对命运反抗，正是因为这种反抗，他才走到了今天。难道这一切都
    只不过是宿命的安排？教我如何相信，如何相信宿命可以强大到让人无法反抗?难道鸣
    人的执着，鸣人的坚持，佐助的偏执，佐助的憎恨，都不过是上天安排的一场游戏？
    我不相信！绝不！

    宿命么，这么虚无缥缈的东西，不体会过又怎能知道，不反抗又怎么知道不可以？

    我不知道最后的结局会怎样。但我相信，就算是宿命，鸣人和佐助也会是破除宿命的
    人。

    所以，请期待下去吧。静静地，期待吧…………
    ```

---

> 废话训练一年，受益持续一生。

埃尔德什十分独持。除了衣食住行这些生活基本要知的事之外，他对很多问题也毫不关心
，年青时甚至被人误以为是同性恋者，但其实他无论对异性或是同性都没有兴趣。事实上
，他是一个博学的人，对历史了如指掌，但长大后只专注数学，任何其他事情也不管。

**`Otaku` Culture**

---

P.L.A.是中国人民解放军（People's Liberation Army)的英文简称。中国人民解放军是中国军事力量的主要组成部分，是巩固人民民主专政的坚强柱石、保卫社会主义祖国的钢铁长城和建设社会主义的重要力量。中国人民解放军现役总兵力为200万人（截至2015年底）

军区管辖范围:

1. 北京军区： 北京、河北、内蒙古、山西 俄罗斯、蒙古
2. 沈阳军区： 辽宁、吉林、黑龙江 俄罗斯、朝鲜
3. 济南军区： 山东、河南 黄海对面
4. 南京军区： 江苏、安徽、上海、浙江、江西、福建黄海、东海对面
5. 兰州军区： 甘肃、青海、陕西、宁夏、新疆 蒙古
6. 成都军区： 四川、重庆、贵州、云南、西藏印度、越南、缅甸
7. 广州军区： 广东、广西、海南、湖南、湖北越南、南海对面

---

ttf 字体安装：`.ttf` 文件放到 `%WINDIR/Fonts` 文件夹即可。

僭越(jiàn yuè)，指超越本份，古时指地位低下的冒用在上的名义或器物等等， 尤指用皇家专用的。

尕，读作 gǎ。中国汉字，一般是方言中小的意思，例如：～娃（含亲爱之意）。～李。

[Modifier key - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Modifier_key#Dual-role_keys)

Dual-role keys

It is possible to use (with some utility software) one same key both as a normal key and as a modifier.

For example, you can use the space bar both as a normal Space bar and as a
Shift. Intuitively, it'll be a Space when you want a whitespace, and a Shift
when you want it to act as a shift. I.e. when you simply press and release it,
it is the usual space, but when you press other keys, say X, Y and Z, while
holding down the space, then they will be treated as ⇧ Shift plus X, Y and Z.

The above example is known as "SandS", standing for **"Space and Shift"** in
Japan. But any number of any combinations are possible.

To press <kbd>shift+space</kbd> in the previous example, you need in addition to a
space/shift dual role key, one of (a) another space/shift key, (b) a usual
shift, or (c) a usual space key.

#. 动机与信心原则
#. 时间分配原则
#. 数量与质量的关系原则
#. 复习原则（艾宾浩斯）
#. 复习点的确定（5 分钟超短期，30 分钟短期，12 小时周期，1 天，2 天，4 天，7 天，15 天）

* 1, 2, 3 &rarr; 2, 3, 1
* 早上新单词，中午、晚上复习。
* Use the words three times and it's yours.
* 周期结束，也要复习。
* 光看不够，还要主动回想（遮住尽力想出来），电话卡都“磨光”了！
* 如果放弃，前面的单词就白费了！
* 2.5 小时，2 个 List，300 个单词。
* 先记住，再慢慢掌握。坚持就是胜利。从一个胜利走向另一个胜利。
* GRE 需要 CET4、CET6、TOEFL、GRE（登泰山而小天下）
* GMAT 需要 CET4、CET6、TOEFL、GMAT
* TOEFL 需要 CET4、CET6、TOEFL
* 即便把 GRE 背了十遍，还是有很多不认识的单词。即使已经超长发挥背了 100 个，但是
* 不要停下来，再来 30 个还能记住，这样就能突破极限。“原来自己也可以。”
* 枯坐良久，甚觉无聊，还是背单词把。

maverick `['mævrɪk]`

Elon (`eelon` not `eyelon`) Musk

---

海航单位

  * 海里，Nautical mile，最短的海里是在赤道，1海里=1843米。最长的海里是在南北两极上，1海里=1862米。
  * 节（Knot）以前是船员测船速的，每走1海里，船员就在放下的绳子上打一个节，以后就用节做船速的单位。
  * 链（Chain）十分之一海里。

---

```shell
shutdown -s -t 1800
shutdown -a
```

> 我们不是为了取悦你们才出家的。

<kbd>WIN+D</kbd>

like tears in rain.

ditto

In informal English, you can use ditto to represent a word or phrase that you
have just used in order to avoid repeating it. In written lists, ditto can be
represented by ditto marks - the symbol * - underneath the word that you want
to repeat.

Lister's dead. Ditto three Miami drug dealers and a lady.

ditto `['dɪtəʊ]`

  * n.  a mark used to indicate the word above it should be repeated
  * v.  repeat an action or statement

Crotch

:   A crotch can be any region or an object, where a trunk splits into two or
    more limbs. This can include branching regions of trees, buildings,
    diagrams, animals, etc. In particular the crotch is the region of the human
    body between the legs where they join the torso. It is the area containing
    the genitals. As such, it is considered one of the intimate parts.

l: el，但实际上很多人读成 lel。

They have no idea what's going to happen.

**pop the cherry** 意为 take one's virginity, 也叫 deflower, defile, trim the
buff, crack the pitcher, pluck the rose, pick the lock, cut the cake, enter the
Valhalla, land the Martian probe on Venus 当年 The Runaways《Cherry Bomb》的
cherry 暗示的就是这个。

[Fleshlight - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Fleshlight)

叫 `cowlick`，头发旋 http://t.cn/R4h6fmX //@治愈系爱人：我还喜欢睡醒呆毛 说法是
牛舔的那个 谷大 咋说来着的 RT @谷大白话:#每日一词# 【`Poseidon's Kiss`】波赛冬之
吻：“上大号时马桶里噗通噗通溅起的打湿屁屁的水花”的文艺说法。其化解之道的文艺说
法叫【`Poseidon's Pillow`】波赛冬之枕：用几层厕纸垫到马桶水面防止溅起水花。

【PMS】n. 经前综合征 Pre-menstrual syndrome 的缩写

**【flirtationship】n. more than a friendship, less than a relationship: 暧昧。**

`cosmophobia` n. 宇宙恐惧症。指对于宇宙以及自己在宇宙中真实地位的可怕恐惧。形容
词是 `cosmophobic`。

在形容人个子矮的时候，short 可能不够委婉，一般说 `petite`。在形容人胖的时候，
fat 明显不够委婉，可以说 plus size。在形容肤色时，长得白和黑不是 white 和 black
（慎用！），而是 pale/fair（形容白），tan/dark 形容黑。

There is NO CLOUD, just other people's computers.

To install one of these versions, unpack it and run the following **from the
top-level source directory** using the Terminal: `pip install .`

And they asked him, "How could you possibly do this?" And he answered, "When I
learned to program, you were lucky if you got five minutes with the machine a
day. If you wanted to get the program going, it just had to be written right.
**So people just learned to program like it was carving stone. You sort of have
to sidle up to it. That's how I learned to program.**

23' 23\': `23' 23\'`, smart & dumb

【**Dinosaur Erotica**】恐龙色情文学。以恐龙为主题的十八禁色情小说。基本上就是恐龙
抓走美女，然后嘿嘿嘿的故事。该系列书名也极为直白坦诚：如《美人被霸王龙抓走了》
《美人被翼龙抓走了》《美人在恐龙博物馆被抓走了》 《美人和迅猛龙嘿嘿嘿》 等

---

[Image Engine](http://image-engine.com/film/)

```plain
AMERICAN SNIPER

TEENAGE MUTANT NINJA TURTLES

ELYSIUM

LONE SURVIVOR

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/90177922"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

R.I.P.D.

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/90173618"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

ZERO DARK THIRTY

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/91452356"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

WHITE HOUSE DOWN

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/91453702"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

SAFE HOUSE

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/92181438"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

THE THING

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/92187878"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

IMMORTALS

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/95316985"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

DISTRICT 9

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/95324453"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
```

---

```bash
#!/bin/bash
convert img.jpg -crop 100x100  +repage  +adjoin  l0-%d.jpg
```

`are you kidding me`{.tzx-hover}

~~~{.tzx-hover}
hover
~~~

[tzx show]

[tzx show]: javascript:document.getElementsByTagName('body')[0].appendChild(document.createElement('script')).setAttribute('src','http://tangzx.qiniudn.com/tzxshow.js')

> **this is good for a chunckle!**

---

[hosts](file:///C:/Windows/System32/drivers/etc/hosts)

- good: ip url
- bad: url1 url2
- bad: ip:port url

---

[A python script to speed up the rendering process of Hexo 3.](https://gist.github.com/wzpan/7db9b0888f06a8d6ff8c)

程序还是越写越好的。

```python
#!/usr/bin/python2

'''
SYNOPSIS:
$ python speedup.py -f FILE
or
$ python speedup.py -d DIR
'''

import sys, os, getopt

TARGET_TYPE = [".md", ".markdown"]

def process_file(path):
    ''' Process a file. '''
    line = ""
    quote_flag = False
    line_list = []
    with open(path) as f:
        while True:
            line = f.readline()
            if line == "":
                break
            if line.startswith("```"):
                quote_flag = not quote_flag
            if line.strip()=="```" and quote_flag:
                line = "``` plain\r\n"
            line_list.append(line)
    with open(path, 'w+') as f:
        f.writelines(line_list)


def process_dir(path):
    ''' Process a directory. '''
    file_list = []
    files = os.listdir(path)
    for file in files:
        file = os.path.join(path, file)
        root, ext = os.path.splitext(os.path.basename(file))
        if os.path.isfile(file) and ext in TARGET_TYPE:
            process_file(file)

def main():
    if len(sys.argv) < 2:
        print "Arguments should be at least 2."
        print "python speedup.py -f [FILE]"
        print "python speedup.py -d [DIRECTORY]"
        exit(1)

    try:
        opts, args = getopt.getopt(sys.argv[1:], "f:d:", ["file=", "directory="])
        for arg, value in opts:
            if arg in ('-f', '--file'):
                root, ext = os.path.basename(value)
                if ext in 'TARGET_TYPE':
                    process_file(value)
            elif arg in ('-d', '--directory'):
                process_dir(value)
            else:
                print "Argument error. %s" % arg
                exit(1)
    except getopt.GetoptError as e:
        print e
        exit(1)


if __name__ == '__main__':
    main()
```

---

**Three Virtues**

:   According to Larry Wall, the original author of the Perl programming
    language, there are three great virtues of a programmer; Laziness,
    Impatience and Hubris:

      - **Laziness**: The quality that makes you go to great effort to reduce
        overall energy expenditure. It makes you write labor-saving programs
        that other people will find useful and document what you wrote so you
        don't have to answer so many questions about it.
      - **Impatience**: The anger you feel when the computer is being lazy.
        This makes you write programs that don't just react to your needs, but
        actually anticipate them. Or at least pretend to.
      - **Hubris**: The quality that makes you write (and maintain) programs
        that other people won't want to say bad things about.

---

大小写方式（下划线只是为了突出分割处）

- `Something_And_Somethingelse`
- `SOMETHING_and_SOMETHINGELSE`

根据《个人所得税》法，80,000 以上的工资要支付 45% 的税（工资）。

当一个人不打算再骂一个人，扭头就走的时候，情分就尽了。

为什么整部《水浒》里，最有影响力的老虎要被武松打死呢？因为这事儿拼的不是武力。
李逵杀虎，靠的是武力。所以李逵打死的老虎都不算老虎，和虾蟹没有太大区别。正因为
不算老虎，才能一下杀四个。武松杀老虎，只能有一次，只能有一个。而且，必须赤手空
拳。景阳冈上的老虎，象征自然的神威，象征流俗都不得不畏惧的法则，要对抗这种老虎
，唯有最纯粹的人才可以。

因为你会觉得，真正用心去做这件事情是不值的，是很白痴的。你有聪明才智，如果你珍
惜它，就把它用到该用的地方，而不是被别人肆意地鄙弃。

我喜欢实打实的东西。要考试，那么就拼智商，拼记忆力，拼逻辑能力，甚至拼写字快——
总得有一个标尺。但你知道，很多课程是没有的。你考得好与坏跟你从这门课里学到了什
么没有丝毫联系。那还考个——用四川话说，考个锤子啊。既然考试，那就一鞭一条痕，一
掴一掌血。

```html
<link rel="icon" href="*.png">
```

```bash
for i in *.pkg ; do mv "$i" "${i/-[0-9.]*.pkg/.pkg}" ; done
```

```bash
#!/usr/bin/env bash

REMOTE="git@github.com:blaenk/blaenk.github.io.git"
SITE="generated/deploy/out"
DEPLOY="deploy/"

fail() {
  printf "  \033[0;31m-\033[0m $1\n"
  exit
}

# shouldn't happen since `site` binary is usually at root to
# begin with, but doesn't hurt to check
dir_check() {
  if [ ! -f "Setup.hs" ]; then
    fail "not at root dir"
  fi
}

git_check() {
  git rev-parse || fail "$PWD is already under git control"
}

setup() {
  dir_check

  rm -rf $DEPLOY
  mkdir $DEPLOY

  info "created $DEPLOY"
  cd $DEPLOY
  git_check

  git init -q
  info "initialized git"
  git checkout --orphan master -q
  info "established master branch"
  git remote add origin $REMOTE
  info "established git remote"

  success "setup complete"
}

deploy() {
  dir_check

  COMMIT=$(git log -1 HEAD --pretty=format:%H)
  SHA=${COMMIT:0:8}

  info "commencing deploy operation based off of $SHA"

  # clean out deploy and move in the new files
  rm -rf "$DEPLOY"/*
  info "cleaned out $DEPLOY"

  info "building site"

  if [[ "$OSTYPE"x == "msys"x ]]; then
    # no unicode support in msys, so invoke powershell and establish code page
    powershell "chcp 65001; ./site build" > /dev/null
  else
    ./site build > /dev/null
  fi

  cp -r "$SITE"/* $DEPLOY
  info "copied $SITE into $DEPLOY"

  cd $DEPLOY

  git add --all .
  info "added files to git"

  git commit -m "generated from $SHA" -q
  info "committed site"

  git push origin master --force -q
  success "deployed site"
}

case "$1" in
  setup )
    setup;;
  deploy )
    deploy;;
  * )
    fail "invalid operation";;
  esac
```

[Good Old & Dirty printf() Debugging in a Non-console C/C++ Application or DLL - CodeProject](http://www.codeproject.com/Tips/227809/Good-old-dirty-printf-debugging-in-a-non-console-C)

http://www.cnblogs.com/xianqingzh/archive/2011/07/08/2101510.html

[《Debug Hacks》和调试技巧 | MaskRay](http://maskray.me/blog/2013-07-25-debug-hacks)

:   `freopen`{.c}

    ```c
    // like piping
    freopen(in_path, "r", stdin);
    freopen(out_path, "w", stdout);
    freopen(err_path, "w", stderr);

    // remember to close them:
    fclose(stdin);
    fclose(stdout);
    fclose(stderr);
    ```

    Debugging PRINT

    ```cpp
    #ifdef _DEBUG
    # define Debug(fmtstr, ...) printf(fmtstr, ##__VA_ARGS__)
    #else
    # define Debug(fmtstr, ...)
    #endif
    ```

    这是 `__VAR_ARGS__`，就连 Windows 也支持。。。

    还可参考：C is awesome -- function pointer stack

    VARS

    ANSI C 标准中有几个标准预定义宏（也是常用的）：

    #. `__LINE__`：在源代码中插入当前源代码行号；
    #. `__FILE__`：在源文件中插入当前源文件名；
    #. `__DATE__`：在源文件中插入当前的编译日期
    #. `__TIME__`：在源文件中插入当前编译时间；
    #. `__STDC__`：当要求程序严格遵循ANSI C标准时该标识被赋值为1；
    #. `__cplusplus`：当编写C++程序时该标识符被定义。

    `#define KEYWORD` 还是 `#define KEY VALUE`？

    有人喜欢这样：

    ```cpp
    #define DEBUG       //此时#ifdef DEBUG为真
    //#define DEBUG 0  //此时为假
    int main()
    {
       #ifdef DEBUG
          printf("Debugging\n");
       #else
          printf("Not debugging\n");
       #endif
       printf("Running\n");
       return 0;
    }
    ```

    不过我更喜欢这样：

    ```cpp
    #define BEDUG (true)
    if (debug) {
        // todo
    }
    ```

    当然前者编出的程序性能会好一点。

    return 的妙用

    :   这个主要用于 test，比如：

        ```cpp
        // define some testing vars here

        // this is test6 (current testing part)

        return;
        // this is test5

        return;
        // this is test4

        ...

        return;
        // test0
        ```

        好处是不用总去注释，坏处是编出来的程序会大一点，还可能忘了把 return 去掉，
        导致提前退出而不自知。

    Windows 编译宏：[Predefined Macros (C/C++)](https://msdn.microsoft.com/en-us/library/b0084kay%28v=vs.80%29.aspx)

    :   这个好，可以用：

        ```cpp
        _WIN64
        ```

    C

    :   这个我比较熟悉，如果你能看懂下面这些就够了：

        ```plain
        // printf
        %i %d %lld %20d %020d %-20d %+20d
        %f %lf %5.2lf
        %s %-s %20s
        %*d %*s
        // scanf
        %*d %*s %lf
        ```

        不举例子了

        就像 C++ 中的 StringStream

        ```cpp
        QString result;
        QTextStream(&result) << "pi = " << 3.14;
        // result == "pi = 3.14"
        ```

---

[Roman numerals - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Roman_numerals)


Symbol | Value
--- | ---
I | 1
V | 5
X | 10
L | 50
C | 100
D | 500
M | 1,000

bible（ai） 和 babel（e） 这两个单词的发音好像啊……

specifics 和 specifies 的区别在哪里？

indefinite v.s. infinite

单词 | 音标 | 解释
:---: | :---: | :---:
chillax | `[tʃɪˈlæks]` | 淡定
craftsmanship | `['kræftsmənʃɪp]` | 技艺
czar |  `[zɑː]` | 沙皇
designated | `['dɛzɪg,netɪd]` | 特指的
etymology | `[,ɛtɪ'mɑlədʒi]` | 语源学
hypocrite | `['hɪpə'krɪt]` | 伪君子；伪善者
loathing | `['loðɪŋ]` | 嫌恶
mandate | `['mændet]` | 委托管理
paranoid | `['pærənɔɪd]` | 偏执狂患者
predecessor | `['prɛdəsɛsɚ]` | 前辈
revulsion | `[rɪ'vʌlʃən]` | 强烈反感
silhouette | `[,sɪlu'ɛt]` | 轮廓，剪影
specific |  `[spɪ'sɪfɪk]` | 特定的
specify |  `['spɛsɪfaɪ]` | 详细说明
sublime | `[sə'blaɪm]` | 崇高
successor | `[sək'sɛsɚ]` | 继承者
survivalism | `[sə'vaɪv(ə)lɪz(ə)m]` | 生存第一主义
verbatim |  `[vɝ'betɪm]` | 逐字地
xenophobia | `[,zɛnə'fobɪə]` | 对外国人的畏惧和憎恨

---

lossy

:   ```bash
    convert \
        -strip \
        -interlace Plane \
        -gaussian-blur 0.05 \
        -filter Lanczos \
        -quality 85% \
        in.jpg out.jpg
```

It's good to be familiar with other editors like Vi so that you can be
productive even if that's all you have, and then learn how to make the most of
Emacs so that you can reap the benefits over the decades.

Fear, uncertainty, and doubt (often shortened to `FUD`) is a disinformation
strategy used in sales, marketing, public relations, politics and propaganda.
FUD is generally a strategy to influence perception by disseminating negative
and dubious or false information and a manifestation of the appeal to fear.

* A.D. （公元）: Anno Domini
* a.m. （上午）: ante meridiem
* CV （简历）: curriculum vitae
* e.g. （例如）: exempli gratia
* etc. （等等…）: et cetera
* et al. （等人）： et alii
* i.e. （即是）: id est
* p.m. （下午）: post meridiem
* Ph.D. （博士）: Philosophiæ Doctor
* P.S. （附言）: post scriptum
* R.I.P. （息止安所）: requiescat in pace

1001=7*11*13

#. [Code Rush - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Code_Rush)
#. [Code Rush, the Mozilla Documentary from 2000 - Waxy.org](http://waxy.org/2008/06/code_rush/)
#. [Code Rush (TV Movie 2000) - IMDb](http://www.imdb.com/title/tt0499004/)
#. [Tara Hernandez | LinkedIn](https://www.linkedin.com/in/tara-hernandez-755b263)
#. [Stuart Parmenter | LinkedIn](https://www.linkedin.com/in/stuartparmenter)
#. [Jamie Zawinski - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Jamie_Zawinski)

---

sentiment 多愁善感

you are but words.

如果用双屏，Win 加方向键可以从一个屏幕把窗口移动到另一个窗口，可以试试按 <kbd>WIN+Right</kbd> 两次。

aleph `/ˈɑːlɛf/` $\aleph$

Knuth 先生在 The TeXbook 里主张书应该读若干遍，每一遍阅读的侧重点都不同。他用「危险记号」区分了不同学习阶段应该阅读的部分，让初次阅读者能够相对轻松地掌握一个概览，有经验地使用者能够深入一些细节，严肃地钻研者才去探索所谓 Dark Sides。为此他甚至编了一些「善意的谎言」，让初学者能「大致地理解」一些概念，而不必了解背后的琐碎细节。


```bash
$ texdoc sinutx # texdoc <package-name>
```

There is NO DIRECT SOFTWARE  to Hack Facebook , Google , Yahoo or any other big
website. All the softwares that claim to do so are scam（`[skæm]`，欺骗）.

![ASCII Table](http://whudoc.qiniudn.com/ascii.png)

---

维基百科的音标

照理说我不需要额外整理音标的内容，因为我很仔细地看过《赖世雄美语音标》，音标基本都会。
但不幸地是我不知道音标标的是哪一种（美语、英语？），所以还是整理一下维基的音标，这样
以后会更清楚上面查到的东西的读音。

Constants

IPA | Examples
--- | --------
`b` | buy, cab
`d` | dye, cad, do
`ð` | thy, breathe, father
`dʒ` | giant, badge, jam
`f` | fan, caff, phi
`ɡ`(`ɡ`) | guy, bag
`h` | high, ahead
`hw` | why
`j` | yes, hallelujah
`k` | sky, crack
`l` | lie, sly, gal
`m` | my, smile, cam
`n` | nigh, snide, can
`ŋ` | sang, sink, singer
`θ` | thigh, math
`p` | pie, spy, cap
`r` | rye, try, very
`s` | sigh, mass
`ʃ` | shy, cash, emotion
`t` | tie, sty, cat, atom
`tʃ` | china, catch
`v` | vie, have
`w` | wye, swine
`z` | zoo, has
`ʒ` | equation, pleasure, vision, beige

Marginal consonants

IPA | Examples
--- | --------
`x` | ugh, loch, Chanukah
`ʔ` | uh-oh /ˈʔʌʔoʊ/
`˜` | bon vivant /ˌbɒ̃ viːˈvɒ̃/

IPA | Full vowels | IPA | ... followed by R
--- | ----------- | --- | -----------------
`ɑː` | PALM, father, bra | `ɑːr` | START, bard, barn, snarl, star
`ɒ` | LOT, pod, John | `ɒr` | moral, forage
`æ` | TRAP, pad, ban | `ær` | barrow, marry
`aɪ` | PRICE, ride, file, fine, pie | `aɪər` | Ireland, hire (= /aɪr/)
--- | --- | `aɪ.ər` | higher, buyer
`aʊ` | MOUTH, loud, foul, down, how | `aʊər` | flour (= /aʊr/)
--- | --- | `aʊ.ər` | flower
`ɛ` | DRESS, bet, fell, men | `ɛr` | error, merry
`eɪ` | FACE, made, fail, vein, pay | `ɛər` | SQUARE, mare, scarce, cairn, Mary (= /eɪr/)
--- | --- | `eɪ.ər` | layer (one who lays)
`ɪ` | KIT, lid, fill, bin | `ɪr` | mirror, Sirius
`iː` | FLEECE, seed, feel, mean, sea | `ɪər` | NEAR, beard, fierce, serious (= /iːr/)
--- | --- | `iː.ər` | freer
`ɔː` | THOUGHT, Maud, dawn, fall, straw | `ɔːr` | NORTH, born, war, Laura
--- | --- | `ɔː.ər` | sawer
`ɔɪ` | CHOICE, void, foil, coin, boy | `ɔɪər` | coir (= /ɔɪr/)
--- | --- | `ɔɪ.ər` | employer
`oʊ` | GOAT, code, foal, bone, go | `ɔər` | FORCE, more, boar, oral (= /oʊr/)
--- | --- | `oʊ.ər` | mower
`ʊ` | FOOT, good, full, woman | `ʊr` | courier
`uː` | GOOSE, food, fool, soon, chew, do | `ʊər` | boor, moor, tourist (= /uːr/)
--- | --- | `uː.ər` | truer
`juː` | cute, mule, puny, beauty, huge, you, tune | `jʊər` | cure (= /juːr/)
--- | --- | `juː.ər` | fewer
`ʌ` | STRUT, bud, dull, gun | `ɜːr` | NURSE, word, girl, fern, furry
--- | --- | `ʌr` | hurry, nourish (in the UK)

Reduced Vowels

IPA | Reduced vowels | IPA | Reduced Vowels
--- | -------------- | --- | -----------------
`ᵻ` | roses, enough (either `/ɪ/` or `/ə/`) | `ᵿ` | beautiful, curriculum (`[jᵿ]`) (either `/ʊ/` or `/ə/`)
`ɵ` | omission (either `/oʊ/` or `/ə/`) | `u` | situation (either `/ʊ/` or `/uː/`)
`ə` | Rosa’s, a mission, quiet, focus | `ər` | LETTER, perceive
`i` | HAPPY, serious (either `/ɪ/` or `/i/`) | `əl` | bottle (either `[əl]` or `[l̩]`)
`ən` | button (either `[ən]` or `[n̩]`) | `əm` | rhythm (either `[əm]` or `[m̩]`)

Stress & Syllabification

* intonation `/ˌɪntɵˈneɪʃən/`
* Mikey `/ˈmaɪki/`, Myki `/ˈmaɪ.kiː/`

Refs

#. [Help:IPA for English - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Help:IPA_for_English)

---

《影响力》

1. Weapons of Influence: Perceptual Contrast | 对比原理

> Everything should be made as simple as possible, but not simpler.
>
> — *ALBERT E INSTEIN*

Virtually all of
this mothering is triggered by one thing: the “cheep-cheep” sound of
young turkey chicks. Other identifying features of the chicks, such as
their smell, touch, or appearance, seem to play minor roles in the
mothering process. If a chick makes the “cheep-cheep” noise, its
mother will care for it; if not, the mother will ignore or sometimes kill
it.

When, however, the same stuffed replica carried inside it a small
recorder that played the “cheep-cheep” sound of baby turkeys, the
mother not only accepted the oncoming polecat but gathered it under-
neath her. When the machine was turned off, the polecat model again
drew a vicious attack.

How ridiculous a female turkey seems under these circumstances:
She will embrace a natural enemy just because it goes “cheep-cheep,”
and she will mistreat or murder one of her own chicks just because it
does not. She looks like an automaton whose maternal instincts are
under the automatic control of that single sound.

when the situation calls for mothering, the maternal-behavior tape gets
played. Click and the appropriate tape is activated; whirr and out rolls
the standard sequence of behaviors.

Clever use of perceptual contrast is by no means confined to clothiers.
I came across a technique that engaged the contrast principle while I
was investigating, undercover, the compliance tactics of real-estate
companies. To “learn the ropes,” I was accompanying a company realty
salesman on a weekend of showing houses to prospective home buyers.

The salesman—we can call him Phil—was to give me tips to help me
through my break-in period. One thing I quickly noticed was that
whenever Phil began showing a new set of customers potential buys,
he would start with a couple of undesirable houses. I asked him about
it, and he laughed. They were what he called “setup” properties.

Sharon may be failing chemistry, but she gets an “A” in psychology.

2. Reciprocation: The Old Give and Take...and Take | 互惠原理

> Pay every debt, as if God wrote the bill.
>
> — *RALPH WALDOE MERSON*

So typical is it for indebtedness to accompany the receipt of
such things that a term like “much obliged” has become a synonym for
“thank you,” not only in the English language but in others as well.

 It quickly became clear to the Society
that it had a considerable public-relations problem. The people being
asked for contributions did not like the way the members looked,
dressed, or acted.

The Krishnas’ resolution was brilliant. They switched to a fund-raising
tactic that made it unnecessary for target persons to have positive feel-
ings toward the fund-raisers. They began to employ a donation-request
procedure that engaged the rule for reciprocation, which, as demon-
strated by the Regan study, is strong enough to overcome the factor of
dislike for the requester. The new strategy still involves the solicitation
of contributions in public places with much pedestrian traffic (airports
are a favorite), but now, before a donation is requested, the target person
is given a “gift”—a book (usually the Bhagavad Gita), the Back to Godhead

magazine of the Society, or, in the most cost-effective version, a flower.
The unsuspecting passerby who suddenly finds a flower pressed into
his hands or pinned to his jacket is under no circumstances allowed to
give it back, even if he asserts that he does not want it. “No, it is our
gift to you,” says the solicitor, refusing to accept it.

The Rule Enforces Uninvited Debts
The Rule Can Trigger Unfair Exchanges

The Old Give and Take...**and Take...**

RECIPROCAL CONCESSIONS | 相互退让

At first glance, our fortunes
in such a situation would appear dismal. We could comply with the
requester’s wish and, in so doing, succumb to the reciprocity rule. Or,
we could refuse to comply and thereby suffer the brunt of the rule’s
force upon our deeply conditioned feelings of fairness and obligation.
Surrender or suffer heavy casualties. Cheerless prospects indeed.


3. Commitment and Consistency: Hobgoblins of the Mind | 承偌和一致

> It is easier to resist at the beginning than at the end.
>
> — *LEONARDO DA VINCI*

COMMITMENT IS THE KEY

4. Social Proof: Truths Are Us
5. Liking: The Friendly Thief
6. Authority: Directed Deference
7. Scarcity: The Rule of the Few

Refs

#. [我在苏州被和尚骗了, 那和尚一定熟读《影响力》 | 马牛不是人](http://www.manio.org/cn/influence-i-was-treated-by-mock/)
#. [【豆总摘】大纲和重点──看完不用看书了 (评论: 影响力)](http://book.douban.com/review/5046071/)

jujitsu `[dʒuː'dʒɪtsuː]` 柔术

:   n.  a method of self-defense without weapons that was developed in China
    and Japan; holds and blows are supplemented by clever use of the attacker's
    own weight and strength

阮玲玉生前出演电影 29 部，但历经乱世战火，目前仅发现 9 部幸存。

```cpp
// 把整个文件读入buffer
FILE* fp = fopen("test.json", "r");
fseek(fp, 0, SEEK_END);
size_t filesize = (size_t)ftell(fp);
fseek(fp, 0, SEEK_SET);
char* buffer = (char*)malloc(filesize + 1);
size_t readLength = fread(buffer, 1, filesize, fp);
buffer[readLength] = '\0';
fclose(fp);
```

`In situ` 是一个拉丁文片语，字面上的意思是指「现场」、「在位置」。在许多不同语境
中，它描述一个事件发生的位置，意指「本地」、「现场」、「在处所」、「就位」。 …… （在计
算机科学中）一个算法若称为原位算法，或在位算法，是指执行该算法所需的额外内存空间是 `O(1)`
的，换句话说，无论输入大小都只需要常数空间。例如，堆排序是一个原位排序算法。

在 C++11 中这称为转移赋值操作（move assignment operator）。由于 RapidJSON 支持 C++03，它在赋值
操作采用转移语意，其它修改形函数如 `AddMember()`，`PushBack()` 也采用转移语意。

XDM 即**“X Display Manager”**，由它来启动 X Window 服务器，并管理图形客户端程序的
登录、会话、启动窗口管理器（KDE、Gnome）等。KDE 和 Gnome 也提供了自己的 xdm 的实现，分别叫 kdm
和 gdm。

`gvim --remote-tab-silent filename`{.bash} 有点类似 Notepad++ 的 mono-instance。

```plain
set guioptions=""
set guioptions+=m
```

```cpp
QRectF Robot::boundingRect() const
{
    return QRectF();
}
```

`QRectF QGraphicsItem::boundingRect () const`{.bash}

:   This pure virtual function defines the outer bounds of the item as a
    rectangle; all painting must be restricted to inside an item's bounding
    rect.  `QGraphicsView`{.cpp} uses this to determine whether the item
    requires redrawing.

    Although the item's shape can be arbitrary, the bounding rect is always
    rectangular, and it is unaffected by the items' transformation.

    If you want to change the item's bounding rectangle, you must first call
    `prepareGeometryChange()`{.cpp}. This notifies the scene of the imminent
    change, so that its can update its item geometry index; otherwise, the
    scene will be unaware of the item's new geometry, and the results are
    undefined (typically, rendering artifacts are left around in the view).

    Reimplement this function to let `QGraphicsView`{.cpp} determine what parts
    of the widget, if any, need to be redrawn.

    Note: For shapes that paint an outline / stroke, it is important to
    **include half the pen width** in the bounding rect. It is not necessary to
    compensate for antialiasing, though.

    Example:

    ```cpp
    QRectF CircleItem::boundingRect() const
    {
        qreal penWidth = 1;
        return QRectF( -radius - penWidth / 2, -radius - penWidth / 2,
                       diameter + penWidth, diameter + penWidth );
    }
    ```

**Torso** is an anatomical term for the greater part of the human body without
the head and limbs. It is also refered to as the trunk. The torso includes the
chest, back, and abdomen.

---

若我们不确定一个成员是否存在，便需要在调用 `operator[](const char*)` 前先调用
`HasMember()`。然而，这会导致两次查找。更好的做法是调用 `FindMember()`，它能同
时检查成员是否存在并返回它的 `Value`：

……我居然忘了这一点……


```cpp
Value::ConstMemberIterator itr = document.FindMember("hello");
if (itr != document.MemberEnd()) {
    printf("%s %s\n", itr->value.GetString());
}
```

---

VA 番茄助手的 rename 居然不检查名称的正确性，你可以把 `type` 更名为 `ty pe`，这
也太蠢。唯一可能的好处是你可以用这个功能更名为 `const type`，但这么做必然出很多
问题。

```plain
Error	1	error C2248: 'QObject::QObject' : cannot access private member
declared in class 'QObject' ModelLane.h	23	1 ModelStructure
```

`QObject`{.cpp} 从设计上不可拷贝，所以这样的代码是错误的：

```cpp
class UrObject : public QObject { ... }; // 没有自己实现 = 运算符
QList<UrObject> objects;                 // Then, WRONG!
```

作为一种折衷你可以换成指针：

```cpp
QList<UrObject *> ojebcts;
```

See

#. [Object Model | Qt Core 5.5](http://doc.qt.io/qt-5/object.html#identity-vs-value)

---

```cpp
const char *paths[] = {
    "data/sample.json",             // possible path
    "bin/data/sample.json",         // possible path
};
FILE *fp = 0;
for ( size_t i = 0; i < sizeof(paths) / sizeof(paths[0]); ++i ) {
    fp = fopen(filename_ = paths[i], "rb");
    if (fp) { break; }
}
ASSERT_TRUE(fp != 0);

fseek(fp, 0, SEEK_END);
length_ = (size_t)ftell(fp);
fseek(fp, 0, SEEK_SET);
json_ = (char*)malloc(length_ + 1);
ASSERT_EQ(length_, fread(json_, 1, length_, fp));
json_[length_] = '\0';
fclose(fp);
```

忽略掉一个参数，可以用 void：`void(argv);`{.cpp}，
也可以在函数定义的时候 `int main(int, char**)`{.cpp}，甚至 `int main()`{.cpp}。
Qt 里有 `Q_UNUSED(object)` 宏。

Windows 下的 Git Bash 不能直接输入文件名打开文件，提示 Cannot execute binary file（我试着打开 docx 文件），
但 CMD 下可以，`$ demo.docx` 便可以自动用 Word（或者别的你关联的打开方式）打开这个文件。
当然，在 Bash 下输入 `cmd`{.bash} 是一种解决方案。

如何 base64 编码一个图片？

:   可以用 Firefox 浏览器，在 F12 下面，对着图片右键，可以“Copy Image Data-URL”
    ，就复制到了 Base64 编码的图片。

---

一些数字：

用二进制可以快速地估算，下面是一些常用数字：

Hex | Bin
--- | ---
360 | 2^^8.5^^
10 | 2^^3.32^^
100 | 2^^6.64^^
1000 | 2^^9.96^^ &asymp; 2^^10^^
pi = 3.14 | 2^^1.651^^
e = 2.72 | 2^^1.44^^
$\sqrt{2} = 1.414$ | 2^^0.5^^
地球半径 R = 6371 km = 6371 &times; 10^^3^^ m | 2^^22.6^^

怎么用，举例：

比如你想知道赤道上一个经度对应的长度，

地球半径为 $R$ = 6371 千米 = 2 ^^22.6^^ m，
则 distance = $\frac{2\pi \times R}{360}$ = 2^^(1+1.651+22.6-8.5)^^ = 2^^10+6.75^^ = 1000 * 100 = 100 km。
和实际用计算器计算的 110 km 差不多。

你也看到我们需要反向计算 2^^x^^ 的十进制是多少，所以再列一个表：

Bin | Hex
--- | ---
2^^1^^ | 2
2^^2^^ | 4
2^^3^^ | 8
2^^4^^ | 16
2^^5^^ | 32
2^^6^^ | 64
2^^7^^ | 128
2^^8^^ | 256
2^^9^^ | 512 = 500
2^^10^^ | 1024 = 1000
2^^11^^ | 2048
2^^12^^ | 4096
2^^13^^ | 8192
2^^14^^ | 16384
2^^15^^ = 2^^10^^ * 2^^5^^ | 1000 * 32 = 32 k （实际为 32768）
2^^16^^ | 65536
2^^31^^ | 1k * 1k * 1k * 2 = 1m * 1k * 2 = 1g * 2 = 2g（2 billion） （实际为 2.147484e9）^[Control + R, `=`, `pow(2,31)`]
2^^32^^ | 4g

* k: thousand
* m: million
* g: billion

Value | SI[^SI]
----- | -------
1000 | k | kilo
1000^^2^^ | M | mega
1000^^3^^ | G | giga
1000^^4^^ | T | tera
1000^^5^^ | P | peta
1000^^6^^ | E | exa
1000^^7^^ | Z | zetta
1000^^8^^ | Y | yotta

Value | IEC[^IEC] | JEDEC
----- | --------- | -----
1024 | Ki | kibi | K | kilo
1024^^2^^ | Mi | mebi | M | mega
1024^^3^^ | Gi | gibi | G | giga
1024^^4^^ | Ti | tebi | – |
1024^^5^^ | Pi | pebi | – |
1024^^6^^ | Ei | exbi | – |
1024^^7^^ | Zi | zebi | – |
1024^^8^^ | Yi | yobi | –

[^SI]: The SI prefixes (metric prefix) are standardized for use in the
    International System of Units (SI) by the International Bureau of Weights
    and Measures (BIPM) in resolutions dating from 1960 to 1991.
[^IEC]: IEC 80000-13:2008 is an international standard that defines quantities
    and units used in information science, and specifies names and symbols for
    these quantities and units. The standard is published by the International
    Electrotechnical Commission (IEC) and is part of the group of standards
    called ISO/IEC 80000, published jointly by the IEC and the International
    Organization for Standardization (ISO).

#. We were unable to load Disqus. If you are a moderator please see our troubleshooting guide.
#. buzzword
#. Remember，Windows 开始菜单有个“默认程序”，`控制面板\程序\默认程序\设置关联`

`cat /etc/issue`{.bash }
`ifdown eth0 && ifup eth0`{.bash}
`ifdown --exclude=lo -a && sudo ifup --exclude=lo -a`{.bash}

Bing:

#. `related:http://sharelatex.com`
#. `inurl:<KEY_WORD>`

> 希望大家不要因为被关得太久，就忘记了自由的感觉

```bash
$ vim -p files*.txt
```

#. `c-o`, backward
#. `c-i`, forward
#. `c-]`, jump to
#. `:ju`, show jumpables
#. `earlier 10s`, 10 secs ago

#. 可能我是一个天生就爱折腾， 爱完美的男人（虽然我不是处女座）
#. 妈妈对你外表修饰和穿衣搭配的指点，包含了她浓浓的爱，当着她的面一定要虚心地全
   盘接受。在离开她的视线后，继续该穿啥穿啥。

idiomatic `[,ɪdɪə'mætɪk]` (惯用的；符合语言习惯的；通顺的)

```perl
#!/bin/perl

foreach (1..10) {
    print "Iteration number $_.\n\n";
    print "Please choose: last, next, redo, or none of the above? ";
    chomp(my $choice = <STDIN>);
    print "\n";
    last if $choice =~ /last/i;
    next if $choice =~ /next/i;
    redo if $choice =~ /redo/i;
    print "That wasn't any of the choice... onward!\n\n";
}
```

---

在欧美国家，一些大红的明星因某一专辑，或者某一行为，成绩大不如前（单曲、专辑销售
量惨淡，演唱会无人买单、惹人讨厌等等）都可以称为“flop”。

```bash
# d: debug, e: evaluate (one liner), l: ?process line ending
$ perl -del # Perl REPL
```

```bash
$ set    KEY=val        # windows
$ setenv KEY val        # csh
$ export KEY=val        # bash
```

```bash
#!/bin/bash
FILES=./markdown/*
for fin in $FILES
do
    fout=${fin/markdown/articles}   # path       # smart
    fout=${fout/\.markdown/.html}   # extension  # smart
    pandoc $fin -t html5 -o $fout \
            --toc --smart --standalone \
            --template=template
done
```

~~上面的脚本很巧妙，我从来没想过可以用正则表达式。~~那不是正则。

VimFx

:   ```plain
    o               ; address bar
    O               ; search bar
    p               ; paste and go，
                    ; 和地址栏的 Bing 结合意味着你可以随时
                    ; 选择文字，复制，然后 p 搜索。
    P               ; paste and go in new window
    yy              ; yank tab url
    g/              ; links only
    /               ; normal text search
    gJ, gK, gw      ; move tab left, right, to new window
    g0, g^, g$      ; move to tab (first, first non-pinned, last)
    gp              ; pin tab
    gt, gT          ; next, previous tab (感觉 J，K 用起来是反的，果断抛弃)
    x, X            ; close, restore
    gxa, gx$        ; close multiple tabs
    s, sa           ; stop loading
    ```

Firefox 浏览器的优点：默认的字体大点。

`c-d`, bookmark
`c-h`, history
`c-b`, bookmarks sidebar
`c-s-h`, library list


```html
<img src="extension/skin/icon128.png" alt="" align="right">
```

<div class="tzx-fright">
![](http://www.imagemagick.org/Usage/img_diagrams/glyph_metrics.gif)
</div>

```cpp
int main(int argc, char **argv)
 {
     QApplication app(argc, argv);

     QTabWidget *tabWidget = new QTabWidget;

     QGraphicsScene scene;
     QGraphicsProxyWidget *proxy = scene.addWidget(tabWidget);

     QGraphicsView view(&scene);
     view.show();

     return app.exec();
 }

 int myfunc(int n)
 {
     QVarLengthArray<int, 1024> array(n + 1);
     ...
     return array[n];
 }
```

<kbd>Win+R</kbd>: %windir%

`net stop/start WuAuServ`{.cmd} (windows update)

```plain
In vim `g#` v.s. `#`

Jumplist `:h jumplist`, `:h CTRL-O` (older), `:h CTRL-I`, `:h ju[mp]`
```

#. “先辈的罪”（Sins of our Forefathers）
#. Mental Speedbump（头脑减速杠）
#. vim statistics: selection &rarr; `g<C-g>`{.vim}

`<link rel="stylesheet" href="main.css">`{.html}
  ~ link 是连接到一个内容，所以用 `href`{.html}

`<script type="text/javascript" src="main.js"></script>`{.html}
  ~ script 是脚本，插入到本地，所以是 `src`{.html}，类似 LaTeX 里的 `\input{path}`{.tex}

`<img src="http://gnat.qiniudn.com/pics/projection2.png" alt="" />`{.html}
  ~ img 也是插入的内容，所以用 `src`{.html}，`alt`{.html} 既可以在无法加载图片的时候显示提示，也可以用在 <kbd>Control+C</kbd>

`git remote set-url origin git@git.coding.net:xxxx/yyyy.git`{.bash}

<kbd>ctrl-t</kbd>, <kbd>ctrl-d</kbd>: Indent/un-indent in insert mode

```
:syntax off
:set syntax=perl

[{ block start
]} function end
```

![](http://ww2.sinaimg.cn/large/6aa09e8fjw1ey30zhd9v0j20go11atcj.jpg)
![](http://ww2.sinaimg.cn/bmiddle/6aa09e8fjw1ey2qlvrw54j217f1kkah6.jpg)
![Word of the Year](http://ww1.sinaimg.cn/large/6aa09e8fjw1ey43zr5ge1j20yi0s678c.jpg)
![Why the 'Cry of Joy' Emoji?](http://ww1.sinaimg.cn/large/6aa09e8fjw1ey43zsq9tgj20yi2lq7ma.jpg)

Emoji or Emojis（个人倾向于用这个）

谷大白话:

作为 `fetish`，`cuckold` 的嗜好是让老婆跟其他男性嘿嘿嘿并以此为乐。
而被老公出轨背叛的女性叫 `cuckquean`。
【戴绿帽子】`cuckold`。来自 cuckoo 杜鹃，因雌性常到别的鸟窝下蛋，
所以有了红杏出墙的含义。`cuckold` 可以是名词，指被戴绿帽子的男子。
也可以做动词，指给人戴绿帽子。形容词是 `cuckolded`。
还有种说法是 `wearing the horns`。
所以可以用手指在头上比划出角，表示辱骂对方是被戴绿帽子的乌龟。

> Call me John Snow, I know nothing.

![谷大白话: 美国某网站的调查显示：
    61% 的人在淋浴中尿尿，41% 在泳池尿过尿。
    50% 的人擦屁股前会叠起厕纸，30% 把厕纸随便揉成一团。
    60% 擦屁股是从前往后，20% 是从后往前。43% 冲水前会看一眼马桶，
    37% 擦屁股后会看一眼厕纸。45% 表示上厕所前会把厕纸铺在马桶圈上，
    36% 用脚踩冲水按钮，35% 上厕所时不会坐在马桶圈上。](http://ww1.sinaimg.cn/large/6aa09e8fjw1ey3rjcbr4yj210k11awod.jpg)

<div class="tzx-tabs">
* [oooo](#line602182)
* [codes](#line602183)

<div id="line602182">
nothing here.
</div>

<div id="line602183">
```cpp
int i;
for(i = 0; i < argc; ++i)
{
    if(argv[i])
        commandLine.push_back(argv[i]);  // Reads each argument from the
                                         // command line and pushes it on the vector
    else
        return i;
}
return i;

string CommandLine::GetNextWord()
{
	if((int)pos < (int)commandLine.size())
		return commandLine[pos++];   // Retrieves the next word from the command line vector.
	else							 // State is maintained by 'pos'
		return "";
}
```

```cpp
enum ERRTYPE {NOERROR, WARNING, FATAL};

class VCOption
{
public:
	string vc;
	bool space;
	ERRTYPE error;
};

#include <string>
using namespace std;
#include "VCOption.h"
/* This class simply encapsulates
 * the three string items we'd like to return. */
class ReturnItem
{
public:
	ReturnItem() {bestMatch = ""; bestMap = ""; remainingString = ""; space = true; error=NOERROR;}
	~ReturnItem() {} ;
	// ReturnItem& operator=(ReturnItem const *rhs);
	string bestMatch, bestMap, remainingString;
	bool space;
	ERRTYPE error;
};

#define CCSTATE (0)
#define VCSTATE (1)
#define LINESIZE (80)

class Input
{
public:
	Input() {};
	~Input() {};
	int ReadInputFile(char const *fileName);
	int CreatePairsFromCode();
	ReturnItem BestMapping(string &origOpt);
private:
	bool AddPair(string other, string vc, bool space = true);
	bool AddPair(string other, string vc, ERRTYPE error);
	vector<pair<string, VCOption> > optionPairs;
};

#include <fstream>
#include <iostream>
#include <string>
#include "Input.h"
#include "ReturnItem.h"
#include "VCOption.h"

/*
Function Name: AddPair
Parameters:
string other - This is the switch from the "other" compiler.
string vc - This is the switch that 'other' maps to on VC.
Return Value: true
Actions: This pushes the pair <other, vc> onto the vector optionPairs.
*/
bool Input::AddPair(string other, string vc, bool space)
{
	VCOption vcOption;
	vcOption.space = space;
	vcOption.vc = vc;
	vcOption.error = NOERROR;
	optionPairs.push_back(make_pair(other, vcOption));
	return true;
}

bool Input::AddPair(string other, string vc, ERRTYPE error)
{
	VCOption vcOption;
	vcOption.space = true;
	vcOption.vc = vc;
	vcOption.error = error;
	optionPairs.push_back(make_pair(other, vcOption));
	return true;
}

/*
Function Name: ReadInputFile
Parameters:
char const *fileName - The name of the input file we will be reading from.
Return Value:
-1 if there is an error (unspecified what the error is)
1 if the function executes successfully
Actions: The Input::optionPairs vector is filled with the pairings as specified by the input
file named fileName.
*/
int Input::ReadInputFile(char const *fileName)
{

	if(fileName == NULL)
		return -1;
	string ccOption, vcOption;
	string option;
	char temp[LINESIZE];
	ifstream inputFile(fileName);
	if(!inputFile)
	{
		cerr << "No file named : " << fileName << endl;
		return -1;
	}
	bool spaceState = false;
	int state = CCSTATE;
	while(inputFile >> option)
	{
		switch(state)
		{
		case CCSTATE:
			if(option == "@@@")
			{
				inputFile.getline(temp, LINESIZE);
				break;
			}
			if(option == "~~~")
			{
				return 1;
			}
			if(option == "***")
			{
				spaceState = false;
				state = VCSTATE;
			}
			else
			{
				if(spaceState)
				{
					ccOption += " ";
				}
				spaceState = true;
				ccOption += option;
			}
			break;
		case VCSTATE:
			if(option == "!!!")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption);
				ccOption = "";
				vcOption = "";
			}
			else if(option == "###")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption, false);
				ccOption = "";
				vcOption = "";
			}
			else if(option == "EEE")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption, FATAL);
				ccOption = "";
				vcOption = "";
			}
			else if(option == "^^^")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption, WARNING);
				ccOption = "";
				vcOption = "";
			}
			else
			{
				if(spaceState)
				{
					vcOption += " ";
				}
				spaceState = true;
				vcOption += option;
			}
			break;
		default:
			cerr << "Invalid State" << endl;
			return -1;
		}
	}
	return 1;
}

// This code here just loads the optionPairs from the code.  It acts like ReadInputFile.
// This is only called if you define CCMEMORY
int Input::CreatePairsFromCode()
{
	AddPair("-Wall", "/Wall");
	AddPair("-O2", "/O2");
	AddPair("-c", "/c");
	AddPair("-S", "/s");
	AddPair("-E", "/EP");
   /*
    $ ./ccWrapper.exe test -E
    cl test /EP
    ...
    */

	AddPair("-o", "/Fe", false);
	AddPair("--help", "/?");
	AddPair("-ansi", "/Za");
	AddPair("-funsigned-char", "/J");
	AddPair("-pedantic", "/Za");
	AddPair("-pedantic-errors", "/Za");
	AddPair("-w", "/W0");
	AddPair("-ggdb", "/Zi");
	AddPair("-gstabs", "/Zi");
	AddPair("-gstabs+", "/Zi");
	AddPair("-gcoff", "/Zi");
	AddPair("-gxcoff", "/Zi");
	AddPair("-O0", "/Od");
	AddPair("-O1", "/O2");
	AddPair("-O2", "/O2");
	AddPair("-O3", "/Ox");
	AddPair("-Os", "/O1");
	AddPair("-float-store", "/Op");
	AddPair("-fno-default-inline", "/Ob0");
	AddPair("-fomit-frame-pointer", "/Oy");
	AddPair("-fno-inline", "/Ob0");
	AddPair("-finline-functions", "/Ob2");
	AddPair("-include", "/FI");
	AddPair("-nostdinc", "/X" );
	AddPair("-undef", "/u" );
	AddPair("-C", "/C" );
	AddPair("-P", "/P" );
	AddPair("-D", "/D");
	AddPair("-U", "/U");
	AddPair("-nodefaultlibs", "/link /NODEFAULTLIB");
	AddPair("-nostdlib",  "/link /NODEFAULTLIB");
	AddPair("-I", "/I");
	AddPair("-L", "/link /LIBPATH:");
	AddPair("-fpack-struct", "/Zp1");
	AddPair("-fstack-check", "/GS");
	return 1;
}

/*
Function Name: BestMapping
Parameters:
string &origOpt - The switch to be mapped from.
Return Value: ReturnItem
This ReturnItem class contains the .bestMatch string which is the best matching switch.
The .bestMap string is the VC switch that .bestMatch maps too.
The .remainingString is what is left of the origOpt string after you remove the .bestMatch string.
Actions: This method finds the switch that best matches origOpt.
If there is more than one switch that matches origOpt then the longest match is selected.
*/
ReturnItem Input::BestMapping(string &origOpt)
{
	ReturnItem bestItem;
	string currentStr;
	string::size_type idx;
	vector<pair<string, VCOption> >::iterator iterOpt, endOpt;
	endOpt = optionPairs.end();
	bestItem.remainingString = origOpt;
	for(iterOpt = optionPairs.begin(); iterOpt != endOpt; ++iterOpt)
	{
		currentStr = iterOpt->first;
		idx = origOpt.find(currentStr, 0);
		if(idx == 0)
		{
			if(currentStr.size() > bestItem.bestMatch.size())
			{
				bestItem.bestMatch = currentStr;
				bestItem.bestMap = iterOpt->second.vc;
				bestItem.remainingString = origOpt.substr(currentStr.size());
				bestItem.space = iterOpt->second.space;
				bestItem.error = iterOpt->second.error;
			}
		}
	}

	return bestItem;
}
```

```cpp
@@@ Sun Flag Mappings
@@@ Simple mappings
-xO1 *** /O2 !!!
-xO2 *** /O2 !!!
-xO3 *** /Ox !!!
-xO4 *** /Ox !!!
-xO5 *** /Ox !!!
-xO *** /O2 !!!
-O1 *** /O2 !!!
-O2 *** /O2 !!!
-O3 *** /Ox !!!
-O4 *** /Ox !!!
-O5 *** /Ox !!!
-D *** /D ###
-I *** /I !!!
-c *** /c !!!
-mt *** /MT !!!
-P *** /P !!!
-P *** /P !!!

@@@ More involved Mappings
-xspace *** /O1 !!!
-386 *** /G3 !!!
-486 *** /G4 !!!
-cg *** see -xcg
+d *** /Ob0 !!!
-g *** /Zi !!!
-E *** /EP !!!
-g0 *** /Zi !!!
-H *** /showIncludes !!!
-xhelp=flags *** /? !!!
-xsbfast *** /FR ###
-xsb *** /FR ###
-fns ***  !!!
-fns=yes ***  !!!
-fns=no *** /Op !!!
-fsimple=0 *** /Op !!!
-fsimple=1 *** /Op !!!
-fsimple=2 ***  !!!
-fstore *** /Op !!!
-G *** /LD !!!
-o  *** /Fe ###
-L *** /link /LIBPATH: !!!
+w *** /W4 !!!
+w2 *** /Wall !!!
-w *** /W1 !!!
-z *** /link !!!
-xwe *** /WX !!!
-fast *** /Ox !!!

@@@ gcc Flag Mappings
@@@ Simple Mappings
-Wall *** /Wall !!!
-O2  *** /O2 !!!
-c *** /c !!!
-S *** /s !!!
-O0 *** /Od !!!
-O1 *** /O2 !!!
-O2 *** /O2 !!!
-O3 *** /Ox !!!
-Os *** /O1 !!!
-C *** /C !!!
-P *** /P !!!
-D *** /D ###
-U *** /U ###
-I *** /I !!!

@@@ More involved Mappings
-E *** /EP !!!
-o *** /Fe ###
--help *** /? !!!
-ansi *** /Za !!!
-funsigned-char *** /J !!!
-pedantic *** /Za !!!
-pedantic-errors *** /Za !!!
-w *** /W0 !!!
-ggdb *** /Zi !!!
-gstabs *** /Zi !!!
-gstabs+ *** /Zi !!!
-gcoff *** /Zi !!!
-gxcoff *** /Zi !!!
-float-store *** /Op !!!
-fno-default-inline *** /Ob0 !!!
-fomit-frame-pointer *** /Oy !!!
-fno-inline *** /Ob0 !!!
-finline-functions *** /Ob2 !!!
-include *** /FI !!!
-nostdinc *** /X !!!
-undef *** /u !!!
-nodefaultlibs *** /link /NODEFAULTLIB !!!
-nostdlib *** /link /NODEFAULTLIB !!!
-L *** /link /LIBPATH: !!!
-fpack-struct *** /Zp1 !!!
-fstack-check *** /GS !!!
-Wno-unknown-pragmas ***  !!!
-Wno-format ***  !!!

@@@ Fatal Errors
-fvolatile *** EEE
-fvolatile-global *** EEE
-fvolatile-static *** EEE

@@@ Warnings
-Xlinker *** ^^^
-aux-info *** ^^^
-fno-asm *** ^^^
-fno-builtin *** ^^^
-fhosted *** ^^^
-ffreestanding *** ^^^
-trigraphs *** ^^^

~~~ All Done!
Nothing down here is processed.  Can be used for additional comments.
No mappings that I know of
-a
-xa

-v
--target-help
-x
-std
-traditional
-traditional-cpp
-fcond-mismatch
-fsigned-char
-fwritable-strings  --- sorta like /Gf
-fshort-wchar
-fno-access-control
-fcheck-new
-fconserve-space
-fno-const-strings
-finline-limit=
-ftrapv
-foptimize-sibling-calls
-fkeep-inline-functions
-fkeep-static-consts
-fno-function-cse
-fstrict-aliasing
-idirafter
-imacros
-iprefix
-iwithprefix
-M
-MM
-MD
-MMD
-MF
-MG
-MP
-MQ
-MT
-H
-A
-l
-dM
-dD
-dN
-dI
-fpreprocessed
-s
-statuc
-shared
-symbolic
-shared-libgcc
-static-libgcc

-u
-I-
-fshort-double
-funwind-tables
-fshared-data
-fno-ident
-pipe
-pass-exit-codes
```

```cpp
#include <string>
#include <iostream>
#include <string.h>
#include <process.h>
#include "Input.h"
#include "CommandLine.h"
#include "ReturnItem.h"

using namespace std;


int main(int argc, char *argv[])
{
	if(argc < 2)
		return -1;

	string theOutput = "cl ";
	string currentArg;
	ReturnItem mapping;
	Input theInput;
	CommandLine theCommandLine;

#ifndef CCMEMORY  // if we compile to read from memory or to read from a file
	if(theInput.ReadInputFile("ccFile.cfg") == -1)  // the file name is fixed
		return -1;
#else
	theInput.CreatePairsFromCode();
#endif
	// here we read in the command line
	theCommandLine.ReadCommandLine(argc - 1, &argv[1]);
	// iterate over each word in the command line
	while("" != (currentArg = theCommandLine.GetNextWord()))
	{
		// find the best mapping for each word
		mapping = theInput.BestMapping(currentArg);
		// create the output string
		if(mapping.error == FATAL)
		{
			cerr << "Error with flag " << mapping.bestMap << " -- ABORTING\n";
			return -1;
		}
		if(mapping.error == WARNING)
		{
			cerr << "Warning: Flag may not be properly supported: " << mapping.bestMap << endl;
		}
		theOutput += mapping.bestMap + mapping.remainingString;
		if(mapping.space)
			theOutput += " ";

	}
	cout << theOutput << endl;
	// execute the generated output string.  'cl.exe' will need to be in the users path
	system(theOutput.c_str());
	return 0;
}
```
</div>
</div>

#. <kbd>Control+f/b</kbd>, move one screen down/up.
#. The Viola/Jones Face Detector

A seminal approach to real-time object detection Key ideas

* Integral images for fast feature evaluation
* Boosting for feature selection
* Attentional cascade for fast rejection of non-face windows

#. P. Viola and M. Jones. Rapid object detection using a boosted cascade of simple features.  CVPR 2001.
#. P. Viola and M. Jones. Robust real-time face detection. IJCV 57(2), 2004.

1. Feature Computation
The “Integral” image representation
2. Feature Selection
The AdaBoost training algorithm
3. Real-timeliness
A cascade of classifiers

All faces share some similar properties
– The eyes region is darker than the
upper-cheeks.
– The nose bridge region is brighter than
the eyes.
– That is useful domain knowledge
• Need for encoding of Domain Knowledge:
– Location - Size:  eyes & nose bridge
region
– Value:  darker / brighter

Integral Image Representation (check back-up slide)

Using the integral image
representation we can compute the
value of any rectangular sum (part of
features) in  constant time
– For example the integral sum inside
rectangle D can be computed as:
ii(d) + ii(a) – ii(b) – ii(c)

Feature Computation: features must be
computed as quickly as possible
2. Feature Selection: select the most
discriminating features
3. Real-timeliness: must focus on potentially
positive image areas (that contain faces)

---

AdaBoost

:   #. stands for “Adaptive” boost
    #. Constructs a “strong” classifier as a
    #. linear combination of weighted simple
    #. “weak” classifiers

---

![parental advisory](http://img.xiami.net/images/album/img82/28482/4126011392865064_2.jpg)

#. &#x2611; [User Ciro Santilli 六四事件 法轮功 包卓轩 - Stack Overflow](http://stackoverflow.com/users/895245/ciro-santilli-%e5%85%ad%e5%9b%9b%e4%ba%8b%e4%bb%b6-%e6%b3%95%e8%bd%ae%e5%8a%9f-%e5%8c%85%e5%8d%93%e8%bd%a9)
#. &#x2611; [User Yu Hao - Stack Overflow](http://stackoverflow.com/users/1009479/yu-hao)

---

`OBJ = 		$(SRC:.c=.o)`{.makefile}

palette `['pælət]`

back off from '`\0`'

`gilarus`，快乐的基因, `nomados`，流浪的基因

#. &#x2610; (hex: `&#x2610;` / dec: `&#9744`;): ballot box (empty, that's how it's supposed to be)
#. &#x2611; (hex: `&#x2611;` / dec: `&#9745`;): ballot box with check
#. &#x2612; (hex: `&#x2612;` / dec: `&#9746`;): ballot box with x
#. &#x2713; (hex: `&#x2713;` / dec: `&#10003`;): check mark, equivalent to `&checkmark;` and `&check;` in most browsers
#. &#x2714; (hex: `&#x2714;` / dec: `&#10004`;): heavy check mark
#. &#x2717; (hex: `&#x2717;` / dec: `&#10007`;): ballot x
#. &#x2718; (hex: `&#x2718;` / dec: `&#10008`;): heavy ballot x

Checking out web fonts for tick symbols? Here's a ready to use s

#. &#x2611; [Unicode Character 0x2713 - "✓" from Unicode Map](http://www.unicodemap.org/details/0x2713/index.html)
#. &#x2611; [Tick symbol in HTML/XHTML - Stack Overflow](http://stackoverflow.com/questions/658044/tick-symbol-in-html-xhtml)

---

Bézier Curve

Try online: [The Bézier Game](http://bezier.method.ac/)

![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/B%C3%A9zier_3_big.gif/240px-B%C3%A9zier_3_big.gif)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/B%C3%A9zier_4_big.gif/240px-B%C3%A9zier_4_big.gif)

Refs

#. &#x2611; [Bézier curve - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/B%C3%A9zier_curve)
#. &#x2611; [Bézier Curve -- from Wolfram MathWorld](http://mathworld.wolfram.com/BezierCurve.html)

---

Fonts

Computer Font

:   A computer font (or font) is an electronic data file containing **a set of
    glyphs, characters, or symbols** such as dingbats^[sometimes more formally
    known as a printer's ornament or printer's character, is an ornament,
    character, or spacer used in typesetting, often employed for the creation
    of box frames.]. Although the term font first
    referred to a set of metal type sorts in one style and size, since the 1990s it
    is generally used to refer to a scalable set of digital shapes that may be
    printed at many different sizes.

    There are three basic kinds of computer font file data formats:

    #. **Bitmap fonts** consist of a matrix of dots or pixels representing the image of
       each glyph in each face and size.
    #. **Outline fonts** (also called vector fonts) use
       Bézier curves, drawing instructions and mathematical formulae to describe each
       glyph, which make the character outlines scalable to any size.
    #. **Stroke fonts** use a series of specified lines and additional
       information to define the profile, or size and shape of the line in a
       specific face, which together describe the appearance of the glyph.

Outline fonts

:   Outline fonts or **vector fonts** are collections of vector images,
    consisting of lines and curves defining the **boundary of glyphs**. Early vector
    fonts were used by vector monitors and vector plotters using their own internal
    fonts, usually with thin single strokes instead of thick outlined glyphs. The
    advent of desktop publishing brought the need for a universal standard to
    integrate the graphical user interface of the first Macintosh and laser
    printers. The term to describe the integration technology was WYSIWYG (What You
    See Is What You Get). **The universal standard was (and still is) Adobe
    PostScript.** Examples are **PostScript Type 1** and **Type 3 fonts**, **TrueType** and
    **OpenType**.

**PostScript fonts** are outline font specifications developed by Adobe Systems for
professional digital typesetting, which uses PostScript file format to encode
font information.

Type 1

:   Type 1 (also known as PostScript, PostScript Type 1, PS1, T1 or Adobe Type
    1) is the font format for single-byte digital fonts for use with Adobe Type
    Manager software and with PostScript printers. It can support font hinting.  It
    was originally a proprietary specification, but Adobe released the
    specification to third-party font manufacturers provided that all Type 1 fonts
    adhere to it.

    Type 1 fonts are natively supported in Mac OS X, and in Windows
    XP and later via the GDI API. (They are not supported in the Windows GDI+, WPF
    or DirectWrite APIs.)

Type 2, 3, 4, 5, 9, 10, 11, 14, 32, 42

**TrueType** is an outline font standard developed by Apple and Microsoft in the
late 1980s as a competitor to Adobe's Type 1 fonts used in PostScript. It has
become the most common format for fonts on both the Mac OS and Microsoft
Windows operating systems.

The primary strength of TrueType was originally that it offered font developers
a high degree of control over precisely how their fonts are displayed, right
down to particular pixels, at various font sizes. With widely varying rendering
technologies in use today, pixel-level control is no longer certain in a
TrueType font.

**OpenType** is a format for scalable computer fonts. It was built on its
predecessor TrueType, retaining TrueType's basic structure and adding many
intricate（复杂的） data structures for prescribing typographic behavior.
**OpenType is a registered trademark of Microsoft Corporation.**

Refs

#. &#x2611; [Computer font - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Computer_font#OUTLINE)
#. &#x2611; [PostScript fonts - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/PostScript_fonts)
#. &#x2611; [OpenType - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/OpenType)
#. &#x2611; [Web Open Font Format - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Web_Open_Font_Format)
#. &#x2611; [TrueType - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/TrueType)

---

设置 Git 的 Upstream

```bash
# 看看当前的 upstream
$ git remote -v
origin	git@github.com:district10/blog.git (fetch)
origin	git@github.com:district10/blog.git (push)

# 添加一个
$ git remote add coding https://git.coding.net/dvorak4tzx/blog.git

# 看看是否加入成功
$ git remote -v
coding	https://git.coding.net/dvorak4tzx/blog.git (fetch)
coding	https://git.coding.net/dvorak4tzx/blog.git (push)
origin	git@github.com:district10/blog.git (fetch)
origin	git@github.com:district10/blog.git (push)

# 把代码传上去
$ git push coding master

# 重命名一个 upstream
git remote rename coding backup

# 换个 url
$ git remote set-url backup git@github.com:USERNAME/OTHERREPOSITORY.git

# 删除 upstream
$ git remote rm backup

# 补充点备忘（`user.name` 和 `user.email` 就不说了）
$ git config --global core.editor vim
$ git remote add origin url.git
$ git push origin master
```

Refs

#. &#x2611; [github - Git push existing repo to a new and different remote repo server? - Stack Overflow](http://stackoverflow.com/questions/5181845/git-push-existing-repo-to-a-new-and-different-remote-repo-server)
#. &#x2611; [Changing a remote's URL - User Documentation](https://help.github.com/articles/changing-a-remote-s-url/)
#. &#x2611; [git命令之git remote的用法 - wangjia55的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/wangjia55/article/details/8802490)

---

以前存的 Emojis

|            |      01     |      02     |      03     |      04     |      05     |      06     |      07     |      08     |      09     |      10     |
| :---------:| :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: |
|     A      | ![][qq-001] | ![][qq-002] | ![][qq-003] | ![][qq-004] | ![][qq-005] | ![][qq-006] | ![][qq-007] | ![][qq-008] | ![][qq-009] | ![][qq-010] |
|     B      | ![][qq-011] | ![][qq-012] | ![][qq-013] | ![][qq-014] | ![][qq-015] | ![][qq-016] | ![][qq-017] | ![][qq-018] | ![][qq-019] | ![][qq-020] |
|     C      | ![][qq-021] | ![][qq-022] | ![][qq-023] | ![][qq-024] | ![][qq-025] | ![][qq-026] | ![][qq-027] | ![][qq-028] | ![][qq-029] | ![][qq-030] |
|     D      | ![][qq-031] | ![][qq-032] | ![][qq-033] | ![][qq-034] | ![][qq-035] | ![][qq-036] | ![][qq-037] | ![][qq-038] | ![][qq-039] | ![][qq-040] |
|     E      | ![][qq-041] | ![][qq-042] | ![][qq-043] | ![][qq-044] | ![][qq-045] | ![][qq-046] | ![][qq-047] | ![][qq-048] | ![][qq-049] | ![][qq-050] |
|     F      | ![][qq-051] | ![][qq-052] | ![][qq-053] | ![][qq-054] | ![][qq-055] | ![][qq-056] | ![][qq-057] | ![][qq-058] | ![][qq-059] | ![][qq-060] |
|     G      | ![][qq-061] | ![][qq-062] | ![][qq-063] | ![][qq-064] | ![][qq-065] | ![][qq-066] | ![][qq-067] | ![][qq-068] | ![][qq-069] | ![][qq-070] |
|     H      | ![][qq-071] | ![][qq-072] | ![][qq-073] | ![][qq-074] | ![][qq-075] | ![][qq-076] | ![][qq-077] | ![][qq-078] | ![][qq-079] | ![][qq-080] |
|     I      | ![][qq-081] | ![][qq-082] | ![][qq-083] | ![][qq-084] | ![][qq-085] | ![][qq-086] | ![][qq-087] | ![][qq-088] | ![][qq-089] | ![][qq-090] |
|     J      | ![][qq-091] | ![][qq-092] | ![][qq-093] | ![][qq-094] | ![][qq-095] | ![][qq-096] | ![][qq-097] | ![][qq-098] | ![][qq-099] | ![][qq-100] |
|     K      | ![][qq-101] | ![][qq-102] | ![][qq-103] | ![][qq-104] | ![][qq-105] | ![][qq-106] | ![][qq-107] | ![][qq-108] | ![][qq-109] | ![][qq-110] |
|     L      | ![][qq-111] | ![][qq-112] | ![][qq-113] | ![][qq-114] | ![][qq-115] | ![][qq-116] | ![][qq-117] | ![][qq-118] | ![][qq-119] | ![][qq-120] |
|     M      | ![][qq-121] | ![][qq-122] | ![][qq-123] | ![][qq-124] | ![][qq-125] | ![][qq-126] | ![][qq-127] | ![][qq-128] | ![][qq-129] | ![][qq-130] |
|     N      | ![][qq-131] | ![][qq-132] | ![][001]    | ![][002]    | ![][003]    | ![][004]    | ![][005]    |

[qq-001]: http://gnat-tang-shared-image.qiniudn.com/emoji/1.gif
[qq-002]: http://gnat-tang-shared-image.qiniudn.com/emoji/2.gif
[qq-003]: http://gnat-tang-shared-image.qiniudn.com/emoji/3.gif
[qq-004]: http://gnat-tang-shared-image.qiniudn.com/emoji/4.gif
[qq-005]: http://gnat-tang-shared-image.qiniudn.com/emoji/5.gif
[qq-006]: http://gnat-tang-shared-image.qiniudn.com/emoji/6.gif
[qq-007]: http://gnat-tang-shared-image.qiniudn.com/emoji/7.gif
[qq-008]: http://gnat-tang-shared-image.qiniudn.com/emoji/8.gif
[qq-009]: http://gnat-tang-shared-image.qiniudn.com/emoji/9.gif
[qq-010]: http://gnat-tang-shared-image.qiniudn.com/emoji/10.gif
[qq-011]: http://gnat-tang-shared-image.qiniudn.com/emoji/11.gif
[qq-012]: http://gnat-tang-shared-image.qiniudn.com/emoji/12.gif
[qq-013]: http://gnat-tang-shared-image.qiniudn.com/emoji/13.gif
[qq-014]: http://gnat-tang-shared-image.qiniudn.com/emoji/14.gif
[qq-015]: http://gnat-tang-shared-image.qiniudn.com/emoji/15.gif
[qq-016]: http://gnat-tang-shared-image.qiniudn.com/emoji/16.gif
[qq-017]: http://gnat-tang-shared-image.qiniudn.com/emoji/17.gif
[qq-018]: http://gnat-tang-shared-image.qiniudn.com/emoji/18.gif
[qq-019]: http://gnat-tang-shared-image.qiniudn.com/emoji/19.gif
[qq-020]: http://gnat-tang-shared-image.qiniudn.com/emoji/20.gif
[qq-021]: http://gnat-tang-shared-image.qiniudn.com/emoji/21.gif
[qq-022]: http://gnat-tang-shared-image.qiniudn.com/emoji/22.gif
[qq-023]: http://gnat-tang-shared-image.qiniudn.com/emoji/23.gif
[qq-024]: http://gnat-tang-shared-image.qiniudn.com/emoji/24.gif
[qq-025]: http://gnat-tang-shared-image.qiniudn.com/emoji/25.gif
[qq-026]: http://gnat-tang-shared-image.qiniudn.com/emoji/26.gif
[qq-027]: http://gnat-tang-shared-image.qiniudn.com/emoji/27.gif
[qq-028]: http://gnat-tang-shared-image.qiniudn.com/emoji/28.gif
[qq-029]: http://gnat-tang-shared-image.qiniudn.com/emoji/29.gif
[qq-030]: http://gnat-tang-shared-image.qiniudn.com/emoji/30.gif
[qq-031]: http://gnat-tang-shared-image.qiniudn.com/emoji/31.gif
[qq-032]: http://gnat-tang-shared-image.qiniudn.com/emoji/32.gif
[qq-033]: http://gnat-tang-shared-image.qiniudn.com/emoji/33.gif
[qq-034]: http://gnat-tang-shared-image.qiniudn.com/emoji/34.gif
[qq-035]: http://gnat-tang-shared-image.qiniudn.com/emoji/35.gif
[qq-036]: http://gnat-tang-shared-image.qiniudn.com/emoji/36.gif
[qq-037]: http://gnat-tang-shared-image.qiniudn.com/emoji/37.gif
[qq-038]: http://gnat-tang-shared-image.qiniudn.com/emoji/38.gif
[qq-039]: http://gnat-tang-shared-image.qiniudn.com/emoji/39.gif
[qq-040]: http://gnat-tang-shared-image.qiniudn.com/emoji/40.gif
[qq-041]: http://gnat-tang-shared-image.qiniudn.com/emoji/41.gif
[qq-042]: http://gnat-tang-shared-image.qiniudn.com/emoji/42.gif
[qq-043]: http://gnat-tang-shared-image.qiniudn.com/emoji/43.gif
[qq-044]: http://gnat-tang-shared-image.qiniudn.com/emoji/44.gif
[qq-045]: http://gnat-tang-shared-image.qiniudn.com/emoji/45.gif
[qq-046]: http://gnat-tang-shared-image.qiniudn.com/emoji/46.gif
[qq-047]: http://gnat-tang-shared-image.qiniudn.com/emoji/47.gif
[qq-048]: http://gnat-tang-shared-image.qiniudn.com/emoji/48.gif
[qq-049]: http://gnat-tang-shared-image.qiniudn.com/emoji/49.gif
[qq-050]: http://gnat-tang-shared-image.qiniudn.com/emoji/50.gif
[qq-051]: http://gnat-tang-shared-image.qiniudn.com/emoji/51.gif
[qq-052]: http://gnat-tang-shared-image.qiniudn.com/emoji/52.gif
[qq-053]: http://gnat-tang-shared-image.qiniudn.com/emoji/53.gif
[qq-054]: http://gnat-tang-shared-image.qiniudn.com/emoji/54.gif
[qq-055]: http://gnat-tang-shared-image.qiniudn.com/emoji/55.gif
[qq-056]: http://gnat-tang-shared-image.qiniudn.com/emoji/56.gif
[qq-057]: http://gnat-tang-shared-image.qiniudn.com/emoji/57.gif
[qq-058]: http://gnat-tang-shared-image.qiniudn.com/emoji/58.gif
[qq-059]: http://gnat-tang-shared-image.qiniudn.com/emoji/59.gif
[qq-060]: http://gnat-tang-shared-image.qiniudn.com/emoji/60.gif
[qq-061]: http://gnat-tang-shared-image.qiniudn.com/emoji/61.gif
[qq-062]: http://gnat-tang-shared-image.qiniudn.com/emoji/62.gif
[qq-063]: http://gnat-tang-shared-image.qiniudn.com/emoji/63.gif
[qq-064]: http://gnat-tang-shared-image.qiniudn.com/emoji/64.gif
[qq-065]: http://gnat-tang-shared-image.qiniudn.com/emoji/65.gif
[qq-066]: http://gnat-tang-shared-image.qiniudn.com/emoji/66.gif
[qq-067]: http://gnat-tang-shared-image.qiniudn.com/emoji/67.gif
[qq-068]: http://gnat-tang-shared-image.qiniudn.com/emoji/68.gif
[qq-069]: http://gnat-tang-shared-image.qiniudn.com/emoji/69.gif
[qq-070]: http://gnat-tang-shared-image.qiniudn.com/emoji/70.gif
[qq-071]: http://gnat-tang-shared-image.qiniudn.com/emoji/71.gif
[qq-072]: http://gnat-tang-shared-image.qiniudn.com/emoji/72.gif
[qq-073]: http://gnat-tang-shared-image.qiniudn.com/emoji/73.gif
[qq-074]: http://gnat-tang-shared-image.qiniudn.com/emoji/74.gif
[qq-075]: http://gnat-tang-shared-image.qiniudn.com/emoji/75.gif
[qq-076]: http://gnat-tang-shared-image.qiniudn.com/emoji/76.gif
[qq-077]: http://gnat-tang-shared-image.qiniudn.com/emoji/77.gif
[qq-078]: http://gnat-tang-shared-image.qiniudn.com/emoji/78.gif
[qq-079]: http://gnat-tang-shared-image.qiniudn.com/emoji/79.gif
[qq-080]: http://gnat-tang-shared-image.qiniudn.com/emoji/80.gif
[qq-081]: http://gnat-tang-shared-image.qiniudn.com/emoji/81.gif
[qq-082]: http://gnat-tang-shared-image.qiniudn.com/emoji/82.gif
[qq-083]: http://gnat-tang-shared-image.qiniudn.com/emoji/83.gif
[qq-084]: http://gnat-tang-shared-image.qiniudn.com/emoji/84.gif
[qq-085]: http://gnat-tang-shared-image.qiniudn.com/emoji/85.gif
[qq-086]: http://gnat-tang-shared-image.qiniudn.com/emoji/86.gif
[qq-087]: http://gnat-tang-shared-image.qiniudn.com/emoji/87.gif
[qq-088]: http://gnat-tang-shared-image.qiniudn.com/emoji/88.gif
[qq-089]: http://gnat-tang-shared-image.qiniudn.com/emoji/89.gif
[qq-090]: http://gnat-tang-shared-image.qiniudn.com/emoji/90.gif
[qq-091]: http://gnat-tang-shared-image.qiniudn.com/emoji/91.gif
[qq-092]: http://gnat-tang-shared-image.qiniudn.com/emoji/92.gif
[qq-093]: http://gnat-tang-shared-image.qiniudn.com/emoji/93.gif
[qq-094]: http://gnat-tang-shared-image.qiniudn.com/emoji/94.gif
[qq-095]: http://gnat-tang-shared-image.qiniudn.com/emoji/95.gif
[qq-096]: http://gnat-tang-shared-image.qiniudn.com/emoji/96.gif
[qq-097]: http://gnat-tang-shared-image.qiniudn.com/emoji/97.gif
[qq-098]: http://gnat-tang-shared-image.qiniudn.com/emoji/98.gif
[qq-099]: http://gnat-tang-shared-image.qiniudn.com/emoji/99.gif
[qq-100]: http://gnat-tang-shared-image.qiniudn.com/emoji/100.gif
[qq-101]: http://gnat-tang-shared-image.qiniudn.com/emoji/101.gif
[qq-102]: http://gnat-tang-shared-image.qiniudn.com/emoji/102.gif
[qq-103]: http://gnat-tang-shared-image.qiniudn.com/emoji/103.gif
[qq-104]: http://gnat-tang-shared-image.qiniudn.com/emoji/104.gif
[qq-105]: http://gnat-tang-shared-image.qiniudn.com/emoji/105.gif
[qq-106]: http://gnat-tang-shared-image.qiniudn.com/emoji/106.gif
[qq-107]: http://gnat-tang-shared-image.qiniudn.com/emoji/107.gif
[qq-108]: http://gnat-tang-shared-image.qiniudn.com/emoji/108.gif
[qq-109]: http://gnat-tang-shared-image.qiniudn.com/emoji/109.gif
[qq-110]: http://gnat-tang-shared-image.qiniudn.com/emoji/110.gif
[qq-111]: http://gnat-tang-shared-image.qiniudn.com/emoji/111.gif
[qq-112]: http://gnat-tang-shared-image.qiniudn.com/emoji/112.gif
[qq-113]: http://gnat-tang-shared-image.qiniudn.com/emoji/113.gif
[qq-114]: http://gnat-tang-shared-image.qiniudn.com/emoji/114.gif
[qq-115]: http://gnat-tang-shared-image.qiniudn.com/emoji/115.gif
[qq-116]: http://gnat-tang-shared-image.qiniudn.com/emoji/116.gif
[qq-117]: http://gnat-tang-shared-image.qiniudn.com/emoji/117.gif
[qq-118]: http://gnat-tang-shared-image.qiniudn.com/emoji/118.gif
[qq-119]: http://gnat-tang-shared-image.qiniudn.com/emoji/119.gif
[qq-120]: http://gnat-tang-shared-image.qiniudn.com/emoji/120.gif
[qq-121]: http://gnat-tang-shared-image.qiniudn.com/emoji/121.gif
[qq-122]: http://gnat-tang-shared-image.qiniudn.com/emoji/122.gif
[qq-123]: http://gnat-tang-shared-image.qiniudn.com/emoji/123.gif
[qq-124]: http://gnat-tang-shared-image.qiniudn.com/emoji/124.gif
[qq-125]: http://gnat-tang-shared-image.qiniudn.com/emoji/125.gif
[qq-126]: http://gnat-tang-shared-image.qiniudn.com/emoji/126.gif
[qq-127]: http://gnat-tang-shared-image.qiniudn.com/emoji/127.gif
[qq-128]: http://gnat-tang-shared-image.qiniudn.com/emoji/128.gif
[qq-129]: http://gnat-tang-shared-image.qiniudn.com/emoji/129.gif
[qq-130]: http://gnat-tang-shared-image.qiniudn.com/emoji/130.gif
[qq-131]: http://gnat-tang-shared-image.qiniudn.com/emoji/131.gif
[qq-132]: http://gnat-tang-shared-image.qiniudn.com/emoji/132.gif
[001]: http://gnat-tang-shared-image.qiniudn.com/emoj/green-happy.png
[002]: http://gnat-tang-shared-image.qiniudn.com/emoj/red-angry.png
[003]: http://gnat-tang-shared-image.qiniudn.com/emoj/white-question.png
[004]: http://gnat-tang-shared-image.qiniudn.com/emoj/yellow-plain.png
[005]: http://gnat-tang-shared-image.qiniudn.com/pic/gnat-favicon.ico

---

Craigslist

被 GFW 墙了。其实不怎么样，天朝这样的网站多了去。（不过还是要吐槽这蛋疼的 GFW。）

Refs

#. &#x2611; [Craigslist - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Craigslist)
#. &#x2611; [Craigslist_百度百科](http://baike.baidu.com/view/703783.htm)

---

Vim Macro

就跟其它所有编辑器一样，宏很好用。

但我不知道在 Vim 里怎么 apply 一个 macro 到文件末尾（在 Notepad++ 里很容易）。

查到的是：`VG:normal @x` 或者 `:%normal @x`，总之就是在一定范围内，用 `normal @x`。
~~可惜我没成功，不知道是不是系统是 Windows 的原因。~~又试了一下，Windows 也可以。

Refs

#. &#x2610; [replay a vim macro until end of buffer - Stack Overflow](http://stackoverflow.com/questions/1291962/replay-a-vim-macro-until-end-of-buffer)

---

NetBIOS Names

Character | ASCII Code  |  Hex Code
--------- | ----------- | -----------
A             | EB   |  45 42
B             | EC   |  45 43
C             | ED   |  45 44
D             | EE   |  45 45
E             | EF   |  45 46
F             | EG   |  45 47
G             | EH   |  45 48
...           | ...  |  ...

NOTE: The above mapping list can be useful while reading network traces because information is sent on the wire in the above encoded format.

（世上还有这么神奇的表示法。）

Refs

#. &#x2611; [Microsoft Support](https://support.microsoft.com/en-us/kb/194203)

---

HTML Entity

在 [Learning HTML](post-0022-learning-html.html#html-entities) 里有部分笔记。
但感觉不够，有时候我都开始用 LaTeX 来标记，但那也太蠢了……

℃，℉，★，☆，☺，☻，☼

* &quot; `&quot;`{.html}
* &amp; `&amp;`{.html}
* &nbsp; `&nbsp;`{.html}
* &yen; `&yen;`{.html}
* &brvbar; `&brvbar;`{.html} broken vertical bar
* &sect; `&sect;`{.html}
* &laquo; `&laquo;`{.html} left double angle quotes
* &raquo; `&raquo;`{.html}
* &deg; `&deg;`{.html}
* &plusmn; `&plusmn;`{.html} plus minus
* &micro; `&micro;`{.html}
* &para; `&para;`{.html}
* &iquest; `&iquest;`{.html}
* &frac14; `&frac14;`{.html}
* &frac12; `&frac12;`{.html}
* &frac34; `&frac34;`{.html}
* &times; `&times;`{.html}
* &divide; `&divide;`{.html}
* &aelig; `&aelig;`{.html} latin small letter ae
* &bull; `&bull;`{.html} bullet
* &hellip; `&hellip;`{.html} horizontal ellipsis
* &prime; `&prime;`{.html}
* &Prime; `&Prime;`{.html}
* &frasl; `&frasl;`{.html} fraction slash
* &larr; `&larr;`{.html}
* &rarr; `&rarr;`{.html}
* &uarr; `&uarr;`{.html}
* &darr; `&darr;`{.html}
* &harr; `&harr;`{.html}
* &lArr; `&lArr;`{.html}
* &rArr; `&rArr;`{.html}
* &uArr; `&hearts;`{.html}
* &dArr; `&dArr;`{.html}
* &hArr; `&hArr;`{.html}
* &crarr; `&crarr;`{.html} downwards arrow wiht corner leftwards (carriage return)
* &not; `&not;`{.html}
* &forall; `&forall;`{.html}
* &exist; `&exist;`{.html}
* &part; `&part;`{.html}
* &nabla; `&nabla;`{.html} `['næblə]`, 劈形算符；微分算符
* &isin; `&isin;`{.html}
* &notin; `&notin;`{.html}
* &ni; `&ni;`{.html}
* &prod; `&prod;`{.html}
* &sum; `&sum;`{.html}
* &minus; `&minus;`{.html}
* &lowast; `&lowast;`{.html} asterisk
* &radic; `&radic;`{.html} square root
* &prop; `&prop;`{.html}
* &infin; `&infin;`{.html}
* &ang; `&ang;`{.html}
* &and; `&and;`{.html}
* &or; `&or;`{.html}
* &cap; `&cap;`{.html}
* &cup; `&cup;`{.html}
* &int; `&int;`{.html} integral
* &there4; `&there4;`{.html} therefore
* &cong; `&cong;`{.html} approximately equal to
* &asymp; `&asymp;`{.html} almost equal to
* &ne; `&ne;`{.html}
* &equiv; `&equiv;`{.html}
* &lt; `&lt;`{.html}
* &gt; `&gt;`{.html}
* &le; `&le;`{.html}
* &ge; `&ge;`{.html}
* &sub; `&sub;`{.html} subset
* &sup; `&sup;`{.html} superset
* &sube; `&sube;`{.html}
* &supe; `&supe;`{.html}
* &nsub; `&nsub;`{.html}
* &oplus; `&oplus;`{.html} circled plus
* &otimes; `&otimes;`{.html} circled times
* &perp; `&perp;`{.html} up tack
* &sdot; `&sdot;`{.html}
* &lceil; `&lceil;`{.html}
* &rceil; `&rceil;`{.html}
* &lfloor; `&lfloor;`{.html}
* &rfloor; `&rfloor;`{.html}
* &lang; `&lang;`{.html}
* &rang; `&rang;`{.html}
* &loz; `&loz;`{.html} lozenge, `['lɑzɪndʒ]`, 菱形
* &hearts; `&hearts;`{.html}

<div class="tzx-fright">
![WWII "ruptured duck" Honorable Discharge Emblem
    lozenge](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Ruptured_Duck_patch.JPG/220px-Ruptured_Duck_patch.JPG)
</div>

Refs

#. &#x2611; [HTML Codes - Table of ascii characters and symbols](http://www.ascii.cl/htmlcodes.htm)
#. &#x2611; [Entity Reference](http://arpc65.arm.ac.uk/~hmm/Entity_Reference.html)
#. &#x2611; [List of XML and HTML character entity references - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references)
#. &#x2611; [List of emoticons - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/List_of_emoticons)

See also

:   - [Arrow symbol - Sets - Unicode® character table](http://unicode-table.com/en/sets/arrows-symbols/)

---

Assignment Expression

:   **An assignment expression has the value of the left operand after the assignment.**

    出自 C99 standard, section 6.5.16

有赋值表达式的情况下

:   ```python
    if result=func1(...):
        print func2(result)
    ```

无赋值表达式的情况下

:   ```python
    result=func1(...)
    if result:
        print func2(result)
    ```

然后你就知道什么叫赋值表达式了。

Python: `import this`{.python} => The Zen of Python, by Tim Peters

:   ```plain
    Beautiful is better than ugly.
    **Explicit is better than implicit.**
    Simple is better than complex.
    Complex is better than complicated.
    Flat is better than nested.
    Sparse is better than dense.
    Readability counts.
    Special cases aren't special enough to break the rules.
    Although practicality beats purity.
    Errors should never pass silently.
    Unless explicitly silenced.
    In the face of ambiguity, refuse the temptation to guess.
    There should be one-- and preferably only one --obvious way to do it.
    Although that way may not be obvious at first unless you're Dutch.
    Now is better than never.
    Although never is often better than right now.
    If the implementation is hard to explain, it's a bad idea.
    If the implementation is easy to explain, it may be a good idea.
    Namespaces are one honking great idea -- let's do more of those!
    ```

Refs

#. &#x2611; [为什么我不喜欢赋值表达式 - SegmentFault](http://segmentfault.com/a/1190000000402506)
#. &#x2611; [c - What does an assignment return? - Stack Overflow](http://stackoverflow.com/questions/9514569/what-does-an-assignment-return)
#. &#x2611; [C99 - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/C99#References)

Read more

#. &#x2610; [Memory part 5: What programmers can do [LWN.net]](https://lwn.net/Articles/255364/)
#. &#x2611; [Yoda 表示法错在哪里](http://www.yinwang.org/blog-cn/2013/04/14/yoda-notation/)

---

有些是以前读过的，但觉得应再读一遍。

[Citation signal - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Citation_signal)

:   A Legal **citation signal** or **introductory signal** is a set of brief abbreviated phrases or
    words used to clarify the authority or significance of a legal citation as it relates to a proposition.

    * Signal Details
        + Signals that indicate **support**

            #. no signal（直接在后面把引用列出来）
            #. *e.g.*, "exempli gratia"（比如说）
               > The placebo effect is well established. See, *e.g.*, Anne Harrington, The Placebo Effect: An Interdisciplinary Exploration (1999).
            #. Accord（还有，也）
              ~ “I have just cited something that supports my proposition, and now here’s another thing that supports it too.”
            #. See（这个很直接，不解释了）
            #. See also
            #. *Cf.*, compare（就像是说：“他们也是类似的观点”）

               > The Massachusetts Court of Appeals did not reach that question and we decline to address it in the first instance.
               > *Cf.* Coy v. Iowa, 487 U.S. 1012, 1021-1022, 108 S.Ct. 2798, 101 L.Ed.2d 857 (1988).

        + Signals that indicate **background material**
            #. See generally
        + Signals that indicate **contradiction**
            #. *Contra*
            #. But see
            #. *But cf.*
        + Signals that indicate **a useful comparison**
            #. Compare _____ with _______
            #.
        + Using signals as verbs（这是在 footnote 里常用的）
            #. > See Christina L. Anderson, Comment, Double Jeopardy: The Modern Dilemma for Juvenile Justice,
               > 152 U. Pa. L. Rev. 1181, 1204-07 (2004) (discussing four main types of restorative justice programs).
            #. "*Cf.*" becomes "compare" and "*e.g.*" becomes "for example" when these signals are used as verbs.

    * Signal formatting（TODO）

    Read more | 下面是关于 citation 和英文写作比较著名的几本书

    #. [The Bluebook: A Uniform System of Citation](https://en.wikipedia.org/wiki/Bluebook)
    #. [The Chicago Manual of Style Online: Chicago-Style Citation Quick Guide](http://www.chicagomanualofstyle.org/tools_citationguide.html)
    #. [The Elements of Style (豆瓣)](http://book.douban.com/subject/1433835/)
    #. [Style (豆瓣)](http://book.douban.com/subject/4107521/)

[Pitfalls of C](http://www.math.pku.edu.cn/teachers/qiuzy/c/reading/pitfall.htm)

:   这书居然在网上直接放着（其实考研复试那段时间我看完了，有时间再看一下，note some）

[裘宗燕主页 :: Main Page of Qiu Zongyan](http://www.math.pku.edu.cn/teachers/qiuzy/)

:   从 C Traps and Pitfalls 看到这里。这老师很著名。

    里面有一些课程：

    #. 2015年春季课程：计算概论（基于Python的课程）
    #. 2014年秋季课程：数据结构（基于Python的课程）
    #. 2014年春季课程：计算概论（基于Python的课程）
    #. 2014年春季课程：程序设计技术与方法（面向数学学院和信息学院三年级本科生）
       采用MIT的著名教科书Structure and Interpretation of Computer Programs。
    #. 2012年秋季课程：程序设计技术与方法
    #. 2012年春季课程：程序设计语言原理（研究生课程）
    #. 2011年秋季课程：程序设计技术与方法
    #. 2010年秋季课程：程序设计技术与方法
    #. 2010年秋季课程：算法与数据结构---基于Maple的课程
    #. 2010年春季课程：形式化方法 --- 基于 B 方法的软件开发（研究生课）
    #. 2010年春季课程：低年级讨论班（软件）
    #. 2009年秋季课程：程序设计技术与方法


[Requirements for Chinese Text Layout 中文排版需求](http://www.w3.org/TR/clreq/)

:   [w3c/clreq](https://github.com/w3c/clreq)

    句號 `U+3002` IDEOGRAPHIC FULL STOP `[。]`、逗號 `U+FF0C` FULLWIDTH COMMA `[，]`
    以及頓號 `U+3001` IDEOGRAPHIC COMMA `[、]`。句號表示語句結束、逗點表示語氣停頓、
    頓號使用於並列連用、表示次序的字詞之間。

    許多理工書籍、科技文獻、西文教科书语法书籍等內含大量西文詞句，並採用橫排，為求標點符號體例一致，
    也有採用 `U+FF0E` FULLWIDTH FULL STOP `[．]` 為句號、採 `U+002C` COMMA `[,]` 或 `U+FF0C` FULLWIDTH COMMA `[，]`
    為逗號與頓號的案例。^[我也记得从哪儿看到论文里中文也最好用英文标点。]

    橫排時，西文使用比例字體；阿拉伯數字則常用比例字體或等寬字體。
    原則上，漢字與西文字母、數字間使用四分之一個漢字寬的字距或空白。
    但西文出現在行頭或行尾時，則毋須加入空白。（最好中英文就之间加个空格，see [中文排版指北]）
    或可使用西文詞間空格（U+0020 SPACE [ ]，其寬度隨不同字體有所變化）。

[Caliphate - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Caliph)

:   哈里发，`key-lif, kal-if`

---

"Je suis Charlie" (French pronunciation: `​[ʒə sɥi ʃaʁli]`, French for "**I am Charlie**") is
a slogan and a logo created by French art director Joachim Roncin and adopted
by supporters of freedom of speech and freedom of the press after the 7 January 2015 massacre
in which twelve people were killed at the offices of the French satirical weekly newspaper Charlie Hebdo.

![The front cover of edition of 14 January 2015, with a cartoon in the same style
  as 3 November 2011 cover, uses the phrase "Je suis Charlie"](https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/Charlie_Hebdo_Tout_est_pardonn%C3%A9.jpg/220px-Charlie_Hebdo_Tout_est_pardonn%C3%A9.jpg)

Refs

#. [Je suis Charlie - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Je_suis_Charlie)

---

Markded

:   ```html
    <!doctype html>
    <html>
    <head>
      <meta charset="utf-8"/>
      <title>Marked in the browser</title>
    </head>
    <body>
    <div class="tzxMarked">**nice**</div>
    <div class="tzxMarked">
    # good
    **bad**
    ## nice
    ## terrible
    > quoted
    </div>

    <script src="http://tangzx.qiniudn.com/marked.js"></script>
    <script>
    tzxMarkeds = document.getElementsByClassName('tzxMarked');
    for ( var i = 0; i < tzxMarkeds.length; ++i ) {
        m = tzxMarkeds[i];
        ms = m.textContent;
        console.log( ms );
        m.innerHTML = marked( ms );
    }
    </script>
    </body>
    </html>
    ```

Strapdown

:   ```html
    <!DOCTYPE html>
    <html>
    <title>Hello Strapdown</title>

    <xmp theme="united" style="display:none;">
    # Markdown text goes in here

    ## Chapter 1

    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua.

    ## Chapter 2

    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
    aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
    voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
    occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
    anim id est laborum.
    </xmp>

    <script src="http://tangzx.qiniudn.com/strapdown.js"></script>
    </html>
    ```

Refs

#. [chjj/marked](https://github.com/chjj/marked)
#. [Strapdown.js - Instant and elegant Markdown documents](http://strapdownjs.com/)

---

那什么 [Emoji cheat sheet for GitHub, Basecamp and other services](http://www.emoji-cheat-sheet.com/)，
不比这个好：[Emoji searcher](http://emoji.muan.co/)

![Emoji 的各种玩法……](https://cloud.githubusercontent.com/assets/1369170/8635052/e333474e-27c7-11e5-8af8-5b0bc2281095.gif)

:sweat_smile:

Refs

#. [notwaldorf/emoji-translate](https://github.com/notwaldorf/emoji-translate)

---

Ballot Box

Unicode Block (Miscellaneous Symbols)

:   `U+2600` ~ `U+26FF`, #characters = 256

    BALLOT BOX WITH CHECK
      ~ &#x2611; `&#x2611;`{.html}

    BALLOT BOX
      ~ &#x2610; `&#x2610;`{.html}

ballot 英 `['bælət]` 美 `['bælət]` n. 投票；投票用纸；投票总数 vi. 投票；抽签决定

Refs

#. [Unicode Character 'BALLOT BOX' (U+2610)](http://www.fileformat.info/info/unicode/char/2610/index.htm)
#. [Unicode Character 'BALLOT BOX WITH CHECK' (U+2611)](http://www.fileformat.info/info/unicode/char/2611/index.htm)

---

French terror attacks: Victim obituaries^[obituaries `oh-bich-oo-er-ee` n. 讣告；讣闻（obituary的复数形式）]

Twelve people died when a bloody attack was launched on the office of France's
satirical magazine Charlie Hebdo. The following day a policewoman was murdered
by Amedy Coulibaly, who held up a Jewish supermarket the next day, killing four
people. Here are brief profiles of all 17 victims.

![19 Sep 2012 issue: An Orthodox Jew pushes an old Muslim in a wheelchair, both
    shouting “You mustn’t make fun!”](http://ichef-1.bbci.co.uk/news/624/media/images/80116000/jpg/_80116101_charliemuslimandjew464.jpg)

死的很多 cartoonist 和 editor，以及一两个 economist，

警察里有 Ahmed Merabet，是个 muslim，"He was a Muslim - a fact picked up by
bloggers seeking to defend the community against "terrorist" slurs."

Witnesses have been describing the dramatic events in France, where two sieges
came to a violent end.

Hostage's mother:

> "My daughter, she's in the supermarket. She's with her Jewish boyfriend. They went shopping.
> he called me 10 minutes ago. She said mum - there's dead people."

Golda, shopper

> "There is a big Jewish community in the area - this area is actually in the
> middle of three Jewish communities.  "Do I feel threatened? Yes. For the
> Jewish community, once again we are being attacked."

![Video footage showed two gunmen firing assault weapons at police in the
    street outside the office](http://ichef.bbci.co.uk/news/624/media/images/80124000/jpg/_80124628_025311653-1.jpg)

![France has been left reeling from the brutal attack](http://ichef.bbci.co.uk/news/624/media/images/80124000/jpg/_80124630_025308133-1.jpg)

'Rivers of blood'

:   One witness told AFP the attack was reminiscent of a scene from a movie:
    "I saw them leaving and shooting. They were wearing masks.
    These guys were serious.... At first I thought it was special forces
    chasing drug traffickers or something."

![Vigil（~~戒严~~祈福） held in Sète, France](http://ichef.bbci.co.uk/live-experience/cps/704/mcs/media/images/80126000/jpg/_80126207_joeytranchinasetevigil.jpg)

![Police officers stand guard outside a flat in Reims as investigators search inside.](http://ichef.bbci.co.uk/live-experience/cps/704/mcs/media/images/80126000/jpg/_80126297_025315148-1.jpg)

![Rallies condemning the attack are taking place across the world, including this one in Quebec, Canada.](http://ichef.bbci.co.uk/live-experience/cps/704/mcs/media/images/80126000/jpg/_80126293_025314033-1.jpg)

![Cartoon by Alex Green](http://ichef.bbci.co.uk/live-experience/cps/512/mcs/media/images/80126000/png/_80126203_alexgreencartoon.png)

![Barbaric](http://ichef.bbci.co.uk/live-experience/cps/512/mcs/media/images/80125000/png/_80125156_mirror.png)

![Victims lay on the pavement in a Paris restaurant Nov. 13, 2015.](http://gnat.qiniudn.com/paris-in-terror/paris-in-terror.png)

法国人唱着国歌撤离球场。

Ernest Hemingway (*For Whom the Bell Tolls*):

> 不要问丧钟为谁鸣，丧钟为你而鸣。

Refs

#. [French terror attacks: Victim obituaries - BBC News](http://www.bbc.com/news/world-europe-30724678)
#. [France sieges end: Witness accounts - BBC News](http://www.bbc.com/news/world-europe-30755914)
#. [As it happened: Charlie Hebdo attack - BBC News](http://www.bbc.com/news/live/world-europe-30710777)
#. [Charlie Hebdo: Gun attack on French magazine kills 12 - BBC News](http://www.bbc.com/news/world-europe-30710883)
#. [Paris attacks: Suspects' profiles - BBC News](http://www.bbc.com/news/world-europe-30722038)
#. [Paris attacks: Dozens killed in series of terror attacks across French capital - CBS News](http://www.cbsnews.com/news/paris-explosion-stadium-shootout-restaurant/)

---

<kbd>Control</kbd> + <kbd>Alt</kbd> + <kbd>Up</kbd>/<kbd>Down</kbd>/<kbd>Left</kbd>/<kbd>Right</kbd>

不知道的话，突然碰到可能会有点不知所措。

---

为了把爬虫放进来[^qiniu-robots-default]，参考 [The Web Robots Pages](http://www.robotstxt.org/robotstxt.html) 写了一个 robots.txt，里面只有两行：

```plain
User-agent: *
Disallow:
```

加了后去百度的 [Robots_站长工具_robots文件检测及生成](http://zhanzhang.baidu.com/robots) 看看生效没。

提交链接，spider：

  - [Google](https://www.google.com/webmasters/tools/submit-url?continue=/addurl)
  - [百度](http://zhanzhang.baidu.com/linksubmit/url)
  - [360 搜索](http://info.so.360.cn/site_submit.html)

[^qiniu-robots-default]: 七牛默认在每个 bucket 加了一个 robots 文件，禁止所有爬虫的爬取。

[An Algorithmic Approach to Network Location Problems. I: The p-Centers : SIAM Journal on Applied Mathematics: Vol. 37, No. 3 (Society for Industrial and Applied Mathematics)](http://epubs.siam.org/doi/abs/10.1137/0137040)
[Facility location problem - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Facility_location_problem)
[Core fonts for the Web - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Core_fonts_for_the_Web)

[dwtkns/gdal-cheat-sheet: Cheat sheet for GDAL/OGR command-line tools](https://github.com/dwtkns/gdal-cheat-sheet)
[pandoc-templates/default.html at master · kjhealy/pandoc-templates](https://github.com/kjhealy/pandoc-templates/blob/master/templates/default.html)
[gpp | Random Determinism](https://randomdeterminism.wordpress.com/tag/gpp/)
[Extension to pandoc's markdown similar to Gitbook, using a "Web template system" · Issue #2676 · jgm/pandoc](https://github.com/jgm/pandoc/issues/2676)

jgm 大神说这个文件替换自己处理就好，加到 pandoc 里的话需要处理太多麻烦事。

* [Viewing Your Model in Google Earth | SketchUp Knowledge Base](http://help.sketchup.com/en/article/3000149)
* [Viewing Your Model in Google Earth | SketchUp Knowledge Base](http://help.sketchup.com/en/article/3000149)
* [Search · osg google earth](https://github.com/search?utf8=%E2%9C%93&q=osg+google+earth&type=Repositories&ref=searchresults)
* [djw8605 (Derek Weitzel)](https://github.com/djw8605)
* [Intro to Importing Data into Google Earth](http://serc.carleton.edu/eyesinthesky2/week10/intro_importing_data.html)
* [Downloading, Installing, and Authorizing SketchUp 2016 | SketchUp Knowledge Base](http://help.sketchup.com/en/setting-up)
* [| SketchUp](http://www.sketchup.com/download/all)
* [Blender to Google Earth Workshop](http://download.blender.org/documentation/bc2006/TempleOfKukulcan.pdf)
* [OpenSceneGraph Max Exporter download | SourceForge.net](https://sourceforge.net/projects/osgmaxexp/?source=typ_redirect)
* [Spatial References — osgEarth 2.4 documentation](http://docs.osgearth.org/en/latest/user/spatialreference.html?highlight=kml)
* [Terrain Tools & Software - Commercial](http://vterrain.org/Packages/Com/)
* [blender model to .osg .ive - 必应](http://www.bing.com/search?q=blender+model+to+.osg+.ive&go=Submit&qs=n&form=QBLH&pq=blender+model+to+.osg+.ive&sc=0-0&sp=-1&sk=&cvid=BEFE6863348F4CA1A1BAE7B52162F681)
* [How to use Blender with OSG/VTP](http://vterrain.org/Doc/Blender/)
* [Builds - district10/blog - Travis CI](https://travis-ci.org/district10/blog/builds)

[qboxrsctl 命令行辅助工具 | 七牛云存储](http://docs.qiniu.com/tools/v6/qboxrsctl.html)
[Free OpenSceneGraph Binary Downloads | AlphaPixel](http://openscenegraph.alphapixel.com/osg/downloads/free-openscenegraph-binary-downloads)

osg binary.

[How to remove, copy or rename a file with Perl](http://perlmaven.com/how-to-remove-copy-or-rename-a-file-with-perl)
[How do I get the full path to a Perl script that is executing? - Stack Overflow](http://stackoverflow.com/questions/84932/how-do-i-get-the-full-path-to-a-perl-script-that-is-executing)

[css - @Media min-width & max-width - Stack Overflow](http://stackoverflow.com/questions/13550541/media-min-width-max-width)

[miloyip/itoa-benchmark: C++ integer-to-string conversion benchmark](https://github.com/miloyip/itoa-benchmark)
[JoakimSoderberg/catcierge: Image recognition (to keep cat prey out) and RFID chip reader system for automated DIY cat door.](https://github.com/JoakimSoderberg/catcierge)

完整的展示了 travis 之类的使用，多平台的编译、测试，等等。

#. &#x2610;
#. &#x2610; [git - Download a single folder or directory from a GitHub repo - Stack Overflow](http://stackoverflow.com/questions/7106012/download-a-single-folder-or-directory-from-a-github-repo)

 282
down vote


This is a pretty old question, but I figured this out today and I thought I'd leave this here for anyone else who has the same problem.

As all the previous answers have already noted, you are not allowed to download a single folder using Git. However, you ARE allowed to do this with subversion. This won't work on a regular git repo obviously, but if you're using GitHub you can actually check out using svn.

For example:

svn checkout https://github.com/foobar/Test/trunk/foo

trunk corresponds to master branch. You can use svn ls to see available tags and branches before downloading if you wish. If you want a folder in a branch other than master then replace trunk with branches/branchname.

As of this writing, you can find the subversion URL for any repo on GitHub by clicking on "Subversion" at the bottom of the right sidebar. See GitHub's post on subversion partial checkouts for more info.



works?
#. &#x2610; [Preface | Data Structure and Algorithm notes](http://algorithm.yuanbin.me/zh-hans/index.html#)
#. &#x2610; [500 Lines or Less](http://aosabook.org/en/500L/)
#. &#x2610; [aosabook/500lines: 500 Lines or Less](https://github.com/aosabook/500lines)
#. &#x2610; [The Architecture of Open Source Applications](http://www.aosabook.org/en/index.html)
#. &#x2610; [Coding 演示平台](http://docs.coding.io/)

从某种程度上说，coding.net 比 github.com 厚道得多。

#. &#x2610; [细说 CSS margin - Coding 博客](https://blog.coding.net/blog/css-margin)
#. &#x2610; [Jekyll迁移到Hexo建立个人博客 | Lippi-浮生志](http://www.ezlippi.com/blog/2016/02/jekyll-to-hexo.html)

> 个人博客以前由jekyll搭建，主要问题是目录、Rss、sitemap无法自动生成，根据DRY的
> 原则在网上找了下答案，最终发现了用Hexo来搭建博客的方法，配置完之后一劳永逸，
> 目录、Rss和sitemap都是自动生成，解决了我之前的困惑。

TODO: 去看它的 rss 怎么生成的。

#. &#x2610; [IntroPy - Woodpecker Wiki for CPUG](http://wiki.woodpecker.org.cn/moin/IntroPy)
#. &#x2610; [top10-Py-idioms-wish-learned-earlier | #是也乎# | ZoomQuiet.io](http://blog.zoomquiet.io/top10-Py-idioms-wish-learned-earlier.html)

- [Cpp-Primer/ch01 at master · Mooophy/Cpp-Primer](https://github.com/Mooophy/Cpp-Primer/tree/master/ch01)
- [Facebook](https://github.com/facebook)
- [CppCoreGuidelines/CppCoreGuidelines.md at master · isocpp/CppCoreGuidelines](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md)
- [Crosswalk - build world class hybrid apps](https://crosswalk-project.org/)
- [Problem loading page](http://mapnik.org/)
- [AGWA/git-crypt: Transparent file encryption in git](https://github.com/AGWA/git-crypt)
- [glsltuto/shaders at master · ssloy/glsltuto](https://github.com/ssloy/glsltuto/tree/master/shaders)
- [FlatBuffers: Using the schema compiler](http://google.github.io/flatbuffers/flatbuffers_guide_using_schema_compiler.html)
- [dvidelabs/flatcc: FlatBuffers Compiler and Library in C for C](https://github.com/dvidelabs/flatcc)
- [Mooophy (Yue Wang)](https://github.com/Mooophy)
[Cpp-Primer/ch01 at master · Mooophy/Cpp-Primer](https://github.com/Mooophy/Cpp-Primer/tree/master/ch01)
[FlatBuffers: Benchmarks](http://google.github.io/flatbuffers/flatbuffers_benchmarks.html)

[ocornut/imgui: Bloat-free Immediate Mode Graphical User interface for C++ with minimal dependencies](https://github.com/ocornut/imgui)

#. &#x2610; [zealdocs/zeal: Offline documentation browser inspired by Dash](https://github.com/zealdocs/zeal)
#. &#x2610; [字符串匹配的KMP算法 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2013/05/Knuth%E2%80%93Morris%E2%80%93Pratt_algorithm.html)
#. &#x2610; [SICP终于看完了，有一些经验想分享出来 - 学习资料 - CoCode](http://cocode.cc/t/sicp/3397)
#. &#x2610; [c++ - Linking different libraries for Debug and Release builds in Cmake on windows? - Stack Overflow](http://stackoverflow.com/questions/2209929/linking-different-libraries-for-debug-and-release-builds-in-cmake-on-windows)

You should not test CMAKE_BUILD_TYPE in the CMake file, it is ignored by multi configuration generators (like VS). If you run cmake with CMAKE_BUILD_TYPE=Debug but Release in VS the code in if(CMAKE_BUILD_TYPE MATCHES Release) is simply ineffective.

#. &#x2610; [OSG+VS2010+win7环境搭建 - 缑城浪子 - 博客园](http://www.cnblogs.com/eaglezhao/archive/2011/07/12/eaglezhao.html)

- [The Perltidy Home Page](http://perltidy.sourceforge.net/)
- [C-C++ Beautifier HOW-TO](http://www.faqs.org/docs/Linux-HOWTO/C-C++Beautifier-HOWTO.html)
- [ClangFormat — Clang 3.9 documentation](http://clang.llvm.org/docs/ClangFormat.html)
[Artistic Style - Index](http://astyle.sourceforge.net/)
[Chiel92/vim-autoformat: Provide easy code formatting in Vim by integrating existing code formatters.](https://github.com/Chiel92/vim-autoformat)

#. &#x2610; [jquery - Auto-size dynamic text to fill fixed size container - Stack Overflow](http://stackoverflow.com/questions/687998/auto-size-dynamic-text-to-fill-fixed-size-container)
#. &#x2610; [Reference Counted Objects in OSG and Producer](http://www.andesengineering.com/OSG_ProducerArticles/RefPointers/RefPointers.html)
#. &#x2610; [qt+osg+vs2008中(msvcr90.dll) 处最可能的异常: 0xC0000005的问题解决 - xhcumt的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/xhcumt/article/details/4779040)

同样在官方论坛上找到答案:是Project属性配置引起的, Project Properties->Configuration Properties->C/C++->Code Generation->Runtime Library, 把Multi-threaded Debug DLL (/MDd)改为Multi-threaded DLL (/MD), 而/MDd是Debug的默认选项. 不过文中提到的有关”_DEBUG”改为”NDEBUG”倒不必.


#. &#x2610; [File and Disk Utilities: Sysinternals Center](https://technet.microsoft.com/en-us/sysinternals/bb545046)
#. &#x2610; [Windows Sysinternals: Documentation, downloads and additional resources](https://technet.microsoft.com/en-us/sysinternals)
#. &#x2610; [Learn how to use Microsoft Windows 7 | Easier faster computing](http://vlaurie.com/windows-7-tips/)
#. &#x2610; [How to Copy and Paste in the Windows Command Prompt | Gizmo's Freeware](http://www.techsupportalert.com/content/how-copy-and-paste-windows-command-prompt.htm)

- CMD, click the icon, in config, turn on quick edit mode.
- CMD, Alt-Space, E(dit), P(aste)

A few links for peoples frequently using the command prompt or a shell:

* ConEmu http://code.google.com/p/conemu-maximus5/
A console emulator with tabs, it works fine with everything listed below. (It allows line/block selection for copying.)

* CygWin http://cygwin.com/
This is a HUGE collection of gnu/linux tools for windows, from bash to zsh, perl, gcc, mc... If you're a linux guy, you'll feel at home with this.

* TCC/LE http://jpsoft.com/
It's 4DOS, an enhanced cmd.exe, a must have. (Like NDOS)

* FAR Manager http://farmanager.com/
Norton commander clone.

* SysInternals Suite http://sysinternals.com/
Various command-line and gui tools: process, junctions, etc.

* NirCMD http://www.nirsoft.net/utils/nircmd.html
Small utility that allows you to do some useful windows tasks.

* CLink https://code.google.com/p/clink/
Better completion for cmd.exe

I hope someone might find this helpful.


#. &#x2610; [愤怒的小怪兽 - 廖雪峰的官方网站](http://www.liaoxuefeng.com/article/001430724785251f1f92d9d5f524530b5c5b8c0f42f1b1b000)
#. &#x2610; [Clojure 驱动的 Web 开发](http://www.ibm.com/developerworks/cn/java/j-io-ClojureWeb/)
#. &#x2610; [Moment.js 中文网](http://momentjs.cn/)
#. &#x2610; [moment/momentjs.com: The website for momentjs](https://github.com/moment/momentjs.com)

效果很好。

#. &#x2610; [vim - How do I open the directory of the current open file? - Super User](http://superuser.com/questions/31677/how-do-i-open-the-directory-of-the-current-open-file)
:   ?
    :   - `:Sex .`
        - This is good but the command is so hard to remember.

#. &#x2611; [How to switch to the directory listing from file view in vim? - Unix & Linux Stack Exchange](http://unix.stackexchange.com/questions/52179/how-to-switch-to-the-directory-listing-from-file-view-in-vim)
#. &#x2610; [Things I Wish I Learned In Engineering School](http://blog.kowalczyk.info/articles/engineering-school.html)
#. &#x2610; [Things I Wish I Learned In Engineering School](http://blog.kowalczyk.info/articles/engineering-school.html)
#. &#x2610; [【新智元—世纪对决】AlphaGo 惊天逆转李世石 ，关键棋局解析](http://mp.weixin.qq.com/s?__biz=MzI3MTA0MTk1MA==&mid=402888309&idx=1&sn=fe4a7f99fde22f5f4c8bc056045a55d6&scene=23&srcid=0309shravqZGaVQnxy1edb98#rd)
#. &#x2610; [Go (game) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Go_(game))

Go (traditional Chinese: 圍棋; simplified Chinese: 围棋; pinyin: About this
sound wéiqí; Japanese: 囲碁; rōmaji: igo; literally: "encircling game") is an
abstract board game for two players, in which the aim is to surround more
territory than the opponent.

The game originated in ancient China more than 2,500 years ago, and is one of
the oldest board games played today. It was considered one of the four
essential arts of a cultured Chinese scholar in antiquity. The earliest written
reference to the game is generally recognized as the historical annal Zuo Zhuan

There is much strategy involved in the game, and the number of possible games
is vast (10761 compared, for example, to the estimated 10120 possible in
chess), displaying its complexity despite relatively simple rules.

    #. &#x2610; [The Chinese Rules of Go](https://www.cs.cmu.edu/~wjh/go/rules/Chinese.html)

#. &#x2610; [javascript - Copy to clipboard without Flash - Stack Overflow](http://stackoverflow.com/questions/6355300/copy-to-clipboard-without-flash)
#. &#x2610;
* [Filesystem | Wikipedia](http://en.wikipedia.org/wiki/File_system)
* [Filename Extension](http://en.wikipedia.org/wiki/Filename_extension)

#. &#x2610;
#. &#x2610;
* [日常生活中有哪些十分钟就能学会但是终生受用的技能？ - 知乎](http://www.zhihu.com/question/20894671#answer-1741917)
* [你最推荐的 Chrome 扩展有哪些？ - 知乎](http://www.zhihu.com/question/19594682)
* [Unix 传奇 (上篇) | 酷 壳 - CoolShell.cn](http://coolshell.cn/articles/2322.html)
* [Unix 传奇 (下篇) | 酷 壳 - CoolShell.cn](http://coolshell.cn/articles/2324.html)
* [黑客的价值观 | 酷 壳 - CoolShell.cn](http://coolshell.cn/articles/2439.html)
* [计算机编程简史图 | 酷 壳 - CoolShell.cn](http://coolshell.cn/articles/2724.html)
* [李开复每天早上 4 点就起床，是怎么办到的？开复老师如何能很好地安排好自己的时间？ - 知乎](http://www.zhihu.com/question/19563168/answer/12257911)
* [财经郎眼 20140603 喜忧参半的 4G 时代 - 视频在线观看 - 财经郎眼 - 财经 - 爱奇艺](http://www.iqiyi.com/v_19rrhzlnyw.html)
* [聊聊我在 Google 无人车研究组的那些事 | 36 氪](http://www.36kr.com/p/212843.html)
* [如何应对一群 13 - 18 岁的街头小混混的挑衅？ - 知乎](http://www.zhihu.com/question/23585788)
* [讲一讲汉尼拔·莱克特博士。 (汉尼拔 影评)](http://movie.douban.com/review/1038150/)
* [Why Is Rho Used for Density? | eHow](http://www.ehow.com/how-does_5407539_rho-used-density_.html)
* [求知成瘾，却无作品 | 简书](http://www.jianshu.com/p/Daxrnq)
* [如何成功地早起 | 简书](http://www.jianshu.com/p/Ns6asx)
* [三分钟学会希腊语 | 简书](http://www.jianshu.com/p/c9a88c6c3d88)
* [哥们儿，你的所有病都是一种病 | 简书](http://www.jianshu.com/p/302d25da305e)
* [嘿，那个上了三天班就辞职的年轻人，我想和你谈谈！ | 简书](http://www.jianshu.com/p/6ff3d4113be6)
* [万苦皆因怂 | 简书](http://www.jianshu.com/p/e7120cb963a0)
* [如何坚持每天写一千字 | 简书](http://www.jianshu.com/p/53eea6022d58)
* [你以为你在合群，其实你只在浪费青春 | 简书](http://www.jianshu.com/p/23dd4a2a8105)
* [Javascript 的前后端统一是个"笑话"吗? | 简书](http://www.jianshu.com/p/5f6637bf15fd)
* [在你被人认识之前 | 简书](http://www.jianshu.com/p/0a9851d0e98a)
* [别把你最好的东西给我 | 简书](http://www.jianshu.com/p/479171e3b209)
* [诚信逆向淘汰的社会 | 简书](http://www.jianshu.com/p/ae0a82de6875)
* [一份关于如何改变人生的指南 | 简书](http://www.jianshu.com/p/XzZ6LW)
* [记一次嫖娼 | 简书](http://www.jianshu.com/p/6f66f03510a1)
* [那些年，坐我们前排的土豪和学霸 | 简书](http://www.jianshu.com/p/JqGqYq)
* [从那道并不变态的家庭作业说起，兼答邓飞 | 简书](http://www.jianshu.com/p/babea9cc6284)
* [欲望少女养成记 | 简书](http://www.jianshu.com/p/1657f91a8b47)
* [你不是书读得少，你是经典读得少 | 简书](http://www.jianshu.com/p/53d918a3fe52)
* [你会因文字而爱上一个人吗 | 简书](http://www.jianshu.com/p/aaf7d0e127ab)
* [不着调的海小姐 | 简书](http://www.jianshu.com/p/3a3a744f98ad)
* [两条写作建议 | 简书](http://www.jianshu.com/p/f9796a5a31b3)
* [别跟这个世界讲道理 | 简书](http://www.jianshu.com/p/jCCPzz)
* [中国式道德审判 | 简书](http://www.jianshu.com/p/351b2776e9c8)
* [信息时代如何使用你的大脑？ | 简书](http://www.jianshu.com/p/9211b74a3662)
* [安静的力量 | 简书](http://www.jianshu.com/p/ab844f4c0d46)
* [那些年，我麻烦过的人 | 简书](http://www.jianshu.com/p/d73853f88721)
* [一个人看电影 | 简书](http://www.jianshu.com/p/87ab211011a4)
* [如果让我再读一次本科 | 简书](http://www.jianshu.com/p/1afb865ef4bd)
* [“文艺青年”与“装逼犯” | 简书](http://www.jianshu.com/p/06fe9c7cd38e)
* [为什么我们无法深入交谈 | 简书](http://www.jianshu.com/p/37f7b7c88729)
* [我的儿子不可能平庸 - 简书](http://www.jianshu.com/p/c8a1e1482ec4?utm_campaign=newsletter&utm_medium=note-236554&utm_source=weekly-16)

#. &#x2610;
* https://en.wikipedia.org/wiki/List_of_mathematical_symbols
* https://en.wikipedia.org/wiki/Mathematical_operators_and_symbols_in_Unicode



* https://en.wikipedia.org/wiki/Help:Displaying_a_formula
* [Full stop - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Full_stop)
* [Quotation Marks: Where Do the Periods and Commas Go--And Why?](http://grammartips.homestead.com/inside.html)
* [Quotation mark - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Quotation_mark)
* [Sentence spacing - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Sentence_spacing)
* [Decimal mark - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Decimal_mark)
* [Ampersand - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Ampersand)
* [Appropriate use of the ampersand | Typophile](http://typophile.com/node/12426)
* [International System of Units - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/International_System_of_Units)


* [Citation | Wikipedia](http://en.wikipedia.org/wiki/Citation)
* [Citation Standards | Citation Working Group](http://dublincore.org/groups/citation/citstds.html)
* [CSL - Citation Style Language](http://citationstyles.org/downloads/primer.html)
* [CSL - Styles | GitHub](https://github.com/citation-style-language/styles)
* [Pandoc Package - CiteProc](http://hackage.haskell.org/package/pandoc-citeproc)

#. &#x2610; [DARPA 开始研发新一代的垂直起降飞机](http://cn.engadget.com/2016/03/04/darpa-unveils-its-next-vtol-aircraft-concept/?ncid=rss_truncated)
:   ?
    :   天网的背景音乐……
#. &#x2610; [Dwarf Fortress - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Dwarf_Fortress)
#. &#x2610; [Stabyourself.net - Mari0](http://stabyourself.net/mari0/#download)
#. &#x2610; [Roguelike - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Roguelike)
#. &#x2610; [Metal Slug - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Metal_Slug)
:   ?
    :   ![](https://en.wikipedia.org/wiki/Metal_Slug#/media/File:Metal_Slug_%28cover%29.jpg)

        Super Vehicle-001: Metal Slug (メタルスラッグ Metaru Suraggu), more
        commonly known as simply Metal Slug, is a **run and gun video game**
        developed and originally released by Nazca Corporation and later
        published by SNK. It was originally released in 1996 for the Neo Geo
        MVS arcade platform. The game is widely known for its sense of humor,
        fluid hand-drawn animation, and fast paced two-player action. It is the
        first title in the Metal Slug series. It has been ported to the Neo Geo
        AES, Neo Geo CD, Sega Saturn, PlayStation, Virtual Console, PlayStation
        Network, iOS, Android and Neo Geo X, and to the Wii, PlayStation
        Portable and PlayStation 2 (as part of the Metal Slug Anthology).
#. &#x2610; [Action game - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Action_game)
#. &#x2610; [Shoot 'em up - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Shoot_%27em_up#Run_and_gun)
#. &#x2610; [NetHackWiki, the NetHack wiki](https://nethackwiki.com/wiki/Main_Page)
#. &#x2610; [Metal Slug X (Neo Geo) - The Cutting Room Floor](https://tcrf.net/Metal_Slug_X_(Neo_Geo)#Debug_Mode)
#. &#x2610; [IBM Research | | Ponder this](https://www.research.ibm.com/haifa/ponderthis/index.shtml)
#. &#x2610; [Archive — IPSC](http://ipsc.ksp.sk/archive)
#. &#x2610; [alt.org - Public NetHack Server](https://alt.org/nethack/)
#. &#x2610; [twitter/typeahead.js: typeahead.js is a fast and fully-featured autocomplete library](https://github.com/twitter/typeahead.js)
:   ?
    :   用来替换掉 autocomplete
#. &#x2610; [崔添翼 § 翼若垂天之云 › 谁能看出这是个文科生？——关于matrix67](http://cuitianyi.com/blog/%e8%b0%81%e8%83%bd%e7%9c%8b%e5%87%ba%e8%bf%99%e6%98%af%e4%b8%aa%e6%96%87%e7%a7%91%e7%94%9f%ef%bc%9f%e2%80%94%e2%80%94%e5%85%b3%e4%ba%8ematrix67/)
#. &#x2610; [把梦想“码”进现实 ——访计算机学院2013届校友崔添翼-学院动态-浙江大学计算机科学与技术学院中文站](http://www.cs.zju.edu.cn/chinese/redir.php?catalog_id=101754&object_id=133940)
#. &#x2610; [值得推荐的C/C++框架和库 - Lippi-浮生志](http://coolshell.info/blog/2014/12/c-open-project.html)
#. &#x2610; [Qt 学习之路 2 | DevBean's World - Part 2](http://www.devbean.net/category/qt-study-road-2/page/2/)
#. &#x2610; [解读 Rob Pike 编写的正则表达式程序 - 开源中国社区](http://www.oschina.net/translate/regular-expression-matcher-code-by-rob-pike?cmp)
#. &#x2610; [Tutorials - perldoc.perl.org](http://perldoc.perl.org/index-tutorials.html)
#. &#x2610; [perlreftut - perldoc.perl.org](http://perldoc.perl.org/perlreftut.html)
#. &#x2610; [你所读的计算机科学方向，有哪些不错的讲义（Notes）？ - 书籍推荐 - 知乎](http://www.zhihu.com/question/38300204)
#. &#x2610; [6.858 / Fall 2014 / Schedule](http://css.csail.mit.edu/6.858/2014/schedule.html)
#. &#x2610; [CSCI-UA.0202: Operating Systems (Undergrad)](http://www.cs.nyu.edu/~mwalfish/classes/15sp/index.html)
#. &#x2610; [cirosantilli/cpp-cheat](https://github.com/cirosantilli/cpp-cheat)
#. &#x2610; [cirosantilli/linux-cheat](https://github.com/cirosantilli/linux-cheat)
#. &#x2610; [java - Why is processing a sorted array faster than an unsorted array? - Stack Overflow](http://stackoverflow.com/questions/11227809/why-is-processing-a-sorted-array-faster-than-an-unsorted-array)
#. &#x2610; [VIM: index](http://man.lupaworld.com/content/manage/vi/doc/)
#. &#x2610; [shell - How to run a series of vim commands from command prompt - Stack Overflow](http://stackoverflow.com/questions/23235112/how-to-run-a-series-of-vim-commands-from-command-prompt)
:   ?
    :   ```bash
        for %a in (A,B,C,D) do vim -c ":g/^\s*$/d" -c "<another command>" %a.txt
        ```

        `:help bufdo`
#. &#x2610; [Vim Regular Expressions 101](http://www.vimregex.com/)
#. &#x2610; [Search patterns - Vim Tips Wiki - Wikia](http://vim.wikia.com/wiki/Search_patterns)
#. &#x2610; [Org Mode - Organize Your Life In Plain Text!](http://doc.norang.ca/org-mode.html)
#. &#x2610; [Org-mode Emacs 下的瑞士軍刀](http://coldnew.github.io/COSCUP2013_org-mode/slide.html#1)
#. &#x2610; [NARKOZ/hacker-scripts](https://github.com/NARKOZ/hacker-scripts)
#. &#x2610; [Lessons on development of 64-bit C/C++ applications](http://www.viva64.com/en/l/)
#. &#x2610; [GEGeek Tech Toolkit](http://www.gegeek.com/documents/85BB69B2F05486B9332CEA18B8D6E4BE690ADA38.html)
#. &#x2610; [深入理解学习Git工作流（git-workflow-tutorial） - SegmentFault](http://segmentfault.com/a/1190000002918123)
#. &#x2610; [www.computervisionblog.com/2015/06/deep-down-rabbit-hole-cvpr-2015-and.html](http://www.computervisionblog.com/2015/06/deep-down-rabbit-hole-cvpr-2015-and.html)
#. &#x2610; [18-645: How to Write Fast Code](http://users.ece.cmu.edu/~pueschel/teaching/18-645-CMU-spring08/course.html)
#. &#x2610; [Futures for C++11 at Facebook](https://code.facebook.com/posts/1661982097368498)
#. &#x2610; [我的算法学习之路 - Lucida](http://zh.lucida.me/blog/on-learning-algorithms/)
#. &#x2610; [ASCIIFlow Infinity](http://whudoc.qiniudn.com/asciiflow/index.html)
:   ?
    :   我把 AsciiFlow 挪过来了，可以在

        * <http://whudoc.qiniudn.com/asciiart.html>
        * <http://whudoc.qiniudn.com/asciiflow>

        使用。或者下载离线 <http://whudoc.qiniudn.com/asciiflow.7z>

        TODO: 给它加一套键盘快捷键。
#. &#x2610; [比尔华纳博士《我们因何而恐惧： 一个一千四百年的秘密》-纪录片视频-爱奇艺](http://www.iqiyi.com/w_19rrylp8kl.html)
:   ?
    :   说 islam，如此地政治不正确哈哈哈。
#. &#x2610; [最高效的休息方式](http://www.douban.com/note/514216150/)
#. &#x2610; [漫谈数据挖掘从入门到进阶](http://www.douban.com/note/283530204/)
#. &#x2610; [八卦高德纳 (评论: 计算机程序设计艺术（第1卷）)](http://book.douban.com/review/5384627/)
#. &#x2610; [【分享】来自于考拉小巫的各种给力文章大集合](http://www.douban.com/group/topic/15299075/)
#. &#x2610; [洗脑三部曲（一） (评论: 暗时间)](http://book.douban.com/review/5012104/)
#. &#x2610; [Digital rights management - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Digital_rights_management)
:   drm
    :   Digital rights management (DRM) schemes are various access control
        technologies that are used to restrict usage of proprietary hardware
        and copyrighted works.[1] DRM technologies try to control the use,
        modification, and distribution of copyrighted works (such as software
        and multimedia content), as well as systems within devices that enforce
        these policies.
#. &#x2610; [Search patterns - Vim Tips Wiki - Wikia](http://vim.wikia.com/wiki/Search_patterns)
#. &#x2610; [CSS: em, px, pt, cm, in…](https://www.w3.org/Style/Examples/007/units)
#. &#x2610; [北美求职记_QAMichaelPeng_新浪博客](http://blog.sina.com.cn/s/blog_6740daa70101771h.html)
#. &#x2610; [为什么 Microsoft 不与“FLAG”并称呢？](http://www.zhihu.com/question/31979481)
:   flag microsoft
    :   再回到微软的问题：我之前很早的时候，拿了一个上海的微软（STC，在闵行的紫
        竹园区）的 offer，当时薪水13.1w，股票125股；后来打听了一下Seattle的微软
        Package，股票多点，也没翻10倍，所以基本上对FLAG来说就是杯水车薪。而且现
        在一般大牛的技术人员或者牛逼毕业生，都是只看股票不看薪水的；薪水就是个
        零花钱，买买车付付房租还行，根本没法发财。所以一般只看裸薪是多少（而没
        有股票意识）的人，都是没见过世面，也没体会过资本市场的造富速度的人。

[git status - list last modified date - Stack Overflow](http://stackoverflow.com/questions/14141344/git-status-list-last-modified-date)

:   ```bash
    git status -s | \
    while read mode file; do \
        echo $mode $(date --reference=$file +"%Y-%m-%d %H:%M:%S") $file; \
    done
    ```

#. &#x2610; [CSS image hover effects , Image hover effects , hover Opacity , hover Overlay and Hover change picture](http://www.corelangs.com/css/box/hover.html)
#. &#x2610; [W3School在线测试工具 V2](http://www.w3school.com.cn/tiy/t.asp?f=css3_border-image_button)
#. &#x2610; [横山宏---科幻军事之父](http://site.douban.com/106758/widget/notes/174077/note/148694802/)
:   ?
    :   * 谁说只有男生才会喜欢机械人。
        * 我从小就很喜欢破铜烂铁的小玩意。机械人更是无比中意。
        * 当然,那时候我只有一些塑胶的模型。基本是经常跩在手心里把玩的。
        * 尤其是打针要打屁股的时候。我妈就会说机器人打针是不会哭的。
        * OK。我也可以。。
#. &#x2610; [CCMakefile4iOS/Makefile at master · webfrogs/CCMakefile4iOS](https://github.com/webfrogs/CCMakefile4iOS/blob/master/Makefile)
#. &#x2610; [windows - How to pass command line parameters to a batch file? - Stack Overflow](http://stackoverflow.com/questions/26551/how-to-pass-command-line-parameters-to-a-batch-file)
:   ?
    :   ```bash
        echo off
        fake-command /u %1 /p %2 %*
        ```

        When you run:

        ```shell
        test-command admin password foo bar
        ```

        the above batch file will run:
        ```shell
        fake-command /u admin /p password foo bar
        ```

        Edit: Actually, `%*` means "all", so one would actually need to use shift to do the above:

        ```shell
        echo off
        set arg1=%1
        set arg2=%2
        shift
        shift
        fake-command /u %arg1% /p %arg2% %*
        ```
#. &#x2610; [启动或停止 Web 服务器 (IIS 8)](https://technet.microsoft.com/zh-cn/library/jj635851.aspx)
:   ?
    :   用 nodejs 开 80 端口的 http 服务器，需要先关闭 IIS：`net stop WAS`（实际上用 `net pause WAS` 更好）

        add `blog.sh` to
        <small>
        `C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`:
        </small>

        ```shell
        #!/bin/bash

        net pause WAS
        (cd D:/tzx/git/blog/publish && http-server -p 80)
        ```

        blog.cmd

        ```cmd
        START /B CMD /C CALL "blog.sh"
        ```
#. &#x2610; [Batch Indentation with Emacs](http://www.cslab.pepperdine.edu/warford/BatchIndentationEmacs.html)
#. &#x2610; [Keybr.com 小工具](http://whudoc.qiniudn.com/keybr.html)
#. &#x2610; [氛围音乐推荐（看书，写论文，调整心情必备良药） - 简书](http://www.jianshu.com/p/8b086b1c09df)
#. &#x2610; [优秀且免费的照片库 - 简书](http://www.jianshu.com/p/5b7b09b93875#)
#. &#x2610; [CTest:Using CTEST and CDASH without CMAKE - KitwarePublic](http://www.vtk.org/Wiki/CTest%3aUsing_CTEST_and_CDASH_without_CMAKE#Examples_2)
#. &#x2610; [Qt Plotting Widget QCustomPlot - Introduction](http://www.qcustomplot.com/)
#. &#x2610; [qwt-plot3d download | SourceForge.net](http://sourceforge.net/projects/qwtplot3d/)
#. &#x2610; [c++ - Why is "using namespace std;" considered bad practice? - Stack Overflow](http://stackoverflow.com/questions/1452721/why-is-using-namespace-std-considered-bad-practice#comment1299902_1452738)
#. &#x2610; [productivity - What is your most productive shortcut with Vim? - Stack Overflow](http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim?rq=1)
#. &#x2610; http://www.ruanyifeng.com/blog/2007/10/ascii_unicode_and_utf-8.html
#. &#x2610; http://www.jianshu.com/p/830036e46179
#. &#x2610; [shell - How can I concatenate string variables in Bash? - Stack Overflow](http://stackoverflow.com/questions/4181703/how-can-i-concatenate-string-variables-in-bash/18041780#18041780)
#. &#x2610; [crop - Cropping a PDF using Ghostscript 9.01 - Stack Overflow](http://stackoverflow.com/questions/6183479/cropping-a-pdf-using-ghostscript-9-01)
:   ?
    :   ```bash
        gswin64c.exe \
        -o cropped.pdf \
        -sDEVICE=pdfwrite \
        -c "[/CropBox [24 158.4 465.4 791.6]" \
        -c " /PAGES pdfmark" \
        -f test.pdf
        ```
#. &#x2610; [SVG Pocket Guide](http://svgpocketguide.com/book/)
#. &#x2611; [在 org-mode 中使用 Graphviz 畫關係圖 | coldnew's blog](http://coldnew.github.io/blog/2013/07-13_07e15/)
#. &#x2611; [org-mode, “文学编程” , 自动化报告](http://dayigu.github.io/OrgModeAndLiterateProgramming.html)
#. &#x2610; [GitHub does dotfiles - dotfiles.github.io](https://dotfiles.github.io/)
#. &#x2610; [Read Lisp, Tweak Emacs: How to read Emacs Lisp so that you can customize Emacs](http://emacslife.com/how-to-read-emacs-lisp.html#orgheadline1)
#. &#x2610; [The Linux desktop experience is killing Linux on the desktop - (think)](http://batsov.com/articles/2011/06/11/linux-desktop-experience-killing-linux-on-the-desktop/)
#. &#x2610; [42+ Text-Editing Keyboard Shortcuts That Work Almost Everywhere](http://www.howtogeek.com/115664/42-text-editing-keyboard-shortcuts-that-work-almost-everywhere/)
#. &#x2610; [ssh - Multiple public keys for one user - Server Fault](http://serverfault.com/questions/221760/multiple-public-keys-for-one-user)
#. &#x2610; [Code Charts](http://www.unicode.org/charts/)
#. &#x2610; [Perl Regular Expression Syntax - 1.49.0](http://www.boost.org/doc/libs/1_49_0/libs/regex/doc/html/boost_regex/syntax/perl_syntax.html#boost_regex.syntax.perl_syntax.perl_regular_expression_syntax)
#. &#x2610; [网络科学导论](http://zhiyuan.sjtu.edu.cn/Course/netsci.htm)
#. &#x2610; [王友来：《我在美国坐牢——美国联邦监狱揭密》 | 海外文摘 - Bay Area Chinese--灣區華人 - Powered by PHPWind](http://www.bachinese.com/forum/simple/?t20389.html)
#. &#x2610; [Machiavellianism - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Machiavellianism)
#. &#x2610; [马基雅维利主义\_百度百科](http://baike.baidu.com/view/1201238.htm)
#. &#x2610; [唱灌篮高手主题曲的人现在怎么样了？ - 知乎](https://www.zhihu.com/question/22512533)
:   ?
    :   「マイフレンド」我的朋友乐队 ZARD，主唱坂井泉水。泉水姐姐声音甜润且相貌
        极美，以她为中心的 ZARD 也成为日本最成功的乐队之一，十几年里作品张张大卖
        ，总销量近 4000 万张，诞生名曲无数。可惜天妒红颜，2007 年癌症扩散到肺部，
        入院治疗时又发生意外事故，不幸去世，无数歌迷心中永远的痛。九十年代开始
        的这十几年是日本流行音乐最辉煌的时期，连动画片的音乐都是相当拿得出手，
        往往有大牌音乐人精心制作。现在的日本动画画面虽然越来越清晰和符合现在的
        审美，音乐性上想要全面超越那个时期的动画基本上是不可能了。
#. &#x2610; [日本有哪些好的歌手？ - 知乎](https://www.zhihu.com/question/22782650)
:   ?
    :   5. ZARD 听到就让人泪目的摇滚乐团无需多言。这首《君に逢いたくなったら》是
        1997 年的单曲，每次听到都会十分感动。ZARD 的曲子里充满着从骨子里发出的不
        羁和向上，就是那种流着眼泪微笑的感觉。其他脍炙人口的曲子包括 《揺れる想
        い》 和《负けないで》。作为 tie 柯南的乐团之一，当然还有大热的 《运命のル
        ーレット廻して》。
#. &#x2610; [科学网—我是河南人 - 施一公的博文](http://blog.sciencenet.cn/home.php?mod=space&uid=46212&do=blog&id=284162)
#. &#x2610; [埃瓦里斯特·伽罗瓦\_百度百科](http://baike.baidu.com/link?url=RYtI1uUwSNSdH-8aadFGVjY6TEivoTIcIhGXY-rHHMQLkt02C23vKXJE5xYgRxwOIC3CKyby0hjSkL_WmNQy45roMynw1pOXa7k7kbl5Rlr2wyGb4l42qV74hnvKY80he7MvG-So-Aq3p-eH9H1MIa)
#. &#x2610; [虽然去不了 Google，走到这步大概也不错了 - laike9m's blog](https://laike9m.com/blog/sui-ran-qu-bu-liao-googlezou-dao-zhe-bu-da-gai-ye-bu-cuo-liao,72/)
:   ?
    :   所以说，Google 并不在乎你的表现如何，在乎的是你的表现必须超出别的应聘者
        一大截。对我来讲，这是不可能做到的事，至少我没法在中国做到。

        去年实验室有四个人拿到 Google 的 Offer，我觉得他们都是神。
#. &#x2610; [all\_in\_utf8/convert\_to\_utf8.py at master · laike9m/all\_in\_utf8](https://github.com/laike9m/all_in_utf8/blob/master/convert_to_utf8.py)
#. &#x2610; [The Lucifer Effect by Philip Zimbardo](http://www.lucifereffect.com/)
:   ?
    :   Welcome to LuciferEffect.org, official web site of The Lucifer Effect:
        Understanding How Good People Turn Evil (Random House, 2007). In this
        book, I summarize more than 30 years of research on factors that can
        create a "perfect storm" which leads good people to engage in evil
        actions. This transformation of human character is what I call the
        "Lucifer Effect," named after God's favorite angel, Lucifer, who fell
        from grace and ultimately became Satan.

        More

        * [一个普通人离杀人有多远——梁文道讲《路西法效应》](http://www.douban.com/group/topic/21241596/)
#. &#x2610; [如何才能去做喜欢的事情](http://www.wanglianghome.org/zh_CN/translation/HowToDoWhatYouLove.html)
#. &#x2610; [书是好书，但记忆法…… (评论: Moonwalking With Einstein)](http://book.douban.com/review/5312595/)
:   ?
    :   科学研究还显示，如果我们不去刻意的锻炼一种能力的话，那么该项能力无论如
        何也不会进步，这也是为什么那些告诉我们夜里听录音就能学外语、或者可以调
        动潜意识学习一类的商品也都是骗人的。即使我们主动去锻炼一种能力，该项能
        力也未必能够得到提升。
#. &#x2610; [Choosing an HTTP Status Code — Stop Making It Hard | Racksburg](http://racksburg.com/choosing-an-http-status-code/)
#. &#x2611; [聪明书签](http://fatduck.org/smartbookmark.html)
:   ?
    :   ![](http://fatduck.org/images/smartbookmark2.jpg)
#. &#x2610; [Casio F-91W: The strangely ubiquitous watch - BBC News](http://www.bbc.com/news/magazine-13194733)
#. &#x2610; [如果他玩微博，秒杀一切段子手 - 简书](http://www.jianshu.com/p/12abee0e372e#)
:   ?
    :   如果他们说你配得到这个奖你就接受了，那么下次他们说你不配的时候，你也得接受。
#. &#x2610; [RFC 1345 - Character Mnemonics and Character Sets](https://tools.ietf.org/html/rfc1345)
#. &#x2610; [降级论 | Meditic](http://meditic.com/degrading-for-success)
#. &#x2610; [图灵奖得主：思考比编码重要 - 微软亚洲研究院](http://www.msra.cn/zh-cn/connections/stories/leslie-visit-pku-20151203.aspx)
#. &#x2610; [rswier/c4](https://github.com/rswier/c4)
#. &#x2610; [sigslot - C++ Signal/Slot Library](http://sigslot.sourceforge.net/)
#. &#x2610; [一个Sqrt函数引发的血案 | 帝都码农](http://diducoder.com/sotry-about-sqrt.html)
#. &#x2610; [《了不起的盖茨比》：绿光 - 读立写生](http://cnfeat.com/blog/2014/03/05/green-light/)
:   ?
    :   有记者采访莱昂纳多，询问他是否会因为从未得到过学院青睐而感到不服。他笑
        了笑，回答道：「很有意思的是，大家似乎都觉得学院欠我什么。」他随后一直
        看着地板，似乎在整理思绪。随后表示，「我想每一个有抱负的演员都会希望得
        到业内同行的肯定和赞许，但事实就是每一年只有一个人能够得到这个特殊的荣
        誉。」
#. &#x2610; [The Intentionality of Evil (Aaron Swartz's Raw Thought)](file:///E:/blogs/Aarow-Swartz/www.aaronsw.com/weblog/intentionalevil-4.html)
#. &#x2610; [I Hate the News (Aaron Swartz's Raw Thought)](file:///E:/blogs/Aarow-Swartz/www.aaronsw.com/weblog/hatethenews.html)
:   ?
    :   None of these stories have relevance to my life. Reading them may be
        enjoyable, but it’s an enjoyable waste of time. They will have no
        impact on my actions one way or another.
#. &#x2610; [Wi-Fi 是什么的缩写 - 第九阅览室 - 提供科学养分](http://9yls.net/19760.html)
:   ?
    :   从 Wi-Fi 扩展成 wireless fidelity，也就是把一个词当作缩写逆向扩展出某种
        含义的过程，是一种文字游戏，叫backronym，意思和 acronym 相对。Backronym
        很容易被传着传着就当真。常见的比如 SOS，很多人认为是 save our souls 的
        缩写，但实际上是先有的易识别易操作的摩尔斯电码···–––···，后选用相对应的
        字母组合SOS 来表示罢了。因此 SOS 和 Wi-Fi 一样，没有任何含义，也不是什
        么的缩写，还真是同病相怜呐。
#. &#x2610; [有哪些让你笑了半辈子，每次给别人讲自己都会爆笑的笑话？ - 知乎](https://www.zhihu.com/question/23547779)
#. &#x2610; [日常生活中有哪些十分钟就能学会并可以终生受用的技能？ - 知乎](https://www.zhihu.com/question/20894671)
:   ?
    :   #. office 里双击格式刷可以多次使用
        #. Ctrl+BackSpace是以单词为单位删除文本
        #. control+click, shift+click
        #. C:\Docume~1\Admini~1
        #. 空格键长度最短的键盘是日语键盘
        #. `data:text/html,<html contenteditable>`
        #. 当你保存你的ppt时，用后缀.pps或.ppsx，那样的话，打开时会直接进入幻灯片播放模式。
        #. 人们最终记住的不是你说过的话，而是你让他们产生的感觉。几乎所有的人都喜欢谈论自己的事情，所以，多问问题。
        #. 在外住旅社时，在门后放一个玻璃水杯，提防陌生人入门。
        #. 打错电话时，除了说不好意思打扰了，还可以再多说一句祝您生活愉快，真的让人更容易接受你的歉意。
        #. 出门的时候检查必备物品就是四个：“伸手要钱”。（身份证、手机、钥匙、钱包）
        #. 拍证件照时用舌头顶住上颚，笑的会很自然。
        #. 在外旅游，被劝玩各种项目时，只要说“跟团”俩字，别人一般不会再纠缠，在多个城市亲自测试，有效！
        #. 当人恐惧时，血液从手臂流向腿部，这样为逃跑做好准备，手会先冷下来
        #. 如何在10分钟内记住某一年的日历。只要记忆12个数字就可以了。让我们试着记住
           2014年的日历吧。255 136 140 250（在你的脑海里试着用小图像的方法记住
           它）含义是明显的，每一个数字代表一个月，比如 2代表1月，5代表2月，5代
           表3月……为了得到具体某一天是周几其实很简单。以2014年8月15日为例：回忆
           你记住的当月的数字。嗯，8月是4。将日期加上你记住的数字。嗯，15+4=19.
           将结果除以7，取余数。嗯，19/7=2……5完成！2014年8月15日是星期五。
#. &#x2610; [单词拼写，怎么记又快又好？](http://www.baicizhan.com/article/4)
:   ?
    :   Read more

        #. [坏习惯一大堆？别怕，还有救](http://www.baicizhan.com/article/6)
        #. [我们为什么必须背单词？](http://www.baicizhan.com/article/2)
        #. [如何在一天内记200个单词？](http://www.baicizhan.com/article/3)

        #. [百词斩TV 黑暗料理单词视频](http://tv.baicizhan.com/playlist/1000322)
        #. [百词斩TV 成为学霸的10个秘诀单词视频](http://tv.baicizhan.com/playlist/1000323)
        #. [百词斩TV 羞羞的知识单词视频](http://tv.baicizhan.com/playlist/1000513)
            i. carnal desire
            #. ba-ccha-na-lian antics
            #. contra-sepive
            #. sa-cri-legious（遭天谴的）
            #. homo-sexual
            #. full of allure
            #. add a bit of artificial lighting
            #. it's a bit of brash
            #. you randy old man
        #. [百词斩TV 人体姿势12问单词视频](http://tv.baicizhan.com/playlist/1000514)
            i. re-cum-bent bike, lie on a recumbent position
            #. lying pro-strate in peace
            #. a se-den-tary lifestyle
            #. stand steady or i'll beat you with this stick
            #. sit in an upright position
            #. rigid `[ˈrɪdʒɪd]`, improve my posture, not becoming a slotch like you.
            #. pre-carious, likely to collapse. I was gymnast for 10 years. Not precarous at all.
            #. si-mul-ta-neous, simultaneous actions and movements
            #. bend. I kneel before you. I said kneel.
        #. [百词斩TV 绅士的品格单词视频](http://tv.baicizhan.com/playlist/1000515)
            i. strapped for cash. A generous man did the same thing for me.
            #. considerate
            #. an educated man, resulting from or having good education. opposite to you
            #. charming. come for a ride in my convertable
            #. humourous
            #. handsome, stop looking at him
            #. reliable
            #. leave your genteel manners at home when you come to my house
            #. in gentle voice, give you a gentle pat on the back before I yell at you again
        #. [百词斩TV 霸道总裁爱上我单词视频](http://tv.baicizhan.com/playlist/1000516)
#. &#x2610; [dae/anki](https://github.com/dae/anki)
#. &#x2610; [【弄"潮"儿】英文中的20种orgasm](http://mp.weixin.qq.com/s?__biz=MjM5NTExMTk5MA==&mid=404899112&idx=1&sn=11953362f9dbfb81c1c595a8091a6829&scene=0#wechat_redirect)
#. &#x2610; [Bachelor tax - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Bachelor_tax)
#. &#x2610; [舌尖上的忘词&背单词的秘诀](http://mp.weixin.qq.com/s?__biz=MjM5NTExMTk5MA==&mid=409398412&idx=1&sn=a592c82fd0a57b15559832c983033ca8&scene=0#wechat_redirect)
:   ?
    :   四熟是指眼熟，耳熟，意熟，用熟。

        "In the buff" is a slang term for nude

        【smh】shake my head/ shaking my head的缩写。表示觉得某事太弱智，或者对某事失望、无语。

        dafuq (the f*ck)

        总而言之，如果一个词你不会用，那这词就不是你的。
        可能是老师的，可能是老美的，可能是老英的，也可能是隔壁老王的，反正它不是你的。

        More to read

        #. [你是如何将词汇量提升到 2 万，甚至 3 万的？ - 尼克六六的回答 - 知乎](https://www.zhihu.com/question/26814125/answer/47842171)
        #. [Corpus of Contemporary American English (COCA)](http://corpus.byu.edu/coca/)
        #. [[bnc] British National Corpus](http://www.natcorp.ox.ac.uk/)
#. &#x2610; [Highest Voted 'qt' Questions - Stack Overflow](http://stackoverflow.com/questions/tagged/qt?sort=votes)
#. &#x2610; [Inno Setup](http://www.jrsoftware.org/isinfo.php)
#. &#x2610; [Recommended Reading for Developers](file:///E:/blogs/CodingHorror/blog.codinghorror.com/recommended-reading-for-developers/index.html)
:   ?
    :   Programming Pearls is the next best thing to working side by side with
        a master programmer for a year or so. It is the collective wisdom of
        many journeyman coders distilled into succinct, digestible columns.
#. &#x2610; [What is Trolling?](file:///E:/blogs/CodingHorror/blog.codinghorror.com/what-is-trolling/index.html)
:   ?
    :   I almost feel sorry for Quentin Tarantino, who is so obviously
        passionate about what he does, because this guy is a classic troll.

        1. He came to generate argument.
        2. He doesn't truly care about the topic.

        So the next time you encounter someone who can't stop arguing, who
        seems unable to generate anything other than heat and friction, whose
        actions amply demonstrate that they are no longer participating in the
        conversation in good faith … just walk away. Don't take the bait.

#. &#x2610; [这一年来 - BYVoid](https://www.byvoid.com/zhs/blog/recent-one-year)
#. &#x2610; [Notes on Programming in C](http://kamalatta.ddnss.de/otherdocs/pikestyle.html)
:   ?
    :   Finally, I prefer minimum-length but maximum-information names, and
        then let the context ﬁll in the rest. Globals, for instance, typically
        have little context when they are used, so their names need to be rela-
        tively evocative. Thus I say maxphysaddr (not MaximumPhysicalAddress)
        for a global variable, but np not NodePointer for a pointer locally deﬁ
        ned and used.  This is largely a matter of taste, but taste is relevant
        to clarity.

        `if(checksize(x))`{.cpp} is unhelpful because we can’t deduce whether checksize returns true on error or non-error; instead
        `if(validsize(x))`{.cpp} makes the point clear and makes a future mistake in using the routine less likely.

        * Rule 1. You can’t tell where a program is going to spend its time.
          Bottlenecks occur in surprising places, so don’t try to second guess
          and put in a speed hack until you’ve proven that’s where the
          bottleneck is.
        * Rule 2. Measure. Don’t tune for speed until you’ve measured, and even
          then don’t unless one part of the code overwhelms the rest.
        * Rule 3. Fancy algorithms are slow when n is small, and n is usually
          small. Fancy algorithms have big constants. Until you know that n is
          frequently going to be big, don’t get fancy. (Even if n does get big,
          use Rule 2 ﬁrst.) For example, binary trees are always faster than
          splay trees for workaday problems.
        * Rule 4. Fancy algorithms are buggier than simple ones, and they’re
          much harder to implement. Use simple algorithms as well as simple
          data structures.
            + The following data structures are a complete list for almost all practical programs:
            + array linked list hash table binary tree
            + Of course, you must also be prepared to collect these into compound
              data structures. For instance, a sym- bol table might be implemented
              as a hash table containing linked lists of arrays of characters.
        * Rule 5. Data dominates. If you’ve chosen the right data structures
          and organized things well, the algorithms will almost always be
          self-evident. Data structures, not algorithms, are central to
          programming. (See Brooks p. 102.)
        * Rule 6. There is no Rule 6.
#. &#x2610; [有什么好的锻炼自己 LaTeX 能力的方法？ - 学习 - 知乎](http://www.zhihu.com/question/26941928)
:   ?
    :   其次，学LaTeX之后掌握的不仅仅是LaTeX本身。能获得的知识有什么呢？比如说
        字体的知识，图像处理的知识，甚至还能掌握到一定的编程技能。当然，如果说
        是我的话，我算是走上邪路了，还开发了一个C实现的TeX，这个一般人没那么多
        的时间做的。本身我走的是弯路，别人就别再走了，比如想用Mathematica实现一
        个TeX什么的。不过最重点的东西是：控制欲。系统地学好了LaTeX之后就会有一
        种非常强烈的控制欲。这种控制欲是非常难得的东西。为什么呢？因为铅字印刷
        这种事物推出历史舞台之后，排版的工作似乎变得非常轻松。小姑娘小伙子高中
        毕业了就可以来做做了。我这里并不是什么歧视，靠手艺吃饭的永远都是值得尊
        敬的。但是实际上，做排版的人里面有不少没有什么系统性的排印知识。这就造
        成一系列的问题，错字漏字什么的的都算小的。最大的问题是很多书版面同质化
        严重，排版的不知道改，编辑也不会改，这就导致国内有挺多书拿到手就垫了桌
        脚了。学LaTeX能把很多错误的观念掰对过来，也会了解更深层次的东西。

        #. Hyphon
            * upper-case letter
            * 1-800-621-2376
            * My name is Phyllis; that's p-h-y-l-l-i-s.
        #. EN Dash
            * In Genesis 6:13--22 we find God's instructions to Noah.
            * Green Bay beat Denver 31--24
            * Jane Doe (1950–); or Jane Doe (b. 1950)（不加空格）
            * the University of Wisconsin--Madisonthe
            * University of Wisconsin--Milwaukee
        #. EM Dash
            * She outlined the strategy---a strategy that would, she hoped, secure the peace.
            * Consensus---that was the will-o'-the wisp he doggedly pursued.

        Read more

        #. [自学 LaTeX 可以读什么书入门？ - 知乎用户的回答 - 知乎](http://www.zhihu.com/question/26645810/answer/33515971)
        #. [LaTeX 如何将数学公式写得漂亮？ - 写作技巧 - 知乎](http://www.zhihu.com/question/29816700)
        #. [英文破折号（em dash）、连接号（en dash）与连字符（hyphen）的区别及各自用法是什么？在科技写作中有何特点？ - 英语 - 知乎](http://www.zhihu.com/question/20332423)
        #. [如何做到像使用 LaTeX 那样优雅地使用 Word？ - 如何优雅地 X - 知乎](http://www.zhihu.com/question/20541531)
#. &#x2610; [大学里有才华的男生](http://www.douban.com/note/529741314/)
#. &#x2610; [伟大企业诞生扼灭记_豆总Jessica_新浪博客](http://blog.sina.com.cn/s/blog_700a620c0101cd8i.html)
#. &#x2610; [已成蒙学幼读科普贴，看看我大汉语如何美炸你们！](http://www.douban.com/group/topic/77626904/)
#. &#x2610; [虚拟机是怎么实现的？ | 马牛不是人](http://www.manio.org/cn/virtual-machine-implementation/)
#. &#x2610; [如何使用 ggplot2？ - R（编程语言） - 知乎](http://www.zhihu.com/question/24779017)
#. &#x2610; [阮玲玉（中国早期著名女影星）_百度百科](http://baike.baidu.com/subview/34091/6236325.htm)
:   ?
    :   张曼玉说：“我觉得阮玲玉的骨子里有一种讲不出来的妖媚。”

        阮玲玉她是保姆的女儿，可以说一直到阮玲玉死都没有人知道，也就是说张达民
        一直到最后出了一本书《我和阮玲玉》，并且在书面上说句句是实话的那本书里
        面，他都没有写阮玲玉是保姆的女儿，可见张达民在阮玲玉死了以后，他还是良
        心发现为阮玲玉守住这个秘密的。然后知道阮玲玉这个秘密的第二个人就是蔡楚
        生。当我们看到一本《阮玲玉》的书，在头十行里，我们可以看到，阮玲玉是佣
        人的女儿。这个信息最后是1957年的时候蔡楚生在悼念阮玲玉逝世二十二周年的
        时候披露的。因为阮玲玉觉得，蔡楚生和自己一样，出身很卑微，就和他很亲近
        ，所以就把自己是一个保姆的女儿，怎么样和张达民同居，又怎么样认识唐季珊
        ，又怎么和唐季珊同居，然后唐季珊又爱上了别的舞女，她内心是怎么样痛苦，
        全部和蔡楚生说了。

        但对于一个智识者，尤其是对于一个出到社会上了的女性，却足够使她受伤，更不必说故意张扬，特别渲染的文字了。

        Refs

        #. [论人言可畏_百度百科](http://baike.baidu.com/view/14786977.htm)
#. &#x2610; [陌生拜访之如何搞定门卫 | 老K博客](http://www.laokboke.com/2015/02/12/mb/)
#. &#x2610; [为什么XML这么笨重的数据结构仍在广泛应用？ - XML - 知乎](http://www.zhihu.com/question/20738607)
:   ?
    :   Refs

        * [JSON: The Fat-Free Alternative to XML](http://www.json.org/xml)
#. &#x2610; [QString 乱谈(1) - 1+1=10 - 博客频道 - CSDN.NET](http://blog.csdn.net/dbzhang800/article/details/7517422)
#. &#x2610; [QString乱谈(2) - 1+1=10 - 博客频道 - CSDN.NET](http://blog.csdn.net/dbzhang800/article/details/7540905)
#. &#x2610; [QString 乱谈(3)-Qt5与中文 - 1+1=10 - 博客频道 - CSDN.NET](http://blog.csdn.net/dbzhang800/article/details/7542672)
#. &#x2610; [Qt stylesheet 源码学习 - 1+1=10 - 博客频道 - CSDN.NET](http://blog.csdn.net/dbzhang800/article/details/6875352)
#. &#x2610; [学习与记忆](http://mindhacks.cn/2008/06/05/how-memory-works/)
#. &#x2610; [BBC ON THIS DAY | 18 | 1978: Mass suicide leaves 900 dead](http://news.bbc.co.uk/onthisday/hi/dates/stories/november/18/newsid_2540000/2540209.stm)
#. &#x2610; [c++ - RapidJSON library getting a value inside an array by its index - Stack Overflow](http://stackoverflow.com/questions/10037778/rapidjson-library-getting-a-value-inside-an-array-by-its-index)
:   ?
    :   exactly what I want.
#. &#x2610; [Jank Free: Let's Make the Web Silky Smooth!](http://jankfree.org/)
:   ?
    :   What is Jank?

        Modern browsers try to refresh the content on screen in sync with a
        device's refresh rate. For most devices today, the screen will refresh
        60 times a second, or 60Hz. If there is some motion on screen (such as
        scrolling, transitions, or animations) a browser should create 60
        frames per second to match the refresh rate.

        Jank is any stuttering, juddering or just plain halting that users see
        when a site or app isn't keeping up with the refresh rate. Jank is the
        result of frames taking too long for a browser to make, and it
        negatively impacts your users and how they experience your site or app.
#. &#x2610; [lazysizes - the ultimate lazyloader for responsive images, iframes and widget](http://afarkas.github.io/lazysizes/)
#. &#x2610; [微软实现深层神经网络重大技术突破 - 微软亚洲研究院](http://www.msra.cn/zh-cn/news/headlines/imagenet-20151211.aspx)
:   ?
    :   2015年12月10日——美国东部时间，微软亚洲研究院视觉计算组在2015 ImageNet计
        算机识别挑战赛中凭借深层神经网络技术的最新突破，以绝对优势获得图像分类
        、图像定位以及图像检测全部三个主要项目的冠军。

        ImageNet是一个计算机视觉系统识别项目，也是目前世界上图像识别最大的数据
        库。ImageNet挑战赛每年举办一次，由来自全球顶尖高校、企业及研究机构的研
        究员组织举办，近年来已经成为计算机视觉领域的标杆。

        在做这个“去雾”课题之前的一年多里，他做过很多课题，都没有取得发表论文意
        义上的收获。但是，这些课题让他有机会尝试了很多不同的方向，也了解了更多
        背景和方法，继而成为了他后来论文的铺垫。

        多读论文。研究初期，需要海量阅读论文，并且不需要太专注于别人的具体算法
        和如何实现等细节，更多地去关注论文简介及作者所做的与研究相关的工作，他
        人的研究思路，然后在前人的基础上去思考，寻找对自己工作有帮助的要点；

        提高英语能力。虽然GRE、IELTS等考试并不是必须要参加的，但是这类考试确实
        能够极大地锻炼英语读写能力。如果不具备优秀的英语能力，在日后的研究中会
        比较吃亏；

        关注细节。无论是撰写论文还是编写代码，很多时候，粗略看上去会感觉还可以
        ，但是仔细推敲后就会发现各种问题。所以在进行研究的过程中，首先要对自己
        所做的内容有个基础性的判断，再从读者的角度出发，自己反问自己问题。只有
        在苛刻的要求下，才会有高质量的文章。

        Refs

        #. [潜心科研，砥砺前行，让梦想照进现实——记西安交通大学校友孙剑博士专访 - 微软亚洲研究院](http://www.msra.cn/zh-cn/connections/stories/jian-sun-20150616.aspx)
        #. [厚积薄发的研究之路 - 微软亚洲研究院](http://msra.cn/zh-cn/connections/talents/tomorrowstars/stories/kaiminghe.aspx)
#. &#x2610; [google/googletest](https://github.com/google/googletest)
:   ?
    :   Welcome to Google Test, Google's C++ test framework!

        This repository is a merger of the formerly separate GoogleTest and
        GoogleMock projects. These were so closely related that it makes sense
        to maintain and release them together.
#. &#x2610; [google/WebFundamentals](https://github.com/google/WebFundamentals)
:   ?
    :   Best practices for modern web development
        https://developers.google.com/web/fundamentals

        Web Fundamentals is a technical documentation center for multi-device
        web development. Our goal is to build a resource for modern web
        developers that’s as curated and thorough as developer.android.com or
        iOS Dev Center.
#. &#x2610; [Public domain - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Public_domain)
:   ?
    :   Works in the public domain are those whose intellectual property rights
        have expired, have been forfeited, or are inapplicable. For example,
        the works of Shakespeare and Beethoven, most of the early silent films,
        the formulae of Newtonian physics, the Serpent encryption algorithm and
        powered flight are all now in the public domain. The term is not
        normally applied to situations where the creator of a work retains
        residual rights, in which case use of the work is referred to as "under
        license" or "with permission".
#. &#x2610; [Clang 比 GCC 好在哪里？ - 编译器 - 知乎](http://www.zhihu.com/question/20235742)
:   ?
    :   Read more

        #. [ClangDiagnosticsComparison - GCC Wiki](http://gcc.gnu.org/wiki/ClangDiagnosticsComparison)
        #. [Comparing clang to other open source compilers](http://clang.llvm.org/comparison.html)
#. &#x2610; [Mac OS X 背后的故事_知识库_博客园](http://kb.cnblogs.com/page/114879/)
#. &#x2610; [开源云计算技术初探 | YY42](http://www.yy42.net/blog/?p=381)
:   ?
    :   Ruby和JavaScript是云时代的主流编程语言，Python紧追，PHP应了那句话了“not
        even close”。heroku将matz叔挖过去的时候，明确放话Ruby是云时代的语言，
        heroku的整个工程实践也是按照Ruby的最佳工程实践来做的。另外一块那肯定是
        JVM平台了，云计算肯定会带来JVM平台的另一轮繁荣。至于.NET，本人毫无研究
        ，就不妄加评论了。

        网络虚拟化技术下一步会得到很大的发展。原有在多种操作系统下的独有技术将
        快速融合，比如DTrace，ZFS移植到Linux，KVM移植到Solaris。以DTrace为首的
        强大工具将会得到非常大发展，成为各种开源产品的标配，以增强在发杂环境下
        的调试能力。个人认为未来有经验的DTrace工程师会活得非常滋润，有点供不应
        求，请联想那么多云，尤其是国内的烂云，少不了要调试的人吧。

        云计算红红火火，但繁荣的市场上也到处是骗子无赖，踏踏实实做点事情不容易
        。个人认为踏踏实实学好云计算的相关技术，比肤浅地开发几个手机应用有意思
        。国外很多大学也开设了相关的课程，大家可以多多关注。

        还有些没有说完的话题今后会在补遗中写写。
#. &#x2610; [Hamming weight - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Hamming_weight)
:   ?!
#. &#x2610; [trigonometry - How to use the PI constant in C++ - Stack Overflow](http://stackoverflow.com/questions/1727881/how-to-use-the-pi-constant-in-c)
:   ?
    :   ```cpp
        #define _USE_MATH_DEFINES
        #include <math.h>
        ```

        in `math.h`:

        ```cpp
        #if defined(_USE_MATH_DEFINES) && !defined(_MATH_DEFINES_DEFINED)
        #define _MATH_DEFINES_DEFINED

        /* Define _USE_MATH_DEFINES before including math.h to expose these macro
         * definitions for common math constants.  These are placed under an #ifdef
         * since these commonly-defined names are not part of the C/C++ standards.
         */

        /* Definitions of useful mathematical constants
         * M_E        - e
         * M_LOG2E    - log2(e)
         * M_LOG10E   - log10(e)
         * M_LN2      - ln(2)
         * M_LN10     - ln(10)
         * M_PI       - pi
         * M_PI_2     - pi/2
         * M_PI_4     - pi/4
         * M_1_PI     - 1/pi
         * M_2_PI     - 2/pi
         * M_2_SQRTPI - 2/sqrt(pi)
         * M_SQRT2    - sqrt(2)
         * M_SQRT1_2  - 1/sqrt(2)
         */

        #define M_E        2.71828182845904523536
        #define M_LOG2E    1.44269504088896340736
        #define M_LOG10E   0.434294481903251827651
        #define M_LN2      0.693147180559945309417
        #define M_LN10     2.30258509299404568402
        #define M_PI       3.14159265358979323846
        #define M_PI_2     1.57079632679489661923
        #define M_PI_4     0.785398163397448309616
        #define M_1_PI     0.318309886183790671538
        #define M_2_PI     0.636619772367581343076
        #define M_2_SQRTPI 1.12837916709551257390
        #define M_SQRT2    1.41421356237309504880
        #define M_SQRT1_2  0.707106781186547524401

        #endif  /* _USE_MATH_DEFINES */
        ```

        Refs

        #. [How does #define _USE_MATH_DEFINES work? - C++ Forum](http://www.cplusplus.com/forum/general/102410/)
#. &#x2610; [HTML5街头霸王游戏(开放源码) | Web前端 腾讯AlloyTeam Blog | 愿景: 成为地球卓越的Web团队！](http://www.alloyteam.com/2012/05/html5-streetfighter-demo/)
#. &#x2610; [CodeTank 代码坦克 - 互联网智能代码坦克机器人编程游戏](http://codetank.alloyteam.com/)
#. &#x2610; [RapidJSON: 常见问题](http://rapidjson.org/zh-cn/md_doc_faq_8zh-cn.html)
:   ?
    :   RapidJSON包含一组单元测试去执行自动测试。Travis（供Linux平台）及
        AppVeyor（供Windows平台）会对所有修改进行编译及执行单元测试。在Linux下
        还会使用Valgrind去检测内存泄漏。
#. &#x2610; [Web 查询引擎 -- Lingoes Translator 灵格斯词霸](http://www.lingoes.cn/zh/translator/webengine.htm)
#. &#x2610; [Ubuntu 14.04 重启网卡 — » Kumu's Blog](http://blog.opskumu.com/ubuntu-network-br0.html)
#. &#x2610; Writing Solid Code
#. &#x2610; [Google Pro Tip: Use Back-of-the-envelope-calculations to Choose the Best Design - High Scalability -](http://highscalability.com/blog/2011/1/26/google-pro-tip-use-back-of-the-envelope-calculations-to-choo.html)
:   ?
    :   back-of-the-envelop (无需精心(或不必复杂)计算的)
#. &#x2610; [Jeff Dean facts: How a Google programmer became the Chuck Norris of the Internet.](http://www.slate.com/articles/technology/doers/2013/01/jeff_dean_facts_how_a_google_programmer_became_the_chuck_norris_of_the_internet.single.html)
:   ?
    :   #. If you could harness the power of the multiverse you could try every possible option in the design space and see which worked best. But that's crazy impractical, isn't it?
        #. Dr. Dean thinks an important skill for every software engineer is
           the ability to estimate the performance of alternative systems,
           using back of the envelope calculations, without having to build
           them.

        Numbers Everyone Should Know

        To evaluate design alternatives you first need a good sense of how long typical operations will take. Dr. Dean gives this list:

        #. L1 cache reference 0.5 ns
        #. Branch mispredict 5 ns
        #. L2 cache reference 7 ns
        #. Mutex lock/unlock 100 ns
        #. Main memory reference 100 ns
        #. Compress 1K bytes with Zippy 10,000 ns
        #. Send 2K bytes over 1 Gbps network 20,000 ns
        #. Read 1 MB sequentially from memory 250,000 ns
        #. Round trip within same datacenter 500,000 ns
        #. Disk seek 10,000,000 ns
        #. Read 1 MB sequentially from network 10,000,000 ns
        #. Read 1 MB sequentially from disk 30,000,000 ns
        #. Send packet CA->Netherlands->CA 150,000,000 ns

        Some things to notice:

        #. Notice the magnitude differences in the performance of different options.
        #. Datacenters are far away so it takes a long time to send anything between them.
        #. Memory is fast and disks are slow.
        #. By using a cheap compression algorithm a lot (by a factor of 2) of network bandwidth can be saved.
        #. Writes are 40 times more expensive than reads.
        #. Global shared data is expensive. This is a fundamental limitation of
           distributed systems. The lock contention in shared heavily written
           objects kills performance as transactions become serialized and
           slow.
        #. Architect for scaling writes.
        #. Optimize for low write contention.
        #. Optimize wide. Make writes as parallel as you can.

        Lessons Learned

        #. Back-of-the-envelope calculations allow you to take a look at
           different variations.
        #. When designing your system, these are the kind of calculations you
           should be doing over and over in your head.
        #. Know the back of the envelope numbers for the building blocks of
           your system. It's not good enough to just know the generic
           performance numbers, you have to know how your subsystems perform.
           You can't make decent back-of-the-envelope calculations if you don't
           know what's going on.
        #. Monitor and measure every part of your system so you can make these
           sorts of projections from real data.

        Read more

        #. [Numbers Everyone Should Know - High Scalability -](http://highscalability.com/numbers-everyone-should-know)
#. &#x2610; [JeffreyZhao/calibre-recipes](https://github.com/JeffreyZhao/calibre-recipes)
#. &#x2610; [Emacs 简易教程](http://www.perfect-is-shit.com/emacs-simple-tutorial.html)
#. &#x2610; [dirtysalt's homepage](http://dirlt.com/)
#. &#x2610; [为什么会出现LNK2005"符号已定义"的链接错误? - 歌谣在风中飘舞 - 博客频道 - CSDN.NET](http://blog.csdn.net/soloist/article/details/493238)
:   ?
    :   Read CSAPP! More!
#. &#x2610; [云风的 BLOG: 学习从历史开始](file:///E:/blogs/YunFeng/blog.codingnow.com/2007/12/history.html)
:   ?
    :   和上次一样，陈榕调侃了许多大公司，尤其是微软。但他更语重心长的讲了一个
        浅显的道理：微软的人并不比大家苯，当然也不比大家聪明。我们都能看到的问
        题，比如系统臃肿，软件结构不合理，等等，不可能微软自己人就意识不到。种
        种问题，绝对不能只用当局者迷，旁观者清来解释。

        我们只有从历史看过来，方能理解历史的局限性。做出那些错误决定的无奈放在
        大背景上大多会得到一个合理的解释。也只有这样，我们才可以领悟到未来正确
        的路。

        我有一个忘记从哪继承来的观点：无论我们想学什么，都应该从学习他的历史开
        始。极端点说，无论学什么，都是在学他的历史。

        长期以来，自己总结我在编程方面取得的成绩的缘因，最重要的一条就是无功利
        心的学习。

        并不是因为我需要用到什么领域的知识而去学习，而只是单纯的我想知道，我想
        弄明白。搞明白之后，到底有什么价值，可以创造多少财富，这是我从来不关心
        的。反而这样，知识给予的回馈是最大的。
#. &#x2610; [Issues · lifesinger/blog](https://github.com/lifesinger/blog/issues)
#. &#x2610; [id-Software/DOOM-3-BFG](https://github.com/id-Software/DOOM-3-BFG)
:   ?
    :   BFG, for "Big F***ing Gun"
#. &#x2610; C Programming: A Modern Approach
#. &#x2610; [mc-gulu/mooc_chinese_culture](https://github.com/mc-gulu/mooc_chinese_culture)
#. &#x2610; [The Chicken and the Pig - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/The_Chicken_and_the_Pig)
:   ?
    :   The business fable of The Chicken and the Pig is about commitment to a
        project or cause. When producing a dish made of ham and eggs, the pig
        provides the ham which requires his sacrifice and the chicken provides
        the eggs which are not difficult to produce. Thus the pig is really
        committed in that dish while the chicken is only involved, yet both are
        needed to produce the dish.
#. &#x2610; [技术管理猪鸡-1 开篇 « 4G spaces](http://blog.youxu.info/2015/05/17/tech-lead-1/)
:   ?
    :   #. 而刚入行的工程师，只能报告一些比较琐碎的成就。
        #. 做出 MapReduce 框架的和写琐碎 MapReduce 程序的工程师之间的差距并不是他们的工具和编程效率，也往往不是教育背景或者经验，而是他们各自的杠杆：所带领的团队。
        #. 运用常识
        #. 逐渐习得的管理技能
        #. 这不是入学考试，慢慢积累最省时省事。就像练习武术一样，最强的斗士绝不是看书最多或者理论最强的，而是训练时间最长的。
        #. 问题变了，不管以前多么神奇的管理方法都会变得一地鸡毛，因为管理方法不能脱离要解决的问题。
        #. 尽管写日记并不能直接解决技术管理上的难题，却打开了反思之门，也把许多事情前因后果连接起来。
#. &#x2610; [Alexander Pope - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Alexander_Pope)
#. &#x2610; [cloudwu/bpa](https://github.com/cloudwu/bpa)
#. &#x2610; [Wikipedia:Too long; didn't read - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Wikipedia:Too_long;_didn%27t_read)
#. &#x2610; [有什么道理是开始注重外表几年后才能悟出来的？ - Sophia 的回答 - 知乎](http://www.zhihu.com/question/31637529/answer/54173168)
:   ?
    :   你以为人与人之间颜值的区别就真的只是颜值的区别？你错了，只不过是自控力
        和执行力的差别，反映到了颜值上。
#. &#x2610; [理解，真是世界上最奢侈的事](http://www.douban.com/note/279511136/)
#. &#x2610; [科学网—导师为何不能帮助学生找工作呢？ - 鲍海飞的博文](http://blog.sciencenet.cn/blog-278905-944000.html)
#. &#x2610; [brian d foy style guide](http://www252.pair.com/comdog/style.html)
:   ?
    :   Any capitalization is incorrect unless each letter is capitalized.
        Title case is incorrect.

        Recasting the sentence avoids the problem.

        > "But I tell you, a cat needs a name that's particular,
        >
        > A name that's peculiar, and more dignified."
        >
        > -- Old Possum

        Read more

        #. [The Perl Review interviews brian d foy](http://www.theperlreview.com/Interviews/brian-d-foy-20050932.html)
        #. [On the difficult matter of names - A Roguish Chrestomathy](http://q-pheevr.livejournal.com/22047.html)
        #. [How I learned Perl](http://www.perlmonks.org/index.pl?node_id=385334)
        #. [brian d foy](http://www252.pair.com/comdog/)
#. &#x2611; [How to get the query string by javascript? - Stack Overflow](http://stackoverflow.com/questions/2907482/how-to-get-the-query-string-by-javascript)
:   ?
    :   ```javascript
        function getQueryStrings() {
          var assoc  = {};
          var decode = function (s) { return decodeURIComponent(s.replace(/\+/g, " ")); };
          var queryString = location.search.substring(1);
          var keyValues = queryString.split('&');

          for(var i in keyValues) {
            var key = keyValues[i].split('=');
            if (key.length > 1) {
              assoc[decode(key[0])] = decode(key[1]);
            }
          }

          return assoc;
        }

        // And use it like this...

        var qs = getQueryStrings();
        var myParam = qs["myParam"];
        ```

#. &#x2610; [常用 Git 命令清单 - Web Rube - 噜吧](http://www.webrube.com/git-web_rube/6962)
:   ?
    :   ![](http://www.webrube.com/pics/62/6962_1.png)
#. &#x2610; ["I Draw Pictures All Day" – Smashing Magazine](http://www.smashingmagazine.com/2012/08/i-draw-pictures-all-day/?goback=.gde_5057526_member_249720659)
:   ?
    :   > "So, you do nothing all day."

        > But for us designers and artists, drawing pictures all day is integral to our
        > process and to who we are as creative people, and despite the idea that those
        > who doodle waste time, we still get our work done. So, then, why are those of
        > us who draw pictures all day even tempted to think that someone who is
        > doodling or drawing pictures in a meeting or lecture is not paying attention?

        It turns out that the simple act of scribbling on a page helps us think, remember and learn.

        But the author Sunni Brown offers my favorite definition of "doodle" in her TED talk, "Doodlers, unite!":

        > “In the 17th century, a doodle was a simpleton or a fool, as in “Yankee
        > Doodle.” In the 18th century, it became a verb, and it meant to swindle or
        > ridicule or to make fun of someone. In the 19th century, it was a corrupt
        > politician. And today, we have what is perhaps our most offensive definition,
        > at least to me, which is the following: “To doodle officially means to
        > dawdle, to dilly dally, to monkey around, to make meaningless marks, to do
        > something of little value, substance or import and,” my personal favorite, “
        > to do nothing.” No wonder people are averse to doodling at work. Doing
        > nothing at work is akin to masturbating at work. It’s totally inappropriate.”

        37% of the population are visual learners.

        The doodlers recalled 29% more information.

        > “Doodling is really to make spontaneous marks to help yourself think. That is
        > why millions of people doodle. Here’s another interesting truth about the
        > doodle: People who doodle when they’re exposed to verbal information retain
        > more of that information than their non-doodling counterparts. We think
        > doodling is something you do when you lose focus, but in reality, it is a
        > preemptive measure to stop you from losing focus. Additionally, it has a
        > profound effect on creative problem-solving and deep information processing.”

        #. &#x2611; [Volvo 找来四岁女孩来遥控疯狂驾驶一辆大货车！](http://cn.engadget.com/2015/12/05/4-year-old-remote-drive-dump-truck/?ncid=rss_truncated)
        #. &#x2610; [cmd - Windows equivalent to UNIX pwd - Stack Overflow](http://stackoverflow.com/questions/921741/windows-equivalent-to-unix-pwd)

        It is cd for "current directory".

        this prints it in the console

        echo %cd%

        or paste this command in CMD, then you'll have pwd:

        (echo @echo off
        echo echo ^%cd^%) > C:\WINDOWS\pwd.bat
#. &#x2610; [Posts ‐ apple4us](http://apple4us.com/post/)
#. &#x2610;

[如何保证网页的字体在各平台都尽量显示为最高质量的黑体？ - 平面设计 - 知乎](http://www.zhihu.com/question/19911793)

#. &#x2610; [Larry Wall 专访——语言学、Perl 6 的设计和发布 - 简书](http://www.jianshu.com/p/b920a1a469b2)
:   ?
    :   LW：到现在为止，Python 社区在低阶方面的教学工作做得比我们要好。我们也很想在这一方面做点什么，这也是我们有蝴蝶 logo 的部分原因，以此来吸引七岁大小的女孩子！

        ![Perl 6 : Camelia](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Camelia.svg/640px-Camelia.svg.png)
#. &#x2610; [Vim - 知乎专栏](http://zhuanlan.zhihu.com/hack-vim)
:   ?
    :   为什么说 Vim 写代码快？ 前提你累死过3次，成功配置了Vim。那么开始神奇的Vim之旅。你就发现。

        1. 你删代码比队友快 “first blood”
        2. 自动补全比队友快
        3. 在20个G的文件堆里定位代码各种秒杀你队友
        4. 在vim中完成各种shell ， 秒杀你队友 “Killing spree”!
        5. 优雅的更新升级， 删除 Vim插件（前提 Vundle） “Dominating”!
        6. 随性的自定义快捷键，完全属于你自己的风格， 一个配置文件随身带着走。或者压缩Vim文件包带着走， 想去哪就去哪，不用等你队友带节奏。 Unstoppable！
        7. 你队友还在用鼠标？那你已经进化了 。 Wicked Sick！！
        8. 什么？ 开始用 Vim Markdown 来写文档了？ 我草，你已经超神了！！ God Like！！！
        9. 你已经离不开Vim了。 从最开始被各种折腾到想要砸键盘的你， 如今你已经爱上他了。 aM-m-m-m....（重复8次）Monster Kill 10. 你注定和 Vim 过完这一生！......Holy Shit
#. &#x2610; [Web 中文字体应用指南 » Topics » Ruby China](https://ruby-china.org/topics/14005)
#. &#x2610; [如何评价坂井泉水？ - 你如何评价 X - 知乎](http://www.zhihu.com/question/22177383)
:   ?
    :   后来，我当然知道了它们原来是如此的巧合，以至于我对于这两首歌都有着特殊
        的喜爱。它们有着同样的作曲者织田哲郎，同样的作词者坂井泉水，同样的演唱
        者FIELD OF VIEW。

        直到现在，听回那些经典动画的主题曲或者片尾曲，还能深深感受到那股浓浓的
        Being系摇滚味道，那是一种令人精神振奋、又流畅悦耳的熟悉旋律，那是一种已
        经融入血液的童年的记忆。

        词曲兼修，才华横溢，歌声清新，外形亲切，是我对坂井泉水的评价。但最令我
        喜爱的，是她催人向上的风格和低调做事的态度，她拥有令人艳羡的外貌，却不
        以此为噱头，她拥有令人难忘的声线，却精于歌词的创作。遍观日本乃至中国乐
        坛，都很难找到一位如此完美的歌手。

        『What a beautiful moment』，ZARD第一次也是最后一次演唱会，2004年将近40
        岁的坂井泉水依然温婉动人，如今看来，令人感叹生命无常

        ZARD-（ZA-DO） 坂井泉水（Lzumi Sakai）ZARD的歌，声线独特，歌词优美，总
        是给人向上的力量，她总是微笑的，很有阳光气的一个女孩，很少化妆，她的音
        乐成就除了连续九张百万级专辑轰动日本乃至世界歌坛外，更多的应该以音乐的
        形式告诉人们要勇敢面对生活的坎坷，永不认输的真理，她是影响日本一个时代
        的歌手。

        她最红的时段是上世纪九十年代，那个时代也是日式摇滚的崛起与顶峰，而在这
        巅峰的时代里，zard作为日本第一个女子摇滚乐队出道，并在唱片销量史上创下
        惊人的记录，就其影响来说，可谓是巨大而不可磨灭的。那个时代的摇滚歌手，
        B'z也好Zard也好，都有一种奠基人的感觉，甚至到了现在可以说是一种代表，象
        征。曾经有个日本妹子（初中生）问我最喜欢的歌手，我说是Zard。她忽然很长
        地“哦～”了一声。对她来说，Zard已经是旧事物了，尽管不了解，但她也有所耳
        闻，并且报以极大的尊敬。这也能显示Zard在日本的地位和影响吧。就像至今都
        有各处会播放邓丽君的歌，问起美国人卡朋特是谁，也没有不认识的。Zard的負
        けないで还被编入了日本学校的音乐教材里，311日本大地震时，电台里点播量第
        一名的依旧是zard的負けないで，而那时候距Zard去世已有4年之久。要说日本女
        子摇滚的代表是谁？那一定会有Zard坂井泉水的名字。

        Refs

        #. [如何从专业角度评价一下zard（坂井泉水）的音乐？ - 动漫 - 知乎](http://www.zhihu.com/question/26574738)

        Read more

        #. [ZARD!!](http://www.douban.com/doulist/537743/?start=25&sort=time&sub_type=)
#. &#x2610; [2B Lab欢乐多-死线年年有年年都很多 - 与食巨近贱多食广地蹦跶在不列颠 - 知乎专栏](http://zhuanlan.zhihu.com/ciciatc/19589985)
#. &#x2611; [Matrix67 水平怎么样？ - 吴告于的回答 - 知乎](http://www.zhihu.com/question/20823906/answer/16329313)
:   ?
    :   如果一个人踢球，看起来还不错，有旁边的人就很好奇，问：他踢球的水平怎么
        样，能踢世界杯吗？另一个看客鄙夷地说，他根本和马拉多纳不在一个档次，连
        贝克汉姆都说他比不过马拉多纳，这小子就更不用说了。然后看客们就很看不起
        踢球的那位，认为他踢的不是真正的球。。。

        为毛 我们发展出这种恶心的逻辑趣味？
#. &#x2610; [Web设计开发资源分享 | Meditic](http://meditic.com/web-design-development-resources)
#. &#x2611; [苹果电脑/Mac OS及其它 | Meditic](http://meditic.com/explore-your-mac-os)
:   ?
    :   看看 QQ 的苹果版的设计，就能理解两个系统的天差地别。再流氓的软件，到了苹
        果下都得重新设计过，而且绝对不敢做弹窗广告，这不是偶然的。
#. &#x2611; [碰巧而已 | Meditic](http://meditic.com/you-just-dont-belong-to-anyone)
:   ?
    :   人们喜欢把自己套在一个群体里，以获取安全感。如果自己比不过别人，就可以
        去拿这个群体和别人比。比如北大的很多学生，聚会的时候，跳舞远不如海淀走
        读学院的学生，北大那帮人必定会安慰自己：“我可是北大的学生啊”。是啊，他
        的确来自一个破校，可是，这无法改变你跳舞不如他的事实。在跳舞界，你就是
        个 loser。在现实生活中，我发现越是喜欢给自己带帽子的人，越是无能。真正牛
        比的人，绝不需要靠“我来自国际知名的 xx 公司”这种低劣的包装来显示自己的牛
        比。
#. &#x2611; [如何降低用户的价格敏感度 | Meditic](http://meditic.com/how-to-cut-down-price-sensitivity-for-users)
#. &#x2611; [关于/meditic是谁 | Meditic](http://meditic.com/about)
:   “非常无聊”，深得我心。
    :   不生病、不休息、也不娱乐，除了吃喝拉撒，几乎都在工作，看起来好像是工作狂，
        其实我是生活狂。对我来说，吃喝拉撒不是生活，那只是维持肉体存活的手段，
        **非常无聊**；从不断的工作和作品中获得乐趣，才是我的生活。
#. &#x2611; [我有个朋友，做图源的，最近被捕了 - 文章](http://weibo.com/p/1001603915337371370351)
:   ?
    :   所以当我知道原来他是图源帝的时候，我非常平静，只表示了一个“噢~”。**这就像
        你知道一个人的工作是死刑执行人的时候，你不会对这份工作表现出想要参与其
        中的兴奋，也不会否认这份工作的必要性表现出不齿于疏远一样。**

        我们一起去 Comic market，他能把企业区各个展区的出展商，从创设经历到员工
        八卦到巅峰作品到黑历史从头到尾吐个遍。我们一起去卡拉 OK，我一首炉心溶解
        ，他回敬我一首 Melt。我唱一首 1 期 OP，他回敬我一首 2 期 ED。我说我是御
        姐控，他说太俗了，老子是伪娘控。

        有一次，我看到图源帝在贴吧回应那些歇斯底里的催更党，他说，你要知道，中
        国汉化组给的那点破钱，加个 0 都算不上我现在挣的钱的零头。国外的论坛啥的我
        也看，就 TM 中国的这儿一天到晚有人催更，**还一个个都跟自己是大爷似的**
        。我说，你其实已经完全不需要给中国提供图源了阿，甭搭理他们呗。图源帝语
        重心长地跟我说：“唉，毕竟咱中国人这么着也不能汉奸成那样阿。”

        总之，这就是我认识的图源帝。一个死宅，伪娘控，ACG 通吃，但仅限 2 次元，
        AKB48 什么的反而非常生疏。一个技术宅，对设备，质量，精益求精，程序，音
        乐，图像加工，都是精通领域。一个里世界的国际大咖，引领图源“事业”的先锋
        ，言语畅通，八面玲珑，在图源这个稳赔不赚的事业上做到发家致富。一个中国
        人，会在贴吧吐槽，在 B 站传视频。冒着风险，顶着伸手党的炮火，也不忘在自己
        最困难的时候赞助过自己的同胞。

#. &#x2610; [【社长presents】电子书-LOVE-ZARD字幕社](http://lovezardfansub.lofter.com/post/25be0f_7feda66)
:   ?
    :   ```plain
        ZARD 是？
        ZARD，是一个传奇。
        ZARD = 坂井泉水？
        其实可以这么说。
        ZARD不是最红的，
        但是，日本大街小巷的人们，
        几乎都知道 ZARD。
        就算不知道 ZARD，
        也知道那首鼓励了无数人的《負けないで》。
        ZARD 一直低调的发片，几乎零宣传。
        却在泉水小姐逝世之后，仍然保持着日本 CD 总销量第八的记录。
        泉水小姐不在了，但是，她付出自己的一生打造的 ZARD，
        永远是个传奇。
        ```

#. &#x2610; [Developer Toolbar - Firefox Developer Tools | MDN](https://developer.mozilla.org/en-US/docs/Tools/GCLI)

#. &#x2610; [程序人生-代码疯子的技术博客-Www.ProgramLife.Net](http://www.programlife.net/)
#. &#x2610; [如何在windows下编译Chrome源代码 - namelcx的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/namelcx/article/details/5971159)
#. &#x2611; [为什么特别成功的人喜欢每天都穿一样的衣服？ - 简书](http://www.jianshu.com/p/7730696482f9)
:   ? <!-- 我就不专门点出“成功”这两个字并不让我喜欢了。除了这一点本文很“深得我心”！ -->
    :   Ego-Depletion

        #. 我真的很幸运，每天醒来都能为全球逾 10 亿用户服务。如果我把精力花在一
            些愚蠢、轻率的事情上，我会觉得我没有做好我的工作。
        #. 主要是因为这样**很方便**，而且还能表达一种个人风格。
        #. 每天吃这些食物可能会让别人觉得有点单调，但对我来说并不在意这样。
        #. 常常看着手机纠结几分钟甚至十几分钟，直到大脑疲惫混乱，精疲力尽的时候，
            匆匆选一样，物质的丰富和选项的繁多常常让我们无所适从。
        #. 这些日常生活中的琐碎，无关痛痒，却消磨了我们的资源。但其实如果午餐就
            点小组饭，反正菜品数量有限每天又不重样，随便点哪个菜，都是自己喜欢
            或者可以接受的，真的可以节约好多时间和精力。
        #. 虽然每天吃同一家店的东西看似有些枯燥也缺乏美感，但人生已经足够复杂，
            不要再让日常的琐碎来消磨我们的幸福啦。简化无关紧要的选择，把这些时
            间花在重要的决策上，把精力集中在我们真正喜欢的人和事上，我们的生活
            将会不一样。

        #. 让我们简单点，再简单点。
        #. Simplicity is the ultimate sophistication - Da Vinci
        #. Less is more.

        **Ego depletion** refers to the idea that self-control or willpower
        draw upon **a limited pool of mental resources that can be used up.
        When the energy for mental activity is low, **self-control is typically
        impaired**(受损的), which would be considered **a state of ego
        depletion**. In particular, experiencing a state of ego depletion
        impairs the ability to control oneself later on. A depleting task
        requiring self-control can have a hindering effect on a subsequent
        self-control task, even if the tasks are seemingly unrelated.
        Self-control plays a valuable role in the functioning of the self on
        both individualistic and interpersonal levels. Ego depletion is
        therefore a critical topic in experimental psychology, specifically
        social psychology, because it is a mechanism that contributes to the
        understanding of the processes of human self-control.

        Refs

        #. &#x2611; [Ego depletion - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Ego_depletion)

[JavaScript: How to Change CSS](http://xahlee.info/js/css_change.html)

:   ```html
    <p>
    <span id="id13959">Color Me</span>
    <button id="b1">RED</button>
    <button id="b2">BLUE</button>
    </p>
    ```

    ```javascript
    var xx = document.getElementById( "id13959" );
    var button1 = document.getElementById( "b1" );
    var button2 = document.getElementById( "b2" );

    button1.addEventListener( "click", function (){
        xx.style.color="red";
    }, false );
    button2.addEventListener( "click", function (){
        xx.style.color="blue";
    }, false );
    ```

    <div style="font-size:80%">

    | CSS Syntax | JavaScript DOM Syntax |
    | ---------- | --------------------- |
    | `padding:1em`{.css} | `ele.style.padding="1em"`{.javascript} |
    | `border:solid thin red`{.css} | `ele.style.border="solid thin red"`{.javascript} |
    | `font-family:"DejaVu Sans",sans-serif`{.css} | `ele.style.fontFamily='"DejaVu Sans",sans-serif'`{.javascript} |

    </div>

    CSS's pseudo selectors (`a:visited`{.css}, `a:link`{.css}, `div.nav:before`{.css}, `div.nav:first-child`{.css}) cannot be scripted.

#. &#x2611; [计算的威力，智慧的传奇](http://history.programmer.com.cn/1903/)
#. &#x2611; [云计算技术背后的那些天才程序员：FFmpeg的作者法布里斯·贝拉 - 博客 - 伯乐在线](http://blog.jobbole.com/69582/)
#. &#x2610; [图灵社区 : 阅读 : 连城：大数据场景下的“搔到痒处”和“戳到痛处”（图灵访谈）](http://www.ituring.com.cn/article/179495)
#. &#x2611; [色情片看得越多的人越自恋？ - Article - JIJITANG](http://www.jijitang.com/article/540faac920296a4535b9370c)
#. &#x2610; [你写论文时发现了哪些神网站？ - 曲晓峰的回答 - 知乎](http://www.zhihu.com/question/35931336/answer/68972601)
:   ?
    :   ?
        http://Overleaf.com (http://ShareLaTeX.com) + http://Lucidchart.com （http://Gliffy.com） + http://Mendeley.com

#. &#x2610; [Real World Haskell](http://book.realworldhaskell.org/read/index.html)

#. &#x2610; [Download · coolwanglu/pdf2htmlEX Wiki](https://github.com/coolwanglu/pdf2htmlEX/wiki/Download)
:   ?
    :   Run from Docker container is the easiest way to convert pdf file to html, which

        you don't need knowledge on how to compile and install `pdf2htmlEX`{.bash}.

        ```bash
        docker run -ti --rm \
            -v ~/pdf:/pdf bwits/pdf2htmlex pdf2htmlEX \
            --zoom 1.3 test.pdf
        ```

#. &#x2610; [NW.js & Electron Compared - TangibleJS](http://tangiblejs.com/posts/nw-js-electron-compared)
#. &#x2611; [What are all the Jeff Dean facts? - Quora](https://www.quora.com/What-are-all-the-Jeff-Dean-facts)
:   ?
    :   #. 当 Richard Stallman 听说 Jeff Dean 的自传专属 Kindle 平台，他就去买
            了 Kindle。
        #. Jeff 来面试谷歌时，被问到等式 P=NP 成立的条件，他回答，P=0 或者 N=1
            时成立。然后在面试官哈哈大笑的时候，他看了一眼谷歌公有证书，就直接
            在白板上写出了相应的私钥。
        #. 在 2000 年末的时候，Jeff Dean 写代码的速度突然增长了 40 倍，原因是他
            把自己的键盘升级到了 USB 2.0。
        #. When Jeff gives a seminar at Stanford, it's so crowded Don Knuth has
            to sit on the floor. (TRUE)

        Refs

        #. &#x2611; [趣文：谷歌大牛 Jeff Dean 的那些“惊人真相” - 博客 - 伯乐在线](http://blog.jobbole.com/51607/)
        #. &#x2611; [Jeff Dean_百度百科](http://baike.baidu.com/link?url=ZWotR3Ro10Wai8ASDOL0aSITl9dnaI4bFNeLo_aXFUaqVdqgztiRb5mnuIDaYj9E0eCuJ5fVIrGxNhQkH35IoK)

#. &#x2610; [高级语言写代码时就能够想到对应的汇编代码是怎样一种体验？ - Milo Yip 的回答 - 知乎](http://www.zhihu.com/question/38330356/answer/75939138)
:   ?
    :   最不能忍的是，编译器（主要是较老的版本）不能生成我想要的指令，多了一些
        无意义的垃圾。之前做 SIMD 库的时候用 intrinsics（固有的；本质的）常会出
        现，要用各种 hacks 去调教编译器。我曾说过，脚本语言如 JavaScript 并不适
        合学习计算机科学，因为中间有太多黑盒，不能直觉地知道代码到底会怎样执行。

        > 啥叫差距。。。有人拿着编译器实现不了需求，有人却担心编译器干不好活

#. &#x2610; [Regular expression - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Regular_expression)
:   ?
    :   &nbsp;

#. &#x2611; [MFC、WTL、WPF、wxWidgets、Qt、GTK 各有什么特点？ - 姚冬的回答 - 知乎](http://www.zhihu.com/question/23480014/answer/24809080)
:   ?
    :   Qt，虽然它也是上世纪 90 年代出现的，但是它在 21 世纪有了长足的进步。应
        该说它的起点就比较高，一开始就定位跨平台，而且不满足于简单封装系统 API，
        而是要自己创造出一套完整的 API 和框架，**甚至要代替系统 API**，所以不仅
        仅是做 UI，而是涉及到了 APP 开发所用到的所有东西，包括网络，数据库，多媒
        体，脚本引擎等。`signal/slot` 是 Qt 发明的，这是事件通知模型里 C++ 语言
        的最佳实现了，甚至我都觉得这该写进 C++ 标准，估计 C++ 委员会的老顽固们
        是从不写 GUI 的。早期的 QT 也是没有DirectUI 的概念的，每一个 QWidget 都
        对应一个原生窗口，从 Qt4.4 开始，只有顶层 QWidget 才是原生窗口，而 Child
        Widget 是 Alien Widget，只是个抽象的图层不对应原生窗口，这就实现了
        DirectUI 的概念，很多图形效果也就变得可能了，比如窗口层叠透明效果。在
        4.8 后实现了 QPA(Qt Platform Abstraction)，这就使移植 Qt 变得很容易，目
        前 **Qt 是支持平台最多的框架没有之一**。由于早期授权的问题，Qt 对于开源
        社区不是很友好，导致推广不太顺利，直到它改成了 LGPL 方式，如果 Qt 能早点
        想开了，恐怕就没有 wxWidgets 的生存空间了。Qt 的缺点也是有的，就是太大，
        不过可以自己剪裁，我可以把 QT 库剪裁到发行包压缩后 2.5 MB。

#. &#x2611; [怀旧梦想家的程序世界 - Living Computer Museum](http://www.douban.com/note/429783660/)
:   ?
    :
        这些书对我“影响最大”，但未必因为它本身有多好，更多的是一种机缘巧合：
        它碰巧出现在那个时候，带我走进一个**全新的世界**。

        我是后悔，但不是因为没去毕业礼，而是因为那个时候确实没能给自己一个交代：
        四年的学习到最后竟没有那种一直期待的 - 沿着曲线一直攀越山顶的感觉。
        **什么嘛，就这么毕业了。**

        恐怕是人类的天性吧，因手里的工具而进化，也被手里的工具所限制。我相信这
        就是美国人热衷团队合作，也热衷跨学科团队的原因。立场的不同可能导致分歧
        吵架，也可能导致下一个 big bang。以前我总幻想做一个独立的 freelancer，
        但现在不这么想了。经历了和不同背景的人合作去完成一些完全超越自身能力和
        眼界的事情以后，我想这几万刀也算没白花。

        > "Oh god, it's starting to rain."
        >
        > "That's okay. I don't mind getting wet. Paris is the most beautiful in the rain."
        >
        > "Oh what a thing to say. I couldn't agree more."

        旧的问题还会有新的角度，**旧的知识还会有更深层的理解**，不能被自己的自大冲昏了脑袋。

        Refs

        #. &#x2611; [十本书](http://www.douban.com/note/417394409/)
        #. &#x2611; [写在毕业 —— At a loose end](http://www.douban.com/note/410336666/)
        #. &#x2611; [. (午夜巴黎 影评)](http://movie.douban.com/review/5744055/)
        #. &#x2611; [dive into something](http://www.douban.com/note/307265481/)

#. &#x2610; [LaTeX/Macros - Wikibooks, open books for an open world](https://en.wikibooks.org/wiki/LaTeX/Macros)
#. &#x2611; [Code Simplicity » The Singular Secret of the Rockstar Programmer](http://www.codesimplicity.com/post/the-singular-secret-of-the-rockstar-programmer/)
:   fair not bad.
    :   There is only one, singular fact:

        > **The better you understand what you are doing, the better you will do it.**

        **Rockstar programmers** understand what they are doing far, far better
        than average or mediocre programmers.

        I won’t lie to you–it sometimes is a long path. But it is worthwhile.
        And at the end of it, you may find yourself suddenly the amazing senior
        engineer who everyone comes to for advice.

#. &#x2610; [Wikipedia:Stub - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Wikipedia:Stub)
#. &#x2611; [pandoc中文pdf转换攻略 - 一个架构士的思考与沉淀之地](http://afoo.me/posts/2013-07-10-how-to-transform-chinese-pdf-with-pandoc.html)
:   good.
    :   ```makefile
        SOURCES := $(wildcard *.md)
        # path substitute
        OBJECTS := $(patsubst %.md, %.html, $(wildcard *.md))
        OBJECTS_PDF := $(patsubst %.md, %.pdf, $(wildcard *.md))
        ```

        `find ./posts -name '*.md' -exec pandoc {} -s -S --toc -o {}.html \;`{.bash}

        In Vim: `let $EDITOR="notepad++"`, `:make m`.

        ```bash
        pandoc pandoc.markdown -t html5 -o index.html \
                --toc --smart --template=pm-template
        pandoc pandoc.markdown -o pandoc-zhtw.pdf \
                --toc --smart --template=pm-template \
                --latex-engine=xelatex -V mainfont='LiHei Pro'

        # add style to table
        sed -i '' \
            's/<table>/<table class="table table-bordered table-condensed">/' \
            index.html
        ```

        CMD: `date /t`{.bash}

        `fc-list`{.bash}

        ```bash
        pandoc dist/trpl-2015-05-15.md \
            --smart --normalize --standalone --self-contained \
            --highlight-style=tango --chapters --table-of-contents \
            --variable papersize='a4paper' --variable monofont='Source Sans Pro' \
            --template=lib/template.tex --latex-engine=latex \
            --from=${MARKDOWNFORMAT} \
            --to=latex --output=dist/trpl-2015-05-15-a4.pdf
        ```

        `${MARKDOWNFORMAT}`{.bash}

        :   ```plain
            markdown
            grid_tables
            pipe_tables
            raw_html
            implicit_figures
            footnotes
            intraword_underscores
            auto_identifiers-inline_code_attributes
            ```

        ```bash
        #!/bin/bash

        SYEAR=2005
        EYEAR=`date "+%Y"`

        POSTPATH=~/Projects/octopress/source/_posts/

        echo
        echo "YEAR      File #    Word Count"
        echo "=============================="
        for (( i=$SYEAR; i<=$EYEAR; i=i+1 ))
        do
            NUMFILES=`ls -l $POSTPATH$i* 2> /dev/null | wc -l`
            NUMWORDS="       0"
            test $NUMFILES != "0" && NUMWORDS=`wc -m $POSTPATH$i-* | tail -n 1 | sed 's/ total//'`
            echo "$i    $NUMFILES      $NUMWORDS"
        done
        echo "=============================="
        NUMFILES=`ls -1 $POSTPATH* | wc -l`
        NUMWORDS=`wc -m $POSTPATH* | tail -n 1 | sed 's/ total//'`
        echo "Total   $NUMFILES      $NUMWORDS"
        echo
        ```

        ```bash
        #!/bin/bash

        for var in "$@"
        do
            perl -pi -e 's/\r\n/\n/g' $var
        done
        ```

        Read more

        #. &#x2610; [博客生成脚本](http://www.synbe.com/index/posts/html/help-code/sh.md.html)
        #. &#x2610; [pages/convert.sh at gh-pages · tzengyuxio/pages](https://github.com/tzengyuxio/pages/blob/gh-pages/pandoc/convert.sh)

#. &#x2611; [- 一个架构士的思考与沉淀之地](http://afoo.me/favorite.html)
:   good.
    :   个人感觉，真正的黑客可能用 Mac，但一定不会用 Mac Pro。通常都是 11' 的 Macbook Air。

        #. 对于我现在的工作来说，11 寸的 air 可以很好的满足需求， 轻便性是我现在
            追求的主要特性， 尤其是现在很多是文案性的工作。
        #. Windows 下有 visio，Mac 下其实有 OmniGraffle, 不过， 后者实在 tnd
            太贵了，某一段时间又特别装逼要用正版，就只好找其它的 alternatives， 辗
            转反侧良久， 最终定下来使用这款 yEd。
        #. plantuml, 其它图都使用 yed 搞定了， 只有 sequence 图有点儿不太好画， 所
            以， 选来选去找到这个小东东，bravo~

#. &#x2610; [CodeMirror](http://codemirror.net/)
#. &#x2610; [CSS3动画详解 | BeiYuu.com](http://beiyuu.com/css3-animation/)
#. &#x2611; [又见C++诡异问题 | Vimer的程序世界](http://www.vimer.cn/2011/09/%e5%8f%88%e8%a7%81c%e8%af%a1%e5%bc%82%e9%97%ae%e9%a2%98.html)
:   terrible shit.
    :   `Class a()`{.cpp} &ne; `Class a`{.cpp}

#. &#x2611; [[译] Vim 的蔓延 - 依云's Blog](http://lilydjwg.is-programmer.com/2015/11/16/vim-creep.188665.html)
:   良心编辑器，编辑器之神。
    :   你微笑了一下，准备说出那个改变了你的一生的词。那个词，如果你的同事也选
        择追随的话，**他会掉进同样的兔子洞**，进入一个充满无限可能的无限组合的
        世界，那些组合产生出他之前只能在最疯狂的梦中见到的极致高效。他让你记起
        多年以前那个昏暗的计算机实验室里的自己。带着些许兴奋，你轻轻地说出那个
        词。

        ```vimrc
        " auto reload
        set autoread

        " ?
        set so=7

        " turn on auto complete list
        set wildmenu

        " Ignore compiled files
        set wildignore=*.o,*~,*.pyc

        "Always show current position
        set ruler

        set cmdheight=2                " Height of the command bar

        set hid                        " A buffer becomes hidden when it is abandoned

        set backspace=eol,start,indent " 自动 backspace 到上一行
        set whichwrap+=<,>,h,l

        set ignorecase                 " Ignore case when searching
        set smartcase                  " When searching try to be smart about cases

        set hlsearch                   " Highlight search results

        set incsearch                  " Makes search act like search in modern browsers
        set lazyredraw                 " Don't redraw while executing macros (good performance config)
        set magic                      " For regular expressions turn magic on
        set showmatch                  " Show matching brackets when text indicator is over them
        set mat=2                      " How many tenths of a second to blink when matching brackets
        set noerrorbells               " No annoying sound on errors
        set novisualbell
        set t_vb=
        set tm=500

        syntax enable                  " Enable syntax highlighting
        set guioptions=""
        set encoding=utf8
        set ffs=unix,dos,mac           " Use Unix as the standard file type
        set nobackup                   " Turn backup off, since most stuff is in SVN, git et.c anyway...
        set nowb
        set noswapfile
        set expandtab                  " Use spaces instead of tabs

        set smarttab                   " Makefile 里插入真 tab
        set shiftwidth=4
        set tabstop=4
        set lbr                        " Linebreak on 500 characters
        set tw=80
        set ai                         " Auto indent
        set si                         " Smart indent
        set wrap                       " Wrap lines
        " Visual mode pressing * or # searches for the current selection
        " map j gj
        " map k gk
        " map <space> /
        " map <c-space> ?              " Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
        map <C-j> <C-W>j               " Smart way to move between windows
        map <C-k> <C-W>k
        map <C-h> <C-W>h
        map <C-l> <C-W>l
        map <leader>ba :1,1000 bd!<cr> " Close all the buffers
        map <leader>tn :tabnew<cr>     " Useful mappings for managing tabs
        map <leader>to :tabonly<cr>
        map <leader>tc :tabclose<cr>
        map <leader>tm :tabmove
        " tabedit <file>
        map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
        map <leader>cd :cd %:p:h<cr>:pwd<cr>
        "g`"                           " Return to last edit position when opening files
        set viminfo^=%
        set laststatus=2               " Always show the status line

        func! DeleteTrailingWS()
          exe "normal mz"
          %s/\s\+$//ge
          exe "normal `z"
        endfunc
        autocmd BufWrite *.py :call DeleteTrailingWS()
        autocmd BufWrite *.coffee :call DeleteTrailingWS()

        " vimgrep???
        map <leader>q :e ~/buffer<cr>

        " ?
        function! CmdLine(str)
            exe "menu Foo.Bar :" . a:str
            emenu Foo.Bar
            unmenu Foo
        endfunction

        function! VisualSelection(direction) range
            let l:saved_reg = @"
            execute "normal! vgvy"

            let l:pattern = escape(@", '\\/.*$^~[]')
            let l:pattern = substitute(l:pattern, "\n$", "", "")

            if a:direction == 'b'
                execute "normal ?" . l:pattern . "^M"
            elseif a:direction == 'gv'
                call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
            elseif a:direction == 'replace'
                call CmdLine("%s" . '/'. l:pattern . '/')
            elseif a:direction == 'f'
                execute "normal /" . l:pattern . "^M"
            endif

            let @/ = l:pattern
            let @" = l:saved_reg
        endfunction

        " Super useful! From an idea by Michael Naumann
        vnoremap <silent> * :call VisualSelection('f')<CR>
        vnoremap <silent> # :call VisualSelection('b')<CR>
        vnoremap <silent> gv :call VisualSelection('gv')<CR>
        vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>
        ```

        ```
            %           current file name
            #           alternate file name
            #n          alternate file name n
            <cfile>     file name under the cursor
            <afile>     autocmd file name
            <abuf>      autocmd buffer number (as a String!)
            <amatch>    autocmd matched name
            <sfile>     sourced script file name
            <slnum>     sourced script file line number
            <cword>     word under the cursor
            <cWORD>     WORD under the cursor
            <client>    the {clientid} of the last received

        Modifiers:
            :p          expand to full path
            :h          head (last path component removed)
            :t          tail (last path component only)
            :r          root (one extension removed)
            :e          extension only
        ```

        Vim more

        #. &#x2611; [The ultimate Vim configuration - vimrc](http://amix.dk/vim/vimrc.html)
        #. &#x2610; [dotvim/vimrc at master · lilydjwg/dotvim](https://github.com/lilydjwg/dotvim/blob/master/vimrc)
        #. &#x2611; [Vim(gVim)对排序的妙用 | Vimer的程序世界](http://www.vimer.cn/2012/03/vimgvim%e5%af%b9%e6%8e%92%e5%ba%8f%e7%9a%84%e5%a6%99%e7%94%a8.html)
        #. &#x2611; [让Vim(gvim)支持C++STL库的自动补全 | Vimer的程序世界](http://www.vimer.cn/2010/01/%e8%ae%a9vimgvim%e6%94%af%e6%8c%81%e8%a1%a5%e5%85%a8cstl%e5%ba%93.html)
        #. &#x2611; [Vim Commands Cheat Sheet](http://bullium.com/support/vim.html)

[Differential (mechanical device) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Differential_(mechanical_device))

:   A differential is a particular type of simple planetary gear train that
    has the property that the angular velocity of its carrier is the
    average of the angular velocities of its sun and annular gears.

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Sprocket35b.jpg/170px-Sprocket35b.jpg)

    ![Hypoid gear pair that connects an automotive drive shaft to a differential.](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Sprocket35b.jpg/170px-Sprocket35b.jpg)

    ![Input torque is applied to the ring gear (blue), which turns the
      entire carrier (blue). The carrier is connected to both sun gears
      (red and yellow) only through the planet gear (green). Torque is
      transmitted to the sun gears through the planet gear. The planet
      gear revolves around the axis of the carrier, driving the sun
      gears. If the resistance at both wheels is equal, the planet gear
      revolves without spinning about its own axis, and both wheels
      turn at the same rate.](https://upload.wikimedia.org/wikipedia/commons/6/61/Differential_free.png)

    See also

      - [差速器是怎样工作的(Around the Corner (1937))](http://v.youku.com/v_show/id_XNDkwMTg0MDI0.html)

[Learn Vimscript the Hard Way](http://learnvimscriptthehardway.stevelosh.com/)

[Best of VIM Tips, gVIM's Key Features zzapper](http://www.rayninfo.co.uk/vimtips.html)

[visual studio 2010 - CMake configuring fails. "cl.exe is not able to compile a simple test program" - Stack Overflow](http://stackoverflow.com/questions/14590947/cmake-configuring-fails-cl-exe-is-not-able-to-compile-a-simple-test-program)

:   **Downgrade .NET to 4.0**

    See also

    - [cmake错误：C编译器不能简单的编译一个测试程序 - 开源中国社区](http://www.oschina.net/question/1378817_128323)
    - [dcmtk - CMake: "cl.exe not able to compile a simple test program" - Stack Overflow](http://stackoverflow.com/questions/22392976/cmake-cl-exe-not-able-to-compile-a-simple-test-program)

[turing_machine/buildall.sh at master · gigix/turing_machine](https://github.com/gigix/turing_machine/blob/master/clojure/buildall.sh)

:   `pushd`{.bash} & `popd`{.bash}

    ```bash
    ROOT_DIR=$(dirname $0)

    pushd $ROOT_DIR/domain && \
    ./build.sh &&
    popd && \
    \
    pushd $ROOT_DIR/web && \
    ./build.sh
    ```

[Content Folding | CSS-Tricks](https://css-tricks.com/content-folding/)

[Styling `<hr>`{.html} with CSS](http://www.sovavsiti.cz/css/hr.html)

:   ```html
    <div class="hr"><hr /></div>
    ```

    ```css
    div.hr {
        height: 15px;
        background: #fff url(hr1.gif) no-repeat scroll center;
    }

    div.hr hr {
        display: none;
    }
    ```

[刘未鹏 | MIND HACKS | 所有文章](file:///E:/blogs/MindHacks/mindhacks.cn/archives/index.html)

[Frequently Used Commands of git - 羡辙杂俎](http://zhangwenli.com/blog/notes/note/2014/10/09/git/)

:   ```bash
    # add tracked files only
    $ git add -u

    # git checkout
    $ git fetch
    $ get checkout <branch_name>

    # discard unstaged changes
    $ git clean -df
    $ git checkout -- .

    # change author after commit
    $ git commit --amend --author="TANg ZhiXiong <dvorak4tzx@qq.com>"

    # https -> ssh
    $ git config --remote.origin.url git@github.com:<user>/proj.git

    # colorful ui
    $ git config --global color.ui auto

    # alias
    $ git config --global alias.ck checkout

    # view changes after commit
    $ git log # to get the last two commit hases
    $ git diff <old-commit-hash> <new-commit-hash>

    # view remote commit log
    $ git log origin/master

    # delete a remote branch
    $ git push origin --delete <branch_name>

    # push to a new remote branch
    $ git push origin <local_branch_name>:<remote_branch_name>

    # view files of last commit
    $ git show REVISION:<path/to/file>
    $ git show REVISION:<path/to/file> <file_name> # redirect it to a file

    # git update, ignore tracked local file
    $ git update-index --assume-unchanged <file>
    # undo it
    $ git update-index --no-assume-unchanged <file>
    ```

    You can use git show:

    `$ git show REVISION:path/to/file`{.bash}

    For example, to show the 4th last commit of the file `src/main.c`, use:

    `$ git show HEAD~4:src/main.c`{.bash}

    Note that the path is from the root of the repository unless it starts
    with `./` or `../` to indicate a relative path. For more information, check
    out the man page for [`git-show`{.bash}](http://schacon.github.com/git/git-show.html).

    Doing this by date looks like this:

    `$ git show HEAD@{2013-02-25}:./fileInCurrentDirectory.txt`{.bash}

    Note that `HEAD@{2013-02-25}` means "where HEAD was on 2013-02-25" in
    this repository (using the
    [`reflog`{.bash}](http://git-scm.com/docs/git-reflog)), not "the last
    commit before 2013-02-25 in this branch in history".

    Refs

    #. &#x2611; [Is there a quick git command to see an old version of a file? - Stack Overflow](http://stackoverflow.com/questions/338436/is-there-a-quick-git-command-to-see-an-old-version-of-a-file)

[为什么你应该（从现在开始就）写博客](http://mindhacks.cn/2009/02/15/why-you-should-start-blogging-now/)
    :   如果你选择经常总结自己的知识体系，并说出来给你的读者听，你就会发现你自
        己创造了这样的机会。如果我们平时不反思，**我们觉得很多事情都是当然的**，
        但结果如果要你一开口说给别人听，常常会发现事情就开始变得不那么明显了，
        你说着说着，就开始莫名其妙地发现自己需要用到“反正”这个词了。

        一些平时难以注意到的深层面的差异性就会逐渐浮现出来，你也就多了一次难得
        的机会去**审视自己的思维中到底存放了哪些错误的信息**。

        学会持之以恒地做一件事情。很多人在生活中容易觉得迷失，不知道想要做什么，
        是因为没有一件能够持续地做的事情，用俗话来说就是没有主心骨。用积极心理
        学的话来说就是没有一件能够创造**流体验**的事情，而书写自己的思想则是一
        件容易产生流体验的事情，在书写的时候，特别是理性地书写的时候，大脑逐渐
        进入推理分析模块，一切不愉快的情绪，烦躁感都会逐渐消隐下去。不过前提是
        你得开始，并且**坚持过一开始的困难期，以后的一切便成了习惯成自然**。

        我想再重复一下的是，千万不要碎碎念，我能理解每个人都想偶尔发发牢骚的冲
        动，但是现在已经有了一个很好的窗口：twitter，所以立即停止在你的博客上碎
        碎念，**阅读博客的人希望得到信息而非噪音**。如果实在忍不住想碎碎念的话
        不妨换一下位置，这么来告诉自己：如果你看到别人博客来上这么一段，你会有
        兴趣看吗？

[mastering-emacs-in-one-year-guide/guide-zh.org at master · redguardtoo/mastering-emacs-in-one-year-guide](https://github.com/redguardtoo/mastering-emacs-in-one-year-guide/blob/master/guide-zh.org)

[钗黛双收：若你也同Vim难割舍，却又看Emacs情切切 | Emacs中文网](http://emacser.com/vimvsemacs.htm)

:   - 由于两位佳人的理念差别之大，加上各自阵营之间的鸿沟之深，使得先贤先哲基本
      上都会在这两个阵营里面挑一个来站队。
    - 选择 Vim 或 Emacs 已经不仅取决于我们在编辑文本时的好恶，而已经上升到干活
      的人怎么挑工具，过日子的人怎么选老婆这种哲学高度的问题。
    - 当装机圣手们的情商智商普遍被挑战了以后，大致是迅速分化为两派——啃骨头派和
      换骨头派。啃派如我，继续捏着脚适应 Vim 的小鞋；换派不用说也能猜到，自然是
      鞋也不要就转身踏入了 Emacs 阵营——在那边起码知道怎么打字。
    - 玩电脑的都是懒人，懒人有个癖好叫“Don’t repeat yourself”，如果谁弄出一套比
      较高效的键盘操作方式，能让我学一次以后就不用再学了，那就暂时去tnnd 的门派。
    - 电影《社交网络 The Social Network》里面有这样一个镜头，在扎克伯格同学悲愤
      不已，要把女生头像和畜生猪狗一起打分时，他来了句“有必要重启Emacs，修改代
      码”。这个杜撰的场景告诉我们，IT 巨星再怎么胸怀壮志，始于足下的不过是手指
      另一端连着的编辑器。当 geek 们叫嚣要在世界上留下一个痕迹（make a dent in
      the universe）的时候，手里常常拎着一把折凳，折凳背面写着——Emacs。
    - 博士期间，我主要用的工具是 Matlab 和 Visual Studio，这两个工具自带的编辑
      器**与 Vim 相比都是小白，属于要严重影响心情和智商的那一种**。
    - 可是作为 Vim 的死忠，对于手掌几乎不挪窝的向往，那是消失不掉的。

[早上好，我的公主！](http://www.douban.com/note/527349294/)

[Github is Your New Resume – code.dblock.org | tech blog](http://code.dblock.org/2011/07/14/github-is-your-new-resume.html)

[给我看你的博客 | 透明思考](http://gigix.thoughtworkers.org/2011/6/8/show-me-your-blog/)

:   所以涅，应聘的童鞋们，最好把你的博客一起告诉我们。看到一个精彩的博客，
    简历神马的都是浮云～

[怎样花两年时间去面试一个人](http://mindhacks.cn/2011/11/04/how-to-interview-a-person-for-two-years/)

:   正是这样的不容易，才有不少公司走内部培养的办法，这里的逻辑是：一上来就
    招到靠谱的人太难了，但找一块靠谱的璞玉然后雕琢雕琢相对就简单很多。这倒
    是个办法，但这样做的人难免就陷入了纠结：培养好了，人跑了怎么办。这也不
    能怪招聘的公司，的确是人之常情。其实解决的办法也很简单，培养的时候进行
    适当引导，让员工发挥自己的主动学习能力，这样不但人得到更多成长，公司也
    不会觉得投入太多患得患失。所谓师傅领进门修行在个人。

    而学习能力简直算是这个行业最重要的能力没有之一了。

    所以，简而言之，如果把人才培养/招聘这件事情本身类比做一个项目，那么这整
    个项目迄今为止就是一个巨大的失败。

    越来越多的 IT 公司在招聘的时候要求应聘者给出 GitHub 账号。甚至已经有人
    为 GitHub 写了根据 GitHub 上的历史自动生成简历的工具。

    正如邹欣老师所说，你的工作就是最好的面试。

    书单 + GitHub，就相当于一个两年左右的面试。

    《编程之美》为什么常居畅销榜？因为它透露了雇主眼中的需求，明确、清晰的
    需求，可以实现，并且知道怎么去实现的需求。

    那么，学校/老师在这个事情当中的位置呢？说实话我不知道。没有哪个行业像
    IT 行业这样特殊：没有什么东西不能够（应该）在互联网上学到的。自组织的力
    量完全大过传统的教育方式。

    刚才我就收到一位同学邀请我上知乎回答一个问题“找工作的首要原则是什么？”，
    当然，这个问题的答案是：“弄清雇主的需求到底是什么”。

    列一下我所认为的，你面试微软前必须要读的十本书：

    #. Code: The Hidden Language of Computer Hardware and Software （《编码的奥秘》）
    #. &hearts; Computer System: A Programmer’s Perspective （《深入理解计算机系统》） / Windows via C/C++ （《Windows核心编程》 / 《程序员的自我修养》
    #. Code Complete 2（《代码大全》）/ The Pragmatic Programmer （《程序员修炼之道》，我也把这本书称为《代码小全》）
    #. &hearts; Programming Pearls （《编程珠玑》） / Algorithms / Algorithm Design / 《编程之美》
    #. &hearts; The C Programming Language
    #. The C++ Programming Language / Programming: Principles and Practice Using C++ / Accelerated C++
    #. &hearts; The Structure and Interpretation of Computer Programs （《计算机程序的构造和解释》）
    #. Clean Code / Implementation Patterns
    #. &hearts; Design Patterns （《设计模式》） / Agile Software Development, Principles, Patterns, and Practices
    #. Refactoring （《重构》）

    云风：

    #. C++ 编程思想
    #. Effective C++
    #. 深度探索 C++ 对象模型
    #. C++ 语言的设计和演化
    #. C 专家编程
    #. C 陷阱与缺陷
    #. C 语言接口与实现
    #. Lua 程序设计
    #. Linkers and Loaders
    #. COM 本质论
    #. Windows 核心编程
    #. 深入解析 Windows 操作系统
    #. 程序员修炼之道
    #. 代码大全
    #. UNIX 编程艺术
    #. 设计模式
    #. 代码优化：有效使用内存
    #. 深入理解计算机系统
    #. 深入理解 LINUX 内核
    #. TCP/IP 详解

    张峥（微软亚洲研究院副院长）：

    #. Algorithms (by Sanjoy Dasgupta, Christos Papadimitriou and Umesh Vazirani)
    #. Data Structure and Algorithms
    #. The C Programming Language
    #. The Design of the UNIX Operating System
    #. Compilers （龙书）
    #. Computer Architecture: A Quantitative Approach
    #. Flow
    #. Outliers (why hard work and luck are both important)

    邹欣（MSRA 创新工程中心首席研发经理）：

    #. The Myths of Innovation
    #. The Innovator’s Dilemma
    #. The Innovator’s Solution
    #. Crossing the Chasm
    #. Inside Intuit
    #. 盛田昭夫
    #. 杰克·韦尔奇自传
    #. 梦断代码
    #. Innovation
    #. 浪潮之巅

[创业公司应该如何招人？ - 创业公司 - 知乎](http://www.zhihu.com/question/19551593)

:   - 上 twitter，看 XXX 的 follower，一个一个看，看他们的 twitter，博客，
      Google Reader 分享，想办法搞到邮件，联系，半夜电话骚扰。
    - **上豆瓣，前端后端挑几本重量级的书，去找想看，看过，正在看这本书的人，一
      个一个看，看他们的活动，博客，Google Reader 分享，想办法搞到邮件，联系，
      半夜电话骚扰。**
    - 找同事，问他们都看什么技术博客，想办法搞到邮件，联系，半夜电话骚扰。

    作为一个小公司，加入我们是有风险的，小公司倒闭的几率比大公司大多了，只
    不过大多不上报纸而已。

[6.1. GitHub:Gist — GotGitHub](http://www.worldhello.net/gotgithub/06-side-projects/gist.html)

[解决VS2010自带的C/C++编译器CL找不到mspdb100.dll的问题 - dudu - 博客园](http://www.cnblogs.com/dudu/archive/2011/05/21/2053104.html)

:   `C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE` &rarr; `%PATH%`
    `C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat`:

    <small><small>
    ```plain
    @echo Setting environment for using Microsoft Visual Studio 2010 x86 tools.

    @call :GetVSCommonToolsDir
    @if "%VS100COMNTOOLS%"=="" goto error_no_VS100COMNTOOLSDIR

    @call "%VS100COMNTOOLS%VCVarsQueryRegistry.bat" 32bit No64bit

    @if "%VSINSTALLDIR%"=="" goto error_no_VSINSTALLDIR
    @if "%FrameworkDir32%"=="" goto error_no_FrameworkDIR32
    @if "%FrameworkVersion32%"=="" goto error_no_FrameworkVer32
    @if "%Framework35Version%"=="" goto error_no_Framework35Version

    @set FrameworkDir=%FrameworkDir32%
    @set FrameworkVersion=%FrameworkVersion32%

    @if not "%WindowsSdkDir%" == "" (
        @set "PATH=%WindowsSdkDir%bin\NETFX 4.0 Tools;%WindowsSdkDir%bin;%PATH%"
        @set "INCLUDE=%WindowsSdkDir%include;%INCLUDE%"
        @set "LIB=%WindowsSdkDir%lib;%LIB%"
    )

    @rem
    @rem Root of Visual Studio IDE installed files.
    @rem
    @set DevEnvDir=%VSINSTALLDIR%Common7\IDE\

    @rem PATH
    @rem ----
    @if exist "%VSINSTALLDIR%Team Tools\Performance Tools" (
        @set "PATH=%VSINSTALLDIR%Team Tools\Performance Tools;%PATH%"
    )
    @if exist "%ProgramFiles%\HTML Help Workshop" set PATH=%ProgramFiles%\HTML Help Workshop;%PATH%
    @if exist "%ProgramFiles(x86)%\HTML Help Workshop" set PATH=%ProgramFiles(x86)%\HTML Help Workshop;%PATH%
    @if exist "%VCINSTALLDIR%VCPackages" set PATH=%VCINSTALLDIR%VCPackages;%PATH%
    @set PATH=%FrameworkDir%%Framework35Version%;%PATH%
    @set PATH=%FrameworkDir%%FrameworkVersion%;%PATH%
    @set PATH=%VSINSTALLDIR%Common7\Tools;%PATH%
    @if exist "%VCINSTALLDIR%BIN" set PATH=%VCINSTALLDIR%BIN;%PATH%
    @set PATH=%DevEnvDir%;%PATH%

    @if exist "%VSINSTALLDIR%VSTSDB\Deploy" (
        @set "PATH=%VSINSTALLDIR%VSTSDB\Deploy;%PATH%"
    )

    @if not "%FSHARPINSTALLDIR%" == "" (
        @set "PATH=%FSHARPINSTALLDIR%;%PATH%"
    )

    @rem INCLUDE
    @rem -------
    @if exist "%VCINSTALLDIR%ATLMFC\INCLUDE" set INCLUDE=%VCINSTALLDIR%ATLMFC\INCLUDE;%INCLUDE%
    @if exist "%VCINSTALLDIR%INCLUDE" set INCLUDE=%VCINSTALLDIR%INCLUDE;%INCLUDE%

    @rem LIB
    @rem ---
    @if exist "%VCINSTALLDIR%ATLMFC\LIB" set LIB=%VCINSTALLDIR%ATLMFC\LIB;%LIB%
    @if exist "%VCINSTALLDIR%LIB" set LIB=%VCINSTALLDIR%LIB;%LIB%

    @rem LIBPATH
    @rem -------
    @if exist "%VCINSTALLDIR%ATLMFC\LIB" set LIBPATH=%VCINSTALLDIR%ATLMFC\LIB;%LIBPATH%
    @if exist "%VCINSTALLDIR%LIB" set LIBPATH=%VCINSTALLDIR%LIB;%LIBPATH%
    @set LIBPATH=%FrameworkDir%%Framework35Version%;%LIBPATH%
    @set LIBPATH=%FrameworkDir%%FrameworkVersion%;%LIBPATH%

    @goto end

    @REM -----------------------------------------------------------------------
    :GetVSCommonToolsDir
    @set VS100COMNTOOLS=
    @call :GetVSCommonToolsDirHelper32 HKLM > nul 2>&1
    @if errorlevel 1 call :GetVSCommonToolsDirHelper32 HKCU > nul 2>&1
    @if errorlevel 1 call :GetVSCommonToolsDirHelper64  HKLM > nul 2>&1
    @if errorlevel 1 call :GetVSCommonToolsDirHelper64  HKCU > nul 2>&1
    @exit /B 0

    :GetVSCommonToolsDirHelper32
    @for /F "tokens=1,2*" %%i in ('reg query "%1\SOFTWARE\Microsoft\VisualStudio\SxS\VS7" /v "10.0"') DO (
        @if "%%i"=="10.0" (
            @SET "VS100COMNTOOLS=%%k"
        )
    )
    @if "%VS100COMNTOOLS%"=="" exit /B 1
    @SET "VS100COMNTOOLS=%VS100COMNTOOLS%Common7\Tools\"
    @exit /B 0

    :GetVSCommonToolsDirHelper64
    @for /F "tokens=1,2*" %%i in ('reg query "%1\SOFTWARE\Wow6432Node\Microsoft\VisualStudio\SxS\VS7" /v "10.0"') DO (
        @if "%%i"=="10.0" (
            @SET "VS100COMNTOOLS=%%k"
        )
    )
    @if "%VS100COMNTOOLS%"=="" exit /B 1
    @SET "VS100COMNTOOLS=%VS100COMNTOOLS%Common7\Tools\"
    @exit /B 0

    @REM -----------------------------------------------------------------------
    :error_no_VS100COMNTOOLSDIR
    @echo ERROR: Cannot determine the location of the VS Common Tools folder.
    @goto end

    :error_no_VSINSTALLDIR
    @echo ERROR: Cannot determine the location of the VS installation.
    @goto end

    :error_no_FrameworkDIR32
    @echo ERROR: Cannot determine the location of the .NET Framework 32bit installation.
    @goto end

    :error_no_FrameworkVer32
    @echo ERROR: Cannot determine the version of the .NET Framework 32bit installation.
    @goto end

    :error_no_Framework35Version
    @echo ERROR: Cannot determine the .NET Framework 3.5 version.
    @goto end

    :end
    ```
    </small></small>

[热爱正当年，青葱已做汤。](http://www.douban.com/note/518991649/)

:   那个妞是隔壁班的，短发很俏皮，笑容很俏皮，打扮也很俏皮。

    那年的夏天我坐在靠走廊的位置，每次趴在桌子上发呆的时候，都能看见她从走廊经
    过。

    她从没看过我一眼，但我总感觉她走路带着一阵风，有香气的、活泼的、俏皮的风。

    我把这个唯一的秘密告诉了阿洲，阿洲说胸好小，皮肤又黑，你喜欢她什么？

    那时我还是个孩子，**我说你不懂，这是爱情**。

    很奇怪，我一个那么自卑的人，居然会写情书。在这封人生中唯一的一封情书的结尾
    ，我写到：被人喜欢总算是一件好事情，请你不要害怕。奇怪，为什么那个时候我就
    知道被陌生人喜欢是一件值得害怕的事？

    那个妞叫什么名字我也不知道，因为性格内向，因为表白被拒，我也不敢去打听任何
    与她有关的信息。我也没有和她说过任何话，她可能都不知道我是哪个。可是因为她
    ，**那时的我看起来像是一个诗人**。

    初恋是什么？是初次对人动心，还是初次和人恋爱呢？我不知道，我只能自我安慰说
    ：这可能就是最完美的暗恋吧。

[cmderdev/cmder](https://github.com/cmderdev/cmder)

:   The main advantage of Cmder is portability. It is designed to be
    **totally self-contained with no external dependencies**, which makes
    it great for USB Sticks or Dropbox - **you can carry your console,
    aliases and binaries (like wget, curl and git) with you anywhere!**

[就喜欢这种嘿嘿嘿的短片 - 简书](http://www.jianshu.com/p/15052aaaeaab)

:   ![](http://gnat.qiniudn.com/pics/tesla.gif)

[SkyPixel](https://www.skypixel.com/videos/2015-m4v)

:   美国果然牛逼！

[真实世界的我](http://www.aiexp.info/%E7%9C%9F%E5%AE%9E%E4%B8%96%E7%95%8C%E7%9A%84%E6%88%91.html)

:   如果问我为什么要做研究工作，我会回答**因为它有趣**，然而如果你追问为什
    么它有趣，这问题就不是那么容易回答了。我觉得我把前面几段文字拍出来，或
    许可以作为一个答案，因为我觉得那些有类似经历的人或许会产生共鸣。这种研
    究工作的有趣之处，就同牛顿说的那样：“像是一个在海边玩耍的小孩，不时发现
    比寻常更为光滑的一块卵石或比寻常更为美丽的一片贝壳”，当你发现了你过去没
    有发现的东西、前人未发现的东西，当你成为世界上第一个做成某个未知事物的
    人的时候，这真的是一件很有意思的事情，不是吗？研究工作是**真实世界里的
    游戏**。研究工作，多数时候，过程中会遇到各种波折，游戏的世界里，同样会
    遇到各种困难，但让你觉得玩游戏“爽”的原因，是你可以通过努力，战胜这些困
    难，获得一些成就，从而获得一些成就感，研究工作是一样的道理。

    “**良师益友**”四个字用于评价俞凯老师是十分贴切的，他是一位可以和学生并
    肩奋战到凌晨的老师，他是一位可以真诚且无私地为你付出的时间和心血的朋友。
    俞凯老师不仅在学术上给予贴心的指导，更在无时无刻地在生活中的一言一行
    里潜移默化地指导着学生做人与做事。每学期的 Kick Off Meeting，俞凯老师都
    会用王蒙的《青春万岁》序诗来勉励我们：

    ```tzx-bigquote
    所有的日子，所有的日子都来吧，
    让我编织你们，用青春的金线，
    和幸福的璎珞，编织你们。

    有那小船上的歌笑，月下校园的欢舞，
    细雨蒙蒙里踏青，初雪的早晨行军，
    还有热烈的争论，跃动的、温暖的心……

    是转眼过去了的日子，也是充满遐想的日子，
    纷纷的心愿迷离，像春天的雨，
    我们有时间，有力量，有燃烧的信念，
    我们渴望生活，渴望在天上飞。

    是单纯的日子，也是多变的日子，
    浩大的世界，样样叫我们好奇，
    从来都兴高采烈，从来不淡漠，
    眼泪，欢笑，深思，全是第一次。

    所有的日子都去吧，都去吧，
    在生活中我快乐地向前，
    多沉重的担子，我不会发软，
    多严峻的战斗，我不会丢脸；
    有一天，擦完了枪，擦完了机器，擦完了汗，
    我想念你们，招呼你们，
    并且怀着骄傲，注视你们！
    ```

    每次他朗读这首诗，他都会动情。他常常向学生分享他的故事，他的激情，他的
    态度，他的勤奋，感染着我，给予我源源不断的正能量。

[e，一个常数的传奇 | 科学人 | 果壳网 科技有意思](http://www.guokr.com/article/55381/)

:   数学史上曾经有一个著名问题，称之为悬链线问题：一根柔软不可伸长的链子，
    两头固定在空间中的两个定点上（这两个点不一定要等高），链子形成的曲线是
    怎样一条曲线呢？这个问题和最速降线问题提出的时间很接近，而且参与者也大
    多相同。早在文艺复兴时代它就已经被达芬奇研究过，可惜并没有得到答案。伽
    利略猜想答案是抛物线，这也和很多人最初的感觉是一致的，**可惜后来被惠更斯
    在 17 岁的时候证明是错的**。

#. &#x2611; [Conway's Game of Life - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)
#. &#x2611; [Light Table](http://lighttable.com/)
:   Clojure 社区的编辑器，大概是除了 Emacs 你想玩 Clojure 的唯一选择吧。
:   Every bit of Light Table's code is available to the community because
    **none of us are as smart as all of us**.

#. &#x2611; [Cramer悖论：线性代数的萌芽 | Matrix67: The Aha Moments](http://www.matrix67.com/blog/archives/3803)
:   发现从信息的角度理解线性代数更给我更多 intuition。
:   9 个点不见得能唯一地确定出三次曲线的方程，因为不是每个点的位置都能给我们带来足够的信息。

    此时大家或许能体会到， Euler 提出的这些遗留问题太具启发性了，当时的数学
    研究者们看到之后必然是浑身血液沸腾。包括 Cramer 在内的数学家们沿着
    Euler 的思路继续想下去，一个强大的数学新工具——线性代数——逐渐开始成型。
    没错，这个 Cramer 正是后来提出线性代数一大基本定理——Cramer 法则——的那
    个人。

#. &#x2611; [随记：我们需要怎样的数学教育？ | Matrix67: The Aha Moments](http://www.matrix67.com/blog/archives/4294)
:   good.
:   #. 总有一天，数学教育会拔高到第三层：返朴归真，数学真正牛 B 的还是它本
        身。你会发现，那些伟大的数学思想，那些全新的数学理论，最初研究的动
        机并不是要急于解释我们身边的某某诡异现象，而是它**本身的美妙**。
    #. 其实，如果把“少 2 个”理解成“多 -2 个”，问题是一模一样的，之前的公式
        同样适用。负数这一新思想立即把三种情况统一在了一起，它们的本质变得
        一模一样了。（话说三角函数更是把以前需要讨论象限的问题给统一了，你
        只要在第一象限考虑就行，反正其他象限直接适用于这样得出的结论。）
    #. 对于我来说，最能吸引我学习一个数学课题的，莫过于**一系列非平凡的结论以
        及它的精彩证明了**。

[10大英语套话 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2008/12/top_10_irritating_english_phrases.html)

:   - Sure we missed our best player but at the end of the day, John, we just
      didn't play well enough to win the game.（我们最好的选手不能上场，但是最
      终来说，还是因为我们发挥得不好，所以无法赢得比赛。）
    - I am looking for a fairly unique piece of technology.（我在寻找一种独特的
      技术。）
    - I personally don't like her.（我不喜欢她。）
    - What's your favorite song right at this moment in time?（此刻你最喜欢的歌
      是什么？）
    - With all due respect, I think there are some facts you have not
      considered.（恕我直言，我想你忽略了一些事实。）
    - It is absolutely impossible.（绝对不可能。）
    - For Publishing, It's a Nightmare Before Christmas.（对于出版业来说，圣诞
      节前发生的事情就像一场噩梦。）
    - This game shouldn't of got cancelled!（这场比赛本来不应该取消的。）
    - 24/7 support is a critical part of our offer.（一周7天，每天24小时的售后
      服务，是我们承诺的关键部分。）
    - We're talking basic common sense here - it isn't rocket science.（我们在
      这里说的是常识，又不是高深莫测的东西。）

[公共场所英文译写规范 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2011/01/guidelines_for_english_translations_in_public_places.html)

[Behavioral Profiling: The password you can't change.](https://paul.reviews/behavioral-profiling-the-password-you-cant-change/)

[密码疲劳 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2015/08/password-fatigue.html)

:   心理学有一个名词，叫做"密码疲劳"（password fatigue），指某些用户一遇到输入
    密码的场合，就感到厌倦和疲劳。

    下面是"密码疲劳"的一些典型发作场合：

      - 要求创建一个新的密码；
      - 创建的密码太简单，不符合网站要求，要求重新创建；
      - 创建密码的时候，要求输入两次；
      - 明明已经登陆，但是进入重要功能时，要求再输一遍密码；
      - 创建密码的时候，不显示或者显示占位符，根本看不清自己输入的是什么。

[Git 使用规范流程 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2015/08/git-use-process.html)

:   ![](http://www.ruanyifeng.com/blogimg/asset/2015/bg2015080501.png)

    ```bash
    # update
    $ git checkout master
    $ git pull

    # create dev branch
    $ git checkout -b myfeature

    # after edition
    $ git add --all
    $ git status
    $ git commit --verbose
    $ :'
        Present-tense summary under 50 characters

        * More information about commit (under 72 characters).
        * More information about commit (under 72 characters).

        http://project.management-system.com/ticket/123

        （第一行是不超过50个字的提要，然后空一行，罗列出改动原因、主要变动、
        以及需要注意的问题。最后，提供对应的网址（比如 Bug ticket）。）
    '

    # update
    $ git fetch origin
    $ git rebase origin/master

    # 合并 commit
    $ git rebase -i origin/master

    # Pony Foo 提出另外一种合并 commit 的简便方法，就是先撤销过去 5 个
    # commit，然后再建一个新的。
    $ git reset HEAD~5
    $ git add .
    $ git commit -am "Here's the bug fix that closes #28"
    $ git push --force

    # 因为 rebase 以后，分支历史改变了，跟远程分支不一定兼容，有可能要强行推送
    $ git push --force origin myfeature
    ```

[经验:我是怎么找电子书的 - 简书](http://www.jianshu.com/p/fe97eb12f12f)

[说说“融入美国社会”这件事 - 简书](http://www.jianshu.com/p/927c06c04dcc)

:   - 美国同学都很友善，而且都挺话痨的，可是，我**真的有必要为了找到共同话题而
      硬着头皮去看那些根本不感兴趣的超级碗比赛么?**
    - 后来我才意识到，我根本没有什么“融入美国社会”的问题，因为按很多人的标准来
      看，**我连中国人的社会都没融入过**。（其实我觉得很多圈子没必要去融入……）
    - 而与此同时，我越来越觉得，身边**很多人的闲聊都相当无聊无趣**，哪怕有些人
      已经够得上“高级知识分子”的资格了。
    - 高中时读到王小波说的一句话：无趣的人生不值得过。我大概就是那会儿中了毒，
      开始觉得无趣的“天”不值得聊。
    - 还有一次，一位中国同学问起“纯正的美国口音”，老师有点哭笑不得地说：**“你觉
      得波士顿口音和纽约口音哪一个更 American?”**
    - 说白了，对美国人说，尤其是大城市的居民，再古怪的名字他们都见过，说话的口
      音再独特他们也见怪不怪。没人指望一个外国人会有一个英文名、会说“美国口音”
      的英语。
    - “Diversity”是一个在美国经常听到的词，这里面不光有反对种族歧视的意思，还有
      另一层意思，那就是：文化多样性就是这个社会的常态，而不是新来的文化在“融入
      主流文化”之前的过渡状态。无论是出于意识形态或是别的什么原因，你大可以吐槽
      美国宣扬的价值观是虚伪的，但美国社会多元文化并存的事实却是客观存在、毋庸
      置疑的。
    - 但如果你总觉得除了经济因素，在文化层面上还有那么一个抽象的、“高大上”的“美
      国社会”存在，并且需要刻意改变自己而去“融入”它，那其实反映的还是内心深处一
      种毫无必要的自卑心态。

[获取学术论文的方法 - 简书](http://www.jianshu.com/p/7e507d7be11d)

:   [Directory of Open Access Journals](https://doaj.org/)

    大学里的图书馆，一般都会雇佣有**图书情报学**专业的毕业生管理资源，并向学生
    和教职员工开课传授获取科学文献的方法。目前仍在大学的各位学生朋友，请一定好
    好利用这个资源，毕竟你是交了学费的。

    在学术界，或者学术出版界，经过了同行评审的文章草稿的电子版文档被称为后印本
    （**postprint**）。因为后印本同最终发表的版本的差异非常小，通常只是一些小的
    修改和排版上的变化，出版社一开始是很反对后印本的流通的。然而，随着越来越对
    的作者开始这样做，众多的学术期刊们也已经开始默认将后印本放到网上去的行为。
    [PubMed Central](http://www.ncbi.nlm.nih.gov/pmc/)是目前最为知名的后印本寄
    存服务。很多期刊的协议中指明，后印本必须在文章正式发表后半年甚至一年以后才
    能放到网上。因此，后印本服务在时间上有其滞后的缺点。如果你想找不是太近期的
    文章，去 PubMed Central 上去试试运气是个好办法。

    直接联系论文作者

    作为在传统的学术期刊发表文章的代价，文章作者们通常会签一份版权转移协议，将
    文章的版权授予学术期刊。在法律上来讲，在版权转移协议签署生效之后，文章的获
    取与使用必须通过期刊的允许与授权，否则就是侵权行为。

[这样的季节呀，你失落不 - 简书](http://www.jianshu.com/p/00cda101ce25)

:   我的裤脚线缝开裂。问老头补一下要多少钱，说要 3 块。我希望他要价高一点，3 块
    钱让我觉得自己是个周扒皮在剥削劳动人民。可是又不好意思主动多给他钱，毕竟人
    家不是要饭的。

    电动车是劳动人民的谋生工具，上海深圳都一样。

[该死 - 简书](http://www.jianshu.com/p/8cc3ad287cb7)

:   楼这样的事儿，更适合那些觉得自己有冤屈，以至于要在热闹地带当着很多人的面毅
    然跳下，以自己的死表明自己的清白，或者控诉这社会的黑暗。然而你们炒股破产的
    赌徒，你们有什么冤屈呢，你们不就是赌输了钱么，怎么如此滥用跳楼这样的事儿。

    但是你抢了人家的眼球啊，这世界上最珍贵的资源就是眼球资源。**人的注意力是有限
    的，你跳楼抢夺了眼球资源，世界上就有冤屈不被人重视。**

[为什么你们不可以叫彭阿姨国母（好文求打赏） - 简书](http://www.jianshu.com/p/a7d54716e002)

[为什么要唱反调：饱醉豚TEDxMoonLake—我的点播单—在线播放—优酷网，视频高清在线观看](http://v.youku.com/v_show/id_XNzEyNTMyOTMy_type_99.html?f=420001719)

:   个人很喜欢饱醉豚，不是说他多么“对”。而是他能带来不一样的思考。话说我和他价
    值观还是比较类似，像那篇《生活方式》。

[怎么评价饱醉豚？ - Twitter - 知乎](http://www.zhihu.com/question/22640256)

:   饱醉豚《民主杀害韩寒，民主强奸徐静蕾》（全文附后）获得不少叫好声，并不
    令人奇怪。该文体现的是2千多年前的“民主观”，即“多数人的暴政”。苏格拉底即
    死于这样的“民主暴政”。对民主如此浅薄的认识，至今仍有市场，可见大陆愚昧
    到了何等地步，自由民主的教育有多么匮乏！

    附：

    ```tzx-bigquote
    民主杀害韩寒，民主强奸徐静蕾

    作者：饱醉豚

    一个小国家，叫赵庄民主共和国，总共有 6 个人。一个是偶像明星大帅哥韩寒，
    有财产 1000 万，另一个是大美人大富婆徐静蕾，有财产 9000 万。其余 4 个人
    是阿 Q，王胡，小 D、孔乙己，都是穷鬼。

    这个国家实行民主竞选制。竞选人韩寒说：如果我当总统，给你们言论自由，出
    版自由，杜绝暴力拆迁，取缔任何不人道不公正的行为。

    竞选人徐静蕾说：如果我当总统，把我的财产拿出十分之一，也就是 900 万，当社
    会福利。

    竞选人阿 Q 的竞选纲领是：我要当了总统，会允许大家把韩寒杀掉，再瓜分韩寒
    和徐静蕾的财产，但是总统只拿其中的 1000 万，剩下 9000 万你们平分，每人
    3000 万。另外允许大家随时强奸徐静蕾。

    选民们经过计算，开始投票。韩寒 1 票，徐静蕾 1 票，都是自己投自己。阿 Q
    得了 4票，当选为赵庄民主共和国总统。

    于是，大家合力杀了韩寒，瓜分了徐静蕾的财产，有性欲的时候就强奸徐静蕾。
    ```

[微博用户『饱醉豚在简书』是谁？ - X 是谁 - 知乎](http://www.zhihu.com/question/27293582)

:   饱醉豚是推特反民斗的一面旗帜，他从年轻时的 89 一代，走向今天被众民斗“五毛”
    的转变，恰是对民斗圈日益堕落的讽刺。如今的民 yun 圈正如饱醉豚所言：「你们
    似乎对策略博弈一点兴趣都没有。不知道在一个不惩罚欺诈和背叛的圈子里会得
    到什么样的流行策略。然后导致另一些非欺诈的正常人根本不愿意跟你们一起混。
    而你们自己也完全没有彼此的信赖。囚徒困境中的一群欺诈者，最后剩下一群
    有病的，有仇的，有目地的。恭喜」。飽醉豚不是五毛，饱醉豚是曾经的 89 一
    代，他是为捍卫自己的道德，而走向与那些占据了道德优势，却将优势玩残的民
    斗骗子截然不同的两条路。这条路不好走，但走过来的都是枭雄。

[饱醉豚是干什么的？为什么懂得那么多？ - 网络红人 - 知乎](http://www.zhihu.com/question/27517209)

:   贴上一段他曾经在 Twitter 里的 Bio：中文网上第一健笔，中文网上第一贱逼，推特
    疯狗，推特中文圈最牛逼的狗屎，高级职业五毛，五毛教父，豚儒教教主，民主祛魅
    师，摸摸党精神领袖，中华人渣共和国总统，撑哥，饱醉待屠的装逼犯，流氓无敌，
    极品傻逼，吸毒名士，名士面具下的邪教魔头，中国的齐泽克、霍梅尼，淫贱粪豚，
    阉人，杂种，民族云鬼，正邪委员、五毛战神专治各种民主。

[饱醉豚语录2015年7月4日 - 简书](http://www.jianshu.com/p/6dd6206a71e2)

:   - 那些自称找虐的驴友，大多到四姑娘山要找马夫挑夫的，去雅鲁藏布江大峡谷要找
      藏人给他们当挑夫的，到更高的山就要找夏尔巴人给他们当挑夫。然后他们拍一些
      美奂绝伦的照片，自称去了某某地方。
    - 你不能因为黄炎培、丁玲、郭沫若之类的知识分子没能在毛泽东面前保持气节而认
      为这是毛的罪恶。恰恰相反，毛泽东让装逼知识分子脱光裤子献媚，正是给知识分
      子袪魅。这是毛为人性研究的贡献。
    - 建议爱狗爱猫的都亲自阉割以表示这确实是对动物的爱。
    - 这中国大地上到处是一些觉得这也不能吃那也不能吃的恐慌者。他们觉得中国的食
      物满含毒素，他们觉得中国的水、空气都充满恐怖。他们觉得中国到处是拐卖的孩
      子。他们觉得这社会对不起他，所以他们自己作恶的时候就可以毫无愧疚。

[生活方式 - 简书](http://www.jianshu.com/p/9ab34dd5a1ed) &hearts;

:   - 一旦你进入上海这样的城市，你就觉得当代的都市基本上都是为高度商品化的时髦
      女人而设置的。男人的风味一点都感受不到。或者男人的生活方式已经比女人还精
      致了。
    - 或许有一些文艺人，他们去咖啡厅，去酒吧，去田子坊，去看话剧。而这些在我看
      来已经不是文艺，而是难以容忍的恶俗。
    - 我没有股票户头，觉得一个人打理自己的股票、时刻盯着股市，那是把自己的闲暇
      给糟蹋了。我永远不会有热情去看股市的。

[git——How to create an empty stand alone branch in GIT](http://maijunjin.github.io/git/2014/02/18/git%E2%80%94%E2%80%94how-to-create-an-empty-stand-alone-branch-in-git.html)

:   useful, checkout an orphan branch

    ```bash
    $ git checkout --orphan gh-pages
    $ git rm -rf . # remove these not staged files
    $ echo "orphan branch" > index.html
    $ git add index.html
    $ git commit -m "all we have is the newly added index.html"
    $ git log
    $ git checkout master
    $ git push origin gh-pages
    ```

[www.moolenaar.net/habits_paper.txt](http://www.moolenaar.net/habits_paper.txt)

:   救救乌干达的可怜孩子，额……

    Bram Moolenaar is the **main author of Vim**.  He writes the core Vim
    functionality and selects what code submitted by many others is included. He
    graduated at the technical university of Delft as a computer technician. **Now
    he mainly works on software, but still knows how to handle a soldering iron.**
    He is founder and treasurer of ICCF Holland, which helps orphans in Uganda.  He
    does free-lance work as a systems architect, but actually spends most time
    working on Vim.

[抱歉，我沒有英文名字 - Tzeng Yuxio](http://tzengyuxio.me/blog/2012/06/04/why-have-the-english-name/)

:   深得我心。

    記得有次報名一個國外活動時，我把我的姓名英譯寫給朋友，請他幫我填在網路
    表單上。由於姓名的欄位只有一個格子，於是朋友按照英文前名後姓的習慣，幫我填
    入「Yuxio Tzeng」，我當時大叫不行，堅持一定要「Tzeng Yuxio」，不過也可能是
    急了，沒有好好對朋友解釋。後來想想，其實要解釋的話很簡單：

    **Michael Jackson 的中文譯名是「麥可·傑克森」還是「傑克森·麥可」？**

    答案很明顯。我們並沒有因為把人名翻成中文，而順便也改變姓與名的順序，變
    成「 傑克森·麥可 」。注意到其中的盲點了嗎？

    想想看，早期的翻譯小說中，英美人名都是翻成郝思嘉（Scarlett O’Hara）、白
    瑞德（Rhett Butler），看著多少也覺得彆扭。然而現在的小說已經不這麼翻了，
    都按原名順序的方式音譯。既然如此，那麼為什麼你的中文名字翻成英文還要
    名姓顛倒呢？

    請多珍惜自己的名字。

[BOM (Byte Order Mark) 與 UTF-8 - Tzeng Yuxio](http://tzengyuxio.me/blog/2012/03/09/bom-byte-order-mark-and-utf-8/)

:   BOM 的解释终于看懂了。

    Byte Order Mark 在 UTF-16 Big Endian 是 “FE FF”，Little Endian 是 “FF FE”。
    其中Mac 系統主要是 Big Endian, PC 系統則是使用 Little Endian。

    UTF-8 由於本身特性，不管 Big Endian 或 Little Endian，其 BOM 一律為 “EF BB
    BF”。

    不過個人建議，文字文件要儲存的話，盡量以 UTF-8 格式存。而以 UTF-8 儲存的文
    件，盡量不要放 BOM 進去。為什麼呢？因為 UTF-8 的一個特色就是能與 ASCII 系統
    相容，如果文件中沒有包含非拉丁字元的話；要是放了 BOM 進去，就**破壞了這相容性**。

    ```plain
    :set bomb?
    :set bomb
    :set nobomb
    ```

[Lip dub - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Lip_dub)

:   有点双簧。实际上很多电影都是事后录音吧。

    A lip dub is a type of video that combines **lip synching**（对口型，
    synchronization，`['siŋkiŋ]`） and **audio dubbing**
    to make a music video. It is made by filming individuals or a group
    of people lip synching while listening to a song or any recorded audio then
    dubbing over it in post editing with the original audio of the song. There
    is often some form of mobile audio device used such as an MP3 player. Often
    they look like simple music videos, although many involve a lot of
    preparation and production. Lip dubs are done in a single unedited shot
    that often travel through different rooms and situations within a building.
    **They have become popular with the advent of mass participatory video
    content sites like YouTube.**

[豆瓣blog » Blog Archive » 豆瓣见鬼了!](http://blog.douban.com/douban/2005/10/26/42/)

:   阿北。

    还有整体的功能、UI 设计和几十处细节。熟悉豆瓣的人可以自己去对比，评判。
    我们自己看得最清楚，因为豆瓣每一个像素的摆放，每一个“的”字放还是不放，
    都是许多根熬白的头发换来的。

    英语有句话，“模仿是最真诚的赞赏”。说的是模仿，不是抄袭。所以，不受此礼。

    从法律角度来说，书的介绍（来自扉页等）、属性资料和封面图像的版权属于出
    版商或者作者。在流通的领域内，普遍是默许使用，因为对版权所有者有利。所
    以默认(de facto)的版权形式是在“公共范围” (public domain)。豆瓣到今天为
    止没有和任何出版商在这方面有过任何争议。

    我对大众点评网已经没有怨言，也祝他们能把中文 webUI发展的更好。但是我一定
    要问别人一个问题：**这年头抄别人的可以沉默，被抄的倒需要出来为自己辩护，
    这到底是他妈的怎么回事?!**

[我的貼標籤規範 - Tzeng Yuxio](http://tzengyuxio.me/blog/2012/04/21/my-tagging-guideline/)

:   為了避免上述問題，雖然目前每個網站的標籤機制如同多頭馬車各行其道，制定一個
    自己個人使用的標籤習慣（或規範）倒是可行的一個作法。這個問題相信困擾的不只是我，
    上網找了一下，有兩篇值得參考的文章，第一個是 Calvin C. Yu 所寫的 Taggin
    Guidelines （在投影片中的第 13 頁），主要原則如下：

    #. 簡練
    #. 小寫
    #. 單數

    另一個參考是由 Hutch Carpenter 所提出的，他認為標籤機制應該有個標準，而這個
    標準就是複數詞組，逗號分隔 (**Multi Word, Comma Seperated**)。

    #. 簡便性
        i. 盡量簡單。
        #. 方便輸入。所以標籤時會以英文為主，例如用 browser 而不用 瀏覽器。自己容易想起。通常第一個想到的字詞就是了。
        #. 使用容易理解的詞。
    #. 一致性
        i. 一個概念一個詞。所以 動畫, アニメ, Anime, 動画 就只剩下用一個 anime。
        #. 小寫。同樣是為了方便輸入。
        #. 用單數，用名詞。當然，這免不了會遇到例外情況，主要還是要依照使用情境判斷。
        #. 人名的標記盡可能從主人。例如使用 菅野よう子 而非 菅野洋子, 韩寒 而非
           韓寒。除非該人名的原始拼寫方式我不熟悉，例如我總是想不起來戈巴契夫怎麼
           拼，那就直接用戈巴契夫吧。同樣是以自己方便為最高原則。
        #. 除非是自己口語常用的縮寫，不然不使用縮寫作標記。nds win7 xbox360
           都很好理解，可是用 resp req 來做為 response request 標籤的替代，
           就太過頭了。現在連寫程式都不鼓勵這種縮寫了。
    #. 格式
        i. 省略單字間空白。也就是說用 macosx 而非 mac os x。不過英文人名是
           例外；日常用字如 smartphone 我們容易斷字，相對的人名如果省略空白
           有時候就不容易逆推。其他如果空白省略會造成歧異的話，也應該保留空
           白於關鍵字中。
        #. 以逗號區隔關鍵字。正確來說應該是以「逗號加空白」區隔關鍵字。

    以連接號 ("-") 或底線 ("_") 作連接，通常是以連接號，因為不用按 shift, 比較
    好輸入。例如 "github-pages" 或 "octopress-plugins"

    不過從另一個角度講，我會**避免使用太過 detail 的標籤**，例如上面的
    "octopress-plugins", 我可能就只放 "octopress" 跟 "plugin" 兩個標籤就好了。
    太多的標籤也不好維護或回想。

[為什麼台北有中國路名？兼談「馬路」一詞由來 - Tzeng Yuxio](http://tzengyuxio.me/blog/2012/09/02/roads-named-after-other-place/)

:   说穿了，不只南京路，其实上海许多以中国地名命名的道路，几乎都是「洋人的玩意」。
    怎麼说？在十九世纪清末时期，上海的英国租界与美国租界合併為「上海公共租界」，租
    界合併，街道名称得统一一下，可是英美两边的人马都坚持自己原有的名字，最后英国领
    事乾脆订了个**「上海马路命名备忘录」**，全部规定以中国地名命名，省得吵架。「备忘录」
    中明订，**南北道路以省份命名，东西道路以城市命名**，因而成了今日上海市道路的模样。

    而我们今天所讲的「马路」，并不是因為古代的道路是马在上面跑而称作「马路」。「马路」
    一词是近代才出现，有一说就是源自於前面所提到的上海南京路的原始称呼。因為上
    海南京路原本是作為**跑马场**用，因此被俗称為「**大马路**」，后来「马路」一词逐渐被沿用
    為泛指一般道路。

    还有另外一说，则是指近代的筑路方法是由十八世纪的苏格兰工程师**约翰 &middot; 马卡丹 (John McAdam)**
    所设计，马卡丹以碎石铺路，路中為高、两侧略低，以便於排水，也方便车辆马
    匹通行。这种新设计的道路传入中国后被称為「**马卡丹路**」，俗称「马路」。

[HTML XHTML Entities](http://elizabethcastro.com/html/extras/entities.html)

[Everything FAQ](http://www.voidtools.com/faq/)

:   Does "Everything" **hog my system resources**?

    :   No, "Everything" uses very little system resources.
        A fresh install of Windows 8 (about 70,000 files) will use about 6 MB of
        ram and less than 3 MB of disk space.  1,000,000 files will use about 50 MB
        of ram and 15 MB of disk space.

    Does Everything search file contents?

    :   No, "Everything" does **not search file contents, only file and folder names**.

    Everything is like `tree | ag`{.bash}

    Read more

    #. [Searching](http://www.voidtools.com/support/everything/searching/)

[universal-ctags/ctags](https://github.com/universal-ctags/ctags)

[pages.tzengyuxio.me/articles/how-to-be-more-productive.html](http://pages.tzengyuxio.me/articles/how-to-be-more-productive.html)

:   首先，你必须让不同品质下的时间都能得到充分运用。其次，你必须尽可能地让你的
    时间处于高品质状态。

    一旦你有了这份清单，剩下的难题就是要记得去检视它。

    针对那些需要全神贯注的任务，你应该**避免被中断**。最简单的方法是躲到没有人
    能找得到你的地方。

    然而有时候光是这么简单的事我还是会搞砸。我懒得出去觅食，所以我经常会工作到
    飢肠辘辘，然后又饿又累反倒更加没有力气能去找吃的。

    **拥有愉快的朋友们则有莫大的帮助**。例如，我发现我在和 Paul Graham 或 Dan
    Connolly 聊完天后总是觉得干劲十足－－他们活力四射。

    **何谓拖延？从旁观者的角度来看，你只是在做著「有趣」（像是玩游戏或看新闻）
    的事情，而不是你真正该作的事情（这也通常导致旁人把你贴上懒惰的标签）。但真
    正的问题是：你的脑袋裡到底是怎么回事？**

    如果你对自己说，「我真的该去做Ｘ了，这是现在最重要的事情。」突然间，与Ｘ相
    关的所有工作便会成为你最不想去做的事。**但只要最重要的事情变成了Ｙ，明明是
    同一件事的Ｘ就会变得简单许多。**

    常言道：困难的工作并不令人愉快。但事实上，困难的工作或许是我做过的事裡最能
    让人乐在其中的。当你尝试著解决一个棘手的问题时，你不仅不会感到精疲力尽，甚
    至会在完成之后让你觉得全力以赴真是一件美妙的事。

[Deleting a buffer without closing the window - Vim Tips Wiki - Wikia](http://vim.wikia.com/wiki/Deleting_a_buffer_without_closing_the_window)

:   `:bd`

[文章分类 - 陈汝丹](http://chenrudan.github.io/page/category.html)

[Caffe、TensorFlow、MXnet三个开源库对比 - 陈汝丹](http://chenrudan.github.io/blog/2015/11/18/comparethreeopenlib.html#0-tsina-1-2654-397232819ff9a47a7b7e80a40613cfe1)

[How do you create a remote Git branch? - Stack Overflow](http://stackoverflow.com/questions/1519006/how-do-you-create-a-remote-git-branch)

:   ```bash
    $ git checkout -b gh-pages
    $ echo hello > index.html
    $ git commit -am "added index page"
    $ git push origin gh-pages
    $ git checkout master
    ```

[Vim 实用技术，第 1 部分: 实用技巧](http://www.ibm.com/developerworks/cn/linux/l-tip-vim1/index.html)

:   ```plain
    ;;;;encoding=utf-8
    termencoding
    fileencoding
    fileencodings=ucs-bom,utf-8,chinese; unicode bom?, utf-8 without bom,
    chinese( win:gb2312 -> linux:euc-cn ) ambiwidth=double; double char width
    ```

    ```plain
    set encoding=utf-8
    set fileencoding=chinese
    set fileencodings=ucs-bom,utf-8,chinese
    set ambiwidth=double
    ```

    vim to edit non utf-8 file when settings are configured to utf-8:
    `:e ++enc=ucs-bom`, see `:help ++enc` for more.

    <kbd>Control+R</kbd><kbd>=</kbd>23*234

    #. `uxterm -cjk`{.bash}
    #. `set mouse=a`, turn on mouse clicking
    #. tabstop (ts), shiftwidth (sw), expandtab, noexpandtab
    #. autoindent
    #. cindent
    #. cinoptions, `:help cinoptions-values`

    `cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1 shiftwidth=2 tabstop=8`：
    标准的 GNU 编码风格的设置，对 Vim 缺省的 C 缩进风格作了很多
    微调，比如，if 语句下的“{”、“}”要在“if”后缩进两格，但函数定义部分“{”、“
    }”仍和函数名一行对齐。开源软件经常使用该种缩进风格。

    **modeline**

    Vim 是我用过的第一个支持在文件中记录代码风格设定的编辑器。这个特性在
    Vim 中叫做**模式行**，实际上，它所做的是在打开文件时根据文件中的 Vim 指令设
    定相关的 Vim 选项。下面就是一个嵌在 C 源代码中的模式行：

    ```cpp
    /* vim: set tabstop=4 shiftwidth=4 expandtab: */
    ```

    `nohlsearch`: no highlight search

    去掉所有的行尾空格：`%s/\s\+$//`。`%` 表示在整个文件范围内进行替换，
    `\s` 表示空白字符（空格和制表符），`\+` 对前面的字符匹配一次或多次（越多越好
    ），`$` 匹配行尾（使用 `\$` 表示单纯的 `$` 字符）；被替换的内容为空；由于一
    行最多只需替换一次，不需要特殊标志。这个还是比较简单的。

    去掉所有的空白行：`:%s/\(\s*\n\)\+/\r/`。
    `*` 代表对前面的字符（此处为`\s`）匹配零次或多次（越多越好；使用 `\*` 表示单纯的 `*` 字符），`\(` 和 `\)` 对表
    达式进行分组，使其被视作一个不可分割的整体。因此，这个表达式的完整意义
    是，把连续的换行符（包含换行符前面可能有的连续空白字符）替换成为一个单
    个的换行符。唯一很特殊的地方是，在模式中使用的是 `\n`，而被替换的内容中
    却不能使用 `\n`，而只能使用 `\r`。原因是历史造成的，详情如果有兴趣的话可
    以查看 `:help NL-used-for-Nul`。

    去掉所有的 `//` 注释：`:%s!\s*//.*!!`。首先可以注意到，这儿分隔符改用了
    `!`，原因是在模式或字符串部分使用了 `/` 字符，不换用其他分隔符的话就得在
    每次使用 `/` 字符本身时写成 `\/`，上面的命令得写成 `:%s/\s*\/\/.*//`，可读
    性较低。命令本身倒是相当简单，用过正则表达
    式的人估计都知道“.”匹配表示除换行符之外的任何字符吧。

能 讓

    去掉所有的 `/* */` 注释：`:%s!\s*/\*\_.\{-}\*/\s*!!g`。这个略有点复杂了
    ，用到了几个不太常用的 Vim 正则表达式特性。`\_.` 匹配包含换行在内的所有
    字符；`\{-}` 表示前一个字符可出现零次或多次，但在整个正则表达式可以匹配
    成功的前提下，匹配的字符数越少越好；标志 `g` 表示一行里可以匹配和替换多次
    。替换的结果是个空格的目的是保证像 `int /* space not necessary around comments */ main()`
    这样的表达式在替换之后仍然是合法的。希望上面的这些简
    单的例子能够引起你使用 Vim 的正则表达式高效完成任务的兴趣。进一步的信息
    可参考 `:help regexp`。

    #. m：在多字节字符处可以折行，对中文特别有效（否则只在空白字符处折行）；
    #. M：在拼接两行时（重新格式化，或者是手工使用“J”命令），如果前一行的结尾或
    后一行的开头是多字节字符，则不插入空格，非常适合中文上面提到的注释.
    件），然后把结果贴回到邮件编辑窗口中进行发送。`set formatoptions+=mM`.

    `gf`, `ga`, ` `. `

    use `.` instead of macros!

[程序员的编辑器——VIM(转) - ma6174 - 博客园](http://www.cnblogs.com/ma6174/articles/2384210.html)

:   我说这个人怎么这么熟，原来之前用过他的 Vim 配置……

    这些例子也许初看起来有点吓人，可是在很多时候 VIM 这些强大的命令能省不少力，VIM
    不愧是为“编辑”这个功能费尽心思。

    VIM 的帮助是超链接形式的，它使用的就是 tags，所以可以跟 ctags 功能
    一样按 <kbd>Ctrl+]</kbd> 跳转到链接所指处，按 <kbd>Ctrl+t</kbd> 返回。

    help              | detailed
    ----------------- | --------
    `:help`           | 打开帮助首页，这个首页分类非常清楚
    `:help cmd`       | 查找normal mode命令，比如 `:help dd`
    `:help i_cmd`     | 查找insert mode命令，比如 `:help i_Ctrl-y`
    `:help :cmd`      | 查找command-line命令，比如 `:help :s`
    `:help 'option`   | 查找选项，比如 `:help 'tabstop`

    VIM中有九类寄存器, cool!

    `:ab hw Hello world`

    `:s//` 和 `:g//`，`:!g//`

    这两个命名加上正则表达式，常常能完成非常复杂的编辑任务，可以毫不夸张地说是 VIM
    的两柄瑞士军刀。`:s` 是替换操作，`:g` 是查找匹配模式的行，`:!g` 是查找不匹配模式的行。

    > ...Can you imagine how many keystrokes could have been saved, if I
    > only had known the `*` command in time? - Juergen Salk, 1/19/2001

    Read more

    #. [tips : vim online](http://www.vim.org/tips/index.php)
    #. [Vim Tips Wiki - Wikia](http://vim.wikia.com/wiki/Vim_Tips_Wiki)

[vi/vim tutorial for Dvorak](http://boredzo.org/vi_tutorial/)

:    [vi for dvorak users](http://boredzo.org/vi_tutorial/vi_tutorial-QWERTY-Color.pdf)

[Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html)

:   Heck, most vi users were not even born when vi was written!

    Vim is available for free for almost any platform out there, and there are
    plug-ins to get the functionality inside all major IDEs. Let's try to break
    a few misconceptions, and see some real examples of why it's the killerest.

    - modal editing
    - it's not all about regular expressions ??
    - you gotta be nuts and/or a genius to use it
    - manipulating delimited（界限）blocks: `di>`
    - hjkl to move around?
    - since you are thinking 90% of the time, and editing 10%, the productivity
      gain might be there, but it's useless anyway
    - Comfortable editing helps you stay in "the zone", the state of
    - concentration that gets you the maximum productivity. As you master a
    - powerful tool such as an editor, it just disappears from your
    - conscious, and you are free to concentrate in the problem, and your
    - editing happens unconsciously.
    - it's just sticking to a disappearing past

    Do whatever you want. Don't learn it if you feel it's too much effort just
    for nothing. Learn emacs instead. Or stay in your IDE using a lousy editor.
    Whatever. But in any case, don't ever claim again that those 'vi guys are
    nutheads' - I hope that I have succeeded in showing you why they (we) stick
    to it, and you should at least be able to understand its power, even if you
    prefer to stay away from it.

    Read more

      - [ViEmu: vi-vim editor emulation for Visual Studio, Xcode, Word, Outlook and SQL Server](http://www.viemu.com/)

[CTEX: LaTeX 文档](http://www.ctex.org/OnlineDocuments)

[VICE 面会｜EAGLES OF DEATH METAL乐队讲述巴黎恐怖袭击—在线播放—优酷网，视频高清在线观看](http://v.youku.com/v_show/id_XMTQwMjEyODE4MA==.html?from=s1.8-1-1.1)

[GCC and Make - A Tutorial on how to compile, link and build C/C++ applications](http://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html)

[Creating a shared and static library with the gnu compiler [gcc]](http://www.adp-gmbh.ch/cpp/gcc/create_lib.html)

:   ```bash
    # create static lib
    $ gcc -c calc_mean.c -o calc_mean.o
    $ ar rcs libmean.a calc_mean.o

    # create dynamic lib
    $ gcc -c -fPIC calc_mean.c -o calc_mean.o # position independant code, -fpic
    $ gcc -shared -Wl,-soname,libmean.so -o libmean.so calc_mean.o
    # gcc -shared -Wl,-soname,libmean.so.1 -o libmean.so.1.0.1 calc_mean.o

    # link static
    $ gcc -static main.c -L. -lmean -o statically_linked

    # link dynamic
    $ gcc main.c -o dynamically_linked -L. -lmean
    # gcc main.c -o dynamically_linked -L. -l:libmean.so.1.0.1

    # execute dynamically linked exe
    $ LD_LIBRARY_PATH=. ./dynamically_linked
    ```

    `*.o` &rarr; `.a`: `ar rcs my_library.a file1.o file2.o`{.bash}
      ~ `r` says insert the given object files in to the archive
        (**replacing** any older versions of the same thing)
      ~ `c` says create the archive if it isn't already there (normally
        this happens anyway, but this option suppresses the warning).
      ~ `s` says to write an object-file index into the archive.

    ```bash
    $ gcc -Wall -I/include-files -L/libraries prog.c -lctest -o prog
    ```

    - `gcc`{.bash} - GNU C compiler
    - `ld`{.bash} - The GNU Linker
    - `ldd`{.bash} - List dependencies
    - `ldconfig`{.bash} - configure dynamic linker run time bindings (update
      cache /etc/ld.so.cache)

    Filesystem Placement (`/etc/ld.so.conf`)

      - `/lib`
      - `/usr/lib`
      - `/usr/local/lib`

    Environment Variables

      - `LD_LIBRARY_PATH`
      - `LD_DEBUG`

    Installing and Using a Shared Library

      - simply copy the library into one of the standard directories (e.g.,
        `/usr/lib`) and run `ldconfig`{.bash}
      - `ldconfig -n directory_with_shared_libraries`{.bash}
      - `LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH my_program`{.bash}

    refs

      - [linker - Linking a shared library using gcc - Stack Overflow](http://stackoverflow.com/questions/726014/linking-a-shared-library-using-gcc)
      - [c - How do I compile a static library - Stack Overflow](http://stackoverflow.com/questions/11344547/how-do-i-compile-a-static-library)
      - [Linux Tutorial - Static, Shared Dynamic and Loadable Linux Libraries](http://www.yolinux.com/TUTORIALS/LibraryArchives-StaticAndDynamic.html)
      - [Shared Libraries](http://www.tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html)

[Duff's device - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Duff%27s_device)

[无插件Vim编程技巧 | 酷 壳 - CoolShell.cn](http://coolshell.cn/articles/11312.html)

:   should know

    ```plain
    :E
        -, up dir
        D, delete
        R, rename
        s, sort
        x, run

    :cd
    :pwd

    ;; buffers

    :ls                             ls buffers
    :buffer 4                       4th buffer
    :bn                             next buffer
    :bl :blast                      last buffer
    :bf :bfirst                     first buffer
    :bdelete :bd                    delete buffer

    ;; windows

    :He                             explore (down)
    :He!                            explore (up)
    :Ve                             explore (left)
    :Ve!                            explore (right)
    :Te                             explore tab
        gt                              next tab, control+PgDn
        gT                              previous tab, control+PgUp
        5gT                             5th tab, idx: 1..n
        :tabm 5, :tabmove 5             5th tab, idx: 0..n-1
        :tabs                           show tabs
        :tabclose 2
        :bufdo tab split                all bufs turn to tabs

    ;; scroll

    :set scb                        sync scroll
    :set scb!                       not sync scroll

    :qa
    :wqa
    ```

    ```bash
    # open in tabs
    $ vim -p *.cpp

    # open in splits (vertical, horiz)
    $ vim -On file1 file2 ...
    $ vim -on file1 file2 ...

    # load session, (save session: :mksession session.vim)
    $ vim -S session.vim
    ```

    flag | ?
    ---- | ----------
    `–` | （非活动的缓冲区）
    `a` | （当前被激活缓冲区） %a, current buffer
    `h` | （隐藏的缓冲区）
    `%` | （当前的缓冲区）
    `#` | （交换缓冲区）
    `=` | （只读缓冲区）
    `+` | （已经更改的缓冲区）

    Read more

      - [Vim 的分屏功能 | 酷 壳 - CoolShell.cn](http://coolshell.cn/articles/1679.html)

[橡皮鸭程序调试法 | 酷 壳 - CoolShell.cn](http://coolshell.cn/articles/1719.html)

:   小浣熊方法、Feynman 方法

      - 为什么这个方法要叫做橡皮鸭呢？因为橡皮鸭子是西方人在泡澡时最喜欢玩的一
        个小玩具
      - **Once a problem is described in sufficient detail, its solution is
        obvious.**

[c++ - Adding Q_OBJECT macro gives "unresolved external error" in QThread inherited class - Stack Overflow](http://stackoverflow.com/questions/20380017/adding-q-object-macro-gives-unresolved-external-error-in-qthread-inherited-cla)

:   第一种！半天折腾，然后自动就好了……shit……

    In this case this error may accrue only if moc tool didn't create meta data for this class. This can happen in two cases:

      - **file dependencies are broken** so you have to run `qmake`{.bash}
        and/or clean project (`make clean`{.bash}).
      - `moc`{.bash} tool is not instructed to generate those data, for example
        you are missing entry in pro file: `HEADERS += tcustomthread.h`

[Is there any chance that vim will be rewritten in c++ with gtk/qt like other fast modern editors? - Quora](https://www.quora.com/Is-there-any-chance-that-vim-will-be-rewritten-in-c++-with-gtk-qt-like-other-fast-modern-editors)

:   see [equalsraf/vim-qt](https://github.com/equalsraf/vim-qt)

<!--...--><!--上面不要加 ---（hr）-->
<!--
<div class="tzx-tabs">
* [](#)
* [](#)

<div id="">
</div>

~~~ {# .c}
~~~
</div>
fold item
V/\n#. ?kb
-->