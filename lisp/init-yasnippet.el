; init-yasnippet.el
(require 'yasnippet)
(yas-global-mode 1)

(setq yas-snippets-dirs
      '("~/.emacs.d/snippets"))

(yas-reload-all)
(add-hook 'go-mode-hook 'yas-minor-mode)


(provide 'init-yasnippet)
