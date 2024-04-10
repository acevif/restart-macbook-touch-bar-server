#!/bin/dash

# TouchBarServerプロセスのプロセスIDを取得
pid=$(pgrep TouchBarServer)

# TouchBarServerが見つからない場合
if [ -z "$pid" ]; then
    echo "TouchBarServer not found." >&2
    logger "TouchBarServer not found."
    exit 101
fi

# プロセスが存在する場合、強制終了
echo "Killing TouchBarServer with PID $pid"
logger "Killing TouchBarServer with PID $pid"
kill -SIGTERM $pid

# killコマンドの結果をチェック
if [ $? -ne 0 ]; then
    echo "Failed to kill TouchBarServer." >&2
    logger "Failed to kill TouchBarServer."
    exit 102
fi

echo "Successfully killed TouchBarServer."
logger "Successfully killed TouchBarServer."
