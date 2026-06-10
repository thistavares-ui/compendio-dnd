set PATH=%PATH%;C:\Program Files\Git\cmd
git reset HEAD~1
python delete_large_pdfs.py
git add "content\D&D 5e\**\*.pdf"
git commit -m "Adiciona PDFs de tamanho permitido"
git push -u origin v4
