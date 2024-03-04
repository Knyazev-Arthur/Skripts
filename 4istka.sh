#!/bin/bash
rm -rfv ~/Library/Caches/*
rm -rfv ~/Library/Application\ Support/Slack/Cache/*
rm -rfv ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/*
rm -rfv ~/Library/Group\ Containers/6N38VWS5BX.ru.keepcoder.Telegram/account-570841890615083515/postbox/*
rm -rfv ~/Library/Caches
rm -rfv ~/Library/Application\ Support/Code/Cache
rm -rfv ~/Library/Application\ Support/Code/CachedData
rm -rfv ~/Library/Application\ Support/Code/CachedExtension
rm -rfv ~/Library/Application\ Support/Code/CachedExtensions
rm -rfv ~/Library/Application\ Support/Code/CachedExtensionVSIXs
rm -rfv ~/Library/Application\ Support/Code/Code\ Cache
rm -rfv ~/Library/Application\ Support/Slack/Cache
rm -rfv ~/Library/Application\ Support/Slack/Code\ Cache
rm -rfv ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage
rm -rfv ~/Library/Application\ Support/Code/User/workspaceStorage
echo -en "\033[31mSpace for the space!\n\033[0m"
free_space=$(df -h | grep 'agidget' | awk '{print $4}')
echo -en "\033[32m${free_space} are available now\n\033[0m"
df -h ~


du -sh ~/Library
if [ -z '((find ~/Library -name "*42_cache*" 2> /dev/null))' ]
then
    echo "Cache is empty! Nothing to be done."
else
    read -p "Clean cache? (y/n): " item
    case "$item" in
        y|Y|yes) rm -rf ~/Library/*42_cache* 2> /dev/null
            echo "Complite. Cache is empty!" 2> /dev/null
            ;;
        n|N|no) echo "Exit"
            exit 1
            ;;
        *) echo "Nothing to be done"
            ;;
    esac
fi

du -sh ~/Library
if [ -z '((find ~/Library -name "*42_cache*" 2> /dev/null))' ]
then
    echo "Cache is empty! Nothing to be done."
else
    read -p "Clean cache? (y/n): " item
    case "$item" in
        y|Y|yes) rm -rf ~/Library/*42_cache* 2> /dev/null
            echo "Complite. Cache is empty!" 2> /dev/null
            ;;
        n|N|no) echo "Exit"
            exit 1
            ;;
        *) echo "Nothing to be done"
            ;;
    esac
fi
