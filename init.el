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
    (roguel-ike elfeed-org volume engine-mode evil eyebrowse spaceline highlight-thing helm avy pdf-tools god-mode undo-tree switch-window dashboard sane-term paradox helm-bm delight csv-mode flycheck-pycheckers minesweeper beginend fireplace helm-flyspell helm-flycheck helm-gtags helm-projectile helm-company lorem-ipsum powerline htmlize ox-twbs flycheck paredit-menu rainbow-delimiters paredit diff-hl helm-describe-modes helm-descbinds nlinum-hl org-bullets company company-jedi windresize sokoban smart-tabs-mode rpm-spec-mode page-break-lines redo+ point-undo nlinum magit lua-mode ggtags company-c-headers buffer-move bm 2048-game))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "~/.emacs.d/config.org")
;; (load-file "~/.emacs.d/config.el")
