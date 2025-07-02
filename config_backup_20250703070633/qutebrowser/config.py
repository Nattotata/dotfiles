config.load_autoconfig()

c.content.javascript.log_message.excludes = {"userscript:_qute_stylesheet": ["*Refused to apply inline style because it violates the following Content Security Policy directive: *"], 
                                             "userscript:_qute_js": ["*TrustedHTML*"]}
config.bind('<Escape>', 'mode-leave ;; jseval -q document.activeElement.blur()', mode='insert')

# Unset d for closing a tab
config.unbind('d', mode='normal')

# Reload page with Ctrl-r instead of r
config.unbind("r", mode="normal")
config.bind("<Ctrl-r>", 'reload', mode="normal")

# Switch tabs with Shift+H, and Shift+L
# Instead of Shift+J, and Shift+K
# Also, move backwards and forwards in history with
# Ctrl+Shift+J and Ctrl+Shift + K

# By default, J = tab-next
config.unbind("J")
# By default, H = back
config.unbind("H")
# I don't want to go back by accident
config.bind("<Ctrl-H>", "back")
# H for switching tabs matches nvim
config.bind("H", "tab-prev")

# Same stuff for forward
config.unbind("K")
config.unbind("L")
config.bind("<Ctrl-L>", "forward")
config.bind("L", "tab-next")

