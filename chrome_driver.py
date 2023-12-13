import undetected_chromedriver as uc
from selenium.webdriver import ChromeOptions
from fake_useragent import UserAgent

while True:
    options = uc.ChromeOptions()
    options.add_argument(f"--user-agent={UserAgent().random}")
    driver = uc.Chrome(options=options)
    driver.close()