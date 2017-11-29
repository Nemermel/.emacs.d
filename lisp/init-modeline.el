; init-modeline.el
(setq-default mode-line-format
      (list
       " " mode-line-modified
       " %[" mode-line-buffer-identification "%] %l %6 "
       ;; the current major mode for the buffer.
       "["

       '(:eval (propertize "%m" 'face 'font-lock-string-face
			   'help-echo buffer-file-coding-system))
       "] "
       mode-line-misc-info
       mode-line-end-spaces))
(setq global-mode-string '((t jabber-activity-mode-string)
                          "" display-time-string appt-mode-string))

(provide 'init-modeline)
