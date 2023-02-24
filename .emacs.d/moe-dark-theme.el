(deftheme moe-dark
  "Created 2021-08-12.")

(custom-theme-set-variables
 'moe-dark
 '(ansi-color-names-vector ["#303030" "#ff4b4b" "#d7ff5f" "#fce94f" "#5fafd7" "#d18aff" "#afd7ff" "#c6c6c6"]))

(custom-theme-set-faces
 'moe-dark
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:background nil :foreground "#d18aff"))))
 '(font-lock-comment-delimiter-face ((((class color) (min-colors 89)) (:background nil :foreground "#6c6c6c" :slant italic))))
 '(font-lock-comment-face ((((class color) (min-colors 89)) (:background nil :foreground "#6c6c6c" :slant italic))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:background nil :foreground "#5fafd7"))))
 '(font-lock-doc-face ((((class color) (min-colors 89)) (:background nil :foreground "#ff4b4b"))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:background nil :foreground "#ffd700"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:background nil :foreground "#a1db00"))))
 '(font-lock-negation-char-face ((((class color) (min-colors 89)) (:background nil :foreground "#ff4b4b"))))
 '(font-lock-preprocessor-face ((((class color) (min-colors 89)) (:background nil :foreground "#d18aff"))))
 '(font-lock-regexp-grouping-backslash ((((class color) (min-colors 89)) (:background nil :foreground "#fce94f"))))
 '(font-lock-regexp-grouping-construct ((((class color) (min-colors 89)) (:background nil :foreground "#d18aff"))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:background nil :foreground "#ff4ea3"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:background nil :foreground "#00d7af"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:background nil :foreground "#ff8700"))))
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:background nil :foreground "#dd0000" :weight bold))))
 '(cursor ((((class color) (min-colors 89)) (:background "#eeeeee"))))
 '(fringe ((((class color) (min-colors 89)) (:foreground "#a8a8a8" :background "#4e4e4e"))))
 '(linum ((((class color) (min-colors 89)) (:foreground "#b2b2b2" :background "#4e4e4e"))))
 '(line-number ((((class color) (min-colors 89)) (:foreground "#b2b2b2" :background "#4e4e4e"))))
 '(line-number-current-line ((((class color) (min-colors 89)) (:background "#d7ff5f" :foreground "#3a3a3a"))))
 '(highlight ((((class color) (min-colors 89)) (:background "#4e4e4e"))))
 '(hl-line ((((class color) (min-colors 89)) (:background "#3a3a3a"))))
 '(region ((((class color) (min-colors 89)) (:foreground "#4e4e4e" :background "#d7ff5f"))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "#005f87" :foreground "#eeeeee"))))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#c6c6c6" :background "#ff5d17"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:background "#ff1f8b" :foreground "#c6c6c6"))))
 '(trailing-whitespace ((((class color) (min-colors 89)) (:background "#a40000"))))
 '(show-paren-match ((((class color) (min-colors 89)) (:background "#005f87" :foreground nil))))
 '(header-line ((((class color) (min-colors 89)) (:background "#005f87" :foreground "#eeeeee"))))
 '(help-argument-name ((((class color) (min-colors 89)) (:foreground "#ff7bbb" :italic t))))
 '(eldoc-highlight-function-argument ((((class color) (min-colors 89)) (:foreground "#d7ff00" :bold t :underline t :background "#005f00"))))
 '(mode-line ((t (:background "#afd7ff" :foreground "steel blue" :box nil))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:box nil :background "#6c6c6c" :foreground "#c6c6c6"))))
 '(mode-line-buffer-id ((((class color) (min-colors 89)) (:box nil :foreground "#303030" :background nil :bold t))))
 '(vertical-border ((((class color) (min-colors 89)) (:foreground "#4e4e4e" :background "#4e4e4e"))))
 '(minibuffer-prompt ((((class color) (min-colors 89)) (:foreground "#4e4e4e" :background "#a1db00"))))
 '(escape-glyph ((((class color) (min-colors 89)) (:foreground "#c4a000"))))
 '(error ((((class color) (min-colors 89)) (:foreground "#ff4b4b"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#ffaf5f"))))
 '(success ((((class color) (min-colors 89)) (:foreground "#afff00"))))
 '(completions-annotations ((((class color) (min-colors 89)) (:foreground "#a1db00"))))
 '(completions-common-part ((((class color) (min-colors 89)) (:foreground "#6c6c6c"))))
 '(completions-first-difference ((((class color) (min-colors 89)) (:weight bold :foreground "#ff8700"))))
 '(org-document-title ((((class color) (min-colors 89)) (:foreground "#afd7ff" :background "#303030" :weight bold))))
 '(org-document-info ((((class color) (min-colors 89)) (:foreground "#5fafd7" :background "#303030" :weight bold))))
 '(org-document-info-keyword ((((class color) (min-colors 89)) (:foreground "#ffaf5f" :background "#6c6c6c"))))
 '(org-archived ((((class color) (min-colors 89)) (:slant italic))))
 '(org-checkbox ((((class color) (min-colors 89)) (:background "#c6c6c6" :foreground "#4e4e4e" :box (:line-width 1 :style released-button)))))
 '(org-date ((((class color) (min-colors 89)) (:foreground "#afd7ff" :underline t))))
 '(org-done ((((class color) (min-colors 89)) (:bold t :weight bold :foreground "#008700" :background "#d7ff5f" :box (:line-width 1 :style none)))))
 '(org-todo ((((class color) (min-colors 89)) (:bold t :weight bold :foreground "#a40000" :background "#ffaf87" :box (:line-width 1 :style none)))))
 '(org-level-1 ((((class color) (min-colors 89)) (:foreground "#5fafd7"))))
 '(org-level-2 ((((class color) (min-colors 89)) (:foreground "#a1db00"))))
 '(org-level-3 ((((class color) (min-colors 89)) (:foreground "#ff8700"))))
 '(org-level-4 ((((class color) (min-colors 89)) (:foreground "#00d7af"))))
 '(org-level-5 ((((class color) (min-colors 89)) (:foreground "#ef2929"))))
 '(org-level-6 ((((class color) (min-colors 89)) (:foreground "#af5fff"))))
 '(org-level-7 ((((class color) (min-colors 89)) (:foreground "#ff4ea3"))))
 '(org-level-8 ((((class color) (min-colors 89)) (:foreground "#ffd700"))))
 '(org-tag ((((class color) (min-colors 89)) (:background "#4e4e4e" :foreground "#c6c6c6" :bold t :weight bold))))
 '(org-column ((((class color) (min-colors 89)) (:background "#3a3a3a" :foreground "#4e4e4e"))))
 '(org-column-title ((((class color) (min-colors 89)) (:background "#afd7ff" :foreground "#303030" :underline t :weight bold))))
 '(org-agenda-structure ((((class color) (min-colors 89)) (:foreground "#00ac8a" :background nil :bold t))))
 '(org-scheduled ((((class color) (min-colors 89)) (:foreground "#b2b2b2"))))
 '(org-scheduled-previously ((((class color) (min-colors 89)) (:foreground "#ef2929"))))
 '(org-scheduled-today ((((class color) (min-colors 89)) (:foreground "#5fafd7"))))
 '(org-special-keyword ((((class color) (min-colors 89)) (:background "#4e4e4e" :foreground "#c6c6c6"))))
 '(org-table ((((class color) (min-colors 89)) (:background "#4e4e4e" :foreground "#c6c6c6"))))
 '(org-time-grid ((((class color) (min-colors 89)) (:foreground "#8a8a8a"))))
 '(org-upcoming-deadline ((((class color) (min-colors 89)) (:foreground "#ef2929"))))
 '(org-warning ((((class color) (min-colors 89)) (:bold t :foreground "#eeeeee" :background "#a40000"))))
 '(org-formula ((((class color) (min-colors 89)) (:foreground "#af5fff"))))
 '(org-headline-done ((((class color) (min-colors 89)) (:foreground "#a1db00"))))
 '(org-hide ((((class color) (min-colors 89)) (:foreground "#303030"))))
 '(org-code ((((class color) (min-colors 89)) (:foreground "#5fafd7" :background "#3a3a3a"))))
 '(org-link ((((class color) (min-colors 89)) (:foreground "#5fafd7" :underline t))))
 '(org-footnote ((((class color) (min-colors 89)) (:foreground "#ff1f8b"))))
 '(org-ellipsis ((((class color) (min-colors 89)) (:foreground "#dd0000"))))
 '(org-agenda-clocking ((((class color) (min-colors 89)) (:foreground "#005f87" :background "#afd7ff" :bold t))))
 '(org-agenda-date ((((class color) (min-colors 89)) (:foreground "#5fafd7" :background "#303030" :underline nil))))
 '(org-agenda-date-weekend ((((class color) (min-colors 89)) (:foreground "#d18aff" :underline nil :bold nil))))
 '(org-agenda-date-today ((((class color) (min-colors 89)) (:foreground "#afd7ff" :background "#6c6c6c" :slant italic :weight bold))))
 '(org-agenda-column-dateline ((((class color) (min-colors 89)) (:foreground "#eeeeee" :background "#4e4e4e" :underline t))))
 '(org-agenda-done ((((class color) (min-colors 89)) (:foreground "#a1db00" :background nil))))
 '(org-agenda-dimmed-todo-face ((((class color) (min-colors 89)) (:foreground "#eeeeee" :background "#dd0000"))))
 '(org-priority ((((class color) (min-colors 89)) (:foreground "#ef2929" :background nil))))
 '(org-block ((((class color) (min-colors 89)) (:foreground "#5fafd7" :background "#3a3a3a"))))
 '(org-block-begin-line ((((class color) (min-colors 89)) (:foreground "#eeeeee" :background "#005f87"))))
 '(org-block-end-line ((((class color) (min-colors 89)) (:foreground "#4e4e4e" :background "#3a3a3a"))))
 '(org-quote ((((class color) (min-colors 89)) (:foreground "#5fafd7" :background "#4e4e4e"))))
 '(org-mode-line-clock ((((class color) (min-colors 89)) (:foreground "#005f87" :background "#afd7ff" :bold t))))
 '(org-mode-line-clock-overrun ((((class color) (min-colors 89)) (:foreground "#eeeeee" :background "#ef2929" :bold t))))
 '(org-verbatim ((((class color) (min-colors 89)) (:foreground "#5fafd7" :background "#4e4e4e" :bold nil))))
 '(outline-1 ((((class color) (min-colors 89)) (:foreground "#5fafd7"))))
 '(outline-2 ((((class color) (min-colors 89)) (:foreground "#a1db00"))))
 '(outline-3 ((((class color) (min-colors 89)) (:foreground "#ff8700"))))
 '(outline-4 ((((class color) (min-colors 89)) (:foreground "#00d7af"))))
 '(outline-5 ((((class color) (min-colors 89)) (:foreground "#ef2929"))))
 '(outline-6 ((((class color) (min-colors 89)) (:foreground "#af5fff"))))
 '(outline-7 ((((class color) (min-colors 89)) (:foreground "#ff4ea3"))))
 '(outline-8 ((((class color) (min-colors 89)) (:foreground "#ffd700"))))
 '(company-echo ((((class color) (min-colors 89)) (:background nil :foreground "#c6c6c6"))))
 '(company-echo-common ((((class color) (min-colors 89)) (:background "#4e4e4e" :foreground "#ef2929"))))
 '(company-preview ((((class color) (min-colors 89)) (:background "#303030" :foreground "#ff4ea3"))))
 '(company-preview-common ((((class color) (min-colors 89)) (:background "#303030" :foreground "#ff4ea3"))))
 '(company-preview-search ((((class color) (min-colors 89)) (:background "#3a3a3a" :foreground "#ff4ea3" :bold t))))
 '(company-scrollbar-bg ((((class color) (min-colors 89)) (:background "#4e4e4e"))))
 '(company-scrollbar-fg ((((class color) (min-colors 89)) (:background "#b2b2b2"))))
 '(company-template-field ((((class color) (min-colors 89)) (:background "#ffffaf" :foreground "#3a3a3a"))))
 '(company-tooltip ((((class color) (min-colors 89)) (:background "#4e4e4e" :foreground "#5fafd7"))))
 '(company-tooltip-annotation ((((class color) (min-colors 89)) (:background "#3a3a3a" :foreground "#ef2929"))))
 '(company-tooltip-common ((((class color) (min-colors 89)) (:background "#6c6c6c" :foreground "#afd7ff"))))
 '(company-tooltip-common-selection ((((class color) (min-colors 89)) (:background "#005f87" :foreground "#afd7ff" :bold t))))
 '(company-tooltip-mouse ((((class color) (min-colors 89)) (:background "#d7ff5f" :foreground "#303030"))))
 '(company-tooltip-selection ((((class color) (min-colors 89)) (:background "#005f87" :foreground "#afd7ff"))))
 '(link ((((class color) (min-colors 89)) (:underline t :foreground "#5fafd7"))))
 '(link-visited ((((class color) (min-colors 89)) (:underline t :foreground "#1f5bff"))))
 '(helm-buffer-directory ((((class color) (min-colors 89)) (:foreground "#5fafd7" :bold t))))
 '(helm-buffer-process ((((class color) (min-colors 89)) (:foreground "#ff4ea3"))))
 '(helm-buffer-saved-out ((((class color) (min-colors 89)) (:foreground "#dd0000" :background "#303030"))))
 '(helm-buffer-size ((((class color) (min-colors 89)) (:foreground "#ff8700"))))
 '(helm-candidate-number ((((class color) (min-colors 89)) (:foreground "#005f87" :background "#eeeeee"))))
 '(helm-ff-directory ((((class color) (min-colors 89)) (:foreground "#5fafd7" :background "#303030" :bold t))))
 '(helm-ff-file ((((class color) (min-colors 89)) (:foreground "#c6c6c6" :background "#303030"))))
 '(helm-ff-invalid-symlink ((((class color) (min-colors 89)) (:foreground "#c6c6c6" :background "#dd0000"))))
 '(helm-ff-prefix ((((class color) (min-colors 89)) (:foreground "#c6c6c6" :background "#ff8700"))))
 '(helm-grep-cmd-line ((((class color) (min-colors 89)) (:foreground "#008700" :background "#d7ff87" :bold t))))
 '(helm-grep-file ((((class color) (min-colors 89)) (:foreground "#d18aff"))))
 '(helm-grep-finish ((((class color) (min-colors 89)) (:foreground "#a1db00"))))
 '(helm-grep-lineno ((((class color) (min-colors 89)) (:foreground "#ff8700"))))
 '(helm-grep-match ((((class color) (min-colors 89)) (:background "#3a3a3a" :foreground "#fce94f" :bold t))))
 '(helm-header ((((class color) (min-colors 89)) (:foreground "#005f87" :background "#afd7ff"))))
 '(helm-lisp-show-completion ((((class color) (min-colors 89)) (:foreground "#4e4e4e" :background "#d7ff5f"))))
 '(helm-match ((((class color) (min-colors 89)) (:foreground "#a1db00" :background "#303030" :bold t))))
 '(helm-selection ((((class color) (min-colors 89)) (:foreground nil :background "#005f87"))))
 '(helm-selection-line ((((class color) (min-colors 89)) (:foreground nil :background "#875f00"))))
 '(helm-source-header ((((class color) (min-colors 89)) (:foreground "#eeeeee" :background "#6c6c6c" :bold t))))
 '(helm-visible-mark ((((class color) (min-colors 89)) (:foreground "#ff4ea3" :background "#ffafd7"))))
 '(comint-highlight-prompt ((((class color) (min-colors 89)) (:foreground "#eeeeee" :background "#6c6c6c" :bold t))))
 '(widget-button ((((class color) (min-colors 89)) (:foreground "#5fafd7" :underline t :bold t))))
 '(widget-button-pressed ((((class color) (min-colors 89)) (:foreground "#afd7ff"))))
 '(widget-documentation ((((class color) (min-colors 89)) (:foreground "#afff00"))))
 '(widget-field ((((class color) (min-colors 89)) (:foreground "#d7ff5f" :background "#4e4e4e"))))
 '(widget-inactive ((((class color) (min-colors 89)) (:foreground "#8a8a8a"))))
 '(widget-single-line-field ((((class color) (min-colors 89)) (:foreground "#d7ff5f" :background "#4e4e4e"))))
 '(compilation-column-number ((((class color) (min-colors 89)) (:foreground "#a1db00"))))
 '(compilation-error ((((class color) (min-colors 89)) (:foreground "#a40000" :background "#ff4b4b" :bold t))))
 '(compilation-info ((((class color) (min-colors 89)) (:foreground "#ff8700" :background "#4e4e4e"))))
 '(compilation-line-number ((((class color) (min-colors 89)) (:foreground "#5fafd7"))))
 '(compilation-mode-line-exit ((((class color) (min-colors 89)) (:foreground "#008700" :background "#d7ff5f" :bold t))))
 '(compilation-mode-line-fail ((((class color) (min-colors 89)) (:foreground "#a40000" :background "#ffafaf" :bold t))))
 '(compilation-mode-line-run ((((class color) (min-colors 89)) (:foreground "#d75f00" :background "#ffd787" :bold t))))
 '(compilation-warning ((((class color) (min-colors 89)) (:foreground "#ff5d17"))))
 '(info-header-node ((((class color) (min-colors 89)) (:foreground "#ff4ea3" :bold t))))
 '(info-header-xref ((((class color) (min-colors 89)) (:foreground "#5fafd7" :background nil :bold t))))
 '(info-index-match ((((class color) (min-colors 89)) (:background "#005f87"))))
 '(info-menu-header ((((class color) (min-colors 89)) (:foreground "#eeeeee" :bold t :underline t))))
 '(info-menu-star ((((class color) (min-colors 89)) (:foreground "#ef2929"))))
 '(info-node ((((class color) (min-colors 89)) (:foreground "#a40000"))))
 '(info-title-1 ((((class color) (min-colors 89)) (:foreground "#5fafd7" :bold t))))
 '(info-title-2 ((((class color) (min-colors 89)) (:foreground "#a1db00" :bold t))))
 '(info-title-3 ((((class color) (min-colors 89)) (:foreground "#ff8700" :bold t))))
 '(info-title-4 ((((class color) (min-colors 89)) (:foreground "#ff4ea3" :bold t))))
 '(info-xref ((((class color) (min-colors 89)) (:foreground "#5fafd7" :underline t))))
 '(info-xref-visited ((((class color) (min-colors 89)) (:foreground "#d18aff" :underline t))))
 '(menu ((((class color) (min-colors 89)) (:foreground "#a8a8a8" :background "#4e4e4e"))))
 '(tty-menu-disabled-face ((((class color) (min-colors 89)) (:foreground "#6c6c6c" :background "#4e4e4e"))))
 '(tty-menu-enabled-face ((((class color) (min-colors 89)) (:foreground "#eeeeee" :background "#4e4e4e" :bold t))))
 '(tty-menu-selected-face ((((class color) (min-colors 89)) (:background "#005f87"))))
 '(custom-button ((((class color) (min-colors 89)) (:background "#afd7ff" :foreground "#005f87" :box (:line-width 1 :style released-button)))))
 '(custom-button-mouse ((((class color) (min-colors 89)) (:background "#d7d7ff" :foreground "#4e4e4e" :box (:line-width 1 :style released-button)))))
 '(custom-button-pressed ((((class color) (min-colors 89)) (:foreground "#4e4e4e" :background "#c6c6c6" :box (:line-width 1 :style pressed-button)))))
 '(default ((((class color) (min-colors 4096)) (:foreground "#c6c6c6" :background "#303030")) (((class color) (min-colors 256)) (:foreground "#c6c6c6" :background "#303030")) (((class color) (min-colors 89)) (:foreground "#c6c6c6" :background "#303030")))))

(provide-theme 'moe-dark)