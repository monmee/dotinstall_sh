#!/bin/sh

### variable
name="monmee"
echo "Hello ${name} san"

### arguments
echo "Hello $1"
# 特殊変数
echo "Hello $0"
echo "Hello $#"
echo "Hello $@"

### 入力
read name
echo "Hello $name"
read -p "Name: " name
echo "Hello $name"

read -p "3 Colors: " c1 c2 c3
echo $c1
echo $c2
echo $c3

### 配列
colors=(red blue pink)
echo ${colors[0]}
echo ${colors[1]}
echo ${colors[2]}
echo ${colors[@]}

colors[1]=silver
colors+=(green orange)
echo ${colors[@]}

### 数値計算
echo $((5 + 2))

n=5
((n = n + 5))
echo $n

### 条件分岐
read -p "Name?: " name
if [[ $name = "taguchi" ]]; then
  echo "welcome"
elif [[ $name = "fkoji" ]]; then
  echo "WELCOME"
else
  echo "You are not allowed"
fi
# ファイル
if [[ -f $0 ]]; then
  echo "File exists"
fi

### for
for i in {1..5}; do
  echo $i
done

for item in $(date); do
  echo $item
done
