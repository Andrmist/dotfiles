;;(eval-after-load "org" '(debug))
;;  ________  ___  ___  _____  _____ 
;; |  ___|  \/  | / _ \/  __ \/  ___|
;; | |__ | .  . |/ /_\ \ /  \/\ `--. 
;; |  __|| |\/| ||  _  | |     `--. \
;; | |___| |  | || | | | \__/\/\__/ /
;; \____/\_|  |_/\_| |_/\____/\____/    config :-)

;; Disabling useless and enablng useful things
;;; Code:
;; Lower threshold back to 8 MiB (default is 800kB)
(setq gc-cons-threshold (* 50 1000 1000))

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)
(setq-default cursor-type 'bar)
(global-display-line-numbers-mode)
(if window-system (global-hl-line-mode t))
;; Minimize garbage collection during startup
(setq gc-cons-threshold most-positive-fixnum)


(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-language-environment 'utf-8)
(set-selection-coding-system 'utf-8)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq-default c-basic-offset 4)

(delete-selection-mode 1)

(defalias 'yes-or-no-p 'y-or-n-p)

;; recent files
(recentf-mode 1)
(setq recent-max-menu-items 25)
(setq recent-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; Autosave files
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/auto-save-list")))

;; straight.el and use-package setup
(setq package-enable-at-startup nil)
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)

;; Basic packages

(use-package company
  :straight t
  :config
  (define-global-minor-mode my-global-company-mode global-company-mode
    (lambda ()
      (when (not (memq major-mode
                       (list 'org-mode)))
	(global-company-mode t))))
  (my-global-company-mode)
  (setq company-idle-delay 0.0))

(use-package helm
  :straight t
  :bind
  ("M-x" . 'helm-M-x)
  ("C-x r b" . 'helm-filtered-bookmarks)
  ("C-x C-f" . 'helm-find-files)
  ("C-x b" . helm-mini)
  :config
  (require 'helm-config)
  (setq helm-use-frame-when-more-than-two-windows nil)
  (setq persp-init-new-frame-behaviour-override nil)
  (helm-mode 1))

(use-package swiper
  :straight t
  :config
  (global-set-key "\C-s" 'swiper))

(straight-use-package 'project)

(use-package magit
  :straight t 
  :init (if (not (boundp 'project-switch-commands)) 
	    (setq project-switch-commands nil)))

(use-package dash
  :straight t)

(add-to-list 'load-path "~/.local/share/icons-in-terminal/")

(use-package smartparens
  :straight t
  :config
  (require 'smartparens-config)
  (smartparens-global-mode t))

(use-package page-break-lines
  :straight t
  :config
  (global-page-break-lines-mode))

(use-package projectile
  :straight t
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package which-key
  :straight t
  :config
  (which-key-mode))

(use-package all-the-icons
  :straight t)

(use-package dashboard
  :straight t
  :config
  ;; Set the title
  (setq dashboard-banner-logo-title "Welcome back, S-Sempai (✿◠‿◠)")
  ;; Set the banner
  (setq dashboard-startup-banner "~/.emacs.d/icon_3.png")

  (setq dashboard-center-content t)
  ;; (setq show-week-agenda-p t)
  (setq dashboard-items '((recents . 3)))
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (dashboard-setup-startup-hook)
  )

(use-package doom-modeline
  :straight t
  :init (doom-modeline-mode 1))

(use-package yasnippet-snippets
  :straight t
  :config
  (yas-global-mode 1))

(use-package smart-comment
  :straight t
  :bind
  ("C-;" . 'smart-comment))

(use-package vterm
    :straight t)

;; Simple cpp compile macros

(defun code-compile ()
  (interactive)
  (unless (file-exists-p "Makefile")
    (set (make-local-variable 'compile-command)
     (let ((file (file-name-nondirectory buffer-file-name)))
       (format "%s -o %s %s"
           (if  (equal (file-name-extension file) "cpp") "g++" "gcc" )
           (file-name-sans-extension file)
           file)))
    (compile compile-command)))

(global-set-key [f9] 'code-compile)

(use-package emacsql-sqlite3
  :straight t)

(use-package flycheck
  :straight t
  :init (global-flycheck-mode))

(use-package flycheck-inline
  :straight t
  :config
  (with-eval-after-load 'flycheck
    (add-hook 'flycheck-mode-hook #'flycheck-inline-mode)))

(use-package neotree
  :straight t
  :config
  (global-set-key [f8] 'neotree-toggle))

(use-package alert
  :straight t)


;; Font and theme settings
;; (use-package gruvbox-theme
;;   :straight t
;;   :init
;;   (load-theme 'gruvbox-dark-soft t))

(use-package atom-one-dark-theme
  :straight t
  :init
  (load-theme 'atom-one-dark t))

(setq fontt "Iosevka 14")

(set-frame-font fontt nil t)
(add-to-list 'default-frame-alist '(font . "Iosevka 14"))
;; (set-face-attribute 'mode-line nil :font "Fira Code 10")

;; Org-mode settings and packages

(use-package org
  :straight (:type built-in))

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done nil)
(setq org-startup-truncated nil)

(setq org-directory (expand-file-name "~/musli_popera"))
(setq org-default-notes-file (concat org-directory "/musli_popera.org"))
(setq org-agenda-files '("~/musli_popera"))

(setq org-fast-tag-selection-single-key t)
(setq org-use-fast-todo-selection t)

(setq org-use-speed-commands t)
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (emacs-lisp . t)
   (org . t)
   (shell . t)
   (C . t)
   (python . t)
   (gnuplot . t)
   (octave . t)
   (R . t)
   (dot . t)
   (awk . t)
   ))

(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)

(add-to-list 'ispell-skip-region-alist '(":\\(PROPERTIES\\|LOGBOOK\\):" . ":END:"))
(add-to-list 'ispell-skip-region-alist '("#\\+BEGIN_SRC" . "#\\+END_SRC"))
(add-to-list 'ispell-skip-region-alist '("#\\+BEGIN_EXAMPLE" . "#\\+END_EXAMPLE"))

(use-package org-journal
  :straight t
  :init
  (setq org-journal-prefix-key "C-c j ")
  :config
  (setq org-journal-dir "~/musli_popera/journal/"
	org-journal-date-format "%A, %d %B %Y"))

(add-hook 'org-mode-hook #'(lambda ()

                             ;; make the lines in the buffer wrap around the edges of the screen.
                             
                             ;; to press C-c q  or fill-paragraph ever again!
                             (visual-line-mode)
                             (org-indent-mode)))

;; Update files with last modifed date, when #+lastmod: is available
(setq time-stamp-active t
      time-stamp-start "#\\+lastmod:[ \t]*"
      time-stamp-end "$"
      time-stamp-format "%04Y-%02m-%02d")
(add-hook 'before-save-hook 'time-stamp nil)

;;   (setq org-journal-file-format "%d.%m.%Y.org"))

;; (use-package org-roam
;;   :straight t
;;   :init
;;   (setq org-roam-v2-ack t)
;;   :custom
;;   (org-roam-directory (file-truename "~/work/wtd/resources"))
;;   (org-roam-db-update-method "immediate")
;;   :bind (("C-c n l" . org-roam-buffer-toggle)
;;          ("C-c n f" . org-roam-node-find)
;;          ("C-c n g" . org-roam-graph)
;;          ("C-c n i" . org-roam-node-insert)
;;          ("C-c n c" . org-roam-capture)
;;          ;; Dailies
;;          ("C-c n j" . org-roam-dailies-capture-today)
;; 	 ("C-c d t" . org-roam-dailies-find-today)
;; 	 ("C-c d d" . org-roam-dailies-find-date)
;; 	 :map org-mode-map
;; 	 ("C-M-i" . completion-at-point))
;;   :config
;;   (setq org-roam-dailies-directory "~/work/wtd/notes")
;;   (setq org-roam-dailies-capture-templates
;;         '(("j" "journal" entry  "* %<%H:%M> %?"
;; 	  :if-new (file+head "%(concat org-roam-dailies-directory \"/%<%Y-%m-%d>.org\")"
;; 			     "#+title: %<%Y-%m-%d (%A)>\n#+startup: showall\n")
;;           :head "#+title: %<%Y-%m-%d (%A)>\n#+startup: showall\n"
;; 	  :unarrowed t)))
;;   (setq org-roam-db-location "~/work/wtd/resources/roam.db")
;;   (setq org-roam-completion-everywhere t)
;;   (org-roam-db-autosync-mode)
;;   ;; If using org-roam-protocol
;;   (require 'org-roam-protocol))

;; Python setup

(use-package elpy
  :straight t
  :init
  (elpy-enable)
  :config
  (setq elpy-rpc-python-command "python3")
  )
;;; On Windows, commands run by flycheck may have CRs (\r\n line endings).
;;; Strip them out before parsing.
(defun flycheck-parse-output (output checker buffer)
  "Parse OUTPUT from CHECKER in BUFFER.

OUTPUT is a string with the output from the checker symbol
CHECKER.  BUFFER is the buffer which was checked.

Return the errors parsed with the error patterns of CHECKER."
  (let ((sanitized-output (replace-regexp-in-string "\r" "" output))
        )
    (funcall (flycheck-checker-get checker 'error-parser) sanitized-output checker buffer)))


;; JS setup

(use-package tide :straight t)
(use-package company :straight t
  :config
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (tide-hl-identifier-mode +1)
  )

(use-package flycheck :straight t
  :config
  ;; (setq flycheck-check-syntax-automatically "idle-change")
  (setq flycheck-idle-change-delay 1))
(use-package eglot :straight t
  :config
  (add-to-list 'eglot-server-programs '(javascript-mode . ("typescript-language-server")))
  (add-hook 'javascript-mode-hook 'eglot-ensure))

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; Prettier
(use-package prettier-js
  :straight t)

;; formats the buffer before saving
;; (add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'javascript-mode-hook #'setup-tide-mode)
(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'typescript-mode-hook 'prettier-js-mode)

;; Rust

(use-package rust-mode
  :straight t
  :config
  (add-hook 'rust-mode-hook
            (lambda () (setq indent-tabs-mode nil))))

(use-package racer
  :straight t
  :config
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'racer-mode-hook #'company-mode))

(use-package flycheck-rust
  :straight t
  :config
  (with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))


;; Other languages
(use-package yaml-mode
  :straight t
  :mode ("\\.yml\\'"))


;; emacs customize shit
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0c860c4fe9df8cff6484c54d2ae263f19d935e4ff57019999edbda9c7eda50b8" "c801780eac636e6008e6d2c7f871f06eb0a1eceafdb9e8f0334a636532ea78ea" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "8f63230d8e7644d3c2eb29b006a8c241ed854b002430ee36f084d157dd071af7" "b66c341e0d56d7dd165007bb5827efdaed5756d62fb15932aab6b4224e0bb547" default))
 '(fci-rule-color "#3E4451")
 '(safe-local-variable-values
   '((elisp-lint-indent-specs
      (describe . 1)
      (it . 1)
      (org-element-map . defun)
      (org-roam-with-temp-buffer . 1)
      (org-with-point-at . 1)
      (magit-insert-section . defun)
      (magit-section-case . 0)
      (->> . 1)
      (org-roam-with-file . 2))
     (elisp-lint-ignored-validators "byte-compile" "package-lint")))
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq gc-cons-threshold (* 2 1000 1000))
