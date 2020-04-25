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
 # (execute all TC in project)
 - robot . 
 # (execute all TC in example.robot file)
 - robot example.robot 
 # (execute all TC with name Example )
 - robot --test Example . 
 # (execute all TC with name Example in example.robot file)
 - robot --test Example example.robot 
 # (execute TC with tag "ONE" in project)
 - robot --include ONE .
 - robot --include ONE LoginSuite.robot     
 # (execute TC with tags "one" and "two" in project)
 - robot --include ONEANDTWO .    
 # (execute TC with tag "one" but no tag "two" in project)
 - robot --include oneNOTtwo .
 # (execute TC from suites named "positive" in project)
 - robot --suite positive .
 # (execute TC from suite "feat\positive" in project)
 - robot --suite feat.positive .
 # execute TC with failed TC in previous run (saved in output.xml)
 - robot --rerunfailedsuites output.xml . 