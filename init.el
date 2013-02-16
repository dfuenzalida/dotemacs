;; Based on ELPA + Emacs Starter Kit -- 2011.11.23
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Default font -- 2011.11.23
(set-default-font "Liberation Mono 9")

;; Scrollbar + Line numbers + Menu Bar -- 2011.11.24
(scroll-bar-mode 1)
(linum-mode)
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode)
(global-font-lock-mode 1)
(column-number-mode)

;; 2012.07.17
;; bind M-j to delete-indentation (similar to 'J' in vim, to join lines)
(global-set-key (kbd "M-j") 'delete-indentation)
