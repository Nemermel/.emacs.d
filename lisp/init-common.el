; init-common.el

(require 'evil)
(require 'roguel-ike)
;(require 'ivy)
(require 'windmove)
(require 'async)
(require 'ag)
(require 'markdown-mode)
(require 'all-the-icons)
(autoload 'dired-async-mode "dired-async.el" nil t)
(dired-async-mode 1)
(async-bytecomp-package-mode 1)

(global-hl-line-mode)

(setq inhibit-splash-screen t
      initial-scratch-message nil
      initial-major-mode 'ruby-mode)

(defadvice load-theme (before theme-dont-propagate activate)
 (mapcar #'disable-theme custom-enabled-themes))

(load-theme 'base16-eighties t)
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files


(evil-mode 1)
(windmove-default-keybindings 'meta)
(tool-bar-mode -1)
(display-time-mode 1)
(scroll-bar-mode -1)

;; Show line numbers
(global-linum-mode)

;; Typography
(set-face-attribute 'default nil
                    :family "Monospace"
                    :height 100
                    :weight 'normal
                    :width 'normal)

(provide 'init-common)
