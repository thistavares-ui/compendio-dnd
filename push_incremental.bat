set PATH=%PATH%;C:\Program Files\Git\cmd
git branch -M v4
git push origin HEAD~2:refs/heads/v4
git push origin HEAD~1:refs/heads/v4
git push -u origin v4
