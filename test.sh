#!/bin/bash

echo "  ____ ___ _____    ____ _     ___  _   _ _____ "
echo " / ___|_ _|_   _|  / ___| |   / _ \| \ | | ____|"
echo "| |  _ | |  | |   | |   | |  | | | |  \| |  _|  "
echo "| |_| || |  | |   | |___| |__| |_| | |\  | |___ "
echo " \____|___| |_|    \____|_____\___/|_| \_|_____|"
                                                
sleep 1

# libft-unit-test リポジトリをカレントディレクトリにクローン
git clone https://github.com/alelievr/libft-unit-test

cd libft
# libft-tester-tokyo リポジトリを ./libft にクローン
git clone https://github.com/usatie/libft-tester-tokyo

# libftTester リポジトリを ./libft にクローン
git clone https://github.com/Tripouille/libftTester

cd ../

echo " _            _"
echo "| |_ ___  ___| |_"
echo "| __/ _ \/ __| __|"
echo "| ||  __/\__ \ |_"
echo " \__\___||___/\__|"

sleep 1


make bonus -C libft
# libft-unit-test ディレクトリに移動して Makefile を実行
cd libft-unit-test
make f

sleep 1
# ./libft ディレクトリに移動して Makefile を実行
cd ../libft/libft-tester-tokyo
make all
make bonus

sleep 1
cd ../libftTester

make a

sleep 1
# スクリプトの実行が完了したことを表示
echo "スクリプトの実行が完了しました。"

