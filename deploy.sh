# !/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e
# 同步代码
git add -A
git commit -m 'deploy'
git pull --rebase origin master
git push -u origin master

# # 生成静态文件
npm run build

# 进入生成的文件夹
cd public

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
git push -f git@github.com:wowhoonet/wowhoonet.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:wowhoonet/vuepressblog.git master:gh-pages

cd -