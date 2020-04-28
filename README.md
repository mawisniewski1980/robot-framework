# robot-framework

### Documentation
 - https://robotframework.org/
 - https://github.com/robotframework/robotframework/blob/master/INSTALL.rst
 - https://github.com/robotframework/QuickStartGuide
 - https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

### Course
 -- Robot:
 - https://www.udemy.com/course/robot-framework-step-by-step-for-beginners/
 - https://www.udemy.com/course/robot-frameworkride-selenium-step-by-step-for-beginners/
 
 -- Python:
 - https://www.youtube.com/watch?v=IMGzzK9Wn4w&list=WL&index=30&t=2599s

### Useful
 - python --version
 - pip --version
 - robot --version

 - pip freeze
 - pip install -U wxPython
 - pip install robotframework
 - pip install -U https://github.com/robotframework/RIDE/archive/master.zip --last RIDE for Python 3.8
 - pip install robotframework-faker
 - pip install webdrivermanager
 
 - https://pypi.org/project/robotframework-faker/
 - https://github.com/robotframework/SeleniumLibrary/
 - https://pypi.org/project/robotframework-selenium2screenshots/
 - https://github.com/robotframework/SeleniumLibrary/#browser-drivers
 - https://github.com/bulkan/robotframework-requests/#readme
 
### how to run tests
##### (execute TC from cmd)
 - robot -t TestName TestSuite.robot
 - robot -t TestName1 -t TestName2 TestSuite.robot
 
##### (execute all TC in project)
 - robot . 
 
##### (execute all TC in TestSuite.robot file)
 - robot TestSuite.robot 
 
##### (execute all TC with name Example )
 - robot --test Example . 
 
##### (execute all TC with name Example in TestSuite.robot file)
 - robot --test Example TestSuite.robot 
 
##### (execute TC with tag "ONE" in project)
 - robot --include ONE .
 - robot --include ONE TestSuite.robot     
 - robot -i TAGONE TestSuite.robot
 - robot -i TAGO* TestSuite.robot
 
##### (execute TC with tags "one" and "two" in project)
 - robot --include ONEANDTWO .    
 
##### (execute TC with tag "one" but no tag "two" in project)
 - robot --include oneNOTtwo .
 
##### (execute TC withhout tag one)
 - robot --exclude Test* TestSuite.robot
 - robot -e TestName TestSuite.robot
 
##### (execute TC from suites named "positive" in project)
 - robot --suite positive .
 
##### (execute TC from suite "folder\positive" in project)
 - robot --suite folder.positive .
 
##### execute TC with failed TC in previous run (saved in output.xml)
 - robot --rerunfailedsuites output.xml . 
 
#### execute TC and save the results in folder
 - robot -t TestName -d Results TestSuite.robot
 
#### execute TC and mark as critical or noncritical
 - robot -i TAGONE --critical TAGONE TestSuite.txt
 - robot -i TAGONE -c TAGONE TestSuite.txt
 
 - robot -i TAGONE --noncritical TAGONE TestSuite.txt
 - robot -i TAGONE -n TAGONE TestSuite.txt
