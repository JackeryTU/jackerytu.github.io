@echo off
echo 开始同步到 Netlify (推送源码)...
git add .
git commit -m "update"
git push

echo 开始构建并推送到 Gitee (使用独立配置)...
call hexo clean
call hexo generate --config _config.yml,_config.gitee.yml
call hexo deploy --config _config.yml,_config.gitee.yml

echo 全部完成！记得去 Gitee 仓库「服务 -^> Gitee Pages」点一下「更新」按钮
pause