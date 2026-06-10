set PATH=%PATH%;C:\Program Files\Git\cmd
echo *.pdf >> .gitignore
git rm -r --cached "*.pdf"
git commit -m "Remove PDFs gigantes do rastreamento"
git push -u origin HEAD:refs/heads/v4

git add "content\D&D 5e\2.Itens e Equipamentos"
git commit -m "Adiciona Itens"
git push

git add .
git commit -m "Adiciona Restante"
git push
