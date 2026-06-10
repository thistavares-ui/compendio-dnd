set PATH=%PATH%;C:\Program Files\Git\cmd
git config user.name "ThiSTavares"
git config user.email "thistavares@github.com"
git remote remove origin
git remote add origin https://github.com/thistavares-ui/compendio-dnd.git
npx quartz sync
