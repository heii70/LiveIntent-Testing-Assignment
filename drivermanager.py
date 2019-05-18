from webdrivermanager import ChromeDriverManager
from webdrivermanager import GeckoDriverManager


def Download_ChromeDriver():
    ChromeDriverManager().download_and_install()


def Download_FireFoxDriver():
    GeckoDriverManager().download_and_install()


