set PATH=%PATH%;C:\Program Files\Git\cmd
git config --global http.version HTTP/1.1
git config --global http.postBuffer 1048576000
git config --global core.compression 0
git push -u origin HEAD:refs/heads/v4
