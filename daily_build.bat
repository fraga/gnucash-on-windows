rem This is the Windows Batch Script for the daily builds.
rem It simply calls the actual MSYS Shell script to perform
rem the daily build and then the tag builds.

cd c:\soft\gnucash\repos\packaging\win32\

rem Development build (daily)
c:\msys\1.0\bin\sh.exe --login c:\soft\gnucash\repos\packaging\win32\daily_build_git.sh
rem Tags build (daily -- only tags that weren't built yet)
c:\msys\1.0\bin\sh.exe --login c:\soft\packaging\build_tags.sh
rem 2.4 branch build (weekly)
c:\msys\1.0\bin\sh.exe --login c:\soft-2.4\packaging\weekly_build.sh