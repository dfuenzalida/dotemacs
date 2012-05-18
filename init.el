;; Based on ELPA + Emacs Starter Kit -- 2011.11.23
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

;; Default font -- 2011.11.23
(set-default-font "Liberation Mono 9")

;; Scrollbar + Line numbers + Menu Bar -- 2011.11.24
(scroll-bar-mode)
(linum-mode)
; (menu-bar-mode)
(global-linum-mode)

;; Color theme -- 2011.11.26
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wheatgrass))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Groovy mode -- 2011.11.30
;; see http://groovy.codehaus.org/Emacs+Groovy+Mode

(add-to-list 'load-path "~/.emacs.d/emacs-groovy-mode_2011-06-29/")
;;; turn on syntax highlighting
(global-font-lock-mode 1)

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;;; make Groovy mode electric by default.
(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)
             (groovy-electric-mode)))

;; global whitespace
(global-whitespace-mode)

;; always show column info
(column-number-mode)

;;; Clojure mode
(add-to-list 'auto-mode-alist '("\.clj$" . clojure-mode))

