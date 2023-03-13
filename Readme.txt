------Set up environment for windows---------

*****Clone***
https://github.com/uyennql95/Demo.git

****SET UP****
1. Install python: https://www.python.org/
2. Set python PATH into Environment Variable for windows
3. Install IDE:Example(Visual Studio)
4. Navigate to folder project by commandline then Install virtual environment
pip install virtualenv
5. Create virtual environment for project
virtualenv [project_name]
6. Activate virtual environment
[project_name]\Scripts\activate
Note: Run this if activate has error "activate.ps1 cannot be loaded because running scripts is disabled on this system": Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass -Force
7. Install nescessary library for project
pip install -r requirements.txt
8. Install plugin for help to write script better:
Robot Framework Language Server


****RUN TEST*****
1. Navigate to folder project by commandline
2. Run test
Run 1 test case:  robot  -i [Tag-name]   path to test case file(Example: robot  -i RKD-7463   TestCases\RKD-605-nxg-auth\UI\nxg-auth-UI.robot)
Run test suite: robot   path to test case file(Example: robot  TestCases\RKD-605-nxg-auth\UI\nxg-auth-UI.robot)



