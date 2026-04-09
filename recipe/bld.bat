@REM https://bugreports.qt.io/browse/QTBUG-107009
set "PATH=%SRC_DIR%\build\lib\qt6\bin;%PATH%"

cmake --log-level STATUS -S"%SRC_DIR%/%PKG_NAME%" -B"%SRC_DIR%\build" -GNinja ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -DINSTALL_BINDIR=lib/qt6/bin ^
    -DINSTALL_PUBLICBINDIR=bin ^
    -DINSTALL_LIBEXECDIR=lib/qt6 ^
    -DINSTALL_DOCDIR=share/doc/qt6 ^
    -DINSTALL_ARCHDATADIR=lib/qt6 ^
    -DINSTALL_DATADIR=share/qt6 ^
    -DINSTALL_INCLUDEDIR=include/qt6 ^
    -DINSTALL_MKSPECSDIR=lib/qt6/mkspecs ^
    -DINSTALL_EXAMPLESDIR=share/doc/qt6/examples ^
    -DINSTALL_DATADIR=share/qt6 ^
    -DQT_FEATURE_assistant=ON ^
    -DQT_FEATURE_designer=ON ^
    -DQT_FEATURE_distancefieldgenerator=ON ^
    -DQT_FEATURE_linguist=ON ^
    -DQT_FEATURE_pixeltool=ON ^
    -DQT_FEATURE_qdbus=ON ^
    -DQT_FEATURE_qdoc=OFF ^
    -DQT_FEATURE_qtdiag=ON ^
    -DQT_FEATURE_qtplugininfo=ON
if errorlevel 1 exit 1

cmake --build build --target install
if errorlevel 1 exit 1

xcopy /y /s %LIBRARY_PREFIX%\lib\qt6\bin\*.dll %LIBRARY_PREFIX%\bin
if errorlevel 1 exit 1

copy %LIBRARY_PREFIX%\lib\qt6\bin\assistant.exe %LIBRARY_PREFIX%\bin\assistant6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\designer.exe %LIBRARY_PREFIX%\bin\designer6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\lcheck.exe %LIBRARY_PREFIX%\bin\lcheck6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\lconvert.exe %LIBRARY_PREFIX%\bin\lconvert6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\linguist.exe %LIBRARY_PREFIX%\bin\linguist6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\lrelease-pro.exe %LIBRARY_PREFIX%\bin\lrelease-pro6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\lrelease.exe %LIBRARY_PREFIX%\bin\lrelease6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\ltext2id.exe %LIBRARY_PREFIX%\bin\ltext2id6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\lupdate-pro.exe %LIBRARY_PREFIX%\bin\lupdate-pro6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\lupdate.exe %LIBRARY_PREFIX%\bin\lupdate6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\pixeltool.exe %LIBRARY_PREFIX%\bin\pixeltool6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\qdbus.exe %LIBRARY_PREFIX%\bin\qdbus6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\qdbusviewer.exe %LIBRARY_PREFIX%\bin\qdbusviewer6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\qdistancefieldgenerator.exe %LIBRARY_PREFIX%\bin\qdistancefieldgenerator6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\qtdiag.exe %LIBRARY_PREFIX%\bin\qtdiag.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\qtdiag6.exe %LIBRARY_PREFIX%\bin\qtdiag6.exe
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\qt6\bin\qtplugininfo.exe %LIBRARY_PREFIX%\bin\qtplugininfo6.exe
if errorlevel 1 exit 1

@REM remove symbolic links
del %LIBRARY_PREFIX%\bin\assistant6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\designer6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\lcheck6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\lconvert6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\linguist6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\lrelease-pro6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\lrelease6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\ltext2id6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\lupdate-pro6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\lupdate6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\pixeltool6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\qdbus6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\qdbusviewer6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\qdistancefieldgenerator6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\qtdiag6
if errorlevel 1 exit 1
del %LIBRARY_PREFIX%\bin\qtplugininfo6
if errorlevel 1 exit 1
