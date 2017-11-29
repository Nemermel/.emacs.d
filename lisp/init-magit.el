; init-magit.el
(require 'magit)
(require 'git-gutter+)
(require 'git-gutter-fringe+)

(global-set-key (kbd "C-x g") 'magit-status)

(set-face-foreground 'git-gutter-fr+-modified "yellow")
(set-face-foreground 'git-gutter-fr+-added    "green")
(set-face-foreground 'git-gutter-fr+-deleted  "red")

(provide 'init-magit)
