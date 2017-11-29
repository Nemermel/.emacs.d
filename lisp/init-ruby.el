(require 'ruby-mode)
(require 'ruby-hash-syntax)
(require 'rvm)
(require 'rspec-mode)
(require 'robe)
(require 'bundler)

(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))

(rvm-use-default)
; для связки rvm+robe
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

(eval-after-load 'rspec-mode
 '(rspec-install-snippets))

; для работы с rvm
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
   (rvm-activate-corresponding-ruby))

(after-load 'ruby-mode
  (add-hook 'ruby-mode-hook 'robe-mode))
(after-load 'robe
  (add-hook 'robe-mode-hook 'ac-robe-setup))
  (add-hook 'robe-mode-hook
            (lambda ()
              (add-to-list 'ac-sources 'ac-source-robe)
              (set-auto-complete-as-completion-at-point-function)))

(provide 'init-ruby)
