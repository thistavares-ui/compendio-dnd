set PATH=%PATH%;C:\Program Files\Git\cmd
rd /s /q .git
git init
git config user.name "ThiSTavares"
git config user.email "thistavares@github.com"
git remote add origin https://github.com/thistavares-ui/compendio-dnd.git
git config --global http.version HTTP/1.1
git config --global http.postBuffer 1048576000
git config --global core.compression 0

git add .
git commit -m "Versao Final (sem arquivos pesados)"
git branch -M v4
git push -u origin v4
