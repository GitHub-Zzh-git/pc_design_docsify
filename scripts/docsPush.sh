#!/bin/bash
###
 # @Author: ZZH
 # @Date: 2021-08-05 16:59:46
 # @LastEditTime: 2021-08-05 17:35:06
 # @LastEditors: ZZH
 # @Description: 文档更新脚本
 # @FilePath: /pc-design/docs/scripts/docsPush.sh
### 

# 确保脚本抛出遇到的错误
set -e

git add .
git commit -m 'docsify update'
# git remote add origin https://github.com/GitHub-Zzh-git/pc_design_docsify.git
git push -u origin master