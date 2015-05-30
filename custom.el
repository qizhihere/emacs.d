(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-executable "/home/qizhi/.emacs.d/utils/bin/ag" t)
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(auto-revert-interval 1)
 '(battery-mode-line-format "🔌 %p")
 '(battery-update-interval 10)
 '(company-backends
   (quote
    (php-extras-company company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-cmake company-capf
			(company-dabbrev-code company-gtags company-etags company-keywords)
			company-oddmuse company-files company-dabbrev)))
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 2)
 '(company-show-numbers t)
 '(custom-safe-themes
   (quote
    ("6a9606327ecca6e772fba6ef46137d129e6d1888dcfc65d0b9b27a7a00a4af20" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(display-battery-mode t)
 '(fci-rule-color "#383838")
 '(flymake-fringe-indicator-position (quote right-fringe))
 '(global-company-mode t)
 '(helm-M-x-always-save-history t)
 '(helm-ag-base-command
   (concat
    (lqz/init-dir "utils/bin/ag")
    " --nocolor --nogroup --ignore-case"))
 '(helm-ag-command-option "--all-text")
 '(helm-ag-insert-at-point (quote symbol))
 '(helm-dash-docsets-path "~/.emacs.d/docs" t)
 '(highlight-symbol-idle-delay 0.5)
 '(highlight-symbol-on-navigation-p t)
 '(highlight-symbol-print-occurrence-count (quote explicit))
 '(package-selected-packages
   (quote
    (info+ zenburn-theme youdao-dictionary yasnippet window-numbering wgrep-ag web-mode vimrc-mode sudo-edit smart-mode-line simpleclip rainbow-mode pos-tip php-extras nginx-mode multiple-cursors linum-relative key-chord indent-guide iedit highlight-symbol highlight-sexp highlight-parentheses highlight-chars helm-projectile helm-mode-manager helm-flyspell helm-flymake helm-flycheck helm-emmet helm-descbinds helm-bm helm-anything helm-ag guide-key google-translate flycheck-tip fish-mode fiplr evil-surround evil-snipe evil-nerd-commenter evil-matchit evil-leader evil-exchange evil-args evil-anzu drag-stuff dired-rainbow dired-filter dired-efap dired-details+ dired+ autopair)))
 '(php-manual-path "~/.emacs.d/manuals/php-chunked-xhtml/")
 '(php-manual-url "http://www.php.net/manual/zh/")
 '(projectile-known-projects-file "~/.emacs.d/tmp/projectile-bookmarks.eld")
 '(pyim-dicts
   (quote
    ((:name "fcitx-sogou" :file "/home/qizhi/.emacs.d/dicts/pyim/fcitx-sogou.txt" :coding utf-8-unix)
     (:name "网络流行新词" :file "/home/qizhi/.emacs.d/dicts/pyim/网络流行新词.txt" :coding utf-8-unix)
     (:name "bigdict" :file "/home/qizhi/.emacs.d/dicts/pyim/pyim-bigdict.txt" :coding utf-8-unix)
     (:name "诗词名句大全" :file "/home/qizhi/.emacs.d/dicts/pyim/诗词名句大全.txt" :coding utf-8-unix)
     (:name "古诗成语俗语大全" :file "/home/qizhi/.emacs.d/dicts/pyim/古诗成语俗语大全.txt" :coding utf-8-unix))))
 '(pyim-dicts-directory "~/.emacs.d/dicts/pyim/")
 '(pyim-directory "~/.emacs.d/configs/pyim/")
 '(pyim-personal-file "~/.emacs.d/dicts/pyim/pyim-personal.txt")
 '(safe-local-variable-values
   (quote
    ((no-byte-compile t)
     (eval when
	   (require
	    (quote rainbow-mode)
	    nil t)
	   (rainbow-mode 1)))))
 '(session-save-file "~/.emacs.d/session/emacs.session")
 '(sml/battery-format " %p%%")
 '(sml/mode-width (quote 20))
 '(sml/prefix-face-list
   (quote
    (("\\[.*]" sml/projectile)
     (":SU:" sml/sudo)
     (":G" sml/git)
     ("" sml/prefix))))
 '(sml/prefix-regexp (quote ("\\[.*]" ":\\(.*:\\)" "~/")))
 '(sml/projectile-replacement-format "[%s]")
 '(sml/size-indication-format " %I ")
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(window-numbering-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((t (:background "color-88" :foreground "yellow" :underline (:color foreground-color :style wave) :weight bold))))
 '(hc-trailing-whitespace ((t (:background "HotPink"))))
 '(window-numbering-face ((t nil)) t))
