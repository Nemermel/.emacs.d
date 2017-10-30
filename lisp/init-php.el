; init-php.el

(require 'php-mode)

(with-eval-after-load 'php-mode
  (define-key php-mode-map (kbd "C-c C--") 'php-current-class)
  (define-key php-mode-map (kbd "C-c C-=") 'php-current-namespace))


(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

(provide 'init-php)
