chcp 65001
@echo off

:A
set input_strong =

echo --------------------------------------------------------------------------------------------
echo ウェブサイトのファイル一式をダウンロードする場合は、d と入力してください。
echo.
echo ウェブサイトの編集を行う場合は、e と入力してください。
echo.
echo ウェブサイトの更新をする場合は、u と入力してください。
echo.
echo 画像の圧縮を行う場合は、imageフォルダーに画像をいれて p と入力してください。
echo.
echo ウェブサイトのファイル一式を削除する場合は、delete と入力してください。
echo.
echo ウェブサイトのリセットを行うためのファイル一式をダウンロードする場合は、resetと入力してください。
echo.
echo このバッチファイルを終了する場合は、exit と入力してください。
echo **このバッチファイルを操作するときは、インターネットに接続していることを確認してください。**
echo --------------------------------------------------------------------------------------------

color b0

set /P input_strong="ここに入力してください:"
echo %input_strong%

pause

if %input_strong%==d (
    git clone "https://UserName.github.io/RepositoryName/"
) else if %input_strong%==e (
    start atom
    start chrome "https://myxogastria0808.github.io/CodeBox/"
) else if %input_strong%==u (
    git add .
    git commit -m "%date:~0,10%, %time%"
    git push origin main
    start chrome "https://UserName.github.io/RepositoryName/"
) else if %input_strong%==p (
    cd image
    start image.sh
) else if %input_strong%==delete (
    cd ..
    rmdir RepositoryName
) else if %input_strong%==reset (
    git clone "https://myxogastria0808.github.io/HOME/"
) else  if %input_strong%==exit (
    exit
) else (
    goto :A
)

exit