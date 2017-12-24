;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ivy-xref yasnippet lsp-ui helm-xref company-lsp cquery symbol-overlay ripgrep ag helm-rg ivy-rich imenu-anywhere flyspell-correct-ivy ivy-rtags counsel-projectile counsel swiper zone-nyan irony-eldoc vdiff calfw-org calfw ztree ssh-config-mode tramp-term company-rtags spotify memory-usage helm-proc company-quickhelp helm-ag flycheck-rtags projectile malyon geiser slime-company org-tree-slide expand-region cmake-mode company-irony-c-headers flycheck-irony company-irony irony helm-rtags rtags elfeed-org volume engine-mode eyebrowse spaceline helm avy pdf-tools undo-tree switch-window sane-term paradox helm-bm delight csv-mode flycheck-pycheckers minesweeper beginend helm-flyspell helm-flycheck helm-projectile helm-company lorem-ipsum htmlize ox-twbs flycheck paredit-menu rainbow-delimiters paredit diff-hl helm-describe-modes helm-descbinds org-bullets company company-jedi windresize sokoban smart-tabs-mode rpm-spec-mode page-break-lines magit lua-mode bm 2048-game))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "~/.emacs.d/config.org")
;; (load-file "~/.emacs.d/config.el")
