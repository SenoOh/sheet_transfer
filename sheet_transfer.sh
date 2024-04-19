#!/bin/bash

source ./.env

# ファイルをサーバからダウンロードする関数
download_file() {
    local file="$1"
    echo "Downloading $file from $SERVER..."
    scp "$SERVER":"$DIRECTORY"/"$file" .
    libreoffice --calc "$file"
}

# ファイルをサーバにアップロードする関数
upload_file() {
    local file="$1" 
    echo "Uploading $file to $SERVER/$DIRECTORY..."
    scp "$file" "$SERVER":"$DIRECTORY"
}

# メイン関数
main() {
    local option="$1"
    local file="$2"

    case "$option" in
        -d) download_file "$file";;
        -u) upload_file "$file";;
        -h) echo "Usage: ./sheet_transfer.sh -d filename or ./sheet_transfer.sh -u filename"; exit 1;;
        *) echo "Error: Invalid option. Available options are -d, -u and -h."; exit 1;;
    esac
}

# スクリプトの実行
main "$@"