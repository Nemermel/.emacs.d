;init-spaceline.el
(require 'powerline)
(require 'spaceline)
(require 'spaceline-config)
(require 'spaceline-all-the-icons)

(spaceline-all-the-icons-theme)
(spaceline-helm-mode)
(spaceline-highlight-face-evil-state)

(provide 'init-spaceline)
