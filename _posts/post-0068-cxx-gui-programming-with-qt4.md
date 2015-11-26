% C++ GUI Programming with Qt4 | C++ GUI Qt4 编程（第二版）
% TANG ZhiXiong
% 2015-11-23

C++ GUI Qt4 编程
================

<!--
class:
viwbi`ea`{.cpp}k
function:
viWBi`f)a`{.cpp}k
glob:
f:bi`f:eea`{.cpp}k
-->
<div style="float:right;">[![](http://img3.douban.com/mpic/s5934624.jpg)](http://book.douban.com/subject/3173123/)</div>

本书 example 源码是可以免费下到的：[C++ GUI Programming with Qt4, 2nd Edition | InformIT](http://www.informit.com/store/c-plus-plus-gui-programming-with-qt4-9780132354165)

Part I: Basic Qt
----------------

### 1. Getting Started

#### Hello Qt

hello.cpp

```cpp
#include <QApplication>
#include <QLabel>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QLabel *label = new QLabel("Hello Qt!");
    label->show();
    return app.exec();
}
```

hello.pro

```plain
TEMPLATE      = app
SOURCES       = hello.cpp
```

```bash
# gen Makefile
$ qmake hello.pro
$ make

# template: VC Project
$ qmake -tp vc hello.pro
```

qmake 的帮助

<small><small>
```bash
$ qmake -help
Usage: c:\Qt\qt-4.8.6-x64-msvc2010\qt-4.8.6-x64-msvc2010\bin\qmake.exe [mode] [options] [files]

QMake has two modes, one mode for generating project files based on
some heuristics, and the other for generating makefiles. Normally you
shouldn't need to specify a mode, as makefile generation is the default
mode for qmake, but you may use this to test qmake on an existing project

Mode:
  -project       Put qmake into project file generation mode
                 In this mode qmake interprets files as files to
                 be built,
                 defaults to *.c; *.ui; *.y; *.l; *.ts; *.xlf; *.qrc; *.h; *.hpp; *.hh; *.hxx; *.cpp; *.cc; *.cxx
                 Note: The created .pro file probably will
                 need to be edited. For example add the QT variable to
                 specify what modules are required.
  -makefile      Put qmake into makefile generation mode (default)
                 In this mode qmake interprets files as project files to
                 be processed, if skipped qmake will try to find a project
                 file in your current working directory

Warnings Options:
  -Wnone         Turn off all warnings; specific ones may be re-enabled by
                 later -W options
  -Wall          Turn on all warnings
  -Wparser       Turn on parser warnings
  -Wlogic        Turn on logic warnings (on by default)
  -Wdeprecated   Turn on deprecation warnings (on by default)

Options:
   * You can place any variable assignment in options and it will be     *
   * processed as if it was in [files]. These assignments will be parsed *
   * before [files].                                                     *
  -o file        Write output to file
  -d             Increase debug level
  -t templ       Overrides TEMPLATE as templ
  -tp prefix     Overrides TEMPLATE so that prefix is prefixed into the value
  -help          This help
  -v             Version information
  -after         All variable assignments after this will be
                 parsed after [files]
  -norecursive   Don't do a recursive search
  -recursive     Do a recursive search
  -set <prop> <value> Set persistent property
  -unset <prop>  Unset persistent property
  -query <prop>  Query persistent property. Show all if <prop> is empty.
  -cache file    Use file as cache           [makefile mode only]
  -spec spec     Use spec as QMAKESPEC       [makefile mode only]
  -nocache       Don't use a cache file      [makefile mode only]
  -nodepend      Don't generate dependencies [makefile mode only]
  -nomoc         Don't generate moc targets  [makefile mode only]
  -nopwd         Don't look for files in pwd [project mode only]
```
</small></small>

环境变量的设置：

环境变量 | 值
-------- | ---
`%QTDIR%` | `C:\Qt\qt-4.8.6-x64-msvc2010\qt-4.8.6-x64-msvc2010`
`%QTMAKESPEC%` | `win32-msvc2010`

```bash
$ mkdir build && cd build
$ qmake -spec win32-msvc2020 -r -tp vc
```

（这样编译的项目虽然 工程在外面（out of source），但 build 出来的东西，居然在源码的文件夹啊。）


```cpp
QLabel *label = new QLabel("<h2><i>Hello</i> "
                           "<font color=red>Qt!</font></h2>");
```

如果你有一个 cpp 文件，比如 `quit.cpp`，在文件夹下 `qmake -project`{.bash} 可以产生一个 `.pro` Qt 工程文件，
再 `qmake quit.pro`{.bash} 就可以产生 Makefile。

#### Making Connections

`setValue(value)`{.cpp} &rarr; `valueChanged(value)`{.cpp}

Layouts

#. `QHBoxLayout`{.cpp}
#. `QVBoxLayout`{.cpp}
#. `QGridLayout`{.cpp}

```cpp
QWidget *window = new QWidget;
window->setWindowTitle("Enter Your Age");

QSpinBox *spinBox = new QSpinBox;
QSlider *slider = new QSlider(Qt::Horizontal);
spinBox->setRange(0, 130);
slider->setRange(0, 130);

QObject::connect(spinBox, SIGNAL(valueChanged(int)),
                 slider, SLOT(setValue(int)));
QObject::connect(slider, SIGNAL(valueChanged(int)),
                 spinBox, SLOT(setValue(int)));
spinBox->setValue(35);

QHBoxLayout *layout = new QHBoxLayout;
layout->addWidget(spinBox);
layout->addWidget(slider);
window->setLayout(layout);

window->show();

QPushButton *button = new QPushButton("Quit");
QObject::connect(button, SIGNAL(clicked()),
                 &app, SLOT(quit()));
```

```bash
./hello.exe -style motif
```

#### Using the Reference Documentation

（文档确实丰富。）

### 2. Creating Dialogs

```cpp
connect(lineEdit, SIGNAL(textChanged(const QString &)),
        this, SLOT(enableFindButton(const QString &)));

QVBoxLayout *leftLayout = new QVBoxLayout;
leftLayout->addLayout(topLeftLayout);
leftLayout->addWidget(caseCheckBox);
leftLayout->addWidget(backwardCheckBox);

QHBoxLayout *mainLayout = new QHBoxLayout;
mainLayout->addLayout(leftLayout);
mainLayout->addLayout(rightLayout);
setLayout(mainLayout);

setWindowTitle(tr("Find"));
setFixedHeight(sizeHint().height()); // ideal height

Qt::CaseSensitivity cs =
        caseCheckBox->isChecked() ? Qt::CaseSensitive
                                  : Qt::CaseInsensitive;
```

`QWidget::sizeHint()`{.cpp} &rarr; "ideal" size.

The `emit` keyword is specific to Qt; like other Qt extensions it is converted
into standard C++ by the **C++ preprocessor**.

Since the `FindDialog` class definition contains the `Q_OBJECT` macro, the
makefile generated by `qmake`{.bash} will include special rules to run `moc`, Qt's
**meta-object compiler**.

```cpp
QCheckBox *caseCheckBox = new QCheckBox(tr("Match &case"));
QPushButton *closeButton = new QPushButton(tr("Close"));
QWidget::setTabOrder()
```

#### Signals and Slots in Depth

#. One signal can be connected to many slots:

    When the signal is emitted, the slots are called one after the other, in an unspecified order.

    ```cpp
    connect(slider, SIGNAL(valueChanged(int)),
            spinBox, SLOT(setValue(int)));
    connect(slider, SIGNAL(valueChanged(int)),
            this, SLOT(updateStatusBarIndicator(int)));
    ```

#. Many signals can be connected to the same slot:

    When either signal is emitted, the slot is called.

    ```cpp
    connect(lcd, SIGNAL(overflow()),
            this, SLOT(handleMathError()));
    connect(calculator, SIGNAL(divisionByZero()),
            this, SLOT(handleMathError()));
    ```

#. A signal can be connected to another signal:

    ```cpp
    connect(lineEdit, SIGNAL(textChanged(const QString &)),
            this, SIGNAL(updateRecord(const QString &)));
    ```

#. Connections can be removed:

    ```cpp
    disconnect(lcd, SIGNAL(overflow()),
               this, SLOT(handleMathError()));
    ```

#. Parameter types

    ```cpp
    // same
    connect(ftp, SIGNAL(rawCommandReply(int, const QString &)),
            this, SLOT(processReply(int, const QString &)));
    // less
    connect(ftp, SIGNAL(rawCommandReply(int, const QString &)),
            this, SLOT(checkErrorCode(int)));
    ```

![set-layout-png]

#### Qt's Meta-Object System

The mechanism is called the **meta-object** system, and it provides two key
services: `signal-slots` and `introspection`. The introspection functionality
is necessary for implementing signals and slots, and allows application
programmers to obtain "meta-information" about QObject subclasses at run-time,
including the list of signals and slots supported by the object and its class
name. The mechanism also supports properties (used extensively by Qt Designer)
and text translation (for internationalization), and it lays the foundation for
the QtScript module.

Standard C++ doesn't provide support for the dynamic meta-information needed by
Qt's meta-object system. Qt solves this problem by providing a separate tool,
moc, that parses `Q_OBJECT` class definitions and makes the information available
through C++ functions. Since `moc` implements all its functionality using pure
C++, Qt's meta-object system works with any C++ compiler.

The mechanism works as follows:

#. The `Q_OBJECT` macro declares some introspection functions that must be
   implemented in every `QObject`{.cpp} subclass: `metaObject()`{.cpp},
   `tr()`{.cpp}, `qt_metacall()`{.cpp}, and a few more.
#. Qt's moc tool generates implementations for the functions declared by
   `Q_OBJECT` and for all the signals.
#. QObject member functions such as `connect()`{.cpp} and `disconnect()`{.cpp}
   use the introspection functions to do their work.

All of this is handled automatically by `qmake`{.bash}, `moc`, and
`QObject`{.cpp}, so you rarely need to think about it. But if you are curious,
you can read the QMetaObject class documentation and have a look at the C++
source files generated by moc to see how the implementation works.

```cpp
QRegExp regExp("[A-Za-z][1-9][0-9]{0,2}");
lineEdit->setValidator(new QRegExpValidator(regExp, this));
```

The `qmake`{.bash} tool is smart enough to detect the user interface file
`gotocelldialog.ui` and to generate the appropriate makefile rules to invoke uic,
Qt's user interface compiler. The uic tool converts gotocelldialog.ui into C++
and puts the result in `ui_gotocelldialog.h`{.cpp}.

In the constructor, we call `setupUi()` to initialize the form.

Also in the constructor, we set up a validator to restrict the range of the
input. Qt provides three built-in validator classes: `QIntValidator`,
`QDoubleValidator`, and `QRegExpValidator`. Here we use a `QRegExpValidator` with the
regular expression "[A-Za-z][1-9][0-9]{0,2}", which means: Allow one uppercase
or lowercase letter, followed by one digit in the range 1 to 9, followed by
zero, one, or two digits each in the range 0 to 9. (For an introduction to
regular expressions, see the QRegExp class documentation.)

By passing this to the `QRegExpValidator`{.cpp} constructor, we make it a child of the
GoToCellDialog object. By doing so, we don't have to worry about deleting the
`QRegExpValidator`{.cpp} later; it will be deleted automatically when its parent is
deleted.

**Qt's parent-child mechanism** is implemented in `QObject`{.cpp}. When we create an object
(a widget, validator, or any other kind) with a parent, the parent adds the
object to the list of its children. When the parent is deleted, it walks
through its list of children and deletes each child. The children themselves
then delete all of their children, and so on **recursively until none remain**. The
parent–child mechanism **greatly simplifies memory management**, **reducing the risk
of memory leaks**. **The only objects we must call delete on are the objects we
create with new and that have no parent.** And if we delete a child object before
its parent, Qt will automatically remove that object from the parent's list of
children.  For widgets, the parent has an additional meaning: *Child widgets are
shown within the parent's area*. When we delete the parent widget, not only does
the child vanish from memory, it also vanishes from the screen.  At the end of
the constructor, we connect the OK button to `QDialog`{.cpp}'s `accept()` slot and the
Cancel button to the `reject()` slot. Both slots close the dialog, but `accept()`
sets the dialog's result value to `QDialog::Accepted`{.cpp} (which equals 1), and
`reject()` sets the result to `QDialog::Rejected`{.cpp} (which equals 0).  When we use
this dialog, we can use the result to see if the user clicked <kbd>OK</kbd> and act
accordingly.

```cpp
// 在 gotocell.h 里继承 UI 文件的类
class GoToCellDialog : public QDialog, public Ui::GoToCellDialog

// 在 gotocell.cpp 里直接用（不用 ui->buttonBox）
connect(buttonBox, SIGNAL(accepted()), this, SLOT(accept()));
connect(buttonBox, SIGNAL(rejected()), this, SLOT(reject()));

// signal/slot 默认名称的，也直接实现即可
void GoToCellDialog::on_lineEdit_textChanged()
{
    buttonBox->button(QDialogButtonBox::Ok)->setEnabled(
    lineEdit->hasAcceptableInput());
}
```

#### Rapid Dialog Design

![shape changing dialog][shape-chaning-dlg]

We will create the widget with its extended appearance in Qt Designer, and hide
the secondary and tertiary keys at run-time as needed. The widget looks
complicated, but it's fairly easy to do in Qt Designer. The trick is to do the
primary key part first, then duplicate it twice to obtain the secondary and
tertiary keys

#### Shape-Changing Dialogs

![][layout-three-parts]
![][connecting]
![][connecting2]

```cpp
secondaryGroupBox->hide();
tertiaryGroupBox->hide();
layout()->setSizeConstraint(QLayout::SetFixedSize); // 固定尺寸

QChar ch = first;
while (ch <= last) {
    primaryColumnCombo->addItem(QString(ch));
    ch = ch.unicode() + 1;
}
```

The other common type of shape-changing dialogs, multi-page dialogs, are even
easier to create in Qt, either in code or using Qt Designer. Such dialogs can
be built in many different ways.

#. A `QTabWidget`{.cpp} can be used in its own right. It provides a tab bar that
   controls a built-in `QStackedWidget`{.cpp}.
#. A `QListWidget`{.cpp} and a `QStackedWidget`{.cpp} can be used together, with the
   `QListWidget`{.cpp}'s current item determining which page the `QStackedWidget`{.cpp} shows,
   by connecting the `QListWidget::currentRowChanged()`{.cpp} signal to the
   `QStackedWidget::setCurrentIndex()`{.cpp} slot.
#. A `QTreeWidget`{.cpp} can be used with a `QStackedWidget`{.cpp} in a similar
   way to a `QListWidget`{.cpp}.

#### Dynamic Dialogs

Dynamic dialogs are dialogs that are created from Qt Designer .ui files at
run-time. Instead of converting the .ui file to C++ code using uic, we can load
the file at run-time using the QUiLoader class:

```cpp
QUiLoader uiLoader;
QFile file("sortdialog.ui");
QWidget *sortDialog = uiLoader.load(&file);
if (sortDialog) {
    ...
}
```

We can access the form's child widgets using `QObject::findChild<T>()`{.cpp}:

```cpp
QComboBox *primaryColumnCombo =
    sortDialog->findChild<QComboBox *>("primaryColumnCombo");
if (primaryColumnCombo) {
    ...
}
```

#### Built-in Widget and Dialog Classes

#. Single-page container widgets
    i. `QPushButton`{.cpp}
    #. `QToolButton`{.cpp}
    #. `QCheckBox`{.cpp}
    #. `QRadioButton`{.cpp}
#. Multi-page container widgets
    i. `QGroupBox`{.cpp}
    #. `QFrame`{.cpp}
#. Item viw widgets
    i. `QTabWidget`{.cpp}
    #. `QToolBox`{.cpp}
#. Display widgets
    i. `QListView`{.cpp}
    #. `QTreeView`{.cpp}
    #. `QListView`{.cpp} (as icons)
    #. `QTableView`{.cpp}
#. Input widgets
    i. `QLabel`{.cpp} (text)
    #. `QLabel`{.cpp} (image)
    #. `QLCDNumber`{.cpp}
    #. `QProgressBar`{.cpp}
    #. `QTextBrowser`{.cpp}
    #. `QSpinBox`{.cpp}
    #. `QDoubleSpinBox`{.cpp}
    #. `QComboBox`{.cpp}
    #. `QDateEdit`{.cpp}
    #. `QTimeEdit`{.cpp}
    #. `QDateTimeEdit`{.cpp}
    #. `QScrollBar`{.cpp}
    #. `QSlider`{.cpp}
    #. `QLineEdit`{.cpp}
    #. `QDial`{.cpp}
#. Feedback dialogs
    i. `QTextEdit`{.cpp}
    #. `QInputDialog`{.cpp}
    #. `QProgressDialog`{.cpp}
    #. `QMessageBox`{.cpp}
    #. `QErrorMessage`{.cpp}
#. Color and font dialogs
    i. `QColorDialog`{.cG;
    void updateStatusBar();
    void spreadsheetModified();
    ...

private:
    void createActions();
    void createMenus();
    void createContextMenu();
    void createToolBars();
    void createStatusBar();
    void readSettings();
    void writeSettings();
    ...

    Spreadsheet *spreadsheet;
    FindDialog *findDialog;
    QLabel *locationLabel;
    QLabel *formulaLabel;
    QStringList recentFiles;
    QString curFile;

    enum { MaxRecentFiles = 5 };
    QAction *recentFileActions[MaxRecentFiles];
    QAction *separatorAction;

    QMenu *fileMenu;
    QMenu *editMenu;
    QMenu *selectSubMenu;
    QMenu *toolsMenu;
    ...
```

`.pro`

```plain
RESOURCES = spreadsheet.qrc
```

`.qrc`

```xml
<RCC>
<qresource>
    <file>images/icon.png</file>
    ...
    <file>images/gotocell.png</file>
</qresource>
</RCC>
```

#### Creating Menus and Toolbars

![menus][menu]

```cpp
void MainWindow::createActions()
{
    newAction = new QAction(tr("&New"), this);
    newAction->setIcon(QIcon(":/images/new.png"));
    newAction->setShortcut(QKeySequence::New);
    newAction->setStatusTip(tr("Create a new spreadsheet file"));
    connect(newAction, SIGNAL(triggered()), this, SLOT(newFile()));

    openAction...
    saveAction...
    saveAsAction...

    for (int i = 0; i < MaxRecentFiles; ++i) {
        recentFileActions[i] = new QAction(this);
        recentFileActions[i]->setVisible(false);
        connect(recentFileActions[i], SIGNAL(triggered()),
                this, SLOT(openRecentFile()));
    }

    exitAction...
    cutAction...
    copyAction...
    pasteAction...
    deleteAction...
    selectRowAction...
    selectColumnAction...
    selectAllAction...
    findAction...
    goToCellAction...
    recalculateAction...
    sortAction...

    showGridAction = new QAction(tr("&Show Grid"), this);
    showGridAction->setCheckable(true);
    showGridAction->setChecked(spreadsheet->showGrid());
    showGridAction->setStatusTip(tr("Show or hide the spreadsheet's "
                                    "grid"));
    connect(showGridAction, SIGNAL(toggled(bool)),
            spreadsheet, SLOT(setShowGrid(bool)));
#if QT_VERSION < 0x040102
    // workaround for a QTableWidget bug in Qt 4.1.1
    connect(showGridAction, SIGNAL(toggled(bool)),
            spreadsheet->viewport(), SLOT(update()));
#endif

    autoRecalcAction = new QAction(tr("&Auto-Recalculate"), this);
    autoRecalcAction->setCheckable(true);
    autoRecalcAction->setChecked(spreadsheet->autoRecalculate());
    autoRecalcAction->setStatusTip(tr("Switch auto-recalculation on or "
                                      "off"));
    connect(autoRecalcAction, SIGNAL(toggled(bool)),
            spreadsheet, SLOT(setAutoRecalculate(bool)));

    aboutAction = new QAction(tr("&About"), this);
    aboutAction->setStatusTip(tr("Show the application's About box"));
    connect(aboutAction, SIGNAL(triggered()), this, SLOT(about()));

    aboutQtAction = new QAction(tr("About &Qt"), this);
    aboutQtAction->setStatusTip(tr("Show the Qt library's About box"));
    connect(aboutQtAction, SIGNAL(triggered()), qApp, SLOT(aboutQt()));
}
```

Show Grid is a checkable action. Checkable actions are rendered with a
check-mark in the menu and implemented as toggle buttons in the toolbar. When
the action is turned on, the Spreadsheet component displays a grid. We
initialize the action with the default for the Spreadsheet component so that
they are synchronized at startup.

```cpp
void MainWindow::createMenus()
{
    // QMainWindow::menuBar() function returns a pointer to a QMenuBar.
    // The menu bar is created the first time menuBar() is called.
    fileMenu = menuBar()->addMenu(tr("&File"));
    fileMenu->addAction(newAction);
    fileMenu->addAction(openAction);
    fileMenu->addAction(saveAction);
    fileMenu->addAction(saveAsAction);
    separatorAction = fileMenu->addSeparator();
    for (int i = 0; i < MaxRecentFiles; ++i)
        fileMenu->addAction(recentFileActions[i]);
    fileMenu->addSeparator();
    fileMenu->addAction(exitAction);

    editMenu, toolsMenu, optionsMenu...

    menuBar()->addSeparator();

    helpMenu...
```

![context menu][context-menu]

```cpp
void MainWindow::createContextMenu()
{
    // QWidget::addAction
    spreadsheet->addAction(cutAction);
    spreadsheet->addAction(copyAction);
    spreadsheet->addAction(pasteAction);
    spreadsheet->setContextMenuPolicy(Qt::ActionsContextMenu);
}
```

A more sophisticated way of providing context menus is to reimplement the
`QWidget::contextMenuEvent()`{.cpp} function, create a `QMenu`{.cpp} widget, populate it with
the desired actions, and call `exec()`{.cpp} on it.

![ToolBar][toolbar]

```cpp
void MainWindow::createToolBars()
{
    // QToolBar *QMainWindow::addToolBar(title)
    fileToolBar = addToolBar(tr("&File"));
    fileToolBar->addAction(newAction);
    ...

    editToolBar = addToolBar(tr("&Edit"));
    ...
    editToolBar->addSeparator();
    ...
}
```

#### Setting Up the Status Bar

![Status Bar][status-bar]

```cpp
void MainWindow::createStatusBar()
{
    locationLabel = new QLabel(" W999 ");
    locationLabel->setAlignment(Qt::AlignHCenter);
    locationLabel->setMinimumSize(locationLabel->sizeHint());

    formulaLabel = new QLabel;
    formulaLabel->setIndent(3);

    // The QMainWindow::statusBar() function returns a pointer to the status
    // bar. (The status bar is created the first time statusBar() is called.)
    statusBar()->addWidget(locationLabel);
    statusBar()->addWidget(formulaLabel, 1);

    connect(spreadsheet, SIGNAL(currentCellChanged(int, int, int, int)),
            this, SLOT(updateStatusBar()));
    connect(spreadsheet, SIGNAL(modified()),
            this, SLOT(spreadsheetModified()));

    updateStatusBar();
}

void MainWindow::updateStatusBar()
{
    locationLabel->setText(spreadsheet->currentLocation());
    formulaLabel->setText(spreadsheet->currentFormula());
}
```

#### Implementing the File Menu

```cpp
void MainWindow::newFile()
{
    if (okToContinue()) {
        spreadsheet->clear();
        setCurrentFile("");
    }
}

bool MainWindow::okToContinue()
{
    if (isWindowModified()) {
        int r = QMessageBox::warning(this, tr("Spreadsheet"),
                        tr("The document has been modified.\n"
                           "Do you want to save your changes?"),
                        QMessageBox::Yes | QMessageBox::No
                        | QMessageBox::Cancel);
        if (r == QMessageBox::Yes) {
            return save();
        } else if (r == QMessageBox::Cancel) {
            return false;
        }
    }
    return true;
}
```

![QMessageBox Styles][qmessagebox-style]

```cpp
QString fileName =
    QFileDialog::getOpenFileName(this,
                                 tr("Open Spreadsheet"), ".",
                                 tr("Spreadsheet files (*.sp)"));
if (!fileName.isEmpty())
    loadFile(fileName);
```

```cpp
bool MainWindow::save()
{
    if (curFile.isEmpty()) {
        return saveAs();
    } else {
        return saveFile(curFile);
    }
}
```

Syntax:

#. `QMessageBox::warning(parent, title, message, buttons)`{.cpp}
#. `QFileDialog::getOpenFileName(parent, title, filter)`{.cpp}
#. `QFileDialog::getSaveFileName(parent, title, filter)`{.cpp}

`QWidget::closeEvent()`{.cpp}, we can intercept attempts to close the main
window and decide whether we want the window to actually close or not.

```cpp
void MainWindow::closeEvent(QCloseEvent *event)
{
    if (okToContinue()) {
        writeSettings();
        event->accept();
    } else {
        event->ignore();
    }
}
```

```cpp
void MainWindow::setCurrentFile(const QString &fileName)
{
    curFile = fileName;
    setWindowModified(false);

    QString shownName = tr("Untitled");
    if (!curFile.isEmpty()) {
        shownName = strippedName(curFile);
        recentFiles.removeAll(curFile);
        recentFiles.prepend(curFile);
        updateRecentFileActions();
    }

    setWindowTitle(tr("%1[*] - %2").arg(shownName)
                                   .arg(tr("Spreadsheet")));

    for (int j = 0; j < MaxRecentFiles; ++j) {
        if (j < recentFiles.count()) {
            QString text = tr("&%1 %2")
                           .arg(j + 1)
                           .arg(strippedName(recentFiles[j]));
            recentFileActions[j]->setText(text);
            recentFileActions[j]->setData(recentFiles[j]); // QVariant
            recentFileActions[j]->setVisible(true);
        } else {
            recentFileActions[j]->setVisible(false);
        }
    }
    separatorAction->setVisible(!recentFiles.isEmpty()); // 五体投地！
}

QString MainWindow::strippedName(const QString &fullFileName)
{
    return QFileInfo(fullFileName).fileName();
}

QMutableStringListIterator i(recentFiles);
while (i.hasNext()) {
    if (!QFile::exists(i.next()))
        i.remove();
}
```

Every action can have an associated "data" item of type `QVariant`{.cpp}. The
`QVariant`{.cpp} type can hold values of many C++ and Qt types; we cover it in
Chapter 11. Here, we store the full name of the file in the action's "data"
item so that we can easily retrieve it later. We also set the action to be
visible.

The `qobject_cast<T>()`{.cpp} function performs a dynamic cast based on the
meta-information generated by moc, Qt's meta-object compiler. It returns a
pointer of the requested QObject subclass, or 0 if the object cannot be cast to
that type. Unlike the Standard C++ `dynamic_cast<T>()`{.cpp}, Qt's
`qobject_cast<T>()`{.cpp} works correctly across dynamic library boundaries. In
our example, we use `qobject_cast<T>()`{.cpp} to cast a `QObject`{.cpp} pointer
to a `QAction`{.cpp} pointer. If the cast is successful (it should be), we call
`loadFile()`{.cpp} with the full file name that we extract from the action's data.

```cpp
// connect(recentFileActions[i], SIGNAL(triggered()),
//         this, SLOT(openRecentFile()))

void MainWindow::openRecentFile()
{
    if (okToContinue()) {
        QAction *action = qobject_cast<QAction *>(sender());
        if (action)
            loadFile(action->data().toString());
    }
}
```

#### Using Dialogs

![][dialog]


```cpp
void MainWindow::find()
{
    if (!findDialog) {
        findDialog = new FindDialog(this);
        connect(findDialog, SIGNAL(findNext(const QString &,
                                            Qt::CaseSensitivity)),
                spreadsheet, SLOT(findNext(const QString &,
                                           Qt::CaseSensitivity)));
        connect(findDialog, SIGNAL(findPrevious(const QString &,
                                                Qt::CaseSensitivity)),
                spreadsheet, SLOT(findPrevious(const QString &,
                                               Qt::CaseSensitivity)));
    }

    findDialog->show();
    findDialog->raise();
    findDialog->activateWindow();
}
```

Several scenarios are possible:

#. This is the first time the user has invoked the Find dialog. (`new`{.cpp})
#. The Find dialog was invoked before, but the user closed it. (`show()`{.cpp})
#. The Find dialog was invoked before and is still visible. (`raise(), activateWindow()`{.cpp})

A dialog is modeless if it's invoked using `show()` (unless we call
`setModal()` beforehand to make it modal); it is modal if it's invoked using
`exec()`.

```cpp
void MainWindow::goToCell()
{
    GoToCellDialog dialog(this); // 一次性 dialog
    if (dialog.exec()) {
        QString str = dialog.lineEdit->text().toUpper();
        spreadsheet->setCurrentCell(str.mid(1).toInt() - 1,
                                    str[0].unicode() - 'A'); // 五体投地
    }

    // or
    GoToCellDialog *dlg = new GoToCellDialog(this);
    ...
    delete dlg;
}
```

Creating modal dialogs (and context menus) on the stack is a common programming
pattern since we usually don't need the dialog (or menu) after we have used it,
and it will automatically be destroyed at the end of the enclosing scope.

A more radical approach would be to pass a pointer to the Spreadsheet object
when initializing the SortDialog object and to allow the dialog to operate
directly on the Spreadsheet. This makes the SortDialog much less general, since
it will work only on a certain type of widget, but it simplifies the code even
further by eliminating the `SortDialog::setColumnRange()`{.cpp} function. The
`MainWindow::sort()`{.cpp} function then becomes

```cpp
void MainWindow::sort()
{
    SortDialog dialog(this);
    dialog.setSpreadsheet(spreadsheet);
    dialog.exec();
}
```

```cpp
void MainWindow::about()
{
    QMessageBox::about(this, tr("About Spreadsheet"),
            tr("<h2>Spreadsheet 1.1</h2>"
               "<p>Copyright &copy; 2008 Software Inc."
               "<p>Spreadsheet is a small application that "
               "demonstrates QAction, QMainWindow, QMenuBar, "
               "QStatusBar, QTableWidget, QToolBar, and many other "
               "Qt classes."));
}
```

So far, we have used several convenience static functions from both QMessageBox
and QFileDialog. These functions create a dialog, initialize it, and call
`exec()` on it. It is also possible, although less convenient, to create a
`QMessageBox`{.cpp} or a `QFileDialog`{.cpp} widget like any other widget and explicitly call
`exec()`, or even `show()`, on it.

#### Storing Settings

```cpp
void MainWindow::writeSettings()
{
    QSettings settings("Software Inc.", "Spreadsheet");

    settings.setValue("geometry", saveGeometry());
    settings.setValue("recentFiles", recentFiles);
    settings.setValue("showGrid", showGridAction->isChecked());
    settings.setValue("autoRecalc", autoRecalcAction->isChecked());
}

void MainWindow::readSettings()
{
    QSettings settings("Software Inc.", "Spreadsheet");

    restoreGeometry(settings.value("geometry").toByteArray());

    recentFiles = settings.value("recentFiles").toStringList();
    updateRecentFileActions();

    bool showGrid = settings.value("showGrid", true).toBool();
    showGridAction->setChecked(showGrid);

    bool autoRecalc = settings.value("autoRecalc", true).toBool();
    autoRecalcAction->setChecked(autoRecalc);
}
```

By default, `QSettings`{.cpp} stores the application's settings in
platform-specific locations. On Windows, it uses the system registry; on Unix,
it stores the data in text files; on Mac OS X, it uses the Core Foundation
Preferences API.

`QSettings`{.cpp} stores settings as key–value pairs. The key is similar to a
file system path. Subkeys can be specified using a path-like syntax (e.g.,
`findDialog/matchCase`) or using `beginGroup()` and `endGroup()`:

```cpp
settings.beginGroup("findDialog");
{
    settings.setValue("matchCase", caseCheckBox->isChecked());
    settings.setValue("searchBackward",  backwardCheckBox->isChecked());
}
settings.endGroup()
```

#### Multiple Documents

![][multi-document]

```cpp
connect(exitAction, SIGNAL(triggered()),
        qApp, SLOT(closeAllWindows()));
```

The `QApplication::closeAllWindows()`{.cpp} slot closes all of the
application's windows, unless one of them rejects the close event. This is
exactly the behavior we need here. We don't have to worry about unsaved changes
because that's handled in `MainWindow::closeEvent()`{.cpp} whenever a window is closed.

```cpp
MainWindow::MainWindow()
{
    ...
    // This tells Qt to delete the window when it is closed. The
    // Qt::WA_DeleteOnClose attribute is one of many flags
    // that can be set on a QWidget to influence its behavior.
    setAttribute(Qt::WA_DeleteOnClose);
    ...
}

foreach (QWidget *win, QApplication::topLevelWidgets()) {
    if (MainWindow *mainWin = qobject_cast<MainWindow *>(win)) {
        mainWin->updateRecentFileActions();
    }
}
```

#### Splash Screens

```cpp
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QSplashScreen *splash = new QSplashScreen;
    splash->setPixmap(QPixmap(":/images/splash.png"));
    splash->show();

    Qt::Alignment topRight = Qt::AlignRight | Qt::AlignTop;
    splash->showMessage(QObject::tr("Setting up the main window..."),
                        topRight, Qt::white);

    MainWindow mainWin;

    splash->showMessage(QObject::tr("Loading modules..."),
                        topRight, Qt::white);
    loadModules();

    splash->showMessage(QObject::tr("Establishing connections..."),
                        topRight, Qt::white);
    establishConnections();

    mainWin.show();

    splash->finish(&mainWin);
    delete splash;

    return app.exec();
}
```

### 4. Implementing Application Functionality

#### The Central Widget

The central area of a `QMainWindow`{.cpp} can be occupied by any kind of
widget. Here's an overview of the possibilities:

#. Use a standard Qt widget: `QTableWidget`{.cpp}, `QTextEdit`{.cpp}
#. Use a custom widget
#. Use a plain `QWidget`{.cpp} with a layout manager
#. Use a splitter
#. Use an MDI area

![][table-widget]

```cpp
// spreadsheet.h
private:
    QString text(int row, int column) const;

// spreadsheet.cpp
QString Spreadsheet::text(int row, int column) const
{
    Cell *c = cell(row, column);
    if (c) {
        return c->text();
    } else {
        return "";
    }
}
```

Qt's item classes can be used out of the box as data holders. For example, a
`QTableWidgetItem`{.cpp} already stores a few attributes, including a string,
font, color, and icon, and a pointer back to the `QTableWidget`{.cpp}. The
items can also hold data (`QVariants`{.cpp}), including registered custom
types, and by subclassing the item class we can provide additional
functionality.

Older toolkits provide a void pointer in their item classes to store custom
data. In Qt, the more natural approach is to use `setData()` with a
`QVariant`{.cpp}, but if a void pointer is required, it can be trivially
achieved by subclassing an item class and adding a void pointer member
variable. For more challenging data handling requirements, such as large data
sets, complex data items, database integration, and multiple data views, Qt
provides a set of model/view classes that separate the data from their visual
representation.

```cpp
void Spreadsheet::setFormula(int row, int column,
                             const QString &formula)
{
    Cell *c = cell(row, column);
    if (!c) {
        c = new Cell;
        setItem(row, column, c);
    }
    c->setFormula(formula);
}
```

#### Loading and Saving

```cpp
bool Spreadsheet::writeFile(const QString &fileName)
{
    QFile file(fileName);
    if (!file.open(QIODevice::WriteOnly)) {
        QMessageBox::warning(this, tr("Spreadsheet"),
                             tr("Cannot write file %1:\n%2.")
                             .arg(file.fileName())
                             .arg(file.errorString()));
        return false;
    }

    QDataStream out(&file);
    out.setVersion(QDataStream::Qt_4_3);

    out << quint32(MagicNumber);

    QApplication::setOverrideCursor(Qt::WaitCursor);
    for (int row = 0; row < RowCount; ++row) {
        for (int column = 0; column < ColumnCount; ++column) {
            QString str = formula(row, column);
            if (!str.isEmpty())
                out << quint16(row) << quint16(column) << str;
        }
    }
    QApplication::restoreOverrideCursor();
    return true;
}

bool Spreadsheet::readFile(const QString &fileName)
{
    QFile file(fileName);
    if (!file.open(QIODevice::ReadOnly)) {
        QMessageBox::warning(this, tr("Spreadsheet"),
                             tr("Cannot read file %1:\n%2.")
                             .arg(file.fileName())
                             .arg(file.errorString()));
        return false;
    }

    QDataStream in(&file);
    in.setVersion(QDataStream::Qt_4_3);

    quint32 magic;
    in >> magic;
    if (magic != MagicNumber) {
        QMessageBox::warning(this, tr("Spreadsheet"),
                             tr("The file is not a Spreadsheet file."));
        return false;
    }

    clear();

    quint16 row;
    quint16 column;
    QString str;

    QApplication::setOverrideCursor(Qt::WaitCursor);
    while (!in.atEnd()) {
        in >> row >> column >> str;
        setFormula(row, column, str);
    }
    QApplication::restoreOverrideCursor();
    return true;
}
```

`QDataStream`{.cpp} is very versatile. It can be used on a `QFile`{.cpp}, and
also on a `QBuffer`{.cpp}, a `QProcess`{.cpp}, a `QTcpSocket`{.cpp}, a
`QUdpSocket`{.cpp}, or a `QSslSocket`{.cpp}. Qt also offers a
`QTextStream`{.cpp} class that can be used instead of `QDataStream`{.cpp} for
reading and writing text files. Chapter 12 explains these classes in depth, and
also describes various approaches to handling different `QDataStream`{.cpp}
versions.

The system clipboard is available in Qt through the
`QApplication::clipboard()`{.cpp} static function. By calling
`QClipboard::setText()`{.cpp}, we make the text available on the clipboard,
both to this application and to other applications that support plain text.

```cpp
void Spreadsheet::cut()
{
    copy();
    del();
}

void Spreadsheet::copy()
{
    QTableWidgetSelectionRange range = selectedRange();
    QString str;

    for (int i = 0; i < range.rowCount(); ++i) {
        if (i > 0)
            str += "\n";
        for (int j = 0; j < range.columnCount(); ++j) {
            if (j > 0)
                str += "\t";
            str += formula(range.topRow() + i, range.leftColumn() + j);
        }
    }
    QApplication::clipboard()->setText(str);
}

void Spreadsheet::paste()
{
    QTableWidgetSelectionRange range = selectedRange();
    QString str = QApplication::clipboard()->text();
    QStringList rows = str.split('\n');
    int numRows = rows.count();
    int numColumns = rows.first().count('\t') + 1;

    if (range.rowCount() * range.columnCount() != 1
            && (range.rowCount() != numRows
                || range.columnCount() != numColumns)) {
        QMessageBox::information(this, tr("Spreadsheet"),
                tr("The information cannot be pasted because the copy "
                   "and paste areas aren't the same size."));
        return;
    }

    for (int i = 0; i < numRows; ++i) {
        QStringList columns = rows[i].split('\t');
        for (int j = 0; j < numColumns; ++j) {
            int row = range.topRow() + i;
            int column = range.leftColumn() + j;
            if (row < RowCount && column < ColumnCount)
                setFormula(row, column, columns[j]);
        }
    }
    somethingChanged();
}
```

```cpp
QList<QStringList> rows;
qStableSort(rows.begin(), rows.end(), compare);
```
The `qStableSort()`{.cpp} function accepts a begin iterator, an end iterator,
and a comparison function. The comparison function is a function that takes two
arguments (two `QStringLists`{.cpp}) and that returns true if the first
argument is "less than" the second argument, false otherwise. The compare
object we pass as the comparison function isn't really a function, but it can
be used as one, as we will see shortly.

#### Subclassing QTableWidget

```cpp
QVariant Cell::evalFactor(const QString &str, int &pos) const
{
    QVariant result;
    bool negative = false;

    if (str[pos] == '-') {
        negative = true;
        ++pos;
    }

    if (str[pos] == '(') {
        ++pos;
        result = evalExpression(str, pos);
        if (str[pos] != ')')
            result = Invalid;
        ++pos;
    } else {
        QRegExp regExp("[A-Za-z][1-9][0-9]{0,2}");
        QString token;

        while (str[pos].isLetterOrNumber() || str[pos] == '.') {
            token += str[pos];
            ++pos;
        }

        if (regExp.exactMatch(token)) {
            int column = token[0].toUpper().unicode() - 'A';
            int row = token.mid(1).toInt() - 1;

            Cell *c = static_cast<Cell *>(
                              tableWidget()->item(row, column));
            if (c) {
                result = c->value();
            } else {
                result = 0.0;
            }
        } else {
            bool ok;
            result = token.toDouble(&ok);
            if (!ok)
                result = Invalid;
        }
    }

    if (negative) {
        if (result.type() == QVariant::Double) {
            result = -result.toDouble();
        } else {
            result = Invalid;
        }
    }
    return result;
}
```

### 5. Creating Custom Widgets

#### Customizing Qt Widgets

![][hex-spin-widget]

```cpp
QSpinBox::setRange(0, 255);
QRegExpValidator *validator = new QRegExpValidator(QRegExp("[0-9A-Fa-f]{1,8}"), this);

// called by QSpinBox when the user types a value into the editor part of the
// spin box and presses Enter
int HexSpinBox::valueFromText(const QString &text) const
{
    return text.toInt( NULL, 16);
}

// QSpinBox calls it to update the editor part of the spin box when the user
// presses the spin box's up or down arrows.
QString HexSpinBox::textFromValue(int value) const
{
    return QString::number(value, 16).toUpper(); // lowercase
}

// called by QSpinBox to see if the text entered so far is valid. There are three
// possible results: Invalid (the text doesn't match the regular expression),
// Intermediate (the text is a plausible part of a valid value), and Acceptable
// (the text is valid). The eQRegExpValidator has a suitable validate() function,
// so we simply return the result of calling it. In theory, we should return
// Invalid or Intermediate for evalues that lie outside the spin box's range, but
// QSpinBox is smart enough to detect that condition without any help.
// QValidator::State HexSpinBox::validate(QString &text, int &pos) const
{
    return validator->validate(text, pos);
}
```

We have now finished the hexadecimal spin box. Customizing other Qt widgets
follows the same pattern: Pick a suitable Qt widget, subclass it, and
reimplement some virtual functions to change its behavior. If all we want to do
is to customize an existing widget's look and feel, we can apply a style sheet
or implement a custom style instead of subclassing the widget, as explained in
Chapter 19.

#### Subclassing QWidget

```cpp
class IconEditor : public QWidget
{
    Q_OBJECT
    Q_PROPERTY(QColor penColor READ penColor WRITE setPenColor)
    Q_PROPERTY(QImage iconImage READ iconImage WRITE setIconImage)
    Q_PROPERTY(int zoomFactor READ zoomFactor WRITE setZoomFactor)
    ...
```

The IconEditor class uses the Q_PROPERTY() macro to declare three custom properties: penColor,
iconImage, and zoomFactor. Each property has a data type, a "read" function, and an optional "write"
function. For example, the penColor property is of type QColor and can be read and written using the
penColor() and setPenColor() functions.

```cpp
protected:
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    void paintEvent(QPaintEvent *event);
```

```cpp
IconEditor::IconEditor(QWidget *parent)
    : QWidget(parent)
{
    // the widget's content doesn't change when the widget is resized and that the
    // content stays rooted to the widget's top-left corner
    setAttribute(Qt::WA_StaticContents);


    /*
        By calling setSizePolicy() in the constructor with QSizePolicy::Minimum as
        horizontal and vertical policies, we tell any layout manager that is
        responsible for this widget that the widget's size hint is really its minimum
        size. In other words, the widget can be stretched if required, but it should
        never shrink below the size hint.
    */
    setSizePolicy(QSizePolicy::Minimum, QSizePolicy::Minimum);

    curColor = Qt::black;
    zoom = 8;

    image = QImage(16, 16, QImage::Format_ARGB32);
    image.fill(qRgba(0, 0, 0, 0));
}

//                r   g  b   a
QRgb red = qRgba(255, 0, 0, 255);
QRgb red = 0xFFFF0000; // typedef of unsigned int
```

```cpp
// IconEditor.h
public:
    QSize sizeHint() const;

// IconEditor.cpp
QSize IconEditor::sizeHint() const
{
    QSize size = zoom * image.size();
    if (zoom >= 3)
        size += QSize(1, 1);
    return size;
}
```

```cpp
void IconEditor::setIconImage(const QImage &newImage)
{
    if (newImage != image) {

        image = newImage.convertToFormat(QImage::Format_ARGB32);

        // call QWidget::update() to schedule a repainting of the widget
        // using the new image
        update();

        // call QWidget::updateGeometry() to tell any layout that contains the
        // widget that the widget's size hint has changed. The layout will then
        // automatically adapt to the new size hint.
        updateGeometry();
    }
}
```

force a paint event by calling QWidget::update() or QWidget::repaint(). The
difference between these two functions is that repaint() forces an immediate
repaint, whereas update() simply schedules a paint event for when Qt next
processes events. (Both functions do nothing if the widget isn't visible
on-screen.)

```cpp
void IconEditor::paintEvent(QPaintEvent *event)
{
    QPainter painter(this);

    // If the zoom factor is 3 or more, we draw the horizontal and vertical
    // lines that form the grid using the QPainter::drawLine() function.
    if (zoom >= 3) {

        // set new color
        painter.setPen(palette().foreground().color());
        for (int i = 0; i <= image.width(); ++i)
            // x1, x2, y1, y2, topLeft <= (0,0), x <= width, y <= height
            painter.drawLine(zoom * i, 0,
                             zoom * i, zoom * image.height());
        for (int j = 0; j <= image.height(); ++j)
            painter.drawLine(0, zoom * j,
                             zoom * image.width(), zoom * j);
    }

    for (int i = 0; i < image.width(); ++i) {
        for (int j = 0; j < image.height(); ++j) {
            QRect rect = pixelRect(i, j);
            if (!event->region().intersect(rect).isEmpty()) {
                QColor color = QColor::fromRgba(image.pixel(i, j));
                if (color.alpha() < 255)
                    painter.fillRect(rect, Qt::white);
                painter.fillRect(rect, color);
            }
        }
    }
}
```


A widget's palette consists of three color groups: active, inactive, and
disabled. Which color group should be used depends on the widget's current
state:

#.  The Active group is used for widgets in the currently active window.
#. The Inactive group is used for widgets in the other windows.
#. The Disabled group is used for disabled widgets in any window.

get an appropriate brush or color for drawing, the correct approach is to use
the current palette, obtained from QWidget::palette(), and the required role,
for example, QPalette::foreground().

The pixelRect() function returns a QRect suitable for QPainter::fillRect(). The
i and j parameters are pixel coordinates in the QImage—not in the widget. If
the zoom factor is 1, the two coordinate systems coincide exactly.

```cpp
QRect IconEditor::pixelRect(int i, int j) const
{
    if (zoom >= 3) {
        return QRect(zoom * i + 1, zoom * j + 1, zoom - 1, zoom - 1);
    } else {
        return QRect(zoom * i, zoom * j, zoom, zoom); // tl_x, tl_y, w, h
    }
}
```

```cpp
void IconEditor::mousePressEvent(QMouseEvent *event)
{
    if (event->button() == Qt::LeftButton) {
        setImagePixel(event->pos(), true);
    } else if (event->button() == Qt::RightButton) {
        setImagePixel(event->pos(), false);
    }
}
```

mouseMoveEvent() handles "mouse move" events. By default, these events are
generated only when the user is holding down a button. It is possible to change
this behavior by calling QWidget::setMouseTracking(), but we don't need to do
so for this example.

```cpp
void IconEditor::setImagePixel(const QPoint &pos, bool opaque)
{
    // widget coordinates ==> image coordinates
    int i = pos.x() / zoom;
    int j = pos.y() / zoom;

    // check whether the point is within the correct range
    if (image.rect().contains(i, j)) {
        if (opaque) {
            image.setPixel(i, j, penColor().rgba());
        } else {
            image.setPixel(i, j, qRgba(0, 0, 0, 0));
        }

        update(pixelRect(i, j));
    }
}
```

#### Integrating Custom Widgets with Qt Designer
we must subclass QDesignerCustomWidgetInterface and reimplement some virtual
functions. We will assume that the plugin source code is located in a directory
called iconeditorplugin and that the IconEditor source code is located in a
parallel directory called iconeditor.

```cpp
#include <QDesignerCustomWidgetInterface>

class IconEditorPlugin : public QObject,
                         public QDesignerCustomWidgetInterface
{
    Q_OBJECT
    Q_INTERFACES(QDesignerCustomWidgetInterface)

public:
    IconEditorPlugin(QObject *parent = 0);

    // the name of the widget provided by the plugin
    QString name() const { return "IconEditor"; }

    // the name of the header file for the specified widget encapsulated by the
    // plugin
    QString includeFile() const { return "iconeditor.h"; }

    // the name of the widget box group to which this custom widget should
    // belong. If the name isn't already in use, Qt Designer will create a new
    // group for the widget
    QString group() const;

    // the icon to use to represent the custom widget in Qt Designer's widget
    // box
    QIcon icon() const;

    QString toolTip() const;
    QString whatsThis() const;

    // true if the widget can contain other widgets; otherwise, it returns
    // false
    bool isContainer() const;

    // Qt Designer calls the createWidget() function to create an instance of a
    // widget class with the given parent
    QWidget *createWidget(QWidget *parent);
};

// .cpp
Q_EXPORT_PLUGIN2(iconeditorplugin, IconEditorPlugin)
```

`.pro`

```
TEMPLATE      = lib
CONFIG       += designer plugin release
HEADERS       = ../iconeditor/iconeditor.h \
                iconeditorplugin.h
SOURCES       = ../iconeditor/iconeditor.cpp \
                iconeditorplugin.cpp
RESOURCES     = iconeditorplugin.qrc
DESTDIR       = $$[QT_INSTALL_PLUGINS]/designer
```




#### Double Buffering

Qt provides the `QRubberBand`{.cpp} class for drawing rubber bands, but here we
draw it ourselves to have finer control over the look, and to demonstrate
double buffering.


```cpp
#include <QMap>
#include <QPixmap>
#include <QVector>
#include <QWidget>

class QToolButton;
class PlotSettings;

class Plotter : public QWidget
{
    Q_OBJECT

public:
    Plotter(QWidget *parent = 0);

    void setPlotSettings(const PlotSettings &settings);
    void setCurveData(int id, const QVector<QPointF> &data);
    void clearCurve(int id);
    QSize minimumSizeHint() const;
    QSize sizeHint() const;

public slots:
    void zoomIn();
    void zoomOut();

// In the protected section of the class, we declare
// all the QWidget event handlers that we want to reimplement
protected:
    void paintEvent(QPaintEvent *event);
    void resizeEvent(QResizeEvent *event);
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    void mouseReleaseEvent(QMouseEvent *event);
    void keyPressEvent(QKeyEvent *event);
    void wheelEvent(QWheelEvent *event);

private:
    void updateRubberBandRegion();
    void refreshPixmap();
    void drawGrid(QPainter *painter);
    void drawCurves(QPainter *painter);

    enum { Margin = 50 };

    QToolButton *zoomInButton;
    QToolButton *zoomOutButton;
    // store a curve's points as a QVector<QPointF>
    QMap<int, QVector<QPointF> > curveMap;
    QVector<PlotSettings> zoomStack;
    int curZoom;
    bool rubberBandIsShown;
    QRect rubberBandRect;

    // QPixmap. This variable holds a copy of the whole widget's rendering,
    // identical to what is shown on-screen. The plot is always drawn onto this
    // off-screen pixmap first; then the pixmap is copied onto the widget.
    QPixmap pixmap;
};


// specifies the range of the x- and y-axes and the number of ticks for these
// axes
class PlotSettings
{
public:
    PlotSettings();

    void scroll(int dx, int dy);
    void adjust();
    double spanX() const { return maxX - minX; }
    double spanY() const { return maxY - minY; }

    double minX;
    double maxX;
    double minY;
    double maxY;
    int numXTicks;
    int numYTicks;

private:
    static void adjustAxis(double &min, double &max, int &numTicks);
};
```

```cpp
Plotter::Plotter(QWidget *parent)
    : QWidget(parent)
{
    // tells QWidget to use the "dark" component of the palette as the color
    // for erasing the widget, instead of the "window" component
    // This gives Qt a default color that it can use to fill any newly revealed
    // pixels when the widget is resized to a larger size, before paintEvent()
    // even has the chance to paint the new pixels. We also need to call
    // setAutoFillBackground(true) to enable this mechanism. (By default, child
    // widgets inherit the background from their parent widget.)
    setBackgroundRole(QPalette::Dark);
    setAutoFillBackground(true);

    // default: QSizePolicy::Preferred in both directions
    setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);

    // accept focus by clicking or by pressing Tab. When the Plotter has focus,
    // it will receive events for key presses.
    setFocusPolicy(Qt::StrongFocus);
    rubberBandIsShown = false;

    zoomInButton = new QToolButton(this);
    zoomInButton->setIcon(QIcon(":/images/zoomin.png"));
    zoomInButton->adjustSize();
    connect(zoomInButton, SIGNAL(clicked()), this, SLOT(zoomIn()));

    zoomOutButton = new QToolButton(this);
    zoomOutButton->setIcon(QIcon(":/images/zoomout.png"));
    zoomOutButton->adjustSize();
    connect(zoomOutButton, SIGNAL(clicked()), this, SLOT(zoomOut()));

    setPlotSettings(PlotSettings());
}

void Plotter::zoomOut()
{
    if (curZoom > 0) {
        --curZoom;
        zoomOutButton->setEnabled(curZoom > 0);
        zoomInButton->setEnabled(true);
        zoomInButton->show();
        refreshPixmap();
    }
}

void Plotter::setCurveData(int id, const QVector<QPointF> &data)
{
    curveMap[id] = data;
    refreshPixmap();
}

void Plotter::clearCurve(int id);

void Plotter::paintEvent(QPaintEvent * /* event */)
{
    QStylePainter painter(this);
    painter.drawPixmap(0, 0, pixmap);

    if (rubberBandIsShown) {
        painter.setPen(palette().light().color());
        // QRect::normalized() ensures that the rubber band rectangle has
        // positive width and height. And adjusted() reduces the size of the
        // rectangle by one pixel to allow for its own 1-pixel-wide outline
        painter.drawRect(rubberBandRect.normalized()
                                       .adjusted(0, 0, -1, -1));
    }

    if (hasFocus()) {
        QStyleOptionFocusRect option;
        option.initFrom(this);
        option.backgroundColor = palette().dark().color();
        painter.drawPrimitive(QStyle::PE_FrameFocusRect, option);
    }
}

void Plotter::resizeEvent(QResizeEvent * /* event */)
{
    // reimplement resizeEvent() to place the Zoom In and Zoom Out buttons at
    // the top right of the Plotter widget, side by side, separated by a
    // 5-pixel gap and with a 5-pixel offset from the top and right edges of
    // the parent widget
    int x = width() - (zoomInButton->width()
                       + zoomOutButton->width() + 10);
    zoomInButton->move(x, 5);
    zoomOutButton->move(x + zoomInButton->width() + 5, 5);
    refreshPixmap();
}

void Plotter::mousePressEvent(QMouseEvent *event)
{
    QRect rect(Margin, Margin,
               width() - 2 * Margin, height() - 2 * Margin);

    if (event->button() == Qt::LeftButton) {
        if (rect.contains(event->pos())) {
            rubberBandIsShown = true;
            rubberBandRect.setTopLeft(event->pos());
            rubberBandRect.setBottomRight(event->pos());
            updateRubberBandRegion();
            // QWidget::setCursor() sets the cursor shape to use when the mouse
            // hovers over a particular widget. If no cursor is set for a
            // widget, the parent widget's cursor is used. The default for
            // top-level widgets is an arrow cursor.
            setCursor(Qt::CrossCursor);

            // QApplication::setOverrideCursor() with Qt::WaitCursor to change
            // the application's cursor to the standard wait cursor.
        }
    }
}

// consists of four calls to update() that schedule a paint event for the four
// small rectangular areas that are covered by the rubber band (two vertical
// and two horizontal lines).
void Plotter::updateRubberBandRegion()
{
    QRect rect = rubberBandRect.normalized();
    update(rect.left(), rect.top(), rect.width(), 1);
    update(rect.left(), rect.top(), 1, rect.height());
    update(rect.left(), rect.bottom(), rect.width(), 1);
    update(rect.right(), rect.top(), 1, rect.height());
}

void Plotter::mouseMoveEvent(QMouseEvent *event)
{
    if (rubberBandIsShown) {
        // erases the rubber band
        updateRubberBandRegion();
        rubberBandRect.setBottomRight(event->pos());
        // redraws it at the new coordinates
        updateRubberBandRegion();
    }
}

void Plotter::mouseReleaseEvent(QMouseEvent *event)
{
    if ((event->button() == Qt::LeftButton) && rubberBandIsShown) {
        rubberBandIsShown = false;
        // erase the rubber band
        updateRubberBandRegion();
        // restore the standard arrow cursor
        unsetCursor();

        // If the rubber band is at least 4 x 4, we perform the zoom.
        // If the rubber band is smaller than that, it's likely that the user
        // clicked the widget by mistake or to give it focus, so we do nothing
        QRect rect = rubberBandRect.normalized();
        if (rect.width() < 4 || rect.height() < 4)
            return;
        rect.translate(-Margin, -Margin);

        PlotSettings prevSettings = zoomStack[curZoom];
        PlotSettings settings;
        double dx = prevSettings.spanX() / (width() - 2 * Margin);
        double dy = prevSettings.spanY() / (height() - 2 * Margin);
        settings.minX = prevSettings.minX + dx * rect.left();
        settings.maxX = prevSettings.minX + dx * rect.right();
        settings.minY = prevSettings.maxY - dy * rect.bottom();
        settings.maxY = prevSettings.maxY - dy * rect.top();
        settings.adjust();

        zoomStack.resize(curZoom + 1);
        zoomStack.append(settings);
        zoomIn();
    }
}

void Plotter::keyPressEvent(QKeyEvent *event)
{
    switch (event->key()) {
    case Qt::Key_Plus:
        zoomIn();
        break;
    case Qt::Key_Minus:
        zoomOut();
        break;
    case Qt::Key_Left:
        zoomStack[curZoom].scroll(-1, 0);
        refreshPixmap();
        break;
    case Qt::Key_Right:
        zoomStack[curZoom].scroll(+1, 0);
        refreshPixmap();
        break;
    case Qt::Key_Down:
        zoomStack[curZoom].scroll(0, -1);
        refreshPixmap();
        break;
    case Qt::Key_Up:
        zoomStack[curZoom].scroll(0, +1);
        refreshPixmap();
        break;
    default:
        QWidget::keyPressEvent(event);
    }
}

void Plotter::keyPressEvent(QKeyEvent *event)
{
    // For simplicity, we ignore the Shift, Ctrl, and Alt modifier keys, which
    // are available through QKeyEvent::modifiers().
    switch (event->key()) {
    case Qt::Key_Plus:
        zoomIn();
        break;
    case Qt::Key_Minus:
        zoomOut();
        break;
    case Qt::Key_Left:
        zoomStack[curZoom].scroll(-1, 0);
        refreshPixmap();
        break;
    case Qt::Key_Right:
        zoomStack[curZoom].scroll(+1, 0);
        refreshPixmap();
        break;
    case Qt::Key_Down:
        zoomStack[curZoom].scroll(0, -1);
        refreshPixmap();
        break;
    case Qt::Key_Up:
        zoomStack[curZoom].scroll(0, +1);
        refreshPixmap();
        break;
    default:
        QWidget::keyPressEvent(event);
    }
}

void Plotter::wheelEvent(QWheelEvent *event)
{
    int numDegrees = event->delta() / 8;
    int numTicks = numDegrees / 15;

    // Most mice provide only a vertical wheel, but some also have a horizontal
    // wheel. Qt supports both kinds of wheel
    if (event->orientation() == Qt::Horizontal) {
        zoomStack[curZoom].scroll(numTicks, 0);
    } else {
        zoomStack[curZoom].scroll(0, numTicks);
    }

    // When we use QScrollArea (covered in Chapter 6) to provide scroll bars,
    // QScrollArea handles the mouse wheel events automatically, so we don't
    // need to reimplement wheelEvent() ourselves.

    refreshPixmap();
}

void Plotter::refreshPixmap()
{
    pixmap = QPixmap(size());
    // Fills the pixmap with the widget's background color or pixmap. The given
    // point, (x, y), defines an offset in widget coordinates to which the
    // pixmap's top-left pixel will be mapped to.
    pixmap.fill(this, 0, 0);

    QPainter painter(&pixmap);
    // Initializes the painters pen, background and font to the same as the
    // given widget. This function is called automatically when the painter is
    // opened on a QWidget
    painter.initFrom(this);
    drawGrid(&painter);
    drawCurves(&painter);
    update();
}

// The drawGrid() function draws the grid behind the curves and the axes. The
// area on which we draw the grid is specified by rect. If the widget isn't
// large enough to accommodate the graph, we return immediately.
void Plotter::drawGrid(QPainter *painter)
{
    QRect rect(Margin, Margin,
               width() - 2 * Margin, height() - 2 * Margin);
    if (!rect.isValid())
        return;

    PlotSettings settings = zoomStack[curZoom];
    QPen quiteDark = palette().dark().color().light();
    QPen light = palette().light().color();

    for (int i = 0; i <= settings.numXTicks; ++i) {
        int x = rect.left() + (i * (rect.width() - 1)
                                 / settings.numXTicks);
        double label = settings.minX + (i * settings.spanX()
                                          / settings.numXTicks);
        painter->setPen(quiteDark);
        painter->drawLine(x, rect.top(), x, rect.bottom());
        painter->setPen(light);
        painter->drawLine(x, rect.bottom(), x, rect.bottom() + 5);
        // painter->drawText(x, y, width, height, alignment, text);
        // a more adaptable alternative would involve calculating the text's
        // bounding rectangle using QFontMetrics
        painter->drawText(x - 50, rect.bottom() + 5, 100, 20,
                          Qt::AlignHCenter | Qt::AlignTop,
                          QString::number(label));
    }
    for (int j = 0; j <= settings.numYTicks; ++j) {
        int y = rect.bottom() - (j * (rect.height() - 1)
                                   / settings.numYTicks);
        double label = settings.minY + (j * settings.spanY()
                                          / settings.numYTicks);
        painter->setPen(quiteDark);
        painter->drawLine(rect.left(), y, rect.right(), y);
        painter->setPen(light);
        painter->drawLine(rect.left() - 5, y, rect.left(), y);
        painter->drawText(rect.left() - Margin, y - 10, Margin - 5, 20,
                          Qt::AlignRight | Qt::AlignVCenter,
                          QString::number(label));
    }
    painter->drawRect(rect.adjusted(0, 0, -1, -1));
}

void Plotter::drawCurves(QPainter *painter)
{
    static const QColor colorForIds[6] = {
        Qt::red, Qt::green, Qt::blue, Qt::cyan, Qt::magenta, Qt::yellow
    };
    PlotSettings settings = zoomStack[curZoom];
    QRect rect(Margin, Margin,
               width() - 2 * Margin, height() - 2 * Margin);
    if (!rect.isValid())
        return;

    // set the QPainter's clip region to the rectangle that contains the curves
    // (excluding the margins and the frame around the graph)
    painter->setClipRect(rect.adjusted(+1, +1, -1, -1));

    QMapIterator<int, QVector<QPointF> > i(curveMap);
    while (i.hasNext()) {
        i.next();

        int id = i.key();
        QVector<QPointF> data = i.value();
        QPolygonF polyline(data.count());

        for (int j = 0; j < data.count(); ++j) {
            double dx = data[j].x() - settings.minX;
            double dy = data[j].y() - settings.minY;
            double x = rect.left() + (dx * (rect.width() - 1)
                                         / settings.spanX());
            double y = rect.bottom() - (dy * (rect.height() - 1)
                                           / settings.spanY());
            polyline[j] = QPointF(x, y);
        }

        // set the pen color for the curve
        painter->setPen(colorForIds[uint(id) % 6]);
        // draw a line that goes through all the curve's points
        painter->drawPolyline(polyline);

        // QPolygonF polygon;
        // polygon << QPointF(10.4, 20.5) << QPointF(20.2, 30.2);
    }
}

```

Part II: Intermediate Qt
------------------------

### 6. Layout Management

#### Laying Out Widgets on a Form

```cpp
FindFileDialog::FindFileDialog(QWidget *parent)
    : QDialog(parent)
{
    ...
    setMinimumSize(265, 190);
    resize(365, 240);
}

void FindFileDialog::resizeEvent(QResizeEvent * /* event */)
{
    int extraWidth = width() - minimumWidth();
    int extraHeight = height() - minimumHeight();
    ...
}

QGridLayout *leftLayout = new QGridLayout;
leftLayout->addWidget(namedLabel, 0, 0);
leftLayout->addWidget(namedLineEdit, 0, 1);
leftLayout->addWidget(lookInLabel, 1, 0);
leftLayout->addWidget(lookInLineEdit, 1, 1);
leftLayout->addWidget(subfoldersCheckBox, 2, 0, 1, 2); // span two columns
leftLayout->addWidget(tableWidget, 3, 0, 1, 2);
leftLayout->addWidget(messageLabel, 4, 0, 1, 2);

QVBoxLayout *rightLayout = new QVBoxLayout;
rightLayout->addWidget(findButton);
rightLayout->addWidget(stopButton);
rightLayout->addWidget(closeButton);
// Stretch. Adds a stretchable space (a QSpacerItem) with zero minimum size and
// stretch factor stretch to the end of this box layout. In Qt Designer, we can
// achieve the same effect by inserting a spacer
rightLayout->addStretch();
rightLayout->addWidget(helpButton);

QHBoxLayout *mainLayout = new QHBoxLayout;
mainLayout->addLayout(leftLayout);
mainLayout->addLayout(rightLayout);
setLayout(mainLayout);
```

![][size-policy]

#. `QLayout::setContentsMargins()`{.cpp}
#. `QLayout::setSpacing()`{.cpp}
#. `gridlayout->addWidget(widget, row, column, rowSpan, columnSpan)`{.cpp}
#. `QSizePolicy`{.cpp}, `sizeHint()`{.cpp}, `minimumSizeHint()`{.cpp}
    i. Fixed
    #. Minimum
    #. Maximum
    #. Prefered
    #. Expanding

In addition to the size policy's horizontal and vertical components, the
`QSizePolicy`{.cpp} class stores a horizontal and a vertical stretch factor.

#### Stacked Layouts

For convenience, Qt also includes `QStackedWidget`{.cpp}, which provides a `QWidget`{.cpp} with a built-in `QStackedLayout`{.cpp}.


![][stacked-widgets]

#. `setCurrentIndex()`{.cpp}, the page number for a child widget is available using `indexOf()`{.cpp}
#. add a `QListWidget`{.cpp} and a `QStackedWidget`{.cpp} to the form.
#. Connect the list widget's `currentRowChanged(int)` signal to the stacked widget's `setCurrentIndex(int)`{.cpp} slot.
#. list widget's `currentRow` property to 0.

For cases where the number of pages is small and likely to remain small, a simpler alternative to using a
`QStackedWidget`{.cpp} and `QListWidget`{.cpp} is to use a `QTabWidget`{.cpp}.

#### Splitters

![splitter][splitter]

```cpp
#include <QtGui>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QTextEdit *editor1 = new QTextEdit;
    QTextEdit *editor2 = new QTextEdit;
    QTextEdit *editor3 = new QTextEdit;

    QSplitter splitter(Qt::Horizontal);
    splitter.addWidget(editor1);
    splitter.addWidget(editor2);
    splitter.addWidget(editor3);

    editor1->setPlainText("...");
    editor2->setPlainText("...");
    editor3->setPlainText("...");

    splitter.setWindowTitle(QObject::tr("Splitter"));
    splitter.show();

    return app.exec();
}
```

```cpp
mainSplitter = new QSplitter(Qt::Horizontal);
mainSplitter->addWidget(foldersTreeWidget);
mainSplitter->addWidget(rightSplitter);
mainSplitter->setStretchFactor(1, 1); // factor!
setCentralWidget(mainSplitter);

// write settings
void MailClient::writeSettings()
{
    QSettings settings("Software Inc.", "Mail Client");

    settings.beginGroup("mainWindow");
    {
        settings.setValue("geometry", saveGeometry());
        settings.setValue("mainSplitter", mainSplitter->saveState());
        settings.setValue("rightSplitter", rightSplitter->saveState());
    }
    settings.endGroup();
}

// readSettings
void MailClient::readSettings()
{
    QSettings settings("Software Inc.", "Mail Client");

    settings.beginGroup("mainWindow");
    {
        restoreGeometry(settings.value("geometry").toByteArray());
        mainSplitter->restoreState(
                settings.value("mainSplitter").toByteArray());
        rightSplitter->restoreState(
                settings.value("rightSplitter").toByteArray());
    }
    settings.endGroup();
}
```

#### Scrolling Areas

```cpp
IconEditor *iconEditor = new IconEditor;
iconEditor->setIconImage(QImage(":/images/mouse.png"));

QScrollArea scrollArea;
scrollArea.setWidget(iconEditor);
scrollArea.viewport()->setBackgroundRole(QPalette::Dark);
scrollArea.viewport()->setAutoFillBackground(true);
scrollArea.setWindowTitle(QObject::tr("Icon Editor"));
scrollArea.show();
```

By calling `setWidgetResizable(true)`, we can tell `QScrollArea`{.cpp} to
automatically resize the widget to take advantage of any extra space beyond its
size hint.

![][scroll-area]

```cpp
scrollArea.setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
scrollArea.setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
```

#### Dock Windows and Toolbars

```cpp
QDockWidget::setFeatures();
```

![][dockarea]

The corners indicated with dotted lines can belong to either of their two
adjoining dock areas. For example, we could make the top-left corner belong to
the left dock area by calling `QMainWindow::setCorner(Qt::TopLeftCorner, Qt::LeftDockWidgetArea)`{.cpp}.

DockArea

```cpp
QDockWidget *shapesDockWidget = new QDockWidget(tr("Shapes"));
shapesDockWidget->setObjectName("shapesDockWidget");
shapesDockWidget->setWidget(treeWidget);
// setAllowedAreas() call specifies constraints on which dock areas can accept
// the dock window
shapesDockWidget->setAllowedAreas(Qt::LeftDockWidgetArea
                                     | Qt::RightDockWidgetArea);
addDockWidget(Qt::RightDockWidgetArea, shapesDockWidget);
```

Normally we do not bother to give widgets object names, but when we create dock
windows and toolbars, doing so is necessary if we want to use
`QMainWindow::saveState()`{.cpp} and `QMainWindow::restoreState()`{.cpp} to
save and restore the dock window and toolbar geometries and states.

ToolBar

```cpp
QToolBar *fontToolBar = new QToolBar(tr("Font"));

fontToolBar->setObjectName("fontToolBar");
fontToolBar->addWidget(familyComboBox);
fontToolBar->addWidget(sizeSpinBox);
fontToolBar->addAction(boldAction);
fontToolBar->addAction(italicAction);
fontToolBar->addAction(underlineAction);

fontToolBar->setAllowedAreas(Qt::TopToolBarArea
                                | Qt::BottomToolBarArea);
addToolBar(fontToolBar);
```

`QMainWindow`{.cpp}'s `saveState()` and `restoreState()`:

:   ```cpp
    settings.setValue("geometry", saveGeometry());
    settings.setValue("state", saveState());

    restoreGeometry(settings.value("geometry").toByteArray());
    restoreState(settings.value("state").toByteArray());
    ```

Finally, `QMainWindow`{.cpp} provides a context menu that lists all the dock
windows and toolbars.. The user can close and restore dock windows and hide and
restore toolbars using this menu.?? where?

#### Multiple Document Interface

QMdiArea

![][mdi]

```cpp
MainWindow::MainWindow()
{
    mdiArea = new QMdiArea;
    setCentralWidget(mdiArea);
    connect(mdiArea, SIGNAL(subWindowActivated(QMdiSubWindow*)),
            this, SLOT(updateActions()));

    createActions();
    createMenus();
    createToolBars();
    createStatusBar();

    setWindowIcon(QPixmap(":/images/icon.png"));
    setWindowTitle(tr("MDI Editor"));
    // Such timers time out as soon as the event loop is idle. In practice,
    // this means that the constructor will finish, and then after the main
    // window has been shown, loadFiles() will be called
    QTimer::singleShot(0, this, SLOT(loadFiles()));
}
```

```cpp
void MainWindow::loadFiles()
{
    QStringList args = QApplication::arguments();
    args.removeFirst();
    if (!args.isEmpty()) {
        foreach (QString arg, args)
            openFile(arg);
        mdiArea->cascadeSubWindows();
    } else {
        newFile();
    }
    mdiArea->activateNextSubWindow();
}
```

**Qt-specific command-line options**, such as `-style` and `-font`, are
automatically removed from the argument list by the `QApplication`{.cpp}
constructor. So, if we write `mdieditor -style motif readme.txt`{.bash} on the
command line, `QApplication::arguments()`{.cpp} returns a `QStringList`{.cpp}
containing two items ("mdieditor" and "readme.txt"), and the MDI Editor
application starts up with the document readme.txt.

```cpp
void MainWindow::newFile()
{
    Editor *editor = new Editor;
    editor->newFile();
    addEditor(editor);
}

void createActions();
void createMenus();
void createToolBars();
void createStatusBar();

void MainWindow::cut()
{
    if (activeEditor())
        activeEditor()->cut();
}

QSize Editor::sizeHint() const
{
    return QSize(72 * fontMetrics().width('x'),
                 25 * fontMetrics().lineSpacing());
}

void Editor::newFile()
{
    static int documentNumber = 1;

    curFile = tr("document%1.txt").arg(documentNumber);
    setWindowTitle(curFile + "[*]");
    action->setText(curFile);
    isUntitled = true;
    ++documentNumber;
}
```

```cpp
QGridLayout *mainLayout = new QGridLayout;
mainLayout->setColumnStretch(0, 1);
mainLayout->setColumnStretch(1, 3);
mainLayout->addWidget(listWidget, 0, 0);
mainLayout->addLayout(stackedLayout, 0, 1);
mainLayout->addWidget(buttonBox, 1, 0, 1, 2);
setLayout(mainLayout);
```

### 7. Event Processing

#### Reimplementing Event Handlers

`QEvent::type()`{.cpp} returns `QEvent::MouseButtonPress`{.cpp}

Events are notified to objects through their `event()` function, inherited from
`QObject`{.cpp}. The `event()` implementation in `QWidget`{.cpp} forwards the
most common types of events to specific event handlers, such as
`mousePressEvent()`{.cpp}, `keyPressEvent()`{.cpp}, and `paintEvent()`{.cpp}.

```cpp
void CodeEditor::keyPressEvent(QKeyEvent *event)
{
    switch (event->key()) {
    case Qt::Key_Home:
        if (event->modifiers() & Qt::ControlModifier) {
            goToBeginningOfDocument();
        } else {
            goToBeginningOfLine();
        }
        break;
    case Qt::Key_End:
        ...
    default:
        QWidget::keyPressEvent(event);
    }
}
```

The <kbd>Tab</kbd> and <kbd>Backtab</kbd> (<kbd>Shift</kbd>+<kbd>Tab</kbd>)
keys are special cases. `QWidget::event()`{.cpp} handles them before it calls
`keyPressEvent()`{.cpp}, with the semantic of passing the focus to the next or
previous widget in the focus chain.  This behavior is usually what we want, but
in a CodeEditor widget, we might prefer to make Tab indent a line.  The `event()`
reimplementation would then look like this:

```cpp
bool CodeEditor::event(QEvent *event)
{
    if (event->type() == QEvent::KeyPress) {
        QKeyEvent *keyEvent = static_cast<QKeyEvent *>(event);
        if (keyEvent->key() == Qt::Key_Tab) {
            insertAtCurrentPosition('\t');
            return true;
        }
    }
    return QWidget::event(event);
}
```

`QAction::setShortcutContext()`{.cpp} or `QShortcut::setContext()`{.cpp}

```cpp
// ticker.h
#include <QWidget>

class Ticker : public QWidget
{
    Q_OBJECT
    Q_PROPERTY(QString text READ text WRITE setText)

public:
    Ticker(QWidget *parent = 0);

    void setText(const QString &newText);
    QString text() const { return myText; }
    QSize sizeHint() const;

protected:
    void paintEvent(QPaintEvent *event);

    void timerEvent(QTimerEvent *event);
    void showEvent(QShowEvent *event);
    void hideEvent(QHideEvent *event);

private:
    QString myText;
    int offset;
    int myTimerId;
};

// ticker.cpp
void Ticker::setText(const QString &newText)
{
    myText = newText;
    update();               // repaint
    updateGeometry();       // sizeHint()
}

QSize Ticker::sizeHint() const
{
    // QWidget::fontMetrics() returns a QFontMetrics object that can be queried
    // to obtain information relating to the widget's font.
    return fontMetrics().size(0, text()); //
}

void Ticker::paintEvent(QPaintEvent * /* event */)
{
    QPainter painter(this);

    // QWidget::fontMetrics() returns a QFontMetrics object that can be queried
    // to obtain information relating to the widget's font.
    int textWidth = fontMetrics().width(text());
    if (textWidth < 1)
        return;
    int x = -offset;
    while (x < width()) {
        painter.drawText(x, 0, textWidth, height(), // 这是 QWidget::height()
                         Qt::AlignLeft | Qt::AlignVCenter, text());
        x += textWidth;
    }
}

void Ticker::showEvent(QShowEvent * /* event */)
{
    // The call to QObject::startTimer() returns an ID number, which we can use
    // later to identify the timer. QObject supports multiple independent
    // timers, each with its own time interval.
    myTimerId = startTimer(30);
}

void Ticker::timerEvent(QTimerEvent *event)
{
    if (event->timerId() == myTimerId) {
        ++offset;
        if (offset >= fontMetrics().width(text()))
            offset = 0;
        // scrolls the contents of the widget one pixel to the left using
        // QWidget::scroll()
        scroll(-1, 0);
    } else {
        // If the timer event isn't for the timer we are interested in, we pass
        // it on to the base class
        QWidget::timerEvent(event);
    }
}

void Ticker::hideEvent(QHideEvent * /* event */)
{
    killTimer(myTimerId);
    myTimerId = 0;
}
```

#### Installing Event Filters

`void QObject::installEventFilter(QObject * filterObj)`{.cpp}

:   Installs an event filter filterObj on this object. For example:

    ```cpp
    monitoredObj->installEventFilter(filterObj);
    firstNameEdit->installEventFilter(this);
    ```

```cpp
bool CustomerInfoDialog::eventFilter(QObject *target, QEvent *event)
{
    if (target == firstNameEdit || target == lastNameEdit
            || target == cityEdit || target == phoneNumberEdit) {
        if (event->type() == QEvent::KeyPress) {
            QKeyEvent *keyEvent = static_cast<QKeyEvent *>(event);
            if (keyEvent->key() == Qt::Key_Space) {
                focusNextChild();
                // return true to tell Qt that we have handled the event. If we
                // returned false, Qt would send the event to its intended
                // target, resulting in a spurious space being inserted into
                // the QLineEdit
                return true;
            }
        }
    }
    return QDialog::eventFilter(target, event);
}
```

Qt offers five levels at which events can be processed and filtered:

:   #. We can reimplement a specific event handler, `mousePressEvent()`, `keyPressEvent()`, `paintEvent()`
    #. We can reimplement `QObject::event()`{.cpp}
    #. We can install an event filter on a single `QObject`{.cpp}.
    #. We can install an event filter on the `QApplication`{.cpp} object.
        i. Once an event filter has been registered for `qApp` (**the unique `QApplication`{.cpp} object**)
        #. mostly useful for debugging
    #. We can subclass `QApplication`{.cpp} and reimplement `notify()`
        i. Qt calls `QApplication::notify()`{.cpp} to **send out an event**.
        #. Event filters are generally more useful, because there can be any number of concurrent event filters, but only one `notify()` function.

Many event types, including mouse and key events, can be **propagated** (`['prɑpə'get]`). If the
event has not been handled on the way to its target object or by the target
object itself, the whole event processing process is repeated, but this time
with the target object's parent as the new target. This continues, going from
parent to parent, **until either the event is handled or the top-level object is
reached**.

![This figure shows how a key press event is propagated from child to parent in a dialog. When the user presses
    a key, the event is first sent to the widget that has focus, in this case the bottom-right `QCheckBox`{.cpp}. If the
    `QCheckBox`{.cpp} doesn't handle the event, Qt sends it to the `QGroupBox`{.cpp}, and finally to the `QDialog`{.cpp} object.](http://gnat.qiniudn.com/qt/event.png)

#### Staying Responsive during Intensive Processing

When we call `QApplication::exec()`{.cpp}, we start Qt's **event loop**. Qt
issues a few events on startup to show and paint the widgets. After that, the
event loop is running, constantly checking to see whether any events have
occurred and dispatching these events to QObjects in the application.

**Long-running operations**

:   If we spend too much time processing a particular event, the user interface will become unresponsive.

    #. One solution is to use multiple threads.
    #. A simpler solution is to make frequent calls to
        `QApplication::processEvents()`{.cpp} in the file saving code. This function tells Qt
        to process any pending events, and then returns control to the caller. In fact,
        `QApplication::exec()`{.cpp} is little more than a while loop around a `processEvents()`
        function call.

```cpp
bool Spreadsheet::writeFile(const QString &fileName)
{
    QFile file(fileName);
    ...
    QApplication::setOverrideCursor(Qt::WaitCursor);
    for (int row = 0; row < RowCount; ++row) {
        for (int column = 0; column < ColumnCount; ++column) {
            QString str = formula(row, column);
            if (!str.isEmpty())
                out << quint16(row) << quint16(column) << str;
        }
        // keep the user interface responsive using processEvents()
        qApp->processEvents();
    }
    QApplication::restoreOverrideCursor();
    return true;
}
```

One danger with this approach is that the user might close the main window
while the application is still saving, or even click File|Save a second time,
resulting in undefined behavior. The easiest solution to this problem is to
replace `qApp->processEvents();`{.cpp} with
`qApp->processEvents(QEventLoop::ExcludeUserInputEvents);`{.cpp}
telling Qt to ignore mouse and key events.

```cpp
bool Spreadsheet::writeFile(const QString &fileName)
{
    QFile file(fileName);
    ...
    QProgressDialog progress(this);
    progress.setLabelText(tr("Saving %1").arg(fileName));
    progress.setRange(0, RowCount);
    progress.setModal(true);
    // We don't call show() on the QProgressDialog because progress dialogs do
    // that for themselves. If the operation turns out to be short, presumably
    // because the file to save is small or because the machine is fast,
    // QProgressDialog will detect this and will not show itself at all.

    for (int row = 0; row < RowCount; ++row) {
        progress.setValue(row);
        qApp->processEvents();
        if (progress.wasCanceled()) {
            file.remove();
            return false;
        }
        for (int column = 0; column < ColumnCount; ++column) {
            QString str = formula(row, column);
            if (!str.isEmpty())
                out << quint16(row) << quint16(column) << str;
        }
    }
    return true;
}
```

In addition to multithreading and using `QProgressDialog`{.cpp}, there is a completely
different way of dealing with long-running operations: Instead of performing
the processing when the user requests, we can **defer (推迟) the processing until the
application is idle**. This can work if the processing can be safely interrupted
and resumed, since we cannot predict how long the application will be idle.

In Qt, this approach can be implemented by using a **0-millisecond timer**. These timers time out whenever
there are no pending events.

```cpp
void Spreadsheet::timerEvent(QTimerEvent *event)
{
    if (event->timerId() == myTimerId) {
        while (step < MaxStep && !qApp->hasPendingEvents()) {
            performStep(step);
            ++step;
        }
    } else {
        QTableWidget::timerEvent(event);
    }
}
```

### 8. 2D Graphics

Qt's 2D graphics engine is based on the `QPainter`{.cpp} class.
`QPainter`{.cpp} can draw geometric shapes (points, lines, rectangles,
ellipses, arcs, chords, pie segments, polygons, and Bézier curves), as well as
pixmaps, images, and text. Furthermore, `QPainter`{.cpp} supports advanced
features such as antialiasing (for text and shape edges), alpha blending,
gradient filling, and vector paths. `QPainter`{.cpp} also supports linear
transformations, such as translation, rotation, shearing, and scaling.

`QPainter`{.cpp} can be used to draw on a "paint device", such as a
`QWidget`{.cpp}, a `QPixmap`{.cpp}, a `QImage`{.cpp}, or a
`QSvgGenerator`{.cpp}. `QPainter`{.cpp} can also be used in conjunction with
`QPrinter`{.cpp} for printing and for generating PDF documents. This means that
we can often use the same code to display data on-screen and to produce printed
reports.

By reimplementing `QWidget::paintEvent()`{.cpp}, we can create custom widgets
and exercise complete control over their appearance, as we saw in Chapter 5.
For customizing the look and feel of predefined Qt widgets, we can also specify
a style sheet or create a `QStyle`{.cpp} subclass; we cover both of these
approaches in Chapter 19.

A common requirement is the need to display large numbers of lightweight
arbitrarily shaped items that the user can interact with on a 2D canvas. Qt 4.2
introduced a completely new "graphics view" architecture centered on the
`QGraphicsView`{.cpp}, `QGraphicsScene`{.cpp}, and `QGraphicsItem`{.cpp}
classes. This architecture offers a high-level interface for doing item-based
graphics, and supports standard user actions on items, including moving,
selecting, and grouping. The items themselves are drawn using `QPainter`{.cpp}
as usual and can be transformed individually. We cover this architecture later
in the chapter.

An alternative to `QPainter`{.cpp} is to use OpenGL commands. OpenGL is a
standard library for drawing 3D graphics.  In Chapter 20, we will see how to
use the `QtOpenGL`{.cpp} module, which makes it easy to integrate OpenGL code
into Qt applications.

#### Painting with `QPainter`{.cpp}

```cpp
// create a QPainter and pass a pointer to the device
void MyWidget::paintEvent(QPaintEvent *event)
{
    QPainter painter(this);
    ...
}
```

The way the drawing is performed is influenced by `QPainter`{.cpp}'s settings.
Some of these are adopted from the device, whereas others are initialized to
default values. The three main painter settings are the pen, the brush, and the
font.

![QPainter][qpainter]

![Caption Style & Join Style][capjoin]

![Line Style][line]

![Brush Style][brush]

These settings can be modified at any time by calling `setPen()`{.cpp},
`setBrush()`{.cpp}, and `setFont()`{.cpp} with a `QPen`{.cpp}, `QBrush`{.cpp},
or `QFont`{.cpp} object.

![An ellipse & a pie segment & a Bézier curve][draw3]

```cpp
// drawEllipse
QPainter painter(this);
painter.setRenderHint(QPainter::Antialiasing, true);
painter.setPen(QPen(Qt::black, 12, Qt::DashDotLine, Qt::RoundCap));
painter.setBrush(QBrush(Qt::green, Qt::SolidPattern));
painter.drawEllipse(80, 80, 400, 240);
```

```cpp
// drawPie
QPainter painter(this);
painter.setRenderHint(QPainter::Antialiasing, true);
painter.setPen(QPen(Qt::black, 15, Qt::SolidLine, Qt::RoundCap, Qt::MiterJoin));
painter.setBrush(QBrush(Qt::blue,  Qt::DiagCrossPattern));
painter.drawPie(80, 80, 400, 240, 60 * 16, 270 * 16);
```

```cpp
// cubic Bézier curve
QPainter painter(this);
painter.setRenderHint(QPainter::Antialiasing, true);
QPainterPath path;
path.moveTo(80, 320);
// two control points: c1X, c1Y, c2X, c2Y
// endPoint: endPointX, endPointY
// void QPainterPath::cubicTo(const QPointF & c1, /* qreal c1X, qreal c1Y, */
//                            const QPointF & c2, /* qreal c2X, qreal c2Y, */
//                            const QPointF & endPoint)
path.cubicTo(200, 80, 320, 80, 480, 320);
painter.setPen(QPen(Qt::black, 8));
painter.drawPath(path);
```

The `QPainterPath`{.cpp} class can specify arbitrary vector shapes by connecting basic graphical elements together:
straight lines, ellipses, polygons, arcs, Bézier curves, and other painter paths. Painter paths are the ultimate
drawing primitive in the sense that any shape or combination of shapes can be expressed as a painter path.
A path specifies an outline, and the area described by the outline can be filled using a brush. In the example in
Figure 8.5 (c), we didn't set a brush, so only the outline is drawn.

These three examples use built-in brush patterns (`Qt::SolidPattern`{.cpp},
`Qt::DiagCrossPattern`{.cpp}, and `Qt::NoBrush`{.cpp}). In modern applications,
gradient fills are a popular alternative to monochrome fill patterns.
Gradients rely on color interpolation to obtain smooth transitions between two
or more colors. They are frequently used to produce 3D effects; for example,
the Plastique and Cleanlooks styles use gradients to render
`QPushButtons`{.cpp}. Qt supports three types of gradients: linear, conical
`['kɑnɪkl]` (圆锥形的), and radial. The Oven Timer example in the next section
combines all three types of gradients in a single widget to make it look like
the real thing.

![QPainter's gradient brushes][gradient]

#. Linear gradients are defined by two control points and by a series of "color
    stops" on the line that connects these two points. For example, the linear
    gradient in Figure 8.6 is created using the following

    code:

    ```cpp
    QLinearGradient gradient(50, 100, 300, 350);
    gradient.setColorAt(0.0, Qt::white);
    gradient.setColorAt(0.2, Qt::green);
    gradient.setColorAt(1.0, Qt::black);
    ```

#. Radial gradients are defined by a center point(x~c~, y~c~), a radius r, and
   a focal point(x~f~, y~f~), in addition to the color stops. The center point and
   the radius specify a circle. The colors spread outward from the focal point,
   which can be the center point or any other point inside the circle.

#. Conical gradients are defined by a center point (x~c~, y~c~) and an angle a.
   The colors spread around the center point like the sweep of a watch's seconds
   hand.

We specify three colors at three different positions between the two control
points. Positions are specified as floating-point values between 0 and 1, where
0 corresponds to the first control point and 1 to the second control point.
Colors between the specified stops are linearly interpolated.

```cpp
QPen::QPen(const QBrush & brush, 
           qreal width, 
           Qt::PenStyle style = Qt::SolidLine, 
           Qt::PenCapStyle cap = Qt::SquareCap, 
           Qt::PenJoinStyle join = Qt::BevelJoin)
```

So far, we have mentioned `QPainter`{.cpp}'s pen, brush, and font settings. In
addition to these, `QPainter`{.cpp} has other settings that influence the way
shapes and text are drawn:

#. The background brush is used to fill the background of geometric shapes
   (underneath the brush pattern), text, or bitmaps when the background mode is
   `Qt::OpaqueMode`{.cpp} (the default is `Qt::TransparentMode`{.cpp}).
#. The brush origin is the starting point for brush patterns, normally the
   top-left corner of the widget.
#. The clip region is the area of the device that can be painted. Painting outside
   the clip region has no effect.
#. The viewport, window, and world transform determine how logical `QPainter`{.cpp}
   coordinates map to physical paint device coordinates. By default, these are set
   up so that the logical and physical coordinate systems coincide. We cover
   coordinate systems in the next section.

The composition mode specifies how the newly drawn pixels should interact with
the pixels already present on the paint device. The default is "source over",
where drawn pixels are alpha-blended on top of existing pixels. This is
supported only on certain devices and is covered later in this chapter.

At any time, we can save the current state of a painter on an internal stack by
calling `save()`{.cpp} and restore it later on by calling `restore()`{.cpp}.

#### Coordinate System Transformations

With `QPainter`{.cpp}'s default coordinate system, the point (0, 0) is located
at the top-left corner of the paint device, x-coordinates increase rightward,
and y-coordinates increase downward. Each pixel occupies an area of size 1 &times; 1
in the default coordinate system.

Conceptually, the center of a pixel lies on **"half-pixel" coordinates**. For
example, the top-left pixel of a widget covers the area between points (0, 0)
and (1, 1), and its center is located at (0.5, 0.5). If we tell
`QPainter`{.cpp} to draw a pixel at, say, (100, 100), it will approximate the
result by shifting the coordinate by +0.5 in both directions, resulting in the
pixel centered at (100.5, 100.5) being drawn.

This distinction may seem rather academic at first, but it has important
consequences in practice. First, the shifting by +0.5 occurs only if
antialiasing is disabled (the default); if antialiasing is enabled and we try
to draw a pixel at (100, 100) in black, `QPainter`{.cpp} will actually color
the four pixels (99.5, 99.5), (99.5, 100.5), (100.5, 99.5), and (100.5, 100.5)
light gray, to give the impression of a pixel lying exactly at the meeting
point of the four pixels. If this effect is undesirable, we can avoid it by
specifying half-pixel coordinates or by translating the `QPainter`{.cpp} by
(+0.5, +0.5).

![`QPainter::drawRect(2, 2, 6, 5)`{.cpp} with no antialiasing][drawrect-1]

![`QPainter::drawRect(2, 2, 6, 5)`{.cpp} with antialiasing][drawrect-2]

![`QPainter::drawRect(2.5, 2.5, 6, 5)`{.cpp} with antialiasing][drawrect-3]

Now that we understand the default coordinate system, we can take a closer look
at how it can be changed using `QPainter`{.cpp}'s viewport, window, and world
transform. (In this context, the term "window" does not refer to a window in
the sense of a top-level widget, and the "viewport" has nothing to do with
`QScrollArea`{.cpp}'s viewport.)

The window–viewport mechanism is useful to make the drawing code independent of
the size or resolution of the paint device. For example, if we want the logical
coordinates to extend from (-50, -50) to (+50, +50), with (0, 0) in the middle,
we can set the window as follows:

`painter.setWindow(-50, -50, 100, 100);`{.cpp}, x0, y0, width, height

![][win-port]

Now comes the world transform. The world transform is a transformation matrix
that is applied in addition to the window–viewport conversion. It allows us to
translate, scale, rotate, or shear the items we are drawing.  For example, if
we wanted to draw text at a 45° angle, we would use this code:

```cpp
QTransform transform;
transform.rotate(+45.0);
painter.setWorldTransform(transform);
painter.drawText(pos, tr("Sales"));
```

The logical coordinates we pass to `drawText()`{.cpp} are converted by the
world transform, then mapped to physical coordinates using the window–viewport
settings.  If we specify multiple transformations, they are applied in the
order in which they are given. For example, if we want to use the point (50,
50) as the rotation's pivot point, we can do so by translating the window by
(+50, +50), performing the rotation, and then translating the window back to
its original position:

```cpp
QTransform transform;
transform.translate(+50.0, +50.0);
transform.rotate(+45.0);
transform.translate(-50.0, -50.0);
painter.setWorldTransform(transform);
painter.drawText(pos, tr("Sales"));
```

A simpler way to specify transformations is to use `QPainter`{.cpp}'s
`translate()`{.cpp}, `scale()`{.cpp}, `rotate()`{.cpp}, and `shear()`{.cpp}

```cpp
convenience functions:
painter.translate(-50.0, -50.0);
painter.rotate(+45.0);
painter.translate(+50.0, +50.0);
painter.drawText(pos, tr("Sales"));
```

If we want to use the same transformations repeatedly, it is more efficient to
store them in a `QTransform`{.cpp} object and set the world transform on the
painter whenever the transformations are needed.

```cpp
// oventimer.h
#include <QDateTime>
#include <QWidget>

class QTimer;

class OvenTimer : public QWidget
{
    Q_OBJECT

public:
    OvenTimer(QWidget *parent = 0);

    void setDuration(int secs);
    int duration() const;
    void draw(QPainter *painter);

signals:
    void timeout();

protected:
    void paintEvent(QPaintEvent *event);
    void mousePressEvent(QMouseEvent *event);

private:
    QDateTime finishTime;
    QTimer *updateTimer;
    QTimer *finishTimer;
};
```

```cpp
// oventimer.cpp
#include <QtGui>
#include <cmath>

#ifndef M_PI
#define M_PI 3.14159265359
#endif

#include "oventimer.h"

const double DegreesPerMinute = 7.0;
const double DegreesPerSecond = DegreesPerMinute / 60;
const int MaxMinutes = 45;
const int MaxSeconds = MaxMinutes * 60;
const int UpdateInterval = 5;

OvenTimer::OvenTimer(QWidget *parent)
    : QWidget(parent)
{
    finishTime = QDateTime::currentDateTime();

    //  refresh the appearance of the widget every five seconds
    updateTimer = new QTimer(this);
    connect(updateTimer, SIGNAL(timeout()), this, SLOT(update()));

    // finishTimer emits the widget's timeout() signal when the oven timer
    // reaches 0. The finishTimer needs to time out only once, so we call
    // setSingleShot(true)
    finishTimer = new QTimer(this);
    finishTimer->setSingleShot(true);
    connect(finishTimer, SIGNAL(timeout()), this, SIGNAL(timeout()));
    // an optimization to stop updating the widget when the timer is inactive
    connect(finishTimer, SIGNAL(timeout()), updateTimer, SLOT(stop()));

    QFont font;
    font.setPointSize(8);
    setFont(font);
}

void OvenTimer::setDuration(int secs)
{
    secs = qBound(0, secs, MaxSeconds);

    finishTime = QDateTime::currentDateTime().addSecs(secs);

    if (secs > 0) {
        updateTimer->start(UpdateInterval * 1000);
        finishTimer->start(secs * 1000);
    } else {
        updateTimer->stop();
        finishTimer->stop();
    }
    update();
}

int OvenTimer::duration() const
{
    int secs = QDateTime::currentDateTime().secsTo(finishTime);
    if (secs < 0)
        secs = 0;
    return secs;
}

void OvenTimer::mousePressEvent(QMouseEvent *event)
{
    QPointF point = event->pos() - rect().center();
    double theta = std::atan2(-point.x(), -point.y()) * 180.0 / M_PI;
    setDuration(duration() + int(theta / DegreesPerSecond));
    update();
}

void OvenTimer::paintEvent(QPaintEvent * /* event */)
{
    QPainter painter(this);
    painter.setRenderHint(QPainter::Antialiasing, true);

    int side = qMin(width(), height());

    // 最大内接正方形
    // Sets the painter's viewport rectangle to be the rectangle beginning at
    // (x, y) with the given width and height.
    painter.setViewport((width() - side) / 2, (height() - side) / 2,
                        side, side);

    // [0:100, 0:100] --> [-50:50, -50:50]
    // The window rectangle is part of the view transformation. The window
    // specifies the logical coordinate system. Its sister, the viewport(),
    // specifies the device coordinate system.
    painter.setWindow(-50, -50, 100, 100);

    draw(&painter);
}

void OvenTimer::draw(QPainter *painter)
{
    // The triangle is specified by three hard-coded coordinates
    static const int triangle[3][2] = {
        { -2, -49 }, { +2, -49 }, { 0, -47 }
    };
    QPen thickPen(palette().foreground(), 1.5);
    QPen thinPen(palette().foreground(), 0.5);
    QColor niceBlue(150, 150, 200);

    // triangle zero marker
    painter->setPen(thinPen);
    painter->setBrush(palette().foreground());
    painter->drawPolygon(QPolygon(3, &triangle[0][0]));

    QConicalGradient coneGradient(0, 0, -90.0);
    coneGradient.setColorAt(0.0, Qt::darkGray);
    coneGradient.setColorAt(0.2, niceBlue);
    coneGradient.setColorAt(0.5, Qt::white);
    coneGradient.setColorAt(1.0, Qt::darkGray);

    painter->setBrush(coneGradient);
    painter->drawEllipse(-46, -46, 92, 92);

    // halo effect
    QRadialGradient haloGradient(0, 0, 20, 0, 0);
    haloGradient.setColorAt(0.0, Qt::lightGray);
    haloGradient.setColorAt(0.8, Qt::darkGray);
    haloGradient.setColorAt(0.9, Qt::white);
    haloGradient.setColorAt(1.0, Qt::black);

    // NoPen is a pen!
    painter->setPen(Qt::NoPen);
    painter->setBrush(haloGradient);
    painter->drawEllipse(-20, -20, 40, 40);

    QLinearGradient knobGradient(-7, -25, 7, -25);
    knobGradient.setColorAt(0.0, Qt::black);
    knobGradient.setColorAt(0.2, niceBlue);
    knobGradient.setColorAt(0.3, Qt::lightGray);
    knobGradient.setColorAt(0.8, Qt::white);
    knobGradient.setColorAt(1.0, Qt::black);

    // rotate the painter's coordinate system 
    painter->rotate(duration() * DegreesPerSecond);
    painter->setBrush(knobGradient);
    painter->setPen(thinPen);
    painter->drawRoundRect(-7, -25, 14, 50, 99, 49);

    for (int i = 0; i <= MaxMinutes; ++i) {
        if (i % 5 == 0) {
            painter->setPen(thickPen);
            painter->drawLine(0, -41, 0, -44);
            painter->drawText(-15, -41, 30, 30,
                              Qt::AlignHCenter | Qt::AlignTop,
                              QString::number(i));
        } else {
            painter->setPen(thinPen);
            painter->drawLine(0, -42, 0, -44);
        }
        painter->rotate(-DegreesPerMinute);
    }
}

```
 
The code in the for loop suffers from a minor flaw, which would quickly become
apparent if we performed more iterations. Each time we call `rotate()`{.cpp},
we effectively multiply the current world transform with a rotation transform,
producing a new world transform. The rounding errors associated with
floating-point arithmetic gradually accumulate, resulting in an increasingly
inaccurate world transform. Here's one way to rewrite the code to avoid this
issue, using `save()`{.cpp} and `restore()`{.cpp} to save and reload the
original transform for each iteration

```cpp
for (int i = 0; i <= MaxMinutes; ++i) {
    painter->save();
    painter->rotate(-i * DegreesPerMinute);
    if (i % 5 == 0) {
        painter->setPen(thickPen);
        painter->drawLine(0, -41, 0, -44);
        painter->drawText(-15, -41, 30, 30,
        Qtk:AlignHCenter | Qt::AlignTop,
        QString::number(i));
    } else {
        painter->setPen(thinPen);
        painter->drawLine(0, -42, 0, -44);
    }
    painter->restore();
}
```

![Oventimer][oventimer]

#### High-Quality Rendering with QImage

When accuracy is more important than efficiency, we can draw to a
`QImage`{.cpp} and copy the result onto the screen. This always uses Qt's own
internal paint engine, giving identical results on all platforms. The only
restriction is that the `QImage`{.cpp} on which we paint must be created with
an argument of either `QImage::Format_RGB32`{.cpp} or
`QImage::Format_ARGB32_Premultiplied`{.cpp}.

The premultiplied `ARGB32` format is almost identical to the conventional
`ARGB32` format (0xAARRGGBB), the difference being that the red, green, and
blue channels are **"premultiplied"** with the alpha channel. This means that
the RGB values, which normally range from 0x00 to 0xFF, are scaled **from 0x00 to
the alpha value**. For example, a 50%-transparent blue color is represented as
0x7F0000FF in ARGB32 format, but 0x7F00007F in premultiplied ARGB32 format, and
similarly a 75%-transparent dark green of 0x3F008000 in ARGB32 format would be
0x3F002000 in premultiplied ARGB32 format.

Let's suppose we want to use antialiasing for drawing a widget, and we want to
obtain good results even on X11 systems with no X Render extension. The
original `paintEvent()`{.cpp} handler, which relies on X Render for the
antialiasing, might look like this:

```cpp
void MyWidget::paintEvent(QPaintEvent *event)
{
    QImage image(size(), QImage::Format_ARGB32_Premultiplied);
    // draw on the image
    QPainter imagePainter(&image);
    // initializes the painter's pen, background, and font based on the widget
    imagePainter.initFrom(this);
    imagePainter.setRenderHint(QPainter::Antialiasing, true);
    imagePainter.eraseRect(rect());
    draw(&imagePainter);
    // Ends painting. Any resources used while painting are released. You don't
    // normally need to call this since it is called by the destructor.
    imagePainter.end();
    QPainter widgetPainter(this);
    widgetPainter.drawImage(0, 0, image);
}
```

One particularly powerful feature of Qt's graphics engine is its support for
composition modes. These specify how a source and a destination pixel are
merged together when drawing. This applies to all painting operations,
including pen, brush, gradient, and image drawing. The default composition mode
is `QImage::CompositionMode_SourceOver`{.cpp}, meaning that the source pixel
(the pixel we are drawing) is blended on top of the destination pixel (the
existing pixel) in such a way that the alpha component of the source defines
its translucency. Figure 8.13 shows the result of drawing a semi-transparent
butterfly (the "source" image) on top of a checker pattern (the "destination"
image) with the different modes.

![][composite]

`QPainter::setCompositionMode()`{.cpp}

```cpp
QImage resultImage = checkerPatternImage;
QPainter painter(&resultImage);
painter.setCompositionMode(QPainter::CompositionMode_Xor);
painter.drawImage(0, 0, butterflyImage);
```

One issue to be aware of is that the `QImage::CompositionMode_Xor`{.cpp}
operation also applies to the alpha channel. This means that if we XOR the
color white (0xFFFFFFFF) with itself, we obtain a transparent color
(0x00000000), not black (0xFF000000).

#### Item-Based Rendering with Graphics View

Drawing using `QPainter`{.cpp} is ideal for custom widgets and for drawing one
or just a few items. For graphics in which we need to handle anything from a
handful up to tens of thousands of items, and we want the user to be able to
click, drag, and select items, Qt's graphics view classes provide the solution
we need.

![][multiview]

The graphics view architecture consists of a scene, represented by the
`QGraphicsScene`{.cpp} class, and items in the scene, represented by
`QGraphicsItem`{.cpp} subclasses. The scene (along with its item) is made
visible to users by showing them in a view, represented by the `QGraphicsView`{.cpp}
class. The same scene can be shown in more than one view—for example, to show
different parts of a large scene, or to show the scene under different
transformations. This is illustrated schematically in Figure 8.14.

Several predefined `QGraphicsItem`{.cpp} subclasses are provided, including
`QGraphicsLineItem`{.cpp}, `QGraphicsPixmapItem`{.cpp},
`QGraphicsSimpleTextItem`{.cpp} (for styled plain text), and
`QGraphicsTextItem`{.cpp} (for rich text); see Figure 8.15. We can also create
our own custom `QGraphicsItem`{.cpp} subclasses, as we will see later in this
section.

![][graphicsitem]

A `QGraphicsScene`{.cpp} holds a collection of graphics items. A scene has
three layers: **a background layer**, **an item layer**, and **a foreground
layer**. The background and foreground are normally specified by
`QBrushes`{.cpp}, but it is possible to reimplement `drawBackground()`{.cpp} or
`drawForeground()`{.cpp} for complete control. If we want to use a pixmap as a
background, we could simply create a texture `QBrush`{.cpp} based on that
pixmap. The foreground brush could be set to a semi-transparent white to give a
faded effect, or to be a cross pattern to provide a grid overlay.

The scene can tell us which items have collided, which are selected, and which
are at a particular point or in a particular region. A scene's graphics items
are either top-level (the scene is their parent) or children (their parent is
another item). Any transformations applied to an item are automatically applied
to its children.  The graphics view architecture provides two ways of grouping
items. One is to simply make an item a child of another item. Another way is to
use a `QGraphicsItemGroup`{.cpp}. Adding an item to a group does not cause it
to be transformed in any way; these groups are convenient for handling multiple
items as though they were a single item.  A `QGraphicsView`{.cpp} is a widget
that presents a scene, providing scroll bars if necessary and capable of
applying transformations that affect how the scene is rendered. This is useful
to support zooming and rotating as aids for viewing the scene.  By default,
`QGraphicsView`{.cpp} renders using Qt's built-in 2D paint engine, but it can
be changed to use an OpenGL widget with a single `setViewport()`{.cpp} call
after it has been constructed. It is also easy to print a scene, or parts of a
scene, as we will discuss in the next section where we see several techniques
for printing using Qt.

The architecture uses three different coordinate systems: 1) **viewport
coordinates**; 2) **scene coordinates**, and 3) **item coordinates** — with
functions for mapping from one coordinate system to another. Viewport
coordinates are coordinates inside the `QGraphicsView`{.cpp}'s viewport. Scene
coordinates are logical coordinates that are used for positioning top-level
items on the scene. Item coordinates are specific to each item and are centered
about an item-local (0, 0) point; these remain unchanged when we move the item
on the scene. In practice, we usually only care about the scene coordinates
(for positioning top-level items) and item coordinates (for positioning child
items and for drawing items). Drawing each item in terms of its own local
coordinate system means that we do not have to worry about where an item is in
the scene or what transformations have been applied to it.  The graphics view
classes are straightforward to use and offer a great deal of functionality. To
introduce some of what can be done with them, we will review two examples. The
first example is a simple diagram editor, which will show how to create items
and how to handle user interaction. The second example is an annotated map
program that shows how to handle large numbers of graphics objects and how to
render them efficiently at different zoom levels.  The Diagram application
shown in Figure 8.16 allows users to create nodes and links. Nodes are graphics
items that show plain text inside a rounded rectangle, whereas links are lines
that connect pairs of nodes. Nodes that are selected are shown with a dashed
outline drawn with a thicker pen than usual. We will begin by looking at links,
since they are the simplest, then nodes, and then we will see how they are used
in context.

```cpp
#include <QGraphicsLineItem>

class Node;

// The Link class is derived from QGraphicsLineItem, which represents a line in
// a QGraphicsScene.
class Link : public QGraphicsLineItem
{
public:
    Link(Node *fromNode, Node *toNode);
    ~Link();

    Node *fromNode() const;
    Node *toNode() const;

    void setColor(const QColor &color);
    QColor color() const;

    void trackNodes();

private:
    Node *myFromNode;
    Node *myToNode;
};
```

`QGraphicsItem`{.cpp} is not a `QObject`{.cpp} subclass, but if we wanted to
add signals and slots to Link, there is nothing to stop us from using multiple
inheritance with `QObject`{.cpp}.

```cpp
Link::Link(Node *fromNode, Node *toNode)
{
    myFromNode = fromNode;
    myToNode = toNode;

    myFromNode->addLink(this);
    myToNode->addLink(this);

    setFlags(QGraphicsItem::ItemIsSelectable);

    // Every graphics item has an (x, y) position, and a z value that specifies
    // how far forward or back it is in the scene. Since we are going to draw
    // our lines from the center of one node to the center of another node, we
    // give the line a negative z value so that it will always be drawn
    // underneath the nodes it connects. As a result, links will appear as
    // lines between the nearest edges of the nodes they connect.
    setZValue(-1);

    setColor(Qt::darkRed);
    trackNodes();
}

void Link::setColor(const QColor &color)
{
    // The setPen() function is inherited from QGraphicsLineItem.
    setPen(QPen(color, 1.0));
}

QColor Link::color() const
{
    return pen().color();
}

void Link::trackNodes()
{
    // QGraphicsItem::pos() function returns the position of its graphics item
    // relative to the scene (for top- level items) or to the parent item (for
    // child items)
    setLine(QLineF(myFromNode->pos(), myToNode->pos()));
}
```

For the Node class, we will handle all the graphics ourselves. Another
difference between nodes and links is that nodes are more interactive. We will
begin by reviewing the Node declaration, breaking it into a few pieces since it
is quite long.

```cpp
#include <QApplication>
#include <QColor>
#include <QGraphicsItem>
#include <QSet>

class Link;

class Node : public QGraphicsItem
{
    // Q_DECLARE_TR_FUNCTIONS() macro is used to add a tr() function to this
    // class, even though it is not a QObject subclass. This is simply a
    // convenience that allows us to use tr() rather than the static
    // QObject::tr() or QCoreApplication::translate().
    Q_DECLARE_TR_FUNCTIONS(Node)

public:
    Node();
    ~Node();

    // getters and setters for the private members
    void setText(const QString &text);
    QString text() const;
    void setTextColor(const QColor &color);
    QColor textColor() const;
    void setOutlineColor(const QColor &color);
    QColor outlineColor() const;
    void setBackgroundColor(const QColor &color);
    QColor backgroundColor() const;

    void addLink(Link *link);
    void removeLink(Link *link);

    // When we create QGraphicsItem subclasses that we want to draw manually,
    // we normally reimplement boundingRect() and paint(). If we don't
    // reimplement shape(), the base class implementation will fall back on the
    // boundingRect(). In this case, we have reimplemented shape() to return a
    // more accurate shape that takes into account the node's rounded corners.
    QRectF boundingRect() const;
    QPainterPath shape() const;
    void paint(QPainter *painter,
               const QStyleOptionGraphicsItem *option, QWidget *widget);

protected:
    // let the user change the text by double-clicking the node
    void mouseDoubleClickEvent(QGraphicsSceneMouseEvent *event);
    QVariant itemChange(GraphicsItemChange change,
                        const QVariant &value);

private:
    QRectF outlineRect() const;
    int roundness(double size) const;

    // Just as a Link keeps track of the nodes it connects, a Node keeps track
    // of its links
    QSet<Link *> myLinks;
    QString myText;
    QColor myTextColor;
    QColor myBackgroundColor;
    QColor myOutlineColor;
};

```

```cpp
Node::Node()
{
    ...

    setFlags(ItemIsMovable | ItemIsSelectable);
    // The z value will default to 0, and we leave the node's position in the
    // scene to be set by the caller
}

Node::~Node()
{
    // We iterate over (a copy of) the set of links rather than use
    // qDeleteAll() to avoid side effects, since the set of links is indirectly
    // accessed by the Link destructor
    foreach (Link *link, myLinks)
        delete link;
}

void Node::setText(const QString &text)
{
    // in cases such as this where the item's bounding rectangle might change
    // (because the new text might be shorter or longer than the current text),
    // we must call prepareGeometryChange() immediately before doing anything
    // that will affect the item's bounding rectangle
    prepareGeometryChange();
    myText = text;
    // schedule a repaint
    update();
}

void Node::setText(const QString &text)
{
    // We don't need to call prepareGeometryChange(), because the size of the
    // item is not affected by a color change.
    prepareGeometryChange();
    myText = text;
    update();
}

void Node::addLink(Link *link)
{
    myLinks.insert(link);
}

void Node::removeLink(Link *link)
{
    myLinks.remove(link);
}

QRectF Node::outlineRect() const
{
    const int Padding = 8;
    QFontMetricsF metrics = qApp->font();
    QRectF rect = metrics.boundingRect(myText);
    rect.adjust(-Padding, -Padding, +Padding, +Padding);
    // translate the rectangle so that its center is at (0, 0)
    rect.translate(-rect.center());
    return rect;
}

// The shape() function is called by QGraphicsView for fine-grained collision
// detection. Often, we can omit it and leave the item to calculate the shape
// itself based on the bounding rectangle. Here we reimplement it to return a
// QPainterPath that represents a rounded rectangle. As a consequence, clicking
// the corner areas that fall outside the rounded rectangle but inside the
// bounding rectangle won't select the item.
QRectF Node::boundingRect() const
{
    // since the rectangle we return from this function must allow for at least
    // half the width of the pen if an outline is going to be drawn.
    const int Margin = 1;
    return outlineRect().adjusted(-Margin, -Margin, +Margin, +Margin);
}

QPainterPath Node::shape() const
{
    QRectF rect = outlineRect();

    QPainterPath path;
    // void addRoundRect(const QRectF &rect, int xRnd, int yRnd);
    path.addRoundRect(rect, roundness(rect.width()),
                      roundness(rect.height()));
    return path;
}
```

`void QRectF::adjust(qreal dx1, qreal dy1, qreal dx2, qreal dy2)`{.cpp}

:   Adds dx1, dy1, dx2 and dy2 respectively to the existing coordinates of the rectangle.

`QRectF QRectF::adjusted(qreal dx1, qreal dy1, qreal dx2, qreal dy2) const`{.cpp}

:   Returns a new rectangle with dx1, dy1, dx2 and dy2 added respectively to
    the existing coordinates of this rectangle.

![](http://doc.qt.io/qt-4.8/images/qpainterpath-addtext.png)

```cpp
QLinearGradient myGradient;
QPen myPen;
QFont myFont;
QPointF baseline(x, y);

QPainterPath myPath;
myPath.addText(baseline, myFont, tr("Qt"));

QPainter painter(this);
painter.setBrush(myGradient);
painter.setPen(myPen);
painter.drawPath(myPath);
```

```cpp
void Node::paint(QPainter *painter,
                 const QStyleOptionGraphicsItem *option,
                 QWidget * /* widget */)
{
    QPen pen(myOutlineColor);
    // The option parameter of type QStyleOptionGraphicsItem is an unusual
    // class for Qt because it provides several public member variables. These
    // include the current layout direction, font metrics, palette, rectangle,
    // state (selected, "has focus", and many others), the transformation
    // matrix, and the level of detail. Here we have checked the state member
    // to see whether the node is selected.
    if (option->state & QStyle::State_Selected) {
        pen.setStyle(Qt::DotLine);
        pen.setWidth(2);
    }
    // default: solid 1-pixel line
    painter->setPen(pen);
    painter->setBrush(myBackgroundColor);

    QRectF rect = outlineRect();
    painter->drawRoundRect(rect, roundness(rect.width()),
                           roundness(rect.height()));

    painter->setPen(myTextColor);
    painter->drawText(rect, Qt::AlignCenter, myText);
}

QVariant Node::itemChange(GraphicsItemChange change,
                          const QVariant &value)
{
    if (change == ItemPositionHasChanged) {
        foreach (Link *link, myLinks)
            link->trackNodes();
    }
    return QGraphicsItem::itemChange(change, value);
}

void Node::mouseDoubleClickEvent(QGraphicsSceneMouseEvent *event)
{
    QString text = QInputDialog::getText(event->widget(), // event->widget()
                           tr("Edit Text"), tr("Enter new text:"),
                           QLineEdit::Normal, myText);
    if (!text.isEmpty())
        setText(text);
}

int Node::roundness(double size) const
{
    // returns appropriate rounding factors to ensure that the node's corners
    // are quarter- circles with diameter 12. The rounding factors must be in
    // the range 0 (square) to 99 (fully rounded).
    const int Diameter = 12;
    return 100 * Diameter / int(size);
}
```

```cpp
class DiagramWindow : public QMainWindow
{
    Q_OBJECT

public:
    DiagramWindow();

private slots:
    void addNode();
    void addLink();
    void del(); // void cut(); void copy(); void paste();
    void bringToFront();
    void sendToBack();
    void properties();
    void updateActions();

private:
    typedef QPair<Node *, Node *> NodePair;

    void createActions();
    void createMenus();
    void createToolBars();
    void setZValue(int z);
    void setupNode(Node *node);
    Node *selectedNode() const;
    Link *selectedLink() const;
    NodePair selectedNodePair() const;

    QMenu *fileMenu;
    QMenu *editMenu;
    QToolBar *editToolBar; // QAction *exitAction; QAction *addNodeAction; 
    QAction *addLinkAction; // QAction *deleteAction; 
    QAction *copyAction; // QAction *pasteAction; QAction *cutAction;
    QAction *bringToFrontAction;
    QAction *sendToBackAction;
    QAction *propertiesAction;

    QGraphicsScene *scene;
    QGraphicsView *view;

    int minZ;
    int maxZ;
    int seqNumber;
};

DiagramWindow::DiagramWindow()
{
    scene = new QGraphicsScene(0, 0, 600, 500);

    // create a graphics view to visualize the scene.
    view = new QGraphicsView;
    view->setScene(scene);
    // means that the user can also select items by dragging a rubber band over
    // them
    view->setDragMode(QGraphicsView::RubberBandDrag);
    view->setRenderHints(QPainter::Antialiasing
                         | QPainter::TextAntialiasing);
    view->setContextMenuPolicy(Qt::ActionsContextMenu);
    setCentralWidget(view);

    minZ = 0;
    maxZ = 0;
    seqNumber = 0;

    createActions();
    createMenus();
    createToolBars();

    connect(scene, SIGNAL(selectionChanged()),
            this, SLOT(updateActions()));

    setWindowTitle(tr("Diagram"));
    updateActions();
}

void DiagramWindow::addNode()
{
    Node *node = new Node;
    node->setText(tr("Node %1").arg(seqNumber + 1));
    setupNode(node);
}

void DiagramWindow::setupNode(Node *node)
{
    node->setPos(QPoint(80 + (100 * (seqNumber % 5)),
                        80 + (50 * ((seqNumber / 5) % 7))));
    scene->addItem(node);
    ++seqNumber;

    scene->clearSelection();
    node->setSelected(true);
    bringToFront();
}

void DiagramWindow::bringToFront()
{
    ++maxZ;
    setZValue(maxZ);
}

void DiagramWindow::sendToBack()
{
    --minZ;
    setZValue(minZ);
}

Node *DiagramWindow::selectedNode() const
{
    QList<QGraphicsItem *> items = scene->selectedItems();
    if (items.count() == 1) {
        return dynamic_cast<Node *>(items.first());
    } else {
        return 0;
    }
}


void DiagramWindow::addLink()
{
    NodePair nodes = selectedNodePair();
    if (nodes == NodePair())
        return;

    Link *link = new Link(nodes.first, nodes.second);
    scene->addItem(link);
}

DiagramWindow::NodePair DiagramWindow::selectedNodePair() const
{
    QList<QGraphicsItem *> items = scene->selectedItems();
    if (items.count() == 2) {
        Node *first = dynamic_cast<Node *>(items.first());
        Node *second = dynamic_cast<Node *>(items.last());
        if (first && second)
            return NodePair(first, second);
    }
    return NodePair();
}

void DiagramWindow::del()
{
    QList<QGraphicsItem *> items = scene->selectedItems();
    QMutableListIterator<QGraphicsItem *> i(items);
    while (i.hasNext()) {
        Link *link = dynamic_cast<Link *>(i.next());
        if (link) {
            delete link;
            i.remove();
        }
    }

    qDeleteAll(items);
}

void DiagramWindow::properties()
{
    Node *node = selectedNode();
    Link *link = selectedLink();

    if (node) {
        PropertiesDialog dialog(node, this);
        dialog.exec();
    } else if (link) {
        QColor color = QColorDialog::getColor(link->color(), this);
        if (color.isValid())
            link->setColor(color);
    }
}

void DiagramWindow::cut()
{
    Node *node = selectedNode();
    if (!node)
        return;

    copy();
    delete node;
}

void DiagramWindow::copy()
{
    Node *node = selectedNode();
    if (!node)
        return;

    QString str = QString("Node %1 %2 %3 %4")
                  .arg(node->textColor().name()) // #008000
                  .arg(node->outlineColor().name())
                  .arg(node->backgroundColor().name())
                  .arg(node->text());
    QApplication::clipboard()->setText(str);
}

void DiagramWindow::paste()
{
    QString str = QApplication::clipboard()->text();
    QStringList parts = str.split(" ");

    if (parts.count() >= 5 && parts.first() == "Node") {
        Node *node = new Node;
        // qlist.h: QList<T> mid(int pos, int length = -1) const;
        node->setText(QStringList(parts.mid(4)).join(" "));
        node->setTextColor(QColor(parts[1]));
        node->setOutlineColor(QColor(parts[2]));
        node->setBackgroundColor(QColor(parts[3]));
        setupNode(node);
    }
}

void DiagramWindow::updateActions()
{
    bool hasSelection = !scene->selectedItems().isEmpty();
    bool isNode = (selectedNode() != 0);
    bool isNodePair = (selectedNodePair() != NodePair());

    cutAction->setEnabled(isNode);
    copyAction->setEnabled(isNode);
    addLinkAction->setEnabled(isNodePair);
    deleteAction->setEnabled(hasSelection);
    bringToFrontAction->setEnabled(isNode);
    sendToBackAction->setEnabled(isNode);
    propertiesAction->setEnabled(isNode);

    foreach (QAction *action, view->actions())
        view->removeAction(action);

    foreach (QAction *action, editMenu->actions()) {
        if (action->isEnabled())
            view->addAction(action);
    }
}
```

A city block has a kind, a color, and a shape. Since the city blocks are not
selectable, we have not bothered to reimplement the `shape()`{.cpp} function
like we did for the Node class in the previous example.

```cpp
class CityBlock : public QGraphicsItem
{
public:
    enum Kind { Park, SmallBuilding, Hospital, Hall, Building, Tower,
                LShapedBlock, LShapedBlockPlusSmallBlock, TwoBlocks,
                BlockPlusTwoSmallBlocks };

    CityBlock(Kind kind);

    QRectF boundingRect() const;
    void paint(QPainter *painter,
               const QStyleOptionGraphicsItem *option, QWidget *widget);

private:
    Kind kind;
    QColor color;
    QPainterPath shape;
};
```

```cpp
CityBlock::CityBlock(Kind kind)
{
    this->kind = kind;

    int green = 96 + (std::rand() % 64);
    int red = 16 + green + (std::rand() % 64);
    int blue = 16 + (std::rand() % green);
    color = QColor(red, green, blue);

    if (kind == Park) {
        color = QColor(192 + (std::rand() % 32), 255,
                       192 + (std::rand() % 16));
        shape.addRect(boundingRect());
    } else if (kind == SmallBuilding) {
        QRectF block(-7.5, -7.5, 15, 15);
        // Moves the rectangle, leaving the bottom-left corner at the given
        // position. The rectangle's size is unchanged.
        block.moveBottomLeft(QPointF((std::rand() % 6) - 3,
                                     (std::rand() % 6) - 3));
        shape.addRect(block);
    } else if (kind == Hospital) {
        int a = (std::rand() % 6) + 10;
        int b = (std::rand() % 6) + 10;
        QPolygonF block;
        block << QPointF(-5, -a) << QPointF(-5, -5) << QPointF(-10, -5)
              << QPointF(-10, 5) << QPointF(-5, 5)  << QPointF(-5, 10)
              << QPointF(5, 10)  << QPointF(5, 5)   << QPointF(b, 5)
              << QPointF(b, -5)  << QPointF(5, -5)  << QPointF(5, -a);
        shape.addPolygon(block);
    } else if (kind == Hall) {
        int padding1 = (std::rand() % 8) + 2;
        int padding2 = (std::rand() % 8) + 2;
        shape.addEllipse(boundingRect().adjusted(+padding1, +padding1,
                                                 -padding2, -padding2));
    } else if (kind == Building) {
        shape.addRect(boundingRect());
    } else if (kind == Tower) {
        int padding1 = (std::rand() % 8) + 2;
        int padding2 = (std::rand() % 8) + 2;
        shape.addRect(boundingRect().adjusted(+padding1, +padding1,
                                              -padding2, -padding2));
    } else if (kind == LShapedBlock
               || kind == LShapedBlockPlusSmallBlock) {
        int a = (std::rand() % 6) + 10;
        int b = (std::rand() % 6) + 10;
        int s = qMin(a, b) / 2;
        QPolygonF block;
        block << QPointF(-a, -a) << QPointF(-a, +a) << QPointF(-s, +a)
              << QPointF(-s, -s) << QPointF(+b, -s) << QPointF(+b, -a);
        shape.addPolygon(block);
        if (kind == LShapedBlockPlusSmallBlock) {
            int inset = (std::rand() % 4) + 4;
            shape.addRect(QRectF(-s + inset, -s + inset, a, b));
        }
    } else if (kind == TwoBlocks) {
        int w1 = (std::rand() % 10) + 8;
        int h1 = (std::rand() % 28) + 8;
        int w2 = (std::rand() % 10) + 8;
        int h2 = (std::rand() % 24) + 8;
        shape.addRect(QRectF(-16, -16, w1, h1));
        shape.addRect(QRectF(-16 + w1 + 4, -16 + (std::rand() % 4),
                             w2, h2));
    } else if (kind == BlockPlusTwoSmallBlocks) {
        int w1 = (std::rand() % 10) + 8;
        int h1 = (std::rand() % 28) + 8;
        int w2 = (std::rand() % 10) + 8;
        int h2 = (std::rand() % 10) + 8;
        int w3 = (std::rand() % 6) + 8;
        int h3 = (std::rand() % 6) + 8;
        int y = (std::rand() % 4) - 16;
        shape.addRect(QRectF(-16, -16, w1, h1));
        shape.addRect(QRectF(-16 + w1 + 4, y, w2, h2));
        shape.addRect(QRectF(-16 + w1 + 4,
                             y + h2 + 4 + (std::rand() % 4), w3, h3));
    }
}

QRectF CityBlock::boundingRect() const
{
    return QRectF(-20, -20, 40, 40);
}

void CityBlock::paint(QPainter *painter,
                      const QStyleOptionGraphicsItem *option,
                      QWidget * /* widget */)
{
    if (option->levelOfDetail < 4.0) {
        // If the zoom factor is less than 4.0, we use a solid color to fill
        // the shape
        painter->fillPath(shape, color);
    } else {
        // If the zoom factor is 4.0 or more, we use a QLinearGradient to fill
        // the shape to give a subtle lighting effect.
        QLinearGradient gradient(QPoint(-20, -20), QPoint(+20, +20));
        int coeff = 105 + int(std::log(option->levelOfDetail - 4.0));
        // Setting factor to 150 returns a color that is 50% brighter
        gradient.setColorAt(0.0, color.lighter(coeff));
        gradient.setColorAt(1.0, color.darker(coeff));
        // If the factor is greater than 100, this functions returns a darker
        // color. Setting factor to 300 returns a color that has one-third the
        // brightness. 
        painter->fillPath(shape, gradient);
    }
}
```

The `levelOfDetail`{.cpp} member of the `QStyleOptionGraphicsItem`{.cpp} class
stores a floating-point value that tells us what the zoom factor is.

```cpp
class Annotation : public QGraphicsItem
{
public:
    Annotation(const QString &text, bool major = false);

    void setText(const QString &text);
    QString text() const;

    QRectF boundingRect() const;
    void paint(QPainter *painter,
               const QStyleOptionGraphicsItem *option, QWidget *widget);

private:
    QFont font;
    QString str;
    bool major;
    double threshold;
    int y;
};
```

```cpp
Annotation::Annotation(const QString &text, bool major)
{
    font = qApp->font();
    font.setBold(true);

    // A part
    if (major) {
        font.setPointSize(font.pointSize() + 2);
        font.setStretch(QFont::SemiExpanded);
    }

    // B part
    if (major) {
        threshold = 0.01 * (40 + (std::rand() % 40));
    } else {
        threshold = 0.01 * (100 + (std::rand() % 100));
    }

    str = text;
    this->major = major;
    y = 20 - (std::rand() % 40);

    // on top
    setZValue(1000);

    // ensure that the annotation does not change size no matter how much the
    // scene is zoomed
    setFlag(ItemIgnoresTransformations, true);
}
```

```cpp
void Annotation::setText(const QString &text)
{
    prepareGeometryChange();
    str = text;
    update();
}

// We get the font metrics for the annotation's font, and use them to calculate
// the text's bounding rectangle. We then move the rectangle's center point to
// the annotation's y offset, and make the rectangle slightly wider. The extra
// pixels on the left and right sides of the bounding rectangle will give the
// text some margin from the edges.
QRectF Annotation::boundingRect() const
{
    QFontMetricsF metrics(font);
    QRectF rect = metrics.boundingRect(str);
    // Moves the rectangle, leaving the center point at the given position. The
    // rectangle's size is unchanged.
    rect.moveCenter(QPointF(0, y));
    rect.adjust(-4, 0, +4, 0);
    return rect;
}
```

```cpp
void Annotation::paint(QPainter *painter,
                       const QStyleOptionGraphicsItem *option,
                       QWidget * /* widget */)
{
    if (option->levelOfDetail <= threshold)
        return;

    painter->setFont(font);

    QRectF rect = boundingRect();

    // start by painting a semi-transparent white rectangle; this helps the
    // text stand out when drawn on top of a dark block
    int alpha = int(30 * std::log(option->levelOfDetail));
    if (alpha >= 32)
        painter->fillRect(rect, QColor(255, 255, 255, qMin(alpha, 63)));

    // We draw the text twice, once in white and once in blue. The white text
    // is offset by one pixel horizontally and vertically to create a shadow
    // effect that makes the text easier to read
    painter->setPen(Qt::white);
    painter->drawText(rect.translated(+1, +1), str,
                      QTextOption(Qt::AlignCenter));
    painter->setPen(Qt::blue);
    painter->drawText(rect, str, QTextOption(Qt::AlignCenter));
}
```

```cpp
class CityView : public QGraphicsView
{
    Q_OBJECT

public:
    CityView(QWidget *parent = 0);

protected:
    void wheelEvent(QWheelEvent *event);
};

CityView::CityView(QWidget *parent)
    : QGraphicsView(parent)
{
    // Setting the drag mode is all that is required to support scrolling by
    // dragging.
    setDragMode(ScrollHandDrag);
}

void CityView::wheelEvent(QWheelEvent *event)
{
    // calculate an appropriate scaling factor and call QGraphicsView::scale()
    double numDegrees = -event->delta() / 8.0;
    double numSteps = numDegrees / 15.0;
    double factor = std::pow(1.125, numSteps);
    scale(factor, factor);
}
```

That completes our two graphics view examples. Qt's graphics view architecture
is very rich, so **bear in mind that it has a lot more to offer than we have
had the space to cover**. There is support for drag and drop, and graphics
items can have tooltips and custom cursors. Animation effects can be achieved
in a number of ways, for example, by associating
`QGraphicsItemAnimations`{.cpp} with the items that we want to animate and
performing the animation using a `QTimeLine`{.cpp}. It is also possible to
achieve animation by creating custom graphics item subclasses that are derived
from `QObject`{.cpp} (through multiple inheritance) and that reimplement
`QObject::timerEvent()`{.cpp}.

#### Printing

* &#x2610; TODO

### 9. Drag and Drop

`QMimeData`{.cpp}, a class that can provide data in several formats.

```cpp
protected:
    void dragEnterEvent(QDragEnterEvent *event);
    void dropEvent(QDropEvent *event);
```

```cpp
MainWindow::MainWindow()
{
    textEdit = new QTextEdit;
    setCentralWidget(textEdit);
    // In the constructor, we create a QTextEdit and set it as the central
    // widget. By default, QTextEdit accepts textual drags from other
    // applications, and if the user drops a file onto it, it will insert the
    // file name into the text. Since drop events are propagated from child to
    // parent, by disabling dropping on the QTextEdit and enabling it on the
    // main window, we get the drop events for the whole window in MainWindow.
    textEdit->setAcceptDrops(false);
    setAcceptDrops(true);
    setWindowTitle(tr("Text Editor"));
}
```

```cpp
void MainWindow::dragEnterEvent(QDragEnterEvent *event)
{
    // The MIME type text/uri-list is used to store a list of uniform resource
    // identifiers (URIs), which can be file names, URLs (such as HTTP or FTP
    // paths), or other global resource identifiers.
    if (event->mimeData()->hasFormat("text/uri-list"))
        event->acceptProposedAction();
}

void MainWindow::dropEvent(QDropEvent *event)
{
    QList<QUrl> urls = event->mimeData()->urls();
    if (urls.isEmpty())
        return;
    QString fileName = urls.first().toLocalFile();
    if (fileName.isEmpty())
        return;
    if (readFile(fileName))
        setWindowTitle(tr("%1 - %2").arg(fileName)
                                    .arg(tr("Drag File")));
}        
```

#### Enabling Drag and Drop

```cpp
void ProjectListWidget::mousePressEvent(QMouseEvent *event)
{
    if (event->button() == Qt::LeftButton)
        startPos = event->pos();
    QListWidget::mousePressEvent(event);
}

void ProjectListWidget::mouseMoveEvent(QMouseEvent *event)
{
    if (event->buttons() & Qt::LeftButton) {
        // If the distance is greater than or equal to QApplication's
        // recommended drag start distance (normally four pixels), we call the
        // private function performDrag() to start dragging. This avoids
        // initiating a drag just because the user's hand shakes.
        int distance = (event->pos() - startPos).manhattanLength();
        if (distance >= QApplication::startDragDistance()) // 4 px normally
            performDrag();
    }
    QListWidget::mouseMoveEvent(event);
}

void ProjectListWidget::performDrag()
{
    QListWidgetItem *item = currentItem();
    if (item) {
        QMimeData *mimeData = new QMimeData;
        mimeData->setText(item->text());

        QDrag *drag = new QDrag(this);
        drag->setMimeData(mimeData);
        drag->setPixmap(QPixmap(":/images/person.png"));
        // The QDrag::exec() call starts the dragging operation and blocks
        // until the user drops or cancels the drag.
        if (drag->exec(Qt::MoveAction) == Qt::MoveAction)
            delete item;
    }
}
```

```cpp
void ProjectListWidget::dragEnterEvent(QDragEnterEvent *event)
{
    // QDragEnterEvent::source() returns a pointer to the widget that initiated
    // the drag if that widget is part of the same application; otherwise, it
    // returns a null pointer.
    ProjectListWidget *source =
            qobject_cast<ProjectListWidget *>(event->source());
    if (source && source != this) {
        event->setDropAction(Qt::MoveAction);
        event->accept();
    }
}
```

```cpp
void ProjectListWidget::dragMoveEvent(QDragMoveEvent *event)
{
    ProjectListWidget *source =
            qobject_cast<ProjectListWidget *>(event->source());
    if (source && source != this) {
        event->setDropAction(Qt::MoveAction);
        event->accept();
    }
}

void ProjectListWidget::dropEvent(QDropEvent *event)
{
    ProjectListWidget *source =
            qobject_cast<ProjectListWidget *>(event->source());
    if (source && source != this) {
        // retrieve the dragged text using QMimeData::text()
        // drag->setMimeData(mimeData);
        addItem(event->mimeData()->text());
        event->setDropAction(Qt::MoveAction);
        event->accept();
    }
}
```

Drag and drop is a powerful mechanism for transferring data between
applications. But in some cases, it's possible to implement drag and drop
without using Qt's drag and drop facilities. If all we want to do is to move
data within one widget in one application, we can often simply reimplement
`mousePressEvent()`{.cpp} and `mouseReleaseEvent()`{.cpp}.

```cpp
void MyTableWidget::performDrag()
{
    QString plainText = selectionAsPlainText();
    if (plainText.isEmpty())
        return;
    QMimeData *mimeData = new QMimeData;
    mimeData->setText(plainText);
    mimeData->setHtml(toHtml(plainText));
    mimeData->setData("text/csv", toCsv(plainText).toUtf8());
    QDrag *drag = new QDrag(this);
    drag->setMimeData(mimeData);
    if (drag->exec(Qt::CopyAction | Qt::MoveAction) == Qt::MoveAction)
        deleteSelection();
}
```

```cpp
QString MyTableWidget::toCsv(const QString &plainText)
{
    QString result = plainText;
    result.replace("\\", "\\\\");
    result.replace("\"", "\\\"");
    result.replace("\t", "\", \"");
    result.replace("\n", "\"\n\"");
    result.prepend("\"");
    result.append("\"");
    return result;
}
```

`QString Qt::escape(const QString & plain)`{.cpp}

:   Converts the plain text string plain to a HTML string with HTML
    metacharacters `<`, `>`, `&`, and `"` replaced by HTML entities.

    ```cpp
    QString plain = "#include <QtCore>"
    QString html = Qt::escape(plain);
    // html == "#include &lt;QtCore&gt;"
    ```

#### Supporting Custom Drag Types

If we want to drag plain text, HTML text, images, URLs, or colors, we can use `QMimeData`{.cpp}
without formality. But if we want to drag custom data, we must choose among the following alternatives:

#. We can provide arbitrary data as a `QByteArray`{.cpp} using
   `QMimeData::setData()`{.cpp} and extract it later using
   `QMimeData::data()`{.cpp}.
#. We can subclass `QMimeData`{.cpp} and reimplement `formats()`{.cpp} and
   `retrieveData()`{.cpp} to handle our custom data types.
#. For drag and drop operations within a single application, we can subclass
   `QMimeData`{.cpp} and store the data using any data structure we want.

#### Clipboard Handling

`QApplication::clipboard()`{.cpp}

:   #. `setText()`{.cpp}, `text()`{.cpp}
    #. `setImage()`{.cpp}, `image()`{.cpp}
    #. `setPixmap()`{.cpp}, `pixmap()`{.cpp}

    ```cpp
    QClipboard *clipboard = QApplication::clipboard();
    if (clipboard->supportsSelection()) {
        QString text = clipboard->text(QClipboard::Selection);
    }
    ```

If we want to be notified whenever the clipboard's contents change, we can
connect the `QClipboard::dataChanged()`{.cpp} signal to a custom slot.

### 10. Item View Classes

![Multiple Views][multiple-views]

![Symol Picker][symbol-picker]

![Coordinate Setter][coord-setter]

![Settings Viewer][settings-viewer]

#### Using the Item View Convenience Classes

```cpp
class FlowChartSymbolPicker : public QDialog
{
    Q_OBJECT

public:
    FlowChartSymbolPicker(const QMap<int, QString> &symbolMap,
                          QWidget *parent = 0);

    int selectedId() const { return id; }
    // The done() function is reimplemented from QDialog. It is called when the
    // user clicks OK or Cancel
    void done(int result);

private:
    QIcon iconForSymbol(const QString &symbolName);

    QListWidget *listWidget;
    QDialogButtonBox *buttonBox;
    int id;
};

FlowChartSymbolPicker::FlowChartSymbolPicker(
        const QMap<int, QString> &symbolMap, QWidget *parent)
    : QDialog(parent)
{
    id = -1;

    listWidget = new QListWidget;
    // icon size
    listWidget->setIconSize(QSize(60, 60));

    QMapIterator<int, QString> i(symbolMap);
    while (i.hasNext()) {
        i.next();
        QListWidgetItem *item = new QListWidgetItem(i.value(),
                                                    listWidget);
        item->setIcon(iconForSymbol(i.value()));
        item->setData(Qt::UserRole, i.key());
    }

    buttonBox = new QDialogButtonBox(QDialogButtonBox::Ok
                                     | QDialogButtonBox::Cancel);

    // plug-in slots
    connect(buttonBox, SIGNAL(accepted()), this, SLOT(accept()));
    connect(buttonBox, SIGNAL(rejected()), this, SLOT(reject()));

    QVBoxLayout *mainLayout = new QVBoxLayout;
    mainLayout->addWidget(listWidget);
    mainLayout->addWidget(buttonBox);
    setLayout(mainLayout);

    setWindowTitle(tr("Flowchart Symbol Picker"));
}

void FlowChartSymbolPicker::done(int result)
{
    id = -1;
    if (result == QDialog::Accepted) {
        QListWidgetItem *item = listWidget->currentItem();
        if (item)
            // If we were interested in the item's text, we could retrieve it
            // by calling item->data(Qt::DisplayRole).toString() or, more
            // conveniently, item->text()
            id = item->data(Qt::UserRole).toInt();
    }
    QDialog::done(result);
}

QIcon FlowChartSymbolPicker::iconForSymbol(const QString &symbolName)
{
    QString fileName = ":/images/" + symbolName.toLower();
    fileName.replace(' ', '-');
    return QIcon(fileName);
}
```

`enum Qt::ItemDataRole`{.cpp}

:   The **general purpose roles** (and the associated types) are:

    Constant | Value | Description
    -------- | ----- | -----------
    `Qt::DisplayRole`{.cpp} | 0 | The key data to be rendered in the form of text. (`QString`{.cpp})
    `Qt::DecorationRole`{.cpp} | 1 | The data to be rendered as a decoration in the form of an icon. (`QColor`{.cpp}, `QIcon`{.cpp} or `QPixmap`{.cpp})
    `Qt::EditRole`{.cpp} | 2 | The data in a form suitable for editing in an editor. (`QString`{.cpp})
    `Qt::ToolTipRole`{.cpp} | 3 | The data displayed in the item's tooltip. (`QString`{.cpp})
    `Qt::StatusTipRole`{.cpp} | 4 | The data displayed in the status bar. (`QString`{.cpp})
    `Qt::WhatsThisRole`{.cpp} | 5 | The data displayed for the item in "What's This?" mode. (`QString`{.cpp})
    `Qt::SizeHintRole`{.cpp} | 13 | The size hint for the item that will be supplied to views. (`QSize`{.cpp})

    Roles describing **appearance and meta data** (with associated types):

    Constant | Value | Description
    -------- | ----- | -----------
    `Qt::FontRole`{.cpp} | 6 | The font used for items rendered with the default delegate. (`QFont`{.cpp})
    `Qt::TextAlignmentRole`{.cpp} | 7 | The alignment of the text for items rendered with the default delegate. (`Qt::AlignmentFlag`{.cpp})
`Qt::BackgroundRole`{.cpp} | 8 | The background brush used for items rendered with the default delegate. (`QBrush`{.cpp})
    `Qt::BackgroundColorRole`{.cpp} | 8 | This role is obsolete. Use BackgroundRole instead.
`Qt::ForegroundRole`{.cpp} | 9 | The foreground brush (text color, typically) used for items rendered with the default delegate. (`QBrush`{.cpp})
    `Qt::TextColorRole`{.cpp} | 9 | This role is obsolete. Use ForegroundRole instead.
`Qt::CheckStateRole`{.cpp} | 10 | This role is used to obtain the checked state of an item. (`Qt::CheckState`{.cpp})
    `Qt::InitialSortOrderRole`{.cpp} | 14 | This role is used to obtain the initial sort order of a header view section. (`Qt::SortOrder`{.cpp}). This role was introduced in Qt 4.8.

    **Accessibility roles** (with associated types):

    Constant | Value | Description
    -------- | ----- | -----------
    `Qt::AccessibleTextRole`{.cpp} | 11 | The text to be used by accessibility extensions and plugins, such as screen readers. (`QString`{.cpp})
    `Qt::AccessibleDescriptionRole`{.cpp} | 12 | A description of the item for accessibility purposes. (`QString`{.cpp})

    **User roles**:

    Constant | Value | Description
    -------- | ----- | -----------
    `Qt::UserRole`{.cpp} | 32 | The first role that can be used for application-specific purposes.

    For user roles, it is up to the developer to decide which types to use and ensure that components use the correct types when accessing and setting data.

    也就是说自己的数据可以往这儿存！

By default, `QListWidget`{.cpp} is read-only. If we wanted the user to edit the
items, we could set the view's edit triggers using
`QAbstractItemView::setEditTriggers()`{.cpp}; for example, a setting of
`QAbstractItemView::AnyKeyPressed`{.cpp} means that the user can begin editing
an item just by starting to type.  Alternatively, we could provide an Edit
button (and perhaps Add and Delete buttons) and use signal–slot connections so
that we can handle the editing operations programmatically.


```cpp
tableWidget = new QTableWidget(0, 2);
tableWidget->setHorizontalHeaderLabels(
        QStringList() << tr("X") << tr("Y"));

for (int row = 0; row < coordinates->count(); ++row) {
    QPointF point = coordinates->at(row);
    addRow();
    tableWidget->item(row, 0)->setText(QString::number(point.x()));
    tableWidget->item(row, 1)->setText(QString::number(point.y()));
}

void SettingsViewer::readSettings()
{
    QSettings settings(organization, application);

    treeWidget->clear();
    addChildSettings(settings, 0, "");

    treeWidget->sortByColumn(0);
    treeWidget->setFocus();
    setWindowTitle(tr("Settings Viewer - %1 by %2")
                   .arg(application).arg(organization));
}
```

```cpp
treeWidget = new QTreeWidget;
treeWidget->setColumnCount(2);
treeWidget->setHeaderLabels(
        QStringList() << tr("Key") << tr("Value"));
// enum	ResizeMode { Interactive, Fixed, Stretch, ResizeToContents, Custom }
// void QHeaderView::setResizeMode(int logicalIndex, ResizeMode mode)
// This setting will be ignored for the last section if the stretchLastSection
// property is set to true. This is the default for the horizontal headers
// provided by QTreeView.
treeWidget->header()->setResizeMode(0, QHeaderView::Stretch);
treeWidget->header()->setResizeMode(1, QHeaderView::Stretch);
```

#### Using Predefined Models

Model | Details
:---- | :------
`QStringListModel`{.cpp} | Stores a list of strings
`QStandardItemModel`{.cpp} | Stores arbitrary hierarchical data
`QDirModel`{.cpp} | Encapsulates the local file system
`QSqlQueryModel`{.cpp} | Encapsulates an SQL result set
`QSqlTableModel`{.cpp} | Encapsulates an SQL table
`QSqlRelationalTableModel`{.cpp} | Encapsulates an SQL table with foreign keys
`QSortFilterProxyModel`{.cpp} | Sorts and/or filters another model

```cpp
void TeamLeadersDialog::insert()
{
    int row = listView->currentIndex().row();
    model->insertRows(row, 1);

    QModelIndex index = model->index(row);
    listView->setCurrentIndex(index);
    listView->edit(index);
}
```

`QAbstractItemModel::insertRows()`{.cpp}

:   Note: The base class implementation of this function does nothing and
    returns false.

    ```cpp
    bool QAbstractItemModel::insertRows(int row, 
                                        int count, 
                                        const QModelIndex & parent = QModelIndex())
    ```

    On models that support this, inserts count rows into the model before the
    given row. Items in the new row will be children of the item represented by
    the parent model index.

    If row is 0, the rows are prepended to any existing rows in the parent.

    If row is `rowCount()`{.cpp}, the rows are appended to any existing rows in the
    parent.

    If parent has no children, a single column with count rows is inserted.

    Returns true if the rows were successfully inserted; otherwise returns
    false.

    If you implement your own model, you can reimplement this function if you
    want to support insertions. Alternatively, you can provide your own API for
    altering the data. In either case, you will need to call `beginInsertRows()`{.cpp}
    and `endInsertRows()`{.cpp} to notify other components that the model has changed.

```cpp
void TeamLeadersDialog::del()
{
    model->removeRows(listView->currentIndex().row(), 1);
}
```

```cpp
DirectoryViewer::DirectoryViewer(QWidget *parent)
    : QDialog(parent)
{
    model = new QDirModel;
    model->setReadOnly(false);
    model->setSorting(QDir::DirsFirst | QDir::IgnoreCase | QDir::Name);

    treeView = new QTreeView;
    treeView->setModel(model);
    treeView->header()->setStretchLastSection(true);
    treeView->header()->setSortIndicator(0, Qt::AscendingOrder);
    treeView->header()->setSortIndicatorShown(true);
    treeView->header()->setClickable(true);

    QModelIndex index = model->index(QDir::currentPath());
    treeView->expand(index);
    treeView->scrollTo(index);
    treeView->resizeColumnToContents(0);

    ...
}
```

```cpp
buttonBox = new QDialogButtonBox(Qt::Horizontal);
QPushButton *mkdirButton = buttonBox->addButton(
        tr("&Create Directory..."), QDialogButtonBox::ActionRole);
QPushButton *removeButton = buttonBox->addButton(tr("&Remove"),
        QDialogButtonBox::ActionRole);
buttonBox->addButton(tr("&Quit"), QDialogButtonBox::AcceptRole);

connect(mkdirButton, SIGNAL(clicked()), this, SLOT(createDirectory()));
connect(removeButton, SIGNAL(clicked()), this, SLOT(remove()));
connect(buttonBox, SIGNAL(accepted()), this, SLOT(accept()));
```

```cpp
void DirectoryViewer::createDirectory()
{
    QModelIndex index = treeView->currentIndex();
    if (!index.isValid())
        return;

    QString dirName = QInputDialog::getText(this,
                              tr("Create Directory"),
                              tr("Directory name"));
    if (!dirName.isEmpty()) {
        // The QDirModel::mkdir() function takes the parent directory's index
        // and the name of the new directory, and returns the model index of
        // the directory it created. If the operation fails, it returns an
        // invalid model index.
        if (!model->mkdir(index, dirName).isValid())
            QMessageBox::information(this, tr("Create Directory"),
                    tr("Failed to create the directory"));
    }
}
```

```cpp
void DirectoryViewer::remove()
{
    QModelIndex index = treeView->currentIndex();
    if (!index.isValid())
        return;

    bool ok;
    // We could use QDir to accomplish this, but QDirModel offers convenience
    // functions that work on QModelIndexes.
    if (model->fileInfo(index).isDir()) {
        ok = model->rmdir(index);
    } else {
        ok = model->remove(index);
    }
    if (!ok)
        QMessageBox::information(this, tr("Remove"),
                tr("Failed to remove %1").arg(model->fileName(index)));
}
```

```cpp
sourceModel = new QStringListModel(this);
sourceModel->setStringList(QColor::colorNames());

proxyModel = new QSortFilterProxyModel(this);
proxyModel->setSourceModel(sourceModel);
proxyModel->setFilterKeyColumn(0);

listView = new QListView;
listView->setModel(proxyModel);
listView->setEditTriggers(QAbstractItemView::NoEditTriggers);

filterLabel = new QLabel(tr("&Filter:"));
filterLineEdit = new QLineEdit;
filterLabel->setBuddy(filterLineEdit);

syntaxLabel = new QLabel(tr("&Pattern syntax:"));
syntaxComboBox = new QComboBox;
syntaxComboBox->addItem(tr("Regular expression"), QRegExp::RegExp);
syntaxComboBox->addItem(tr("Wildcard"), QRegExp::Wildcard);
syntaxComboBox->addItem(tr("Fixed string"), QRegExp::FixedString);
syntaxLabel->setBuddy(syntaxComboBox);

connect(filterLineEdit, SIGNAL(textChanged(const QString &)),
        this, SLOT(reapplyFilter()));
connect(syntaxComboBox, SIGNAL(currentIndexChanged(int)),
        this, SLOT(reapplyFilter()));

QGridLayout *mainLayout = new QGridLayout;
mainLayout->addWidget(listView, 0, 0, 1, 2);
mainLayout->addWidget(filterLabel, 1, 0);
mainLayout->addWidget(filterLineEdit, 1, 1);
mainLayout->addWidget(syntaxLabel, 2, 0);
mainLayout->addWidget(syntaxComboBox, 2, 1);
setLayout(mainLayout);
```

`QComboBox::addItem()`{.cpp}

:   ```cpp
    void QComboBox::addItem(const QString & text, const QVariant & userData = QVariant())
    void QComboBox::addItem(const QIcon & icon, const QString & text, const QVariant & userData = QVariant())
    void QComboBox::addItems(const QStringList & texts)
    ```

```cpp
void ColorNamesDialog::reapplyFilter()
{
    QRegExp::PatternSyntax syntax =
            QRegExp::PatternSyntax(syntaxComboBox->itemData(
                    syntaxComboBox->currentIndex()).toInt());
    QRegExp regExp(filterLineEdit->text(), Qt::CaseInsensitive, syntax);
    proxyModel->setFilterRegExp(regExp);
}
```

#### Implementing Custom Models

![Custom model][custom-model]

* `QObject`{.cpp}
    + `QAbstractItemModel`{.cpp}
        - `QAbstractListModel`{.cpp}
        - `QAbstractTableModel`{.cpp}

```cpp
QMap<QString, double> currencyMap;
currencyMap.insert("AUD", 1.3259);
currencyMap.insert("CHF", 1.2970);
...
currencyMap.insert("SGD", 1.6901);
currencyMap.insert("USD", 1.0000);
CurrencyModel currencyModel;
currencyModel.setCurrencyMap(currencyMap);
QTableView tableView;
tableView.setModel(&currencyModel);
tableView.setAlternatingRowColors(true);
```

```cpp
#include <QAbstractTableModel>
#include <QMap>

// We have chosen to subclass QAbstractTableModel for our model since that most
// closely matches our data source.
class CurrencyModel : public QAbstractTableModel
{
public:
    CurrencyModel(QObject *parent = 0);

    // For a read-only table model, we must reimplement three functions:
    // rowCount(), columnCount(), and data().  In this case, we have also
    // reimplemented headerData(), and we provide a function to initialize the
    // data (setCurrencyMap()).
    void setCurrencyMap(const QMap<QString, double> &map);
    int rowCount(const QModelIndex &parent) const;
    int columnCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QVariant headerData(int section, Qt::Orientation orientation,
                        int role) const;

private:
    QString currencyAt(int offset) const;
    QMap<QString, double> currencyMap;
};
```

```cpp
// The parent parameter has no meaning for a table model; it is there because
// rowCount() and columnCount() are inherited from the more generic
// QAbstractItemModel base class, which supports hierarchies.
int CurrencyModel::rowCount(const QModelIndex & /* parent */) const
{
    return currencyMap.count();
}

int CurrencyModel::columnCount(const QModelIndex & /* parent */) const
{
    return currencyMap.count();
}
```

```cpp
QVariant CurrencyModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    // Qt::TextAlignmentRole, we return an alignment suitable for numbers
    if (role == Qt::TextAlignmentRole) {
        return int(Qt::AlignRight | Qt::AlignVCenter);
    } else if (role == Qt::DisplayRole) {
        QString rowCurrency = currencyAt(index.row());
        QString columnCurrency = currencyAt(index.column());

        if (currencyMap.value(rowCurrency) == 0.0)
            return "####";

        double amount = currencyMap.value(columnCurrency)
                        / currencyMap.value(rowCurrency);

        return QString("%1").arg(amount, 0, 'f', 4);
    }
    return QVariant();
}
```

`QString::arg()`{.cpp}

:   ```cpp
    QString QString::arg(const QString & a, 
                         int fieldWidth = 0, 
                         const QChar & fillChar = QLatin1Char( ' ' )) const
    ```

    * A positive fieldWidth produces **right-aligned** text. A negative
      fieldWidth produces **left-aligned** text.
    *   ```cpp
        QString i;           // current file's number
        QString total;       // number of files to process
        QString fileName;    // current file's name

        QString status = QString("Processing file %1 of %2: %3")
                        .arg(i).arg(total).arg(fileName);
        ```

    ```cpp
    QString QString::arg(const QString & a1, 
                         const QString & a2) const
    ```

    * This function overloads `arg()`{.cpp}.
    * This is the same as `str.arg(a1).arg(a2)`{.cpp}, except that the strings
      a1 and a2 are replaced in one pass. This can make a difference if a1
      contains e.g. `%1`:

        ```cpp
        QString str;
        str = "%1 %2";

        str.arg("%1f", "Hello");        // returns "%1f Hello"
        str.arg("%1f").arg("Hello");    // returns "Hellof %2"
        ```

    * similars
    
        ```cpp
        QString QString::arg(const QString & a1, 
                             const QString & a2, 
                             const QString & a3) const
        QString QString::arg(const QString & a1, 
                             const QString & a2, 
                             const QString & a3, 
                             const QString & a4) const
        a1..a5
        a1..a6
        ...
        a1..a9
        ```

    ```cpp
    QString QString::arg({[u]short,[u]int,[u]long,q[u]longlong} a, 
                          int fieldWidth = 0, 
                          int base = 10,
                          const QChar & fillChar = QLatin1Char( ' ' )) const
    ```

    * The `%` can be followed by an `L`, in which case the sequence is replaced
      with a localized representation of `a`. The conversion uses the default locale,
      set by `QLocale::setDefault()`{.cpp}. If no default locale was specified, the `C`
      locale is used. The `L` flag is ignored if base is not 10.  

        ```cpp
        QString str;
        str = QString("Decimal 63 is %1 in hexadecimal")
                .arg(63, 0, 16);
        // str == "Decimal 63 is 3f in hexadecimal"

        QLocale::setDefault(QLocale(QLocale::English, QLocale::UnitedStates));
        str = QString("%1 %L2 %L3")
                .arg(12345)
                .arg(12345)
                .arg(12345, 0, 16);
        // str == "12345 12,345 3039"
        ```

    ```cpp
    QString QString::arg({QChar,char} a, 
                         int fieldWidth = 0, 
                         const QChar & fillChar = QLatin1Char( ' ' )) const
    ```

    * This function overloads `arg()`{.cpp}.

    ```cpp
    QString QString::arg(double a, 
                         int fieldWidth = 0, 
                         char format = 'g', 
                         int precision = -1, 
                         const QChar & fillChar = QLatin1Char( ' ' )) const
    ```

    Format | Meaning
    :----: | :-----:
    e | format as [-]9.9e[+|-]999
    E | format as [-]9.9E[+|-]999
    f | format as [-]9.9
    g | use e or f format, whichever is the most concise
    G | use E or f format, whichever is the most concise

    ```cpp
    double d = 12.34;
    QString str = QString("delta: %1").arg(d, 0, 'E', 3);
    // str == "delta: 1.234E+01"
    ```

    ```cpp
    #include <QStringBuilder>

    QString hello("hello");
    QStringRef el(&hello, 2, 3);
    QLatin1String world("world");
    QString message =  hello % el % world % QChar('!');
    ```


```cpp
// The headerData() function is called by the view to populate its horizontal
// and vertical headers. The section parameter is the row or column number
// (depending on the orientation). Since the rows and columns have the same
// currency codes, we do not care about the orientation and simply return the
// code of the currency for the given section number.
QVariant CurrencyModel::headerData(int section,
                                   Qt::Orientation /* orientation */,
                                   int role) const
{
    if (role != Qt::DisplayRole)
        return QVariant();
    return currencyAt(section);
}
```

```cpp
void CurrencyModel::setCurrencyMap(const QMap<QString, double> &map)
{
    currencyMap = map;
    // tells any views that are using the model that all their data is invalid;
    // this forces them to request fresh data for the items that are visible
    reset();
}
```

```cpp
QString CurrencyModel::currencyAt(int offset) const
{
    return (currencyMap.begin() + offset).key();
}
```

```cpp
int CityModel::offsetOf(int row, int column) const
{
    if (row < column)
        qSwap(row, column);
    return (row * (row - 1) / 2) + column;
}
```

#### Implementing Custom Delegates

If we want to have finer control over the rendering of items, we can often
achieve what we want simply by using a custom model: In our `data()`{.cpp}
reimplementation, we can handle the `Qt::FontRole`{.cpp},
`Qt::TextAlignmentRole`{.cpp}, `Qt::TextColorRole`{.cpp}, and
`Qt::BackgroundColorRole`{.cpp}, and these are used by the default delegate.
For example, in the Cities and Currencies examples shown earlier, we handled
the `Qt::TextAlignmentRole`{.cpp} to get right-aligned numbers.

If we want even greater control, we can create our own delegate class and set
it on the views that we want to make use of it. The Track Editor dialog shown
in Figure 10.15 makes use of a custom delegate. It shows the titles of music
tracks and their durations. The data held by the model will be simply
`QStrings`{.cpp} (titles) and ints (seconds), but the durations will be
separated into minutes and seconds and will be editable using a
`QTimeEdit`{.cpp}.

```cpp
#include <QItemDelegate>

class TrackDelegate : public QItemDelegate
{
    Q_OBJECT

public:
    TrackDelegate(int durationColumn, QObject *parent = 0);

    void paint(QPainter *painter, const QStyleOptionViewItem &option,
               const QModelIndex &index) const;
    QWidget *createEditor(QWidget *parent,
                          const QStyleOptionViewItem &option,
                          const QModelIndex &index) const;
    void setEditorData(QWidget *editor, const QModelIndex &index) const;
    void setModelData(QWidget *editor, QAbstractItemModel *model,
                      const QModelIndex &index) const;

private slots:
    void commitAndCloseEditor();

private:
    int durationColumn;
};

// 
class QDialogButtonBox;
class QTableWidget;

class Track
{
public:
    Track(const QString &title = "", int duration = 0);

    QString title;
    int duration;
};

class TrackEditor : public QDialog
{
    Q_OBJECT

public:
    TrackEditor(QList<Track> *tracks, QWidget *parent = 0);

    void done(int result);

private slots:
    void addTrack();

private:
    QTableWidget *tableWidget;
    QDialogButtonBox *buttonBox;
    QList<Track> *tracks;
};
```

```cpp
tableWidget = new QTableWidget(tracks->count(), 2);
tableWidget->setItemDelegate(new TrackDelegate(1));
tableWidget->setHorizontalHeaderLabels(
QStringList() << tr("Track") << tr("Duration"));
```

```cpp
void TrackDelegate::paint(QPainter *painter,
                          const QStyleOptionViewItem &option,
                          const QModelIndex &index) const
{
    if (index.column() == durationColumn) {
        int secs = index.model()->data(index, Qt::DisplayRole).toInt();
        QString text = QString("%1:%2")
                       .arg(secs / 60, 2, 10, QChar('0'))
                       .arg(secs % 60, 2, 10, QChar('0'));

        QStyleOptionViewItem myOption = option;
        myOption.displayAlignment = Qt::AlignRight | Qt::AlignVCenter;

        drawDisplay(painter, myOption, myOption.rect, text);
        drawFocus(painter, myOption, myOption.rect);
    } else{
        QItemDelegate::paint(painter, option, index);
    }
}
```

```cpp
QWidget *TrackDelegate::createEditor(QWidget *parent,
        const QStyleOptionViewItem &option,
        const QModelIndex &index) const
{
    if (index.column() == durationColumn) {
        QTimeEdit *timeEdit = new QTimeEdit(parent);
        timeEdit->setDisplayFormat("mm:ss");
        connect(timeEdit, SIGNAL(editingFinished()),
                this, SLOT(commitAndCloseEditor()));
        return timeEdit;
    } else {
        return QItemDelegate::createEditor(parent, option, index);
    }
}
```

```cpp
void TrackDelegate::commitAndCloseEditor()
{
    QTimeEdit *editor = qobject_cast<QTimeEdit *>(sender());
    emit commitData(editor);
    emit closeEditor(editor);
}
```

```cpp
void TrackDelegate::setModelData(QWidget *editor,
                                 QAbstractItemModel *model,
                                 const QModelIndex &index) const
{
    if (index.column() == durationColumn) {
        QTimeEdit *timeEdit = qobject_cast<QTimeEdit *>(editor);
        QTime time = timeEdit->time();
        int secs = (time.minute() * 60) + time.second();
        model->setData(index, secs);
    } else {
        QItemDelegate::setModelData(editor, model, index);
    }
}
```

### 11. Container Classes

Implicit sharing, or "copy on write", is an optimization that makes it possible to pass entire
containers as values without any significant performance cost. The Qt containers also feature easy-to-use
iterator classes inspired by Java, they can be streamed using QDataStream, and they usually result in less code
in the executable than the corresponding STL containers. Finally, on some hardware platforms supported by
Qt/Embedded Linux, the Qt containers are the only ones available.

Qt offers both sequential containers such as QVector<T>, QLinkedList<T>, and QList<T>, and associative
containers such as QMap<K, T> and QHash<K, T>. Conceptually, the sequential containers store items one
after another, whereas the associative containers store key–value pairs.

Qt also provides generic algorithms that perform operations on arbitrary containers. For example, the qSort()
algorithm sorts a sequential container, and qBinaryFind() performs a binary search on a sorted sequential
container. These algorithms are similar to those offered by the STL.

In this chapter, we will also look at QString, QByteArray, and QVariant, since they have a lot in common
with containers. QString is a 16-bit Unicode string used throughout Qt's API. QByteArray is an array of 8-bit
chars useful for storing raw binary data. QVariant is a type that can store most C++ and Qt value types.

#### Sequential Containers

`QVector<T>`{.cpp}

:   an array-like data structure that stores its items at adjacent positions in
    memory.

    ```cpp
    {
        // set
        QVector<double> vect(3);
        vect[0] = 1.0;
        vect[1] = 0.540302;
        vect[2] = -0.416147;
    }

    {
        // append
        QVector<double> vect;
        vect.append(1.0);
        vect.append(0.540302);
        vect.append(-0.416147);

        // or use the << operator
        vect << 1.0 << 0.540302 << -0.416147;
    }
    ```

`QLinkedList<T>`{.cpp}

:   Inserting items at the beginning or in the middle of a QVector<T>, or
    removing items from these positions, can be inefficient for large vectors. For
    this reason, Qt also offers QLinkedList<T>, a data structure that stores its
    items at non-adjacent locations in memory.

    ```cpp
    QLinkedList<QString> list;
    list.append("Clash");
    list.append("Ramones");

    QLinkedList<QString>::iterator i = list.find("Ramones");
    list.insert(i, "Tote Hosen");
    ```

`QList<T>`{.cpp}

:   The QList<T> sequential container is an "array-list" that combines the most
    important benefits of QVector<T> and QLinkedList<T> in a single class. It
    supports random access, and its interface is index-based like QVector's.
    Inserting or removing an item at either end of a QList<T> is very fast, and
    inserting in the middle is fast for lists with up to about one thousand items.
    Unless we want to perform insertions in the middle of huge lists or need the
    list's items to occupy consecutive addresses in memory, QList<T> is usually the
    most appropriate general-purpose container class to use.

    The QStringList class is a subclass of QList<QString> that is widely used
    in Qt's API.

QStack<T> and QQueue<T> are two more examples of convenience subclasses.

For all the container classes seen so far, the value type T can be a basic type like int or double, a pointer
type, or a class that has a default constructor (a constructor that takes no arguments), a copy constructor, and
an assignment operator. Classes that qualify include QByteArray, QDateTime, QRegExp, QString, and
QVariant. Qt classes that are derived from QObject do not qualify, because they lack a copy constructor and
an assignment operator. This is no problem in practice, since we can simply store pointers to QObject types
rather than the objects themselves.

Java-style iterators and STL-style iterators. The Java-style iterators are
easier to use, whereas the STL-style iterators can be combined with Qt's and
STL's generic algorithms and are more powerful.

QVectorIterator<T>,
QLinkedListIterator<T>, and QListIterator<T>. The corresponding read-write iterators have Mutable in
their name (e.g., QMutableVectorIterator<T>)

```cpp
QList<double> list;
...
QListIterator<double> i(list);
while (i.hasNext()) {
    int val = i.next();
    if (val < 0.0)
        i.setValue(-val);
}

QListIterator<double> i(list);
i.toBack();
while (i.hasPrevious()) {
    //  remove() function always operates on the last item that was jumped
    //  over. It also works when iterating backward
    if (i.previous() < 0.0)
        i.remove();
}

// It is also possible to insert an item at the current iterator position by
// calling insert(). The iterator is then advanced to point between the new
// item and the following item.
```

In addition to the Java-style iterators, every sequential container class C<T> has two STL-style iterator types:
C<T>::iterator and C<T>::const_iterator. The difference between the two is that const_iterator doesn't
let us modify the data.

```cpp
QList<double>::iterator i = list.begin();
while (i != list.end()) {
    *i = qAbs(*i);
    ++i;
}
```

A few Qt functions return a container. If we want to iterate over the return value of a function using an STL-
style iterator, we must take a copy of the container and iterate over the copy. For example, the following code
is the correct way to iterate over the QList<int> returned by QSplitter::sizes():

```cpp
QList<int> list = splitter->sizes();
QList<int>::const_iterator i = list.begin();
while (i != list.end()) {
    do_something(*i);
    ++i;
}
```

The following code is wrong:

```cpp
// WRONG
QList<int>::const_iterator i = splitter->sizes().begin();
while (i != splitter->sizes().end()) {
    do_something(*i);
    ++i;
}
```

This is because QSplitter::sizes() returns a new QList<int> by value every time it is called. If we don't
store the return value, C++ automatically destroys it before we have even started iterating, leaving us with a
dangling iterator. To make matters worse, each time the loop is run, QSplitter::sizes() must generate a
new copy of the list because of the splitter->sizes().end() call. In summary: When using STL-style
iterators, always iterate on a copy of a container returned by value.

With read-only Java-style iterators, we don't need to take a copy. The iterator takes a copy for us behind the
scenes, ensuring that we always iterate over the data that the function first returned. For example:

```cpp
QListIterator<int> i(splitter->sizes());
while (i.hasNext()) {
    do_something(i.next());
}
```

The beauty of implicit sharing is that it is an optimization that we don't need to think about; it simply works,
without requiring any programmer intervention. At the same time, implicit sharing encourages a clean
programming style where objects are returned by value. Consider the following function:

```cpp
QVector<double> sineTable()
{
    QVector<double> vect(360);
    for (int i = 0; i < 360; ++i)
    vect[i] = std::sin(i / (2 * M_PI));
    return vect;
}
```

The call to the function looks like this:
QVector<double> table = sineTable();
STL, in comparison, encourages us to pass the vector as a non-const reference to ** avoid the copy that takes
place when the function's return value is stored in a variable**:

```cpp
void sineTable(std::vector<double> &vect)
{
    vect.resize(360);
    for (int i = 0; i < 360; ++i)
    vect[i] = std::sin(i / (2 * M_PI));
}
```

The call then becomes more tedious to write and less clear to read:

std::vector<double> table;

Qt uses implicit sharing for all of its containers and for many other classes, including QByteArray, QBrush,
QFont, QImage, QPixmap, and QString. This makes these classes very efficient to pass by value, both as
function parameters and as return values.

Implicit sharing is a guarantee from Qt that the data won't be copied if we don't modify it. To get the best out
of implicit sharing, we can adopt a couple of new programming habits. One habit is to use the at() function
rather than the [] operator for read-only access on a (non-const) vector or list. Since Qt's containers cannot
tell whether [] appears on the left side of an assignment or not, it assumes the worst and forces a deep copy
to occur—whereas at() isn't allowed on the left side of an assignment.

A similar issue arises when we iterate over a container with STL-style iterators. Whenever we call begin() or
end() on a non-const container, Qt forces a deep copy to occur if the data is shared. To prevent this
inefficiency, the solution is to use const_iterator, constBegin(), and constEnd() whenever possible.

Data sharing is often disregarded as an option in multithreaded programs, because of race
conditions in the reference counting. With Qt, this is not an issue. Internally, the container
classes use assembly language instructions to perform atomic reference counting. This
technology is available to Qt users through the QSharedData and QSharedDataPointer classes.

```cpp
QLinkedList<Movie> list;
Movie movie;
...
foreach (movie, list) {
    if (movie.title() == "Citizen Kane") {
        std::cout << "Found Citizen Kane" << std::endl;
        break;
    }
}
```

#### Associative Containers

```cpp
{
    // insert a pair
    QMap<QString, int> map;
    map.insert("eins", 1);
    map.insert("sieben", 7);
    map.insert("dreiundzwanzig", 23);

    // assign a value to a given key
    map["eins"] = 1;
    map["sieben"] = 7;
    map["dreiundzwanzig"] = 23;
}
```


```cpp
// If [] is used to retrieve a value for a non-existent key in a non-const map,
// a new item will be created with the given key and an empty value. To avoid
// accidentally creating empty values, we can use the value() function to
// retrieve items instead of []: 
int val = map.value("dreiundzwanzig");

// specify a default value
int seconds = map.value("delay", 30);
``

QMap<K, T> has a couple of convenience functions, keys() and values(), that are especially useful when
dealing with small data sets. They return QLists of a map's keys and values.

Maps are normally single-valued: If a new value is assigned to an existing key, the old value is replaced by the
new value, ensuring that no two items share the same key. It is possible to have multiple key–value pairs with
the same key by using the insertMulti() function or the QMultiMap<K, T> convenience subclass. QMap<K,
T> has a values(const K &) overload that returns a QList of all the values for a given key. For example:

```cpp
QMultiMap<int, QString> multiMap;
multiMap.insert(1, "one");
multiMap.insert(1, "eins");
multiMap.insert(1, "uno");
QList<QString> vals = multiMap.values(1);
```

A QHash<K, T> is a data structure that stores key–value pairs in a hash table. Its interface is almost identical
to that of QMap<K, T>, but it has different requirements for the K template type and usually provides much
faster lookups than QMap<K, T> can achieve. Another difference is that QHash<K, T> is unordered.

In addition to the standard requirements on any value type stored in a container, the K type of a QHash<K, T>
needs to provide an operator==() and be supported by a global qHash() function that returns a hash value
for a key. Qt already provides qHash() functions for integer types, pointer types, QChar, QString, and
QByteArray.

fine-tune performance by calling reserve() to specify the
number of items expected to be stored in the hash and squeeze() to shrink the hash table based on the
current number of items. A common idiom is to call reserve() with the maximum number of items we expect,
then insert the data, and finally call squeeze() to minimize memory usage if there were fewer items than
expected.

Besides QHash<K, T>, Qt also provides a QCache<K, T> class that can be used to cache objects associated
with a key, and a QSet<K> container that only stores keys. Internally, both rely on QHash<K, T> and both have
the same requirements for the K type as QHash<K, T>.

The easiest way to iterate through all the key–value pairs stored in an associative container is to use a Java-
style iterator. Because the iterators must give access to both a key and a value, the Java-style iterators for
associative containers work slightly differently from their sequential counterparts. The main difference is that
the next() and previous() functions return an object that represents a key–value pair, rather than simply a
value. The key and value components are accessible from this object as key() and value(). For example:

```cpp
QMap<QString, int> map;
...
int sum = 0;
QMapIterator<QString, int> i(map);
while (i.hasNext())
sum += i.next().value();
```

```cpp
QMapIterator<QString, int> i(map);
while (i.hasNext()) {
    i.next();
    if (i.value() > largestValue) {
        largestKey = i.key();
        largestValue = i.value();
    }
}

// QMutableMapIterator<K, T> i(container);
i.setValue(-t); // value of this key reversed
```

STL-style iterators also provide key() and value() functions. With the non-const iterator types, value()
returns a non-const reference, allowing us to change the value as we iterate. Note that although these
iterators are called "STL-style", they deviate significantly from the std::map<K, T> iterators, which are based
on std::pair<K, T>.

The foreach loop also works on associative containers, but only on the value component of the key–value
pairs. If we need both the key and the value components of the items, we can call the keys() and
values(const K &) functions in nested foreach loops as follows:

```cpp
QMultiMap<QString, int> map;
...
foreach (QString key, map.keys()) {
    foreach (int value, map.values(key)) {
        do_something(key, value);
    }
}
```

#### Generic Algorithms

The <QtAlgorithms> header declares a set of global template functions that implement basic algorithms on
containers. Most of these functions operate on STL-style iterators.

The STL <algorithm> header provides a more complete set of generic algorithms. These algorithms can be
used on Qt containers as well as STL containers. 

qFind

```cpp
QStringList list;
list << "Emma" << "Karl" << "James" << "Mariette";
QStringList::iterator i = qFind(list.begin(), list.end(), "Karl");
QStringList::iterator j = qFind(list.begin(), list.end(), "Petra");
```

qBinaryFind

The qBinaryFind() algorithm performs a search just like qFind(), except that it assumes that the items are
sorted in ascending order and uses fast binary searching rather than qFind()'s linear searching.

```cpp
```

The qFill() algorithm populates a container with a particular value:

```cpp
QLinkedList<int> list(10);
qFill(list.begin(), list.end(), 1009);

QVector<int> vect(10);
qFill(vect.begin(), vect.begin() + 5, 1009);
qFill(vect.end() - 5, vect.end(), 2013);
```

The qCopy() algorithm copies values from one container to another:

```cpp
QVector<int> vect(list.count());
qCopy(list.begin(), list.end(), vect.begin());

// should not don't overlap
qCopy(list.begin(), list.begin() + 2, list.end() - 2);
```

```cpp
qSort(list.begin(), list.end(), qGreater<int>());
```

```cpp
bool insensitiveLessThan(const QString &str1, const QString &str2)
{
    return str1.toLower() < str2.toLower();
}

// The call to qSort() then becomes QStringList list;
...
qSort(list.begin(), list.end(), insensitiveLessThan);
```

The qStableSort() algorithm is similar to qSort(), except it guarantees that
items that compare equal appear in the same order after the sort as before.
This is useful if the sort criterion takes into account only parts of the value
and the results are visible to the user. 

```cpp
qDeleteAll(list);
list.clear();
```

```cpp
// The qSwap() algorithm exchanges the value of two variables. For example:
int x1 = line.x1();
int x2 = line.x2();
if (x1 > x2)
    qSwap(x1, x2);
```

`<QtGlobal>`{.cpp}

: `qAbs()`{.cpp}

#### Strings, Byte Arrays, and Variants

When using QString, we don't need to worry about such arcane details as allocating enough memory or
ensuring that the data is '\0'-terminated. Conceptually, QStrings can be thought of as a vector of QChars. A
QString can embed '\0' characters. The length() function returns the size of the entire string, including
embedded '\0' characters.

```cpp
bool ok;
double d = str.toDouble(&ok);
```

```cpp
The conversion from const char * strings to QString is automatic in most cases, for example:
str += " (1870)";
mid(int start, int len);
mid(int start);

// left, right n char
left(int n);
right(int n);

QString str = "the middle bit";
int i = str.indexOf("middle");

startWith(), endWith()
toUpper() or toLower()

QString str = "a cloudy day";
str.replace(2, 6, "sunny");

str.remove(2, 6);
str.insert(2, "sunny");
str.replace("&", "&amp;");

QString str = " BOB \t THE \nDOG \n";
qDebug() << str.trimmed();
qDebug() << str.simplified();

QString str = "polluter pays principle";
QStringList words = str.split(" ");
words.sort();
str = words.join("\n");

isEmpty() or by checking whether length() is 0.
```

The conversion from const char * strings to QString is automatic in most cases, for example:
str += " (1870)";

To explicitly convert a const char * to a
QString, simply use a QString cast, or call fromAscii() or fromLatin1(). (See Chapter 18 for an
explanation of handling literal strings in other encodings.)
To convert a QString to a const char *, use toAscii() or toLatin1(). These functions return a
QByteArray, which can be converted into a const char * using QByteArray::data() or
QByteArray::constData(). For example:

```cpp
printf("User: %s\n", str.toAscii().data());

printf("User: %s\n", qPrintable(str)); // toAscii().constData();
```

Qt provides a much cleaner way of handling variables that can hold different types:
QVariant.

The QVariant class can hold values of many Qt types, including QBrush, QColor, QCursor, QDateTime, QFont,
QKeySequence, QPalette, QPen, QPixmap, QPoint, QRect, QRegion, QSize, and QString, as well as basic
C++ numeric types such as double and int. The QVariant class can also hold containers: QMap<QString,
QVariant>, QStringList, and QList<QVariant>.

```cpp
QMap<QString, QVariant> pearMap;
pearMap["Standard"] = 1.95;
pearMap["Organic"] = 2.25;

QMap<QString, QVariant> fruitMap;
fruitMap["Orange"] = 2.10;
fruitMap["Pineapple"] = 3.85;
fruitMap["Pear"] = pearMap;
```

For convenience, QByteArray automatically ensures that the "one past the last" byte is always '\0', making it
easy to pass a QByteArray to a function taking a const char *. QByteArray also supports embedded '\0'
characters, allowing us to use it to store arbitrary binary data.

QVariant is used by Qt's meta-object system and is therefore part of the QtCore module. Nonetheless, when
we link against the QtGui module, QVariant can store GUI-related types such as QColor, QFont, QIcon,
QImage, and QPixmap:

```cpp
QIcon icon("open.png");
QVariant variant = icon;

// retrieve
QIcon icon = variant.value<QIcon>();
```

QVariant can also be used to store custom data types, assuming they provide a default constructor and a
copy constructor. For this to work, we must first register the type using the Q_DECLARE_METATYPE() macro,
typically in a header file below the class definition:
Q_DECLARE_METATYPE(BusinessCard)

```cpp
BusinessCard businessCard;
QVariant variant = QVariant::fromValue(businessCard);
...
if (variant.canConvert<BusinessCard>()) {
    BusinessCard card = variant.value<BusinessCard>();
    ...
}

// qRegisterMetaTypeStreamOperators<BusinessCard>("BusinessCard");
```

This chapter focused on the Qt containers, as well as on QString, QByteArray, and QVariant. In addition to
these classes, Qt also provides a few other containers. One is QPair<T1, T2>, which simply stores two values
and is similar to std::pair<T1, T2>. Another is QBitArray, which we will use in the first section of Chapter
21. Finally, there is QVarLengthArray<T, Prealloc>, a low-level alternative to QVector<T>. Because it
preallocates memory on the stack and isn't implicitly shared, its overhead is less than that of QVector<T>,
making it more appropriate for tight loops.


### 12. Input/Output

Qt provides
excellent support for I/O through QIODevice, a powerful abstraction that encapsulates "devices" capable of
reading and writing blocks of bytes. Qt includes the following QIODevice subclasses:

ClassName | ClassDescription
--------- | ----------------
`QFile`{.cpp} | Accesses files in the local file system and in embedded resources
`QTemporaryFile`{.cpp} | Creates and accesses temporary files in the local file system
`QBuffer`{.cpp} | Reads data from or writes data to a QByteArray
`QProcess`{.cpp} | Runs external programs and handles inter-process communication
`QTcpSocket`{.cpp} | Transfers a stream of data over the network using TCP
`QUdpSocket`{.cpp} | Sends or receives UDP datagrams over the network
`QSslSocket`{.cpp} | Transfers an encrypted data stream over the network using SSL/TLS

#### Reading and Writing Binary Data

```cpp
// write
QImage image("philip.png");
QMap<QString, QColor> map;
map.insert("red", Qt::red);
map.insert("green", Qt::green);
map.insert("blue", Qt::blue);
QFile file("facts.dat");
if (!file.open(QIODevice::WriteOnly)) {
    // file.errorString()
    std::cerr << "Cannot open file for writing: "
              << qPrintable(file.errorString()) << std::endl;
    return;
}
// QDataStream standardizes on big-endian by default; this can be changed by
// calling setByteOrder()
QDataStream out(&file);
out.setVersion(QDataStream::Qt_4_3);
out << quint32(0x12345678) << image << map;

// read
QFile file("facts.dat");
if (!file.open(QIODevice::ReadOnly)) {
    std::cerr << "Cannot open file for reading: "
              << qPrintable(file.errorString()) << std::endl;
    return;
}
QDataStream in(&file);
in.setVersion(QDataStream::Qt_4_3);
in >> n >> image >> map;

// QDataStream can also be used to read and write raw bytes, without any byte
// count header, using readRawBytes() and writeRawBytes()
```

The stream has a status() value that can be
QDataStream::Ok, QDataStream::ReadPastEnd, or QDataStream::ReadCorruptData. Once an error has
occurred, the >> operator always reads zero or empty values. This means that we can often simply read an
entire file without worrying about potential errors and check the status() value at the end to see if what we
read was valid.

```cpp
// header file
QDataStream &operator<<(QDataStream &out, const Painting &painting);
QDataStream &operator>>(QDataStream &in, Painting &painting);

// source file
QDataStream &operator<<(QDataStream &out, const Painting &painting)
{
    out << painting.title() << painting.artist()
        << quint32(painting.year());
    return out;
}

QDataStream &operator>>(QDataStream &in, Painting &painting)
{
    QString title;
    QString artist;
    quint32 year;
    in >> title >> artist >> year;
    painting = Painting(title, artist, year);
    return in;
}

QList<Painting> paintings;
in >> paintings;
```

If the QDataStream is being used purely to read and
write basic C++ data types, we don't even need to call setVersion().


```cpp
The first approach is to embed the QDataStream version number in the file:
QDataStream out(&file);
out << quint32(MagicNumber) << quint16(out.version());

quint32 magic;
quint16 streamVersion;
QDataStream in(&file);
in >> magic >> streamVersion;
if (magic != MagicNumber) {
    std::cerr << "File is not recognized by this application"
              << std::endl;
} else if (streamVersion > in.version()) {
    std::cerr << "File is from a more recent version of the "
              << "application" << std::endl;
    return false;
}

in.setVersion(streamVersion);
```

In summary, there are three policies for handling QDataStream versions: 

#. hard-coding the version number,
#. explicitly writing and reading the version number, and 
#. using different hard-coded version numbers depending on the application's version. 

Any of these policies can be used to ensure that data written by an old version of
an application can be read by a new version, even if the new version links against a more recent version of Qt.
Once we have chosen a policy for handling QDataStream versions, reading and writing binary data using Qt is
both simple and reliable.

```cpp
bool copyFile(const QString &source, const QString &dest)
{
QFile sourceFile(source);
if (!sourceFile.open(QIODevice::ReadOnly))
    return false;
QFile destFile(dest);
if (!destFile.open(QIODevice::WriteOnly))
    return false;
destFile.write(sourceFile.readAll());
return sourceFile.error() == QFile::NoError
       && destFile.error() == QFile::NoError;
}
```

peek(), seek(), ungetChar(),

#### Reading and Writing Text

```cpp
QFile file("sf-book.txt");
if (!file.open(QIODevice::WriteOnly)) {
    std::cerr << "Cannot open file for writing: "
              << qPrintable(file.errorString()) << std::endl;
    return;
}
QTextStream out(&file);
out << "Thomas M. Disch: " << 334 << endl;
```

QTextStream::readAll()
stream.setCodec("UTF-8");

showbase, uppercasedigits, and hex options before it outputs
the integer 12345678, producing the text "0xBC614E":

Options can also be set using member functions:

```cpp
out.setNumberFlags(QTextStream::ShowBase
                    | QTextStream::UppercaseDigits);
out.setIntegerBase(16);
out << 12345678;
```

```cpp
QTextStream in("0x50 0x20");
int firstNumber, secondNumber;

in >> firstNumber;             // firstNumber == 80
in >> dec >> secondNumber;     // secondNumber == 0

char ch;
in >> ch;                      // ch == 'x'
```

```cpp
QTextStream stream(stdin);
QString line;
do {
    // read chunk: readLine() or readAll()
    line = stream.readLine();
} while (!line.isNull());
```

```cpp
QTextStream in("0x50 0x20");
int firstNumber, secondNumber;

in >> firstNumber;             // firstNumber == 80
in >> dec >> secondNumber;     // secondNumber == 0

char ch;
in >> ch;                      // ch == 'x'
```

```cpp
int main(int argc, char *argv[])
{
    // read numeric arguments (123, 0x20, 4.5...)
    for (int i = 1; i < argc; ++i) {
        int number;
        QTextStream in(argv[i]);
        in >> number;
        ...
    }
}
```

```cpp
QTextStream out(&file);
out.setCodec("UTF-8");
```

```cpp
QString s;
QTextStream out(&s);
out.setFieldWidth(10);
out.setFieldAlignment(QTextStream::AlignCenter);
out.setPadChar('-');
out << "Qt" << "rocks!";
// ----Qt------rocks!--
```

```cpp
stream << '\n' << flush;
```


```cpp
QTextStream in(&file);
while (!in.atEnd()) {
    QString line = in.readLine();
    QStringList fields = line.split(' ');
    if (fields.size() >= 3) {
        // T QLinkedList::takeFirst(), Removes the first item in the list and
        // returns it
        int row = fields.takeFirst().toInt();
        int column = fields.takeFirst().toInt();
        setFormula(row, column, fields.join(' '));
    }
}
```

```cpp
void tidyFile(QIODevice *inDevice, QIODevice *outDevice)
{
    QTextStream in(inDevice);
    QTextStream out(outDevice);

    const int TabSize = 8;
    int endlCount = 0;
    int spaceCount = 0;
    int column = 0;
    QChar ch;

    while (!in.atEnd()) {
        in >> ch;

        if (ch == '\n') {
            ++endlCount;
            spaceCount = 0;
            column = 0;
        } else if (ch == '\t') {
            int size = TabSize - (column % TabSize);
            spaceCount += size;
            column += size;
        } else if (ch == ' ') {
            ++spaceCount;
            ++column;
        } else {
            while (endlCount > 0) {
                out << endl;
                --endlCount;
                column = 0;
            }
            while (spaceCount > 0) {
                out << ' ';
                --spaceCount;
                ++column;
            }
            out << ch;
            ++column;
        }
    }
    out << endl;
}
```

```cpp
QFile inFile;
QFile outFile;

inFile.open(stdin, QFile::ReadOnly);
outFile.open(stdout, QFile::WriteOnly);

tidyFile(&inFile, &outFile);
```

#### Traversing Directories

```cpp
#include <QtGui>
#include <iostream>

qlonglong imageSpace(const QString &path)
{
    // QDir::homePath()
    QDir dir(path);
    qlonglong size = 0;

    QStringList filters;
    foreach (QByteArray format, QImageReader::supportedImageFormats())
        filters += "*." + format;

    // QDir treats '/' as a directory separator on all platforms, in addition
    // to recognizing '\' on Windows
    foreach (QString file, dir.entryList(filters, QDir::Files))
        size += QFileInfo(dir, file).size();

    foreach (QString subDir, dir.entryList(QDir::Dirs
                                           | QDir::NoDotAndDotDot))
        size += imageSpace(path + QDir::separator() + subDir);

    return size;
}

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);
    QStringList args = QCoreApplication::arguments();

    QString path = QDir::currentPath();
    if (args.count() > 1)
        path = args[1];

    std::cout << "Space used by images in " << qPrintable(path)
              << " and its subdirectories is "
              << (imageSpace(path) / 1024) << " KB" << std::endl;

    return 0;
}
```

QDir::toNativeSeparators()

And the QFileSystemWatcher class can notify
us when a change occurs to a directory or to a file, by emitting directoryChanged() and fileChanged()
signals.

#### Embedding Resources

`.pro`

```
RESOURCES = myresourcefile.qrc
```

`.qrc`

```xml
<RCC>
<qresource>
<file>datafiles/phone-codes.dat</file>
</qresource>
</RCC>
```

#### Inter-Process Communication

The QProcess class allows us to run external programs and to interact with them. The class works
asynchronously, doing its work in the background so that the user interface remains responsive. QProcess
emits signals to notify us when the external process has data or has finished.

```cpp
#include <QDialog>
#include <QProcess>

#include "ui_convertdialog.h"

class ConvertDialog : public QDialog, private Ui::ConvertDialog
{
    Q_OBJECT

public:
    ConvertDialog(QWidget *parent = 0);

private slots:
    void on_browseButton_clicked();
    void convertImage();
    void updateOutputTextEdit();
    void processFinished(int exitCode, QProcess::ExitStatus exitStatus);
    void processError(QProcess::ProcessError error);

private:
    QProcess process;
    QString targetFile;
};

// cpp
connect(&process, SIGNAL(readyReadStandardError()),
        this, SLOT(updateOutputTextEdit()));
connect(&process, SIGNAL(finished(int, QProcess::ExitStatus)),
        this, SLOT(processFinished(int, QProcess::ExitStatus)));
connect(&process, SIGNAL(error(QProcess::ProcessError)),
        this, SLOT(processError(QProcess::ProcessError)));

fileName = QDir::toNativeSeparators(fileName);

void ConvertDialog::convertImage()
{
    QString sourceFile = sourceFileEdit->text();
    targetFile = QFileInfo(sourceFile).path() + QDir::separator()
                 + QFileInfo(sourceFile).baseName() + "."
                 + targetFormatComboBox->currentText().toLower();
    buttonBox->button(QDialogButtonBox::Ok)->setEnabled(false);
    outputTextEdit->clear();

    QStringList args;
    if (enhanceCheckBox->isChecked())
        args << "-enhance";
    if (monochromeCheckBox->isChecked())
        args << "-monochrome";
    args << sourceFile << targetFile;

    process.start("convert", args);
}

void ConvertDialog::processFinished(int exitCode,
                                    QProcess::ExitStatus exitStatus)
{
    if (exitStatus == QProcess::CrashExit) {
        outputTextEdit->append(tr("Conversion program crashed"));
    } else if (exitCode != 0) {
        outputTextEdit->append(tr("Conversion failed"));
    } else {
        outputTextEdit->append(tr("File %1 created").arg(targetFile));
    }
    buttonBox->button(QDialogButtonBox::Ok)->setEnabled(true);
}
```


### 13. Databases

#### Connecting and Querying
#### Viewing Tables
#### Editing Records Using Forms
#### Presenting Data in Tabular Forms

### 14. Multithreading

#### Creating Threads
#### Synchronizing Threads
#### Communicating with the Main Thread
#### Using Qt's Classes in Secondary Threads

### 15. Networking

#### Writing FTP Clients
#### Writing HTTP Clients
#### Writing TCP Client–Server Applications
#### Sending and Receiving UDP Datagrams

### 16. XML

#### Reading XML with QXmlStreamReader
#### Reading XML with DOM
#### Reading XML with SAX
#### Writing XML

### 17. Providing Online Help

#### Tooltips, Status Tips, and "What's This?" Help
#### Using a Web Browser to Provide Online Help
#### Using QTextBrowser as a Simple Help Engine
#### Using Qt Assistant for Powerful Online Help

Part III: Advanced Qt
---------------------

### 18. Internationalization

#### Working with Unicode
#### Making Applications Translation-Aware
#### Dynamic Language Switching
#### Translating Applications

### 19. Look and Feel Customization

#### Using Qt Style Sheets
#### Subclassing QStyle

### 20. 3D Graphics

#### Drawing Using OpenGL
#### Combining OpenGL and QPainter
#### Doing Overlays Using Framebuffer Objects

### 21. Creating Plugins

#### Extending Qt with Plugins
#### Making Applications Plugin-Aware
#### Writing Application Plugins

### 22. Application Scripting

#### Overview of the ECMAScript Language
#### Extending Qt Applications with Scripts
#### Implementing GUI Extensions Using Scripts
#### Automating Tasks through Scripting

### 23. Platform-Specific Features

#### Interfacing with Native APIs
#### Using ActiveX on Windows
#### Handling X11 Session Management

### 24. Embedded Programming

#### Getting Started with Qt/Embedded Linux
#### Customizing Qt/Embedded Linux
#### Integrating Qt Applications with Qtopia
#### Using Qtopia APIs

Part IV: Appendixes
-------------------

### Appendix A

#### Obtaining and Installing Qt
#### A Note on Licensing
#### Installing Qt/Windows
#### Installing Qt/Mac
#### Installing Qt/X11

### Appendix B

#### Building Qt Applications
#### Using qmake
#### Using Third-Party Build Tools

### Appendix C

#### Introduction to Qt Jambi
#### Getting Started with Qt Jambi
#### Using Qt Jambi in the Eclipse IDE
#### Integrating C++ Components with Qt Jambi

### Appendix D

#### Introduction to C++ for Java and C# Programmers
#### Getting Started with C++
#### Main Language Differences
#### The Standard C++ Library

---

Refs

#. [QAbstractItemModel Class | Qt 4.8](http://doc.qt.io/qt-4.8/qabstractitemmodel.html)
#. [QBoxLayout Class | Qt 4.8](http://doc.qt.io/qt-4.8/qboxlayout.html#addStretch)
#. [QHeaderView Class | Qt 4.8](http://doc.qt.io/qt-4.8/qheaderview.html)
#. [QObject Class | Qt 4.8](http://doc.qt.io/qt-4.8/qobject.html)
#. [QPainter Class | Qt 4.8](http://doc.qt.io/qt-4.8/qpainter.html)
#. [QPainterPath Class | Qt 4.8](http://doc.qt.io/qt-4.8/qpainterpath.html#addRoundedRect)
#. [QPen Class | Qt 4.8](http://doc.qt.io/qt-4.8/qpen.html#QPen-4)
#. [QPixmap Class | Qt 4.8](http://doc.qt.io/qt-4.8/qpixmap.html)
#. [QPolygonF Class | Qt 4.8](http://doc.qt.io/qt-4.8/qpolygonf.html)
#. [QRectF Class | Qt 4.8](http://doc.qt.io/qt-4.8/qrectf.html#adjust)
#. [QStringList Class | Qt 4.8](http://doc.qt.io/qt-4.8/qstringlist.html)
#. [QTreeWidget Class | Qt 4.8](http://doc.qt.io/qt-4.8/qtreewidget.html)
#. [QVariant Class | Qt 4.8](http://doc.qt.io/qt-4.8/qvariant.html)
#. [Qt Namespace | Qt 4.8](http://doc.qt.io/qt-4.8/qt.html#mightBeRichText)
#. [Qt Namespace | Qt 4.8](http://doc.qt.io/qt-4.8/qt.html)
#. [QTextStream Class | Qt 4.8](http://doc.qt.io/qt-4.8/qtextstream.html#QTextStream)

[set-layout-png]: http://gnat.qiniudn.com/qt/setlayout.png
[shape-chaning-dlg]: http://gnat.qiniudn.com/qt/dlg.png
[layout-three-parts]: http://gnat.qiniudn.com/qt/layout-three-parts.png
[connecting]: http://gnat.qiniudn.com/qt/connecting.png
[connecting2]: http://gnat.qiniudn.com/qt/connecting2.png
[mainwindow]: http://gnat.qiniudn.com/qt/mainwindow.png
[menu]: http://gnat.qiniudn.com/qt/menu.png
[context-menu]: http://gnat.qiniudn.com/qt/context-menu.png
[scroll-area]: http://gnat.qiniudn.com/qt/scroll-area.png
[toolbar]: http://gnat.qiniudn.com/qt/toolbar.png
[status-bar]: http://gnat.qiniudn.com/qt/status-bar.png
[qmessagebox-style]: http://gnat.qiniudn.com/qt/qmessagebox-style.png
[dialog]: http://gnat.qiniudn.com/qt/dialog.png
[multi-document]: http://gnat.qiniudn.com/qt/multidocument.png
[table-widget]: http://gnat.qiniudn.com/qt/tableWidget.png
[size-policy]: http://gnat.qiniudn.com/qt/size-policy.png
[stacked-widgets]: http://gnat.qiniudn.com/qt/stacked-widgets.png
[splitter]: http://gnat.qiniudn.com/qt/splitter.png
[mdi]: http://gnat.qiniudn.com/qt/mdi2.png
[hex-spin-widget]: http://gnat.qiniudn.com/qt/hex-spin-widget.png
[dockarea]: http://gnat.qiniudn.com/qt/dockarea.png
[qpainter]: http://gnat.qiniudn.com/qt/QPainter.png
[capjoin]: http://gnat.qiniudn.com/qt/capjoin.png
[line]: http://gnat.qiniudn.com/qt/line.png
[brush]: http://gnat.qiniudn.com/qt/brush.png
[draw3]: http://gnat.qiniudn.com/qt/draw3.png
[gradient]: http://gnat.qiniudn.com/qt/gradient.png
[drawrect-1]: http://gnat.qiniudn.com/qt/drawrect-1.png
[drawrect-2]: http://gnat.qiniudn.com/qt/drawrect-2.png
[drawrect-3]: http://gnat.qiniudn.com/qt/drawrect-3.png
[win-port]: http://gnat.qiniudn.com/qt/winport.png
[oventimer]: http://gnat.qiniudn.com/qt/oventimer.png
[composite]: http://gnat.qiniudn.com/qt/composite.png
[multiview]: http://gnat.qiniudn.com/qt/multiview.png
[graphicsitem]: http://gnat.qiniudn.com/qt/graphicsitem.png
[multiple-views]: http://gnat.qiniudn.com/qt/multiple-views.png
[symbol-picker]: http://gnat.qiniudn.com/qt/symbol-picker.png
[coord-setter]: http://gnat.qiniudn.com/qt/coord-setter.png
[settings-viewer]: http://gnat.qiniudn.com/qt/settings-viewer.png
[custom-model]: http://gnat.qiniudn.com/qt/custom-model.png
