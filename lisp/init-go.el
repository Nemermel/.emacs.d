;init-go.el

(require 'go-mode)
(require 'go-eldoc)

(add-hook 'go-mode-hook (lambda ()
			  (add-hook 'before-save-hook 'gofmt-before-save)))
(add-hook 'before-save-hook 'gofmt-before-save)
(setq-default gofmt-command "goimports")
(add-hook 'go-mode-hook 'go-eldoc-setup)

(provide 'init-go)
