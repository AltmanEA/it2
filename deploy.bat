hugo

SET COURSE=it2
SET CURDRIVE=%CD:~0,3%

ROBOCOPY "%CURDRIVE%work\%COURSE%\public"   "%CURDRIVE%Work\AltmanEA.github.io\%COURSE%" /S

RD /S /Q "%CURDRIVE%work\%COURSE%\public\"

git add *
git commit -m %1
git push origin main