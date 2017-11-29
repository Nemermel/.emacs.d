;;; JS

(require 'json-mode)
(require 'js2-mode)
(require 'coffee-mode)

(require 'tern)

(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))
(setq js2-mode-hook
  '(lambda () (progn
    (set-variable 'indent-tabs-mode nil))))
;; (eval-after-load 'tern
;;    '(progn
;;       (require 'tern-auto-complete)
;;       (tern-ac-setup)))

(provide 'init-js)
