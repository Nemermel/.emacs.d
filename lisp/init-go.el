;init-go.el

(require 'go-mode)
(require 'go-eldoc)

(add-hook 'go-mode-hook (lambda ()
			  (add-hook 'before-save-hook 'gofmt-before-save)))

(provide 'init-go)
