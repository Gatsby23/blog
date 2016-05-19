---
title: Vim Rules
date: 2015-11-23
key-words:
tags:
    - vim
    - rule
    - util
...

Vim Rules
=========

Vim rules. Rules, a verb. Vim rules. Rules, a noun.

[vim graphical cheat sheet](http://gnat.qiniudn.com/vim.svg)

Cmds
----

delete trailing whitespace

`:%s/\s\+$//`

pangu-spacing（在中英文之间加上空格）

```plain
silent! '<,'>s/\([\u4e00-\u9fa5\u3040-\u30FF]\)\([a-zA-Z0-9@&=\[\$\%\^\-\+(\/\\]\)/\1 \2/g
silent! '<,'>s/\([a-zA-Z0-9!&;=\]\,\.\:\?\$\%\^\-\+\)\/\\]\)\([\u4e00-\u9fa5\u3040-\u30FF]\)/\1 \2/g
```

把上面的两行拷贝到某一个寄存器如 `p`（选中上面上行，然后执行 `:"py`），然后选定
文本，执行 `:@p`。

或者把这两句话加到 Vim 里，然后选中，执行 `:call Pangu()`。

```vim
function! Pangu()   " :call Pangu()
    silent! '<,'>s/\([\u4e00-\u9fa5\u3040-\u30FF]\)\([a-zA-Z0-9@&=\[\$\%\^\-\+(\/\\]\)/\1 \2/g
    silent! '<,'>s/\([a-zA-Z0-9!&;=\]\,\.\:\?\$\%\^\-\+\)\/\\]\)\([\u4e00-\u9fa5\u3040-\u30FF]\)/\1 \2/g
endfunction
```

每天必用的 Vim 宏
-----------------

注意，这里有不可见字符！使用的时候拷贝到相应寄存器再 `@x` 即可调用。

QObject &rarr; `QObject`{.cpp}
:   ```
    viwbi`ea`{.cpp}k
    ```

tr() &rarr; `tr()`{.cpp}, QObject::tr() &rarr; `QObject::tr()`{.cpp},

:   ```
    viWBi`f)a`{.cpp}k
    ```

Qt::SolidPattern, `Qt::SolidPattern`{.cpp}

每天必守 Vim 家规
-----------------

寄存器

#. `a`, `b`: temp register
#. `c`: class: QObject &rarr; `QObject`{.cpp}
#. `g`: namespace: Qt::Red &rarr; `Qt::Red`{.cpp}
#. `f`: function: QObject::tr() &rarr; `QObject::tr()`{.cpp}
#. `r`: refs
#. `n`: now
#. `m`:
#. `v`:
#. `w`:
#. `t`: tilde: word &rarr; `word`

---

Refs

#. [pangu.vim/pangu.vim at master · hotoo/pangu.vim](https://github.com/hotoo/pangu.vim/blob/master/plugin/pangu.vim)
