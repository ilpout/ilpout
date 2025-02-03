from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Запускаем браузер
driver = webdriver.Chrome()

# Переходим на страницу Google или нужную страницу
driver.get("https://www.google.com")  # Заменить на нужный URL

# Ждем появления элемента с селектором 'password'
try:
    password_input = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.CSS_SELECTOR, "#password"))
    )
    password_input.send_keys("Твой пароль")
    print("Пароль введен!")
except Exception as e:
    print("Ошибка:", e)

# Закрываем браузер
driver.quit()
