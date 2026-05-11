import ctypes
import time

# 调用系统API获取鼠标坐标
class POINT(ctypes.Structure):
    _fields_ = [("x", ctypes.c_long), ("y", ctypes.c_long)]

def get_mouse_pos():
    pt = POINT()
    ctypes.windll.user32.GetCursorPos(ctypes.byref(pt))
    return (pt.x, pt.y)

# 实时打印坐标
print("把鼠标放在【连接】按钮上，坐标会自动显示：")
while True:
    x, y = get_mouse_pos()
    print(f"当前鼠标坐标：X = {x}, Y = {y}")
    time.sleep(0.5)