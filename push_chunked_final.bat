set PATH=%PATH%;C:\Program Files\Git\cmd
rd /s /q .git
git init
git config user.name "ThiSTavares"
git config user.email "thistavares@github.com"
git remote add origin https://github.com/thistavares-ui/compendio-dnd.git
git config --global http.version HTTP/1.1
git config --global http.postBuffer 1048576000
git config --global core.compression 0

git add "quartz.config.ts" "quartz.layout.ts" "package.json" "tsconfig.json"
git commit -m "Configuracoes"
git push --force -u origin v4

git add "content\D&D 5e\1.Regras"
git commit -m "Adiciona Regras e PDFs menores"
git push

git add "content\D&D 5e\2.Itens e Equipamentos"
git commit -m "Adiciona Itens"
git push

git add .
git commit -m "Adiciona Restante"
git push
