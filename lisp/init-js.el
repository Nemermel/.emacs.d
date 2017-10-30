;;; JS

(require 'json-mode)
(require 'js2-mode)
(require 'coffee-mode)

(require 'tern)
(require 'tern-auto-complete)

(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

(provide 'init-js)
