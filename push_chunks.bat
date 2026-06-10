set PATH=%PATH%;C:\Program Files\Git\cmd
git reset HEAD~1

git add "content\D&D 5e\1.Regras"
git commit -m "Upload Parte 1 - Regras"
git push -u origin HEAD:refs/heads/v4

git add "content\D&D 5e\2.Itens e Equipamentos"
git commit -m "Upload Parte 2 - Itens"
git push -u origin HEAD:refs/heads/v4

git add .
git commit -m "Upload Parte 3 - Imagens e Resto"
git push -u origin HEAD:refs/heads/v4
