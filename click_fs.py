from pywinauto import Application, mouse
import time
import ctypes
import ctypes.wintypes

# 屏蔽冗余日志输出
import warnings
import logging
warnings.filterwarnings("ignore")
logging.disable(logging.CRITICAL)

# Windows API 定义：用于精准移动窗口
user32 = ctypes.WinDLL("user32", use_last_error=True)

def set_window_pos(hwnd, x, y):
    """
    移动窗口到指定坐标，保持原窗口大小不变
    :param hwnd: 窗口句柄
    :param x: 窗口左上角 X 坐标
    :param y: 窗口左上角 Y 坐标
    """
    user32.SetWindowPos(
        hwnd,
        0,
        x,
        y,
        0,
        0,
        0x0001  # SWP_NOSIZE：保持原有窗口大小
    )

# 连接云梯窗口（超时10秒）
app = Application(backend="uia").connect(title="飞书", timeout=10)
ladder_window = app.window(title="飞书")
ladder_window.wait("exists", timeout=10)

# 窗口置顶激活
ladder_window.set_focus()
time.sleep(2)

# 移动窗口到固定位置
hwnd = ladder_window.handle
set_window_pos(hwnd, 600, 360)
time.sleep(0.2)

print("窗口已固定")

# 连接按钮坐标（可根据实际界面微调）
CLICK_X = 2275
CLICK_Y = 390

# 模拟鼠标点击连接按钮
mouse.click(coords=(CLICK_X, CLICK_Y))
print("已尝试点击 连接 位置")

