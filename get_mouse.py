from pywinauto import Application, mouse
# 模拟鼠标点击连接按钮



CLICK_X = 2290
CLICK_Y = 390


mouse.click(coords=(CLICK_X, CLICK_Y))
print("已尝试点击 连接 位置")