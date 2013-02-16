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
(global-whitespace-mode)

;; 2012.07.17
;; bind M-j to delete-indentation (similar to 'J' in vim, to join lines)
(global-set-key (kbd "M-j") 'delete-indentation)

;; Copied from the Emacs Starter Kit
;; github.com/technomancy/emacs-starter-kit/blob/v2/starter-kit-misc.el

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t)
  (blink-cursor-mode -1))

(setq visible-bell t
      inhibit-startup-message t
      color-theme-is-global t
      sentence-end-double-space nil
      shift-select-mode nil
      mouse-yank-at-point t
      uniquify-buffer-name-style 'forward
      whitespace-style '(face trailing lines-tail tabs)
      whitespace-line-column 80
      ediff-window-setup-function 'ediff-setup-windows-plain
      oddmuse-directory (concat user-emacs-directory "oddmuse")
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory "backups")))
      diff-switches "-u")

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; ido-mode is like magic pixie dust!
(ido-mode t)
;; (ido-ubiquitous t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10)

(defalias 'yes-or-no-p 'y-or-n-p)

;; Theme using color-theme-6.6.1 copied from
;; https://github.com/raykin/emacs-24/tree/master/elpa/color-theme-6.6.1
(require 'color-theme)
(load-file "~/.emacs.d/elpa/color-theme-railscasts-0.0.2/color-theme-railscasts.el")
(color-theme-railscasts)
