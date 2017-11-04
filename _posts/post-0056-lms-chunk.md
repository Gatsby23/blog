---
title: LMS 数据量
date: 2015-09-01
key-words:
tags:
    - doc
...

LMS 数据量
==========

<div class="tzx-fright" style="padding:1em;">
![LMS1xx][lmspic]
</div>

LMS 是 SICK（德国西克） 公司生产的 Laser Measurement Sensor（激光测距仪）。

通过一根网线可以读取 LMS 采集的数据。[^lmsexe]
数据内容我以前统计过，这里贴一贴。

[^lmsexe]: 当然，前提是你看了 [LMS 说明文档][lmspdf]，明白 LMS 数据采集和存储基本原理并写了数据读取程序。

[lmspic]: http://gnat-tang-archive.qiniudn.com/lms.gif
[lmspdf]: http://gnat-tang-archive.qiniudn.com/lms.pdf

一个 profile 有 6429 个字节。

也就是说 LMS 的数据量是 50 Hz * 6429 bytes / profile = 321450 bytes / sec.
即：2,571,600 bits/s = 2.45 Mb/s = 0.31 MB/s

用原来项目里的 Logger 打印出来一个 profile 的数据，是这样：

|   INDEX    |        TIMESTAMP        | LEVEL |    TYPE    |                    ACTION                     |                 REMARKS                  |
| :--------: | :---------------------: | :---: | :--------: | :-------------------------------------------: | :--------------------------------------: |
|       3046 | 2015/09/01 19:36:37:083 |   1   |    LMS     | LMS generic                                   | LMS data (6429 bytes): 0x02 0x73 0x53 0x4e 0x20 0x4c 0x4d 0x44 0x73 0x63 0x61 0x6e 0x64 0x61 0x74 0x61 0x20 0x31 0x20 0x31 0x20 0x44 0x36 0x46 0x46 0x32 0x31 0x20 0x30 0x20 0x30 0x20 0x37 0x42 0x41 0x36 0x20 0x37 0x42 0x41 0x39 0x20 0x38 0x33 0x43 0x46 0x42 0x38 0x38 0x38 0x20 0x38 0x33 0x44 0x30 0x31 0x31 0x46 0x30 0x20 0x30 0x20 0x30 0x20 0x37 0x20 0x30 0x20 0x30 0x20 0x31 0x33 0x38 0x38 0x20 0x31 0x36 0x38 0x20 0x30 0x20 0x31 0x20 0x44 0x49 0x53 0x54 0x31 0x20 0x33 0x46 0x38 0x30 0x30 0x30 0x30 0x30 0x20 0x30 0x30 0x30 0x30 0x30 0x30 0x30 0x30 0x20 0x46 0x46 0x46 0x39 0x32 0x32 0x33 0x30 0x20 0x31 0x33 0x38 0x38 0x20 0x32 0x31 0x44 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x32 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x37 0x34 0x20 0x37 0x36 0x20 0x38 0x39 0x20 0x38 0x42 0x20 0x39 0x33 0x20 0x39 0x35 0x20 0x38 0x43 0x20 0x37 0x37 0x20 0x38 0x31 0x20 0x38 0x35 0x20 0x30 0x20 0x38 0x45 0x20 0x39 0x46 0x20 0x42 0x34 0x20 0x42 0x39 0x20 0x43 0x38 0x20 0x44 0x30 0x20 0x44 0x35 0x20 0x44 0x31 0x20 0x31 0x30 0x42 0x20 0x31 0x34 0x42 0x20 0x31 0x39 0x41 0x20 0x32 0x30 0x30 0x20 0x32 0x34 0x36 0x20 0x32 0x34 0x45 0x20 0x32 0x35 0x34 0x20 0x32 0x36 0x31 0x20 0x32 0x38 0x33 0x20 0x32 0x39 0x38 0x20 0x33 0x20 0x33 0x20 0x33 0x20 0x33 0x20 0x33 0x20 0x33 0x20 0x33 0x32 0x38 0x20 0x33 0x33 0x43 0x20 0x33 0x35 0x37 0x20 0x33 0x37 0x43 0x20 0x33 0x39 0x33 0x20 0x33 0x42 0x30 0x20 0x33 0x44 0x33 0x20 0x33 0x44 0x45 0x20 0x33 0x41 0x46 0x20 0x33 0x41 0x35 0x20 0x33 0x42 0x30 0x20 0x33 0x45 0x35 0x20 0x34 0x31 0x34 0x20 0x34 0x34 0x45 0x20 0x34 0x38 0x46 0x20 0x34 0x45 0x37 0x20 0x35 0x30 0x44 0x20 0x35 0x35 0x31 0x20 0x35 0x41 0x32 0x20 0x35 0x45 0x45 0x20 0x36 0x34 0x41 0x20 0x36 0x42 0x45 0x20 0x37 0x33 0x39 0x20 0x37 0x44 0x38 0x20 0x38 0x38 0x34 0x20 0x39 0x34 0x35 0x20 0x41 0x34 0x37 0x20 0x42 0x37 0x39 0x20 0x44 0x31 0x46 0x20 0x46 0x31 0x39 0x20 0x31 0x32 0x32 0x31 0x20 0x30 0x20 0x36 0x36 0x44 0x37 0x20 0x36 0x38 0x32 0x46 0x20 0x36 0x39 0x44 0x33 0x20 0x36 0x42 0x39 0x33 0x20 0x36 0x43 0x36 0x41 0x20 0x36 0x44 0x32 0x37 0x20 0x36 0x45 0x38 0x43 0x20 0x36 0x46 0x35 0x37 0x20 0x37 0x30 0x34 0x32 0x20 0x37 0x32 0x44 0x46 0x20 0x37 0x36 0x37 0x37 0x20 0x31 0x39 0x34 0x30 0x20 0x31 0x39 0x33 0x34 0x20 0x31 0x39 0x33 0x44 0x20 0x30 0x20 0x30 0x20 0x31 0x31 0x32 0x46 0x20 0x31 0x30 0x39 0x37 0x20 0x46 0x41 0x45 0x20 0x45 0x43 0x30 0x20 0x44 0x45 0x43 0x20 0x44 0x42 0x37 0x20 0x44 0x42 0x32 0x20 0x44 0x39 0x46 0x20 0x44 0x39 0x41 0x20 0x44 0x39 0x36 0x20 0x44 0x41 0x44 0x20 0x44 0x39 0x38 0x20 0x44 0x41 0x32 0x20 0x44 0x41 0x33 0x20 0x44 0x39 0x39 0x20 0x44 0x39 0x44 0x20 0x44 0x41 0x38 0x20 0x44 0x41 0x42 0x20 0x44 0x41 0x44 0x20 0x44 0x41 0x43 0x20 0x44 0x39 0x44 0x20 0x44 0x41 0x36 0x20 0x44 0x41 0x43 0x20 0x44 0x41 0x45 0x20 0x44 0x38 0x38 0x20 0x37 0x31 0x46 0x20 0x36 0x38 0x42 0x20 0x36 0x36 0x39 0x20 0x36 0x34 0x37 0x20 0x36 0x32 0x35 0x20 0x36 0x30 0x37 0x20 0x35 0x44 0x34 0x20 0x35 0x42 0x46 0x20 0x35 0x39 0x42 0x20 0x35 0x38 0x36 0x20 0x35 0x36 0x43 0x20 0x35 0x35 0x36 0x20 0x35 0x34 0x34 0x20 0x35 0x32 0x41 0x20 0x35 0x31 0x31 0x20 0x35 0x30 0x34 0x20 0x34 0x44 0x46 0x20 0x34 0x44 0x44 0x20 0x34 0x42 0x39 0x20 0x34 0x41 0x41 0x20 0x34 0x39 0x45 0x20 0x34 0x38 0x30 0x20 0x34 0x36 0x44 0x20 0x34 0x36 0x42 0x20 0x34 0x35 0x46 0x20 0x34 0x34 0x38 0x20 0x34 0x32 0x46 0x20 0x34 0x32 0x32 0x20 0x34 0x31 0x39 0x20 0x34 0x30 0x32 0x20 0x33 0x46 0x45 0x20 0x33 0x45 0x37 0x20 0x33 0x44 0x32 0x20 0x33 0x43 0x38 0x20 0x33 0x42 0x32 0x20 0x33 0x42 0x41 0x20 0x33 0x41 0x43 0x20 0x33 0x41 0x38 0x20 0x33 0x39 0x35 0x20 0x33 0x39 0x32 0x20 0x33 0x38 0x42 0x20 0x33 0x37 0x43 0x20 0x33 0x37 0x30 0x20 0x33 0x37 0x42 0x20 0x33 0x35 0x45 0x20 0x33 0x35 0x44 0x20 0x33 0x35 0x44 0x20 0x33 0x34 0x43 0x20 0x33 0x34 0x38 0x20 0x33 0x34 0x42 0x20 0x33 0x34 0x37 0x20 0x33 0x34 0x46 0x20 0x33 0x34 0x41 0x20 0x33 0x35 0x34 0x20 0x33 0x36 0x34 0x20 0x33 0x36 0x30 0x20 0x33 0x36 0x38 0x20 0x33 0x35 0x44 0x20 0x33 0x37 0x35 0x20 0x33 0x36 0x45 0x20 0x33 0x37 0x43 0x20 0x33 0x37 0x32 0x20 0x33 0x38 0x31 0x20 0x33 0x38 0x46 0x20 0x33 0x38 0x37 0x20 0x33 0x41 0x30 0x20 0x33 0x39 0x46 0x20 0x33 0x41 0x36 0x20 0x33 0x41 0x32 0x20 0x33 0x41 0x41 0x20 0x33 0x42 0x34 0x20 0x33 0x42 0x43 0x20 0x33 0x42 0x44 0x20 0x33 0x43 0x41 0x20 0x33 0x44 0x32 0x20 0x33 0x44 0x39 0x20 0x33 0x45 0x32 0x20 0x33 0x45 0x36 0x20 0x33 0x45 0x33 0x20 0x33 0x46 0x30 0x20 0x33 0x46 0x39 0x20 0x34 0x30 0x43 0x20 0x34 0x31 0x38 0x20 0x34 0x31 0x46 0x20 0x34 0x32 0x36 0x20 0x34 0x32 0x42 0x20 0x34 0x33 0x44 0x20 0x34 0x34 0x43 0x20 0x34 0x35 0x37 0x20 0x34 0x36 0x43 0x20 0x34 0x36 0x31 0x20 0x34 0x36 0x44 0x20 0x34 0x38 0x31 0x20 0x34 0x38 0x34 0x20 0x34 0x39 0x46 0x20 0x34 0x41 0x42 0x20 0x34 0x42 0x46 0x20 0x34 0x44 0x37 0x20 0x34 0x44 0x43 0x20 0x34 0x45 0x32 0x20 0x34 0x46 0x33 0x20 0x35 0x30 0x35 0x20 0x35 0x30 0x41 0x20 0x35 0x32 0x35 0x20 0x35 0x33 0x41 0x20 0x35 0x34 0x33 0x20 0x35 0x35 0x45 0x20 0x35 0x38 0x32 0x20 0x35 0x39 0x31 0x20 0x35 0x39 0x43 0x20 0x35 0x41 0x32 0x20 0x35 0x43 0x38 0x20 0x35 0x44 0x37 0x20 0x35 0x46 0x32 0x20 0x36 0x30 0x36 0x20 0x36 0x32 0x31 0x20 0x36 0x33 0x41 0x20 0x36 0x35 0x38 0x20 0x36 0x37 0x37 0x20 0x36 0x39 0x44 0x20 0x36 0x41 0x33 0x20 0x36 0x45 0x31 0x20 0x36 0x45 0x43 0x20 0x37 0x31 0x36 0x20 0x37 0x33 0x45 0x20 0x37 0x36 0x34 0x20 0x37 0x38 0x43 0x20 0x37 0x42 0x45 0x20 0x37 0x45 0x45 0x20 0x38 0x31 0x44 0x20 0x38 0x33 0x46 0x20 0x38 0x38 0x38 0x20 0x38 0x42 0x42 0x20 0x38 0x45 0x36 0x20 0x39 0x32 0x42 0x20 0x39 0x33 0x43 0x20 0x39 0x34 0x42 0x20 0x39 0x34 0x46 0x20 0x39 0x35 0x33 0x20 0x39 0x34 0x36 0x20 0x39 0x35 0x35 0x20 0x39 0x35 0x37 0x20 0x39 0x35 0x30 0x20 0x39 0x35 0x46 0x20 0x39 0x35 0x35 0x20 0x39 0x35 0x39 0x20 0x39 0x36 0x41 0x20 0x39 0x35 0x44 0x20 0x39 0x37 0x31 0x20 0x39 0x35 0x46 0x20 0x39 0x36 0x42 0x20 0x39 0x36 0x42 0x20 0x39 0x37 0x30 0x20 0x39 0x37 0x34 0x20 0x39 0x37 0x39 0x20 0x39 0x36 0x45 0x20 0x39 0x37 0x35 0x20 0x39 0x37 0x36 0x20 0x39 0x38 0x39 0x20 0x39 0x38 0x37 0x20 0x39 0x38 0x30 0x20 0x39 0x38 0x33 0x20 0x39 0x39 0x33 0x20 0x39 0x39 0x46 0x20 0x39 0x39 0x41 0x20 0x39 0x39 0x31 0x20 0x39 0x39 0x31 0x20 0x39 0x41 0x36 0x20 0x39 0x41 0x42 0x20 0x39 0x42 0x34 0x20 0x39 0x42 0x42 0x20 0x39 0x41 0x45 0x20 0x39 0x41 0x43 0x20 0x39 0x42 0x39 0x20 0x39 0x42 0x43 0x20 0x39 0x43 0x35 0x20 0x39 0x43 0x46 0x20 0x39 0x42 0x43 0x20 0x39 0x42 0x45 0x20 0x39 0x44 0x31 0x20 0x39 0x42 0x34 0x20 0x39 0x39 0x38 0x20 0x39 0x37 0x44 0x20 0x39 0x35 0x34 0x20 0x39 0x33 0x30 0x20 0x39 0x31 0x38 0x20 0x39 0x30 0x32 0x20 0x38 0x45 0x44 0x20 0x38 0x43 0x35 0x20 0x38 0x42 0x42 0x20 0x38 0x39 0x31 0x20 0x38 0x37 0x43 0x20 0x38 0x36 0x35 0x20 0x38 0x34 0x36 0x20 0x38 0x34 0x35 0x20 0x38 0x32 0x42 0x20 0x38 0x31 0x38 0x20 0x37 0x46 0x46 0x20 0x37 0x45 0x38 0x20 0x37 0x43 0x46 0x20 0x37 0x42 0x37 0x20 0x37 0x42 0x36 0x20 0x37 0x39 0x42 0x20 0x37 0x38 0x39 0x20 0x37 0x37 0x39 0x20 0x37 0x36 0x37 0x20 0x37 0x36 0x33 0x20 0x37 0x34 0x42 0x20 0x37 0x33 0x37 0x20 0x37 0x32 0x34 0x20 0x37 0x31 0x37 0x20 0x37 0x31 0x34 0x20 0x37 0x30 0x41 0x20 0x36 0x45 0x45 0x20 0x36 0x45 0x32 0x20 0x36 0x44 0x37 0x20 0x36 0x43 0x43 0x20 0x36 0x42 0x45 0x20 0x36 0x43 0x35 0x20 0x36 0x41 0x39 0x20 0x36 0x41 0x31 0x20 0x36 0x38 0x45 0x20 0x36 0x37 0x43 0x20 0x36 0x37 0x43 0x20 0x36 0x36 0x38 0x20 0x36 0x36 0x35 0x20 0x36 0x36 0x31 0x20 0x36 0x36 0x36 0x20 0x36 0x34 0x41 0x20 0x36 0x34 0x42 0x20 0x36 0x34 0x39 0x20 0x36 0x33 0x42 0x20 0x36 0x32 0x34 0x20 0x36 0x32 0x30 0x20 0x36 0x32 0x30 0x20 0x36 0x30 0x42 0x20 0x36 0x30 0x41 0x20 0x36 0x30 0x32 0x20 0x35 0x46 0x37 0x20 0x35 0x45 0x42 0x20 0x35 0x46 0x32 0x20 0x35 0x46 0x33 0x20 0x35 0x45 0x45 0x20 0x35 0x44 0x42 0x20 0x35 0x43 0x46 0x20 0x35 0x43 0x32 0x20 0x35 0x43 0x38 0x20 0x35 0x43 0x41 0x20 0x35 0x42 0x43 0x20 0x35 0x42 0x33 0x20 0x35 0x41 0x46 0x20 0x35 0x41 0x35 0x20 0x35 0x41 0x45 0x20 0x35 0x41 0x35 0x20 0x35 0x41 0x41 0x20 0x35 0x41 0x30 0x20 0x35 0x38 0x41 0x20 0x35 0x39 0x34 0x20 0x35 0x39 0x30 0x20 0x35 0x38 0x33 0x20 0x35 0x38 0x42 0x20 0x35 0x38 0x35 0x20 0x35 0x38 0x31 0x20 0x35 0x37 0x37 0x20 0x35 0x37 0x46 0x20 0x35 0x38 0x38 0x20 0x35 0x38 0x36 0x20 0x35 0x38 0x38 0x20 0x35 0x36 0x43 0x20 0x35 0x36 0x46 0x20 0x35 0x37 0x31 0x20 0x35 0x37 0x46 0x20 0x35 0x37 0x37 0x20 0x35 0x39 0x32 0x20 0x35 0x41 0x42 0x20 0x35 0x43 0x32 0x20 0x35 0x45 0x46 0x20 0x36 0x30 0x38 0x20 0x36 0x32 0x42 0x20 0x36 0x34 0x33 0x20 0x36 0x36 0x43 0x20 0x36 0x41 0x32 0x20 0x36 0x43 0x37 0x20 0x36 0x46 0x37 0x20 0x37 0x31 0x46 0x20 0x37 0x35 0x35 0x20 0x37 0x38 0x31 0x20 0x37 0x43 0x32 0x20 0x38 0x30 0x35 0x20 0x38 0x34 0x41 0x20 0x38 0x39 0x39 0x20 0x38 0x43 0x44 0x20 0x39 0x39 0x35 0x20 0x31 0x30 0x32 0x45 0x20 0x31 0x30 0x30 0x46 0x20 0x31 0x30 0x31 0x42 0x20 0x31 0x30 0x31 0x38 0x20 0x31 0x30 0x31 0x32 0x20 0x31 0x30 0x32 0x30 0x20 0x31 0x30 0x31 0x35 0x20 0x31 0x30 0x32 0x41 0x20 0x31 0x30 0x31 0x43 0x20 0x31 0x30 0x31 0x45 0x20 0x31 0x30 0x32 0x44 0x20 0x31 0x30 0x32 0x37 0x20 0x31 0x30 0x33 0x43 0x20 0x31 0x30 0x38 0x39 0x20 0x31 0x31 0x44 0x36 0x20 0x31 0x33 0x32 0x32 0x20 0x34 0x44 0x20 0x37 0x36 0x20 0x38 0x35 0x20 0x39 0x30 0x20 0x38 0x46 0x20 0x37 0x38 0x20 0x36 0x42 0x20 0x36 0x32 0x20 0x35 0x39 0x20 0x35 0x31 0x20 0x34 0x41 0x20 0x35 0x32 0x20 0x34 0x43 0x20 0x35 0x34 0x20 0x34 0x46 0x20 0x34 0x37 0x20 0x34 0x41 0x20 0x34 0x38 0x20 0x33 0x35 0x20 0x33 0x42 0x20 0x34 0x36 0x20 0x34 0x35 0x20 0x34 0x33 0x20 0x33 0x41 0x20 0x32 0x41 0x20 0x34 0x39 0x20 0x33 0x41 0x20 0x33 0x34 0x20 0x34 0x35 0x20 0x33 0x35 0x20 0x33 0x38 0x20 0x34 0x41 0x20 0x34 0x37 0x20 0x34 0x38 0x20 0x34 0x31 0x20 0x34 0x34 0x20 0x34 0x42 0x20 0x34 0x36 0x20 0x34 0x44 0x20 0x34 0x38 0x20 0x33 0x38 0x20 0x33 0x44 0x20 0x34 0x39 0x20 0x34 0x34 0x20 0x33 0x35 0x20 0x34 0x43 0x20 0x34 0x36 0x20 0x34 0x34 0x20 0x34 0x41 0x20 0x35 0x30 0x20 0x34 0x41 0x20 0x34 0x43 0x20 0x35 0x30 0x20 0x34 0x32 0x20 0x34 0x42 0x20 0x34 0x46 0x20 0x34 0x33 0x20 0x35 0x35 0x20 0x34 0x45 0x20 0x34 0x35 0x20 0x33 0x46 0x20 0x35 0x36 0x20 0x33 0x46 0x20 0x34 0x36 0x20 0x35 0x30 0x20 0x34 0x32 0x20 0x34 0x41 0x20 0x35 0x31 0x20 0x35 0x33 0x20 0x34 0x32 0x20 0x35 0x33 0x20 0x34 0x37 0x20 0x35 0x30 0x20 0x35 0x34 0x20 0x35 0x46 0x20 0x35 0x30 0x20 0x35 0x43 0x20 0x35 0x37 0x20 0x35 0x36 0x20 0x36 0x34 0x20 0x36 0x36 0x20 0x36 0x33 0x20 0x35 0x31 0x20 0x35 0x34 0x20 0x34 0x41 0x20 0x34 0x44 0x20 0x35 0x36 0x20 0x35 0x46 0x20 0x36 0x34 0x20 0x36 0x39 0x20 0x37 0x44 0x20 0x38 0x44 0x20 0x38 0x44 0x20 0x39 0x31 0x20 0x37 0x35 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x03 0x02 0x73 0x53 0x4e 0x20 0x4c 0x4d 0x44 0x73 0x63 0x61 0x6e 0x64 0x61 0x74 0x61 0x20 0x31 0x20 0x31 0x20 0x44 0x36 0x46 0x46 0x32 0x31 0x20 0x30 0x20 0x30 0x20 0x37 0x42 0x41 0x37 0x20 0x37 0x42 0x41 0x41 0x20 0x38 0x33 0x44 0x30 0x30 0x36 0x45 0x37 0x20 0x38 0x33 0x44 0x30 0x36 0x30 0x38 0x30 0x20 0x30 0x20 0x30 0x20 0x37 0x20 0x30 0x20 0x30 0x20 0x31 0x33 0x38 0x38 0x20 0x31 0x36 0x38 0x20 0x30 0x20 0x31 0x20 0x44 0x49 0x53 0x54 0x31 0x20 0x33 0x46 0x38 0x30 0x30 0x30 0x30 0x30 0x20 0x30 0x30 0x30 0x30 0x30 0x30 0x30 0x30 0x20 0x46 0x46 0x46 0x39 0x32 0x32 0x33 0x30 0x20 0x31 0x33 0x38 0x38 0x20 0x32 0x31 0x44 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x37 0x36 0x20 0x37 0x42 0x20 0x37 0x30 0x20 0x38 0x39 0x20 0x39 0x31 0x20 0x39 0x31 0x20 0x38 0x45 0x20 0x38 0x43 0x20 0x37 0x33 0x20 0x30 0x20 0x38 0x30 0x20 0x30 0x20 0x38 0x42 0x20 0x39 0x41 0x20 0x42 0x30 0x20 0x43 0x34 0x20 0x44 0x33 0x20 0x44 0x32 0x20 0x43 0x46 0x20 0x44 0x38 0x20 0x31 0x30 0x43 0x20 0x31 0x34 0x44 0x20 0x31 0x39 0x45 0x20 0x31 0x46 0x46 0x20 0x32 0x34 0x30 0x20 0x32 0x35 0x34 0x20 0x32 0x35 0x31 0x20 0x32 0x36 0x35 0x20 0x32 0x38 0x30 0x20 0x32 0x41 0x30 0x20 0x33 0x20 0x33 0x20 0x33 0x20 0x33 0x20 0x33 0x20 0x33 0x20 0x33 0x32 0x41 0x20 0x33 0x32 0x46 0x20 0x33 0x35 0x38 0x20 0x33 0x38 0x31 0x20 0x33 0x39 0x37 0x20 0x33 0x42 0x31 0x20 0x33 0x43 0x46 0x20 0x33 0x45 0x34 0x20 0x33 0x42 0x36 0x20 0x33 0x39 0x44 0x20 0x33 0x43 0x36 0x20 0x33 0x46 0x34 0x20 0x34 0x31 0x36 0x20 0x34 0x35 0x36 0x20 0x34 0x39 0x36 0x20 0x34 0x44 0x39 0x20 0x35 0x31 0x39 0x20 0x35 0x36 0x32 0x20 0x35 0x41 0x39 0x20 0x36 0x30 0x35 0x20 0x36 0x35 0x34 0x20 0x36 0x43 0x32 0x20 0x37 0x33 0x46 0x20 0x37 0x44 0x38 0x20 0x38 0x37 0x39 0x20 0x39 0x34 0x35 0x20 0x41 0x34 0x41 0x20 0x42 0x38 0x39 0x20 0x44 0x33 0x32 0x20 0x46 0x34 0x30 0x20 0x31 0x32 0x34 0x38 0x20 0x30 0x20 0x36 0x36 0x44 0x45 0x20 0x36 0x38 0x32 0x44 0x20 0x36 0x41 0x30 0x35 0x20 0x36 0x42 0x39 0x31 0x20 0x36 0x43 0x38 0x35 0x20 0x36 0x44 0x34 0x36 0x20 0x36 0x45 0x39 0x33 0x20 0x36 0x46 0x37 0x32 0x20 0x36 0x46 0x45 0x43 0x20 0x37 0x32 0x44 0x36 0x20 0x37 0x36 0x38 0x32 0x20 0x31 0x39 0x34 0x37 0x20 0x31 0x39 0x33 0x33 0x20 0x31 0x39 0x33 0x37 0x20 0x30 0x20 0x30 0x20 0x31 0x31 0x33 0x36 0x20 0x31 0x30 0x39 0x32 0x20 0x46 0x41 0x41 0x20 0x45 0x42 0x35 0x20 0x44 0x45 0x41 0x20 0x44 0x42 0x37 0x20 0x44 0x41 0x43 0x20 0x44 0x41 0x43 0x20 0x44 0x41 0x44 0x20 0x44 0x41 0x43 0x20 0x44 0x39 0x39 0x20 0x44 0x39 0x43 0x20 0x44 0x41 0x34 0x20 0x44 0x41 0x31 0x20 0x44 0x42 0x30 0x20 0x44 0x41 0x43 0x20 0x44 0x41 0x33 0x20 0x44 0x41 0x46 0x20 0x44 0x41 0x46 0x20 0x44 0x41 0x39 0x20 0x44 0x41 0x39 0x20 0x44 0x41 0x38 0x20 0x44 0x39 0x41 0x20 0x44 0x41 0x36 0x20 0x44 0x36 0x37 0x20 0x37 0x31 0x35 0x20 0x36 0x38 0x45 0x20 0x36 0x36 0x38 0x20 0x36 0x33 0x46 0x20 0x36 0x32 0x30 0x20 0x35 0x46 0x44 0x20 0x35 0x45 0x39 0x20 0x35 0x43 0x35 0x20 0x35 0x41 0x42 0x20 0x35 0x38 0x30 0x20 0x35 0x36 0x33 0x20 0x35 0x35 0x34 0x20 0x35 0x33 0x42 0x20 0x35 0x32 0x35 0x20 0x35 0x30 0x44 0x20 0x34 0x46 0x33 0x20 0x34 0x45 0x39 0x20 0x34 0x44 0x34 0x20 0x34 0x42 0x30 0x20 0x34 0x39 0x44 0x20 0x34 0x39 0x42 0x20 0x34 0x39 0x36 0x20 0x34 0x36 0x46 0x20 0x34 0x35 0x36 0x20 0x34 0x34 0x37 0x20 0x34 0x33 0x33 0x20 0x34 0x32 0x44 0x20 0x34 0x32 0x33 0x20 0x34 0x31 0x41 0x20 0x33 0x46 0x33 0x20 0x33 0x46 0x42 0x20 0x33 0x45 0x41 0x20 0x33 0x45 0x34 0x20 0x33 0x44 0x41 0x20 0x33 0x43 0x38 0x20 0x33 0x42 0x30 0x20 0x33 0x39 0x46 0x20 0x33 0x39 0x36 0x20 0x33 0x39 0x34 0x20 0x33 0x39 0x35 0x20 0x33 0x38 0x37 0x20 0x33 0x37 0x43 0x20 0x33 0x37 0x35 0x20 0x33 0x36 0x32 0x20 0x33 0x35 0x42 0x20 0x33 0x36 0x36 0x20 0x33 0x35 0x32 0x20 0x33 0x34 0x30 0x20 0x33 0x33 0x42 0x20 0x33 0x33 0x41 0x20 0x33 0x34 0x43 0x20 0x33 0x34 0x45 0x20 0x33 0x35 0x34 0x20 0x33 0x35 0x34 0x20 0x33 0x35 0x36 0x20 0x33 0x35 0x43 0x20 0x33 0x36 0x35 0x20 0x33 0x37 0x36 0x20 0x33 0x37 0x34 0x20 0x33 0x36 0x35 0x20 0x33 0x36 0x38 0x20 0x33 0x37 0x45 0x20 0x33 0x38 0x33 0x20 0x33 0x38 0x43 0x20 0x33 0x37 0x43 0x20 0x33 0x39 0x31 0x20 0x33 0x39 0x43 0x20 0x33 0x41 0x37 0x20 0x33 0x41 0x36 0x20 0x33 0x42 0x35 0x20 0x33 0x41 0x39 0x20 0x33 0x42 0x39 0x20 0x33 0x42 0x37 0x20 0x33 0x43 0x41 0x20 0x33 0x43 0x39 0x20 0x33 0x44 0x39 0x20 0x33 0x44 0x46 0x20 0x33 0x45 0x41 0x20 0x33 0x46 0x35 0x20 0x33 0x46 0x43 0x20 0x33 0x46 0x39 0x20 0x34 0x30 0x33 0x20 0x34 0x31 0x37 0x20 0x34 0x31 0x38 0x20 0x34 0x32 0x37 0x20 0x34 0x33 0x37 0x20 0x34 0x32 0x45 0x20 0x34 0x34 0x30 0x20 0x34 0x36 0x35 0x20 0x34 0x36 0x30 0x20 0x34 0x37 0x34 0x20 0x34 0x37 0x32 0x20 0x34 0x37 0x46 0x20 0x34 0x39 0x35 0x20 0x34 0x41 0x34 0x20 0x34 0x41 0x44 0x20 0x34 0x42 0x42 0x20 0x34 0x43 0x43 0x20 0x34 0x44 0x33 0x20 0x34 0x44 0x42 0x20 0x34 0x46 0x43 0x20 0x35 0x30 0x33 0x20 0x35 0x31 0x30 0x20 0x35 0x32 0x39 0x20 0x35 0x32 0x43 0x20 0x35 0x34 0x42 0x20 0x35 0x35 0x43 0x20 0x35 0x37 0x30 0x20 0x35 0x38 0x37 0x20 0x35 0x41 0x34 0x20 0x35 0x42 0x31 0x20 0x35 0x43 0x34 0x20 0x35 0x44 0x35 0x20 0x35 0x46 0x30 0x20 0x36 0x31 0x34 0x20 0x36 0x32 0x39 0x20 0x36 0x33 0x43 0x20 0x36 0x35 0x36 0x20 0x36 0x37 0x31 0x20 0x36 0x41 0x31 0x20 0x36 0x42 0x30 0x20 0x36 0x44 0x32 0x20 0x36 0x46 0x32 0x20 0x37 0x31 0x44 0x20 0x37 0x34 0x36 0x20 0x37 0x36 0x35 0x20 0x37 0x38 0x36 0x20 0x37 0x42 0x43 0x20 0x37 0x45 0x36 0x20 0x38 0x31 0x37 0x20 0x38 0x35 0x32 0x20 0x38 0x38 0x35 0x20 0x38 0x42 0x42 0x20 0x38 0x46 0x34 0x20 0x39 0x33 0x30 0x20 0x39 0x34 0x36 0x20 0x39 0x33 0x44 0x20 0x39 0x34 0x30 0x20 0x39 0x35 0x39 0x20 0x39 0x35 0x34 0x20 0x39 0x34 0x38 0x20 0x39 0x34 0x44 0x20 0x39 0x36 0x32 0x20 0x39 0x36 0x42 0x20 0x39 0x36 0x37 0x20 0x39 0x36 0x37 0x20 0x39 0x35 0x39 0x20 0x39 0x35 0x42 0x20 0x39 0x36 0x35 0x20 0x39 0x37 0x36 0x20 0x39 0x36 0x43 0x20 0x39 0x36 0x36 0x20 0x39 0x37 0x30 0x20 0x39 0x37 0x30 0x20 0x39 0x38 0x31 0x20 0x39 0x37 0x34 0x20 0x39 0x38 0x36 0x20 0x39 0x37 0x37 0x20 0x39 0x37 0x46 0x20 0x39 0x38 0x43 0x20 0x39 0x37 0x44 0x20 0x39 0x38 0x44 0x20 0x39 0x39 0x37 0x20 0x39 0x39 0x33 0x20 0x39 0x38 0x45 0x20 0x39 0x41 0x30 0x20 0x39 0x41 0x36 0x20 0x39 0x42 0x34 0x20 0x39 0x41 0x37 0x20 0x39 0x41 0x33 0x20 0x39 0x41 0x46 0x20 0x39 0x42 0x46 0x20 0x39 0x42 0x37 0x20 0x39 0x42 0x41 0x20 0x39 0x43 0x42 0x20 0x39 0x43 0x35 0x20 0x39 0x42 0x46 0x20 0x39 0x43 0x34 0x20 0x39 0x43 0x34 0x20 0x39 0x42 0x46 0x20 0x39 0x41 0x43 0x20 0x39 0x38 0x45 0x20 0x39 0x37 0x32 0x20 0x39 0x35 0x38 0x20 0x39 0x33 0x37 0x20 0x39 0x32 0x35 0x20 0x39 0x30 0x42 0x20 0x38 0x45 0x45 0x20 0x38 0x43 0x38 0x20 0x38 0x42 0x31 0x20 0x38 0x39 0x35 0x20 0x38 0x38 0x33 0x20 0x38 0x36 0x46 0x20 0x38 0x34 0x46 0x20 0x38 0x33 0x30 0x20 0x38 0x31 0x46 0x20 0x38 0x30 0x39 0x20 0x38 0x30 0x30 0x20 0x37 0x45 0x32 0x20 0x37 0x44 0x32 0x20 0x37 0x42 0x43 0x20 0x37 0x42 0x30 0x20 0x37 0x39 0x35 0x20 0x37 0x38 0x43 0x20 0x37 0x37 0x39 0x20 0x37 0x35 0x44 0x20 0x37 0x35 0x37 0x20 0x37 0x34 0x38 0x20 0x37 0x32 0x44 0x20 0x37 0x33 0x41 0x20 0x37 0x31 0x43 0x20 0x37 0x30 0x35 0x20 0x36 0x46 0x42 0x20 0x36 0x46 0x32 0x20 0x36 0x44 0x35 0x20 0x36 0x44 0x36 0x20 0x36 0x44 0x31 0x20 0x36 0x42 0x38 0x20 0x36 0x41 0x41 0x20 0x36 0x41 0x44 0x20 0x36 0x39 0x34 0x20 0x36 0x39 0x44 0x20 0x36 0x37 0x46 0x20 0x36 0x36 0x45 0x20 0x36 0x36 0x44 0x20 0x36 0x35 0x44 0x20 0x36 0x35 0x31 0x20 0x36 0x35 0x35 0x20 0x36 0x34 0x36 0x20 0x36 0x35 0x30 0x20 0x36 0x33 0x34 0x20 0x36 0x33 0x38 0x20 0x36 0x33 0x38 0x20 0x36 0x32 0x43 0x20 0x36 0x32 0x39 0x20 0x36 0x30 0x39 0x20 0x36 0x30 0x41 0x20 0x35 0x46 0x46 0x20 0x36 0x30 0x30 0x20 0x36 0x30 0x35 0x20 0x35 0x45 0x32 0x20 0x35 0x44 0x43 0x20 0x35 0x44 0x42 0x20 0x35 0x45 0x36 0x20 0x35 0x45 0x41 0x20 0x35 0x43 0x41 0x20 0x35 0x43 0x35 0x20 0x35 0x42 0x42 0x20 0x35 0x43 0x37 0x20 0x35 0x42 0x32 0x20 0x35 0x41 0x42 0x20 0x35 0x42 0x32 0x20 0x35 0x41 0x36 0x20 0x35 0x39 0x44 0x20 0x35 0x41 0x39 0x20 0x35 0x39 0x41 0x20 0x35 0x41 0x34 0x20 0x35 0x39 0x43 0x20 0x35 0x38 0x33 0x20 0x35 0x38 0x39 0x20 0x35 0x38 0x33 0x20 0x35 0x37 0x43 0x20 0x35 0x38 0x37 0x20 0x35 0x38 0x33 0x20 0x35 0x37 0x34 0x20 0x35 0x37 0x36 0x20 0x35 0x37 0x43 0x20 0x35 0x38 0x37 0x20 0x35 0x37 0x36 0x20 0x35 0x36 0x46 0x20 0x35 0x36 0x38 0x20 0x35 0x36 0x38 0x20 0x35 0x36 0x44 0x20 0x35 0x38 0x43 0x20 0x35 0x41 0x36 0x20 0x35 0x43 0x45 0x20 0x35 0x45 0x36 0x20 0x36 0x30 0x43 0x20 0x36 0x32 0x38 0x20 0x36 0x34 0x39 0x20 0x36 0x37 0x41 0x20 0x36 0x39 0x34 0x20 0x36 0x42 0x46 0x20 0x36 0x46 0x30 0x20 0x37 0x31 0x36 0x20 0x37 0x35 0x30 0x20 0x37 0x37 0x45 0x20 0x37 0x42 0x46 0x20 0x37 0x46 0x44 0x20 0x38 0x34 0x35 0x20 0x38 0x39 0x39 0x20 0x38 0x44 0x35 0x20 0x39 0x41 0x44 0x20 0x31 0x30 0x33 0x31 0x20 0x31 0x30 0x30 0x46 0x20 0x31 0x30 0x31 0x33 0x20 0x31 0x30 0x31 0x42 0x20 0x31 0x30 0x31 0x38 0x20 0x31 0x30 0x31 0x35 0x20 0x31 0x30 0x32 0x31 0x20 0x31 0x30 0x31 0x45 0x20 0x31 0x30 0x32 0x45 0x20 0x31 0x30 0x32 0x41 0x20 0x31 0x30 0x32 0x46 0x20 0x31 0x30 0x33 0x34 0x20 0x31 0x30 0x33 0x39 0x20 0x31 0x30 0x37 0x36 0x20 0x31 0x31 0x44 0x46 0x20 0x31 0x33 0x32 0x33 0x20 0x35 0x37 0x20 0x36 0x46 0x20 0x38 0x33 0x20 0x38 0x36 0x20 0x38 0x42 0x20 0x38 0x37 0x20 0x36 0x46 0x20 0x35 0x34 0x20 0x35 0x38 0x20 0x34 0x38 0x20 0x35 0x32 0x20 0x35 0x31 0x20 0x34 0x45 0x20 0x34 0x30 0x20 0x34 0x31 0x20 0x34 0x36 0x20 0x34 0x30 0x20 0x34 0x31 0x20 0x34 0x43 0x20 0x33 0x30 0x20 0x33 0x41 0x20 0x34 0x42 0x20 0x34 0x33 0x20 0x34 0x41 0x20 0x32 0x43 0x20 0x34 0x31 0x20 0x34 0x41 0x20 0x33 0x45 0x20 0x33 0x41 0x20 0x34 0x38 0x20 0x34 0x41 0x20 0x33 0x44 0x20 0x34 0x35 0x20 0x34 0x34 0x20 0x34 0x42 0x20 0x34 0x39 0x20 0x34 0x33 0x20 0x34 0x39 0x20 0x34 0x41 0x20 0x34 0x46 0x20 0x34 0x32 0x20 0x34 0x35 0x20 0x34 0x38 0x20 0x34 0x39 0x20 0x34 0x30 0x20 0x34 0x35 0x20 0x35 0x34 0x20 0x34 0x44 0x20 0x34 0x43 0x20 0x33 0x45 0x20 0x34 0x41 0x20 0x35 0x42 0x20 0x35 0x32 0x20 0x35 0x30 0x20 0x34 0x31 0x20 0x34 0x37 0x20 0x34 0x39 0x20 0x34 0x39 0x20 0x35 0x31 0x20 0x34 0x46 0x20 0x34 0x41 0x20 0x34 0x37 0x20 0x35 0x33 0x20 0x35 0x37 0x20 0x34 0x42 0x20 0x34 0x46 0x20 0x34 0x33 0x20 0x34 0x32 0x20 0x35 0x34 0x20 0x35 0x41 0x20 0x33 0x42 0x20 0x34 0x31 0x20 0x33 0x42 0x20 0x35 0x34 0x20 0x35 0x35 0x20 0x35 0x43 0x20 0x36 0x31 0x20 0x35 0x46 0x20 0x36 0x34 0x20 0x35 0x34 0x20 0x35 0x44 0x20 0x35 0x39 0x20 0x35 0x38 0x20 0x34 0x38 0x20 0x35 0x30 0x20 0x34 0x42 0x20 0x35 0x31 0x20 0x35 0x46 0x20 0x36 0x38 0x20 0x36 0x41 0x20 0x37 0x39 0x20 0x37 0x42 0x20 0x38 0x46 0x20 0x39 0x30 0x20 0x38 0x34 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x03 0x02 0x73 0x53 0x4e 0x20 0x4c 0x4d 0x44 0x73 0x63 0x61 0x6e 0x64 0x61 0x74 0x61 0x20 0x31 0x20 0x31 0x20 0x44 0x36 0x46 0x46 0x32 0x31 0x20 0x30 0x20 0x30 0x20 0x37 0x42 0x41 0x38 0x20 0x37 0x42 0x41 0x42 0x20 0x38 0x33 0x44 0x30 0x35 0x35 0x34 0x45 0x20 0x38 0x33 0x44 0x30 0x41 0x46 0x34 0x34 0x20 0x30 0x20 0x30 0x20 0x37 0x20 0x30 0x20 0x30 0x20 0x31 0x33 0x38 0x38 0x20 0x31 0x36 0x38 0x20 0x30 0x20 0x31 0x20 0x44 0x49 0x53 0x54 0x31 0x20 0x33 0x46 0x38 0x30 0x30 0x30 0x30 0x30 0x20 0x30 0x30 0x30 0x30 0x30 0x30 0x30 0x30 0x20 0x46 0x46 0x46 0x39 0x32 0x32 0x33 0x30 0x20 0x31 0x33 0x38 0x38 0x20 0x32 0x31 0x44 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x37 0x39 0x20 0x37 0x42 0x20 0x38 0x32 0x20 0x37 0x46 0x20 0x39 0x34 0x20 0x39 0x42 0x20 0x38 0x46 0x20 0x39 0x34 0x20 0x37 0x43 0x20 0x38 0x32 0x20 0x30 0x20 0x30 0x20 0x38 0x44 0x20 0x39 0x43 0x20 0x42 0x37 0x20 0x43 0x44 0x20 0x44 0x38 0x20 0x44 0x34 0x20 0x43 0x41 0x20 0x44 0x32 0x20 0x31 0x31 0x31 0x20 0x31 0x34 0x42 0x20 0x31 0x39 0x42 0x20 0x31 0x46 0x41 0x20 0x32 0x34 0x37 0x20 0x32 0x35 0x31 0x20 0x32 0x35 0x42 0x20 0x32 0x36 0x35 0x20 0x32 0x38 0x37 0x20 0x32 0x39 0x41 0x20 0x33 0x20 0x33 0x20 0x33 0x20 0x30 0x20 0x33 0x20 0x33 0x20 0x33 0x32 0x41 0x20 0x33 0x34 0x31 0x20 0x33 0x35 0x41 0x20 0x33 0x37 0x37 0x20 0x33 0x39 0x33 0x20 0x33 0x41 0x42 0x20 0x33 0x44 0x36 0x20 0x33 0x44 0x39 0x20 0x33 0x42 0x42 0x20 0x33 0x39 0x44 0x20 0x33 0x42 0x46 0x20 0x33 0x46 0x30 0x20 0x34 0x32 0x38 0x20 0x34 0x35 0x31 0x20 0x34 0x39 0x34 0x20 0x34 0x43 0x43 0x20 0x35 0x30 0x45 0x20 0x35 0x34 0x35 0x20 0x35 0x41 0x34 0x20 0x35 0x46 0x39 0x20 0x36 0x35 0x36 0x20 0x36 0x43 0x41 0x20 0x37 0x33 0x42 0x20 0x37 0x43 0x45 0x20 0x38 0x38 0x38 0x20 0x39 0x33 0x46 0x20 0x41 0x34 0x35 0x20 0x42 0x38 0x32 0x20 0x44 0x32 0x30 0x20 0x46 0x32 0x42 0x20 0x31 0x32 0x32 0x43 0x20 0x30 0x20 0x36 0x36 0x36 0x44 0x20 0x36 0x38 0x31 0x43 0x20 0x36 0x39 0x45 0x36 0x20 0x36 0x42 0x38 0x45 0x20 0x36 0x43 0x36 0x44 0x20 0x36 0x44 0x33 0x33 0x20 0x36 0x45 0x41 0x30 0x20 0x36 0x46 0x36 0x39 0x20 0x37 0x30 0x33 0x44 0x20 0x37 0x32 0x37 0x32 0x20 0x37 0x36 0x35 0x45 0x20 0x31 0x39 0x34 0x33 0x20 0x31 0x39 0x33 0x39 0x20 0x31 0x39 0x33 0x30 0x20 0x30 0x20 0x30 0x20 0x31 0x31 0x33 0x30 0x20 0x31 0x30 0x39 0x31 0x20 0x46 0x41 0x42 0x20 0x45 0x43 0x35 0x20 0x44 0x46 0x34 0x20 0x44 0x42 0x34 0x20 0x44 0x41 0x43 0x20 0x44 0x42 0x32 0x20 0x44 0x42 0x30 0x20 0x44 0x41 0x44 0x20 0x44 0x39 0x36 0x20 0x44 0x41 0x36 0x20 0x44 0x41 0x35 0x20 0x44 0x39 0x46 0x20 0x44 0x39 0x45 0x20 0x44 0x41 0x31 0x20 0x44 0x39 0x46 0x20 0x44 0x41 0x37 0x20 0x44 0x41 0x36 0x20 0x44 0x41 0x43 0x20 0x44 0x41 0x44 0x20 0x44 0x41 0x38 0x20 0x44 0x41 0x46 0x20 0x44 0x41 0x43 0x20 0x44 0x37 0x45 0x20 0x37 0x32 0x42 0x20 0x36 0x38 0x34 0x20 0x36 0x35 0x37 0x20 0x36 0x34 0x35 0x20 0x36 0x31 0x46 0x20 0x36 0x30 0x37 0x20 0x35 0x45 0x45 0x20 0x35 0x43 0x43 0x20 0x35 0x41 0x41 0x20 0x35 0x38 0x39 0x20 0x35 0x38 0x32 0x20 0x35 0x35 0x37 0x20 0x35 0x33 0x46 0x20 0x35 0x33 0x33 0x20 0x35 0x30 0x46 0x20 0x34 0x46 0x33 0x20 0x34 0x46 0x30 0x20 0x34 0x44 0x41 0x20 0x34 0x43 0x39 0x20 0x34 0x41 0x33 0x20 0x34 0x39 0x45 0x20 0x34 0x38 0x39 0x20 0x34 0x37 0x37 0x20 0x34 0x35 0x41 0x20 0x34 0x34 0x35 0x20 0x34 0x33 0x41 0x20 0x34 0x33 0x31 0x20 0x34 0x32 0x32 0x20 0x34 0x31 0x38 0x20 0x34 0x30 0x43 0x20 0x33 0x46 0x33 0x20 0x33 0x45 0x33 0x20 0x33 0x44 0x41 0x20 0x33 0x44 0x39 0x20 0x33 0x42 0x44 0x20 0x33 0x41 0x45 0x20 0x33 0x41 0x32 0x20 0x33 0x42 0x30 0x20 0x33 0x39 0x36 0x20 0x33 0x38 0x46 0x20 0x33 0x38 0x42 0x20 0x33 0x38 0x37 0x20 0x33 0x37 0x44 0x20 0x33 0x36 0x45 0x20 0x33 0x36 0x36 0x20 0x33 0x36 0x34 0x20 0x33 0x35 0x35 0x20 0x33 0x34 0x43 0x20 0x33 0x33 0x38 0x20 0x33 0x34 0x36 0x20 0x33 0x34 0x36 0x20 0x33 0x34 0x44 0x20 0x33 0x35 0x34 0x20 0x33 0x36 0x30 0x20 0x33 0x35 0x34 0x20 0x33 0x36 0x36 0x20 0x33 0x36 0x37 0x20 0x33 0x36 0x41 0x20 0x33 0x37 0x34 0x20 0x33 0x36 0x34 0x20 0x33 0x37 0x35 0x20 0x33 0x37 0x41 0x20 0x33 0x37 0x46 0x20 0x33 0x38 0x43 0x20 0x33 0x38 0x39 0x20 0x33 0x39 0x33 0x20 0x33 0x39 0x36 0x20 0x33 0x39 0x46 0x20 0x33 0x41 0x30 0x20 0x33 0x41 0x42 0x20 0x33 0x41 0x34 0x20 0x33 0x43 0x32 0x20 0x33 0x43 0x36 0x20 0x33 0x43 0x44 0x20 0x33 0x44 0x45 0x20 0x33 0x45 0x33 0x20 0x33 0x44 0x44 0x20 0x33 0x45 0x36 0x20 0x33 0x46 0x34 0x20 0x34 0x30 0x31 0x20 0x34 0x30 0x32 0x20 0x34 0x31 0x32 0x20 0x34 0x31 0x34 0x20 0x34 0x31 0x37 0x20 0x34 0x32 0x30 0x20 0x34 0x33 0x43 0x20 0x34 0x33 0x45 0x20 0x34 0x34 0x37 0x20 0x34 0x36 0x34 0x20 0x34 0x36 0x34 0x20 0x34 0x37 0x33 0x20 0x34 0x37 0x44 0x20 0x34 0x37 0x45 0x20 0x34 0x39 0x39 0x20 0x34 0x39 0x36 0x20 0x34 0x42 0x30 0x20 0x34 0x42 0x44 0x20 0x34 0x43 0x38 0x20 0x34 0x44 0x30 0x20 0x34 0x46 0x39 0x20 0x34 0x46 0x42 0x20 0x35 0x30 0x36 0x20 0x35 0x30 0x44 0x20 0x35 0x32 0x43 0x20 0x35 0x34 0x30 0x20 0x35 0x34 0x42 0x20 0x35 0x35 0x42 0x20 0x35 0x36 0x39 0x20 0x35 0x38 0x38 0x20 0x35 0x39 0x38 0x20 0x35 0x42 0x38 0x20 0x35 0x43 0x31 0x20 0x35 0x44 0x32 0x20 0x35 0x46 0x33 0x20 0x36 0x30 0x44 0x20 0x36 0x32 0x34 0x20 0x36 0x34 0x34 0x20 0x36 0x35 0x32 0x20 0x36 0x36 0x42 0x20 0x36 0x39 0x45 0x20 0x36 0x42 0x43 0x20 0x36 0x44 0x43 0x20 0x36 0x46 0x35 0x20 0x37 0x30 0x39 0x20 0x37 0x33 0x38 0x20 0x37 0x35 0x42 0x20 0x37 0x38 0x33 0x20 0x37 0x42 0x41 0x20 0x37 0x45 0x35 0x20 0x38 0x31 0x35 0x20 0x38 0x34 0x45 0x20 0x38 0x38 0x33 0x20 0x38 0x42 0x38 0x20 0x38 0x45 0x44 0x20 0x39 0x32 0x32 0x20 0x39 0x34 0x42 0x20 0x39 0x33 0x41 0x20 0x39 0x34 0x39 0x20 0x39 0x35 0x38 0x20 0x39 0x35 0x42 0x20 0x39 0x35 0x32 0x20 0x39 0x34 0x41 0x20 0x39 0x35 0x45 0x20 0x39 0x36 0x38 0x20 0x39 0x36 0x41 0x20 0x39 0x36 0x30 0x20 0x39 0x35 0x43 0x20 0x39 0x35 0x45 0x20 0x39 0x36 0x39 0x20 0x39 0x35 0x45 0x20 0x39 0x37 0x31 0x20 0x39 0x37 0x33 0x20 0x39 0x36 0x38 0x20 0x39 0x36 0x39 0x20 0x39 0x37 0x34 0x20 0x39 0x37 0x45 0x20 0x39 0x38 0x33 0x20 0x39 0x37 0x34 0x20 0x39 0x37 0x35 0x20 0x39 0x37 0x38 0x20 0x39 0x38 0x45 0x20 0x39 0x38 0x46 0x20 0x39 0x39 0x33 0x20 0x39 0x38 0x34 0x20 0x39 0x39 0x38 0x20 0x39 0x39 0x46 0x20 0x39 0x41 0x37 0x20 0x39 0x41 0x41 0x20 0x39 0x42 0x37 0x20 0x39 0x41 0x32 0x20 0x39 0x41 0x44 0x20 0x39 0x41 0x45 0x20 0x39 0x42 0x35 0x20 0x39 0x42 0x36 0x20 0x39 0x41 0x38 0x20 0x39 0x44 0x31 0x20 0x39 0x43 0x34 0x20 0x39 0x43 0x36 0x20 0x39 0x43 0x43 0x20 0x39 0x43 0x46 0x20 0x39 0x42 0x33 0x20 0x39 0x39 0x37 0x20 0x39 0x37 0x30 0x20 0x39 0x35 0x45 0x20 0x39 0x34 0x31 0x20 0x39 0x32 0x37 0x20 0x39 0x30 0x39 0x20 0x38 0x45 0x30 0x20 0x38 0x43 0x43 0x20 0x38 0x42 0x36 0x20 0x38 0x39 0x32 0x20 0x38 0x37 0x44 0x20 0x38 0x36 0x37 0x20 0x38 0x34 0x42 0x20 0x38 0x33 0x36 0x20 0x38 0x32 0x34 0x20 0x38 0x30 0x44 0x20 0x38 0x30 0x31 0x20 0x37 0x45 0x44 0x20 0x37 0x44 0x31 0x20 0x37 0x42 0x43 0x20 0x37 0x42 0x30 0x20 0x37 0x39 0x43 0x20 0x37 0x38 0x37 0x20 0x37 0x37 0x34 0x20 0x37 0x37 0x31 0x20 0x37 0x35 0x32 0x20 0x37 0x34 0x38 0x20 0x37 0x34 0x39 0x20 0x37 0x32 0x32 0x20 0x37 0x31 0x30 0x20 0x37 0x30 0x36 0x20 0x36 0x46 0x31 0x20 0x36 0x46 0x46 0x20 0x36 0x44 0x46 0x20 0x36 0x44 0x46 0x20 0x36 0x43 0x42 0x20 0x36 0x42 0x34 0x20 0x36 0x41 0x38 0x20 0x36 0x41 0x43 0x20 0x36 0x41 0x46 0x20 0x36 0x38 0x43 0x20 0x36 0x37 0x44 0x20 0x36 0x37 0x35 0x20 0x36 0x36 0x46 0x20 0x36 0x36 0x35 0x20 0x36 0x35 0x36 0x20 0x36 0x35 0x31 0x20 0x36 0x34 0x38 0x20 0x36 0x33 0x43 0x20 0x36 0x33 0x34 0x20 0x36 0x34 0x30 0x20 0x36 0x33 0x38 0x20 0x36 0x32 0x33 0x20 0x36 0x31 0x46 0x20 0x36 0x30 0x43 0x20 0x36 0x30 0x30 0x20 0x36 0x30 0x32 0x20 0x35 0x46 0x41 0x20 0x35 0x46 0x35 0x20 0x35 0x45 0x34 0x20 0x35 0x45 0x33 0x20 0x35 0x44 0x34 0x20 0x35 0x45 0x34 0x20 0x35 0x44 0x41 0x20 0x35 0x42 0x46 0x20 0x35 0x43 0x36 0x20 0x35 0x43 0x32 0x20 0x35 0x42 0x45 0x20 0x35 0x42 0x46 0x20 0x35 0x41 0x41 0x20 0x35 0x41 0x44 0x20 0x35 0x41 0x38 0x20 0x35 0x39 0x46 0x20 0x35 0x41 0x36 0x20 0x35 0x39 0x42 0x20 0x35 0x41 0x35 0x20 0x35 0x41 0x33 0x20 0x35 0x38 0x36 0x20 0x35 0x39 0x37 0x20 0x35 0x38 0x37 0x20 0x35 0x37 0x43 0x20 0x35 0x38 0x33 0x20 0x35 0x37 0x46 0x20 0x35 0x37 0x38 0x20 0x35 0x37 0x41 0x20 0x35 0x38 0x30 0x20 0x35 0x37 0x31 0x20 0x35 0x37 0x33 0x20 0x35 0x37 0x45 0x20 0x35 0x36 0x32 0x20 0x35 0x36 0x45 0x20 0x35 0x36 0x37 0x20 0x35 0x39 0x32 0x20 0x35 0x42 0x32 0x20 0x35 0x42 0x42 0x20 0x35 0x45 0x38 0x20 0x35 0x46 0x46 0x20 0x36 0x32 0x39 0x20 0x36 0x34 0x43 0x20 0x36 0x37 0x34 0x20 0x36 0x39 0x39 0x20 0x36 0x43 0x30 0x20 0x36 0x45 0x35 0x20 0x37 0x31 0x36 0x20 0x37 0x35 0x41 0x20 0x37 0x37 0x44 0x20 0x37 0x43 0x34 0x20 0x38 0x30 0x30 0x20 0x38 0x34 0x36 0x20 0x38 0x39 0x33 0x20 0x38 0x43 0x46 0x20 0x39 0x39 0x41 0x20 0x31 0x30 0x33 0x44 0x20 0x31 0x30 0x32 0x31 0x20 0x31 0x30 0x31 0x37 0x20 0x31 0x30 0x31 0x39 0x20 0x31 0x30 0x32 0x30 0x20 0x31 0x30 0x31 0x39 0x20 0x31 0x30 0x31 0x43 0x20 0x31 0x30 0x32 0x31 0x20 0x31 0x30 0x32 0x32 0x20 0x31 0x30 0x32 0x36 0x20 0x31 0x30 0x32 0x41 0x20 0x31 0x30 0x32 0x44 0x20 0x31 0x30 0x33 0x39 0x20 0x31 0x30 0x37 0x33 0x20 0x31 0x31 0x44 0x30 0x20 0x31 0x33 0x31 0x34 0x20 0x34 0x46 0x20 0x36 0x43 0x20 0x37 0x43 0x20 0x39 0x31 0x20 0x39 0x30 0x20 0x38 0x36 0x20 0x37 0x45 0x20 0x36 0x31 0x20 0x35 0x46 0x20 0x35 0x34 0x20 0x35 0x35 0x20 0x34 0x46 0x20 0x33 0x44 0x20 0x33 0x36 0x20 0x35 0x30 0x20 0x34 0x45 0x20 0x33 0x39 0x20 0x34 0x37 0x20 0x34 0x45 0x20 0x34 0x31 0x20 0x33 0x42 0x20 0x34 0x44 0x20 0x34 0x37 0x20 0x33 0x44 0x20 0x33 0x34 0x20 0x33 0x46 0x20 0x33 0x36 0x20 0x33 0x33 0x20 0x33 0x39 0x20 0x34 0x32 0x20 0x33 0x42 0x20 0x33 0x35 0x20 0x33 0x38 0x20 0x33 0x38 0x20 0x34 0x42 0x20 0x33 0x39 0x20 0x34 0x34 0x20 0x33 0x33 0x20 0x34 0x41 0x20 0x34 0x46 0x20 0x34 0x38 0x20 0x34 0x43 0x20 0x34 0x46 0x20 0x34 0x39 0x20 0x33 0x37 0x20 0x34 0x36 0x20 0x33 0x35 0x20 0x34 0x42 0x20 0x34 0x36 0x20 0x34 0x45 0x20 0x35 0x36 0x20 0x35 0x37 0x20 0x34 0x42 0x20 0x34 0x45 0x20 0x34 0x44 0x20 0x34 0x45 0x20 0x34 0x46 0x20 0x34 0x44 0x20 0x34 0x41 0x20 0x34 0x45 0x20 0x34 0x38 0x20 0x34 0x41 0x20 0x35 0x31 0x20 0x35 0x36 0x20 0x34 0x43 0x20 0x34 0x39 0x20 0x34 0x44 0x20 0x34 0x44 0x20 0x34 0x31 0x20 0x34 0x45 0x20 0x33 0x42 0x20 0x34 0x37 0x20 0x34 0x42 0x20 0x35 0x32 0x20 0x35 0x36 0x20 0x35 0x42 0x20 0x36 0x31 0x20 0x36 0x31 0x20 0x35 0x45 0x20 0x35 0x36 0x20 0x36 0x33 0x20 0x36 0x36 0x20 0x35 0x35 0x20 0x35 0x33 0x20 0x34 0x42 0x20 0x34 0x38 0x20 0x35 0x31 0x20 0x35 0x41 0x20 0x36 0x37 0x20 0x36 0x36 0x20 0x37 0x35 0x20 0x38 0x39 0x20 0x39 0x36 0x20 0x39 0x35 0x20 0x37 0x36 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x20 0x30 0x03  |

P.S. 刚才看到一个我不知道的常识：

>   搞底层的都懂，这是常识。默认情况下，通讯传输的 K 是 1000 ，存储的 K 是 1024。

我只知道传输通常用 bit，存储通常用 byte。不知道原来传输的 K 居然是 1000！