(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(package-initialize) ;; You might already have this line
(setq gc-cons-threshold 100000000)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-common)
(require 'init-helm)
(require 'init-spaceline)
(require 'init-projectile)
(require 'init-flycheck)
;(require 'init-modeline)
(require 'init-yasnippet)
(require 'init-js)
(require 'autopair)
(require 'init-magit)
(require 'init-typescript)
;(require 'init-ivy)
(require 'init-docker)
(require 'init-php)
(require 'init-web-mode)
(require 'init-go)
(require 'init-company)
(autopair-global-mode)

; Require modes

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d2d2d" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#6699cc" "#d3d0c8"])
 '(ansi-term-color-vector
   [unspecified "#2d2d2d" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#6699cc" "#d3d0c8"])
 '(custom-safe-themes
   (quote
    ("c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "c614d2423075491e6b7f38a4b7ea1c68f31764b9b815e35c9741e9490119efc0" "85e6bb2425cbfeed2f2b367246ad11a62fb0f6d525c157038a0d0eaaabc1bfee" "b8929cff63ffc759e436b0f0575d15a8ad7658932f4b2c99415f3dde09b32e97" "36282815a2eaab9ba67d7653cf23b1a4e230e4907c7f110eebf3cdf1445d8370" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "840db7f67ce92c39deb38f38fbc5a990b8f89b0f47b77b96d98e4bf400ee590a" "52741e091463c2217af9327e2b2d74d0df861ecc3ad6131b6cbcb8d76b7a4d3d" "eae831de756bb480240479794e85f1da0789c6f2f7746e5cc999370bbc8d9c8a" "ef04dd1e33f7cbd5aa3187981b18652b8d5ac9e680997b45dc5d00443e6a46e3" default)))
 '(package-selected-packages
   (quote
    (multi-compile flycheck tide spaceline spaceline-all-the-icons all-the-icons roguel-ike fireplace helm-projectile helm helm-ag company-go go-eldoc go-mode company company-php company-web counsel-projectile projectile ag ack async docker-compose-mode docker bundler git-gutter+ git-gutter-fringe+ spacemacs-theme ac-php php-mode emmet-mode magit counsel swiper ivy yasnippet web-mode tern-context-coloring tern-auto-complete rvm ruby-hash-syntax rspec-mode robe json-mode js2-mode evil coffee-mode base16-theme autopair))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
