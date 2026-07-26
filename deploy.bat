@echo off
echo 开始同步到 Netlify (推送源码)...
git add .
git commit -m "update"
git push

echo 开始构建并推送到 GitHub Pages (使用独立配置)...
call hexo clean
call hexo generate --config _config.yml,_config.github.yml
call hexo deploy --config _config.yml,_config.github.yml

echo 全部完成！
pause