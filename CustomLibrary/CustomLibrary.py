from robot.libraries.BuiltIn import BuiltIn
from SeleniumLibrary.base import keyword, LibraryComponent
from selenium.webdriver.common.by import By
import time

class CustomLibrary(object):

    @property
    def _s2l(self):
        return BuiltIn().get_library_instance('SeleniumLibrary')

    @property
    def _driver(self):
        return self._s2l.driver
    
    def get_list(self,locator):
        locator = locator.replace("xpath:","")
        self._driver.find_element(By.XPATH, locator)
        time.sleep(5)
        return self._driver.find_elements(By.XPATH, locator+"/li")
        
    def get_list_value(self,locator):
        listItem = [item.text for item in self.get_list(locator)]
        return listItem
    
    def select_by_value_on_list(self, locator, value):
        locator = locator.replace("xpath:","")
        for i in range(1,len(self.get_list(locator))+1):
            select= self._driver.find_element(By.XPATH, locator+"/li"+"["+str(i)+"]")
            if(select.text == value):
                print(select.text)
                select.click()



