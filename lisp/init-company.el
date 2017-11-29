;init-company.el
(require 'company)
(require 'company-php)
(require 'company-go)
(require 'company-web)
(require 'helm-company)

(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0)                          ; remove annoying blinking
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

(add-hook 'php-mode-hook
          '(lambda ()
             (require 'company-php)
             (company-mode t)
             (make-local-variable 'company-backends)
             (add-to-list 'company-backends 'company-ac-php-backend)))

(add-hook 'web-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-php))
                          (company-mode)))

(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))

(provide 'init-company)
