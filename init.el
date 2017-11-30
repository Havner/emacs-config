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
    (highlight-thing helm avy pdf-tools counsel-gtags counsel swiper ivy yasnippet-snippets project-explorer god-mode undo-tree switch-window helm-swoop zoom dashboard sane-term paradox helm-bm delight csv-mode flycheck-pycheckers minesweeper beginend fireplace multiple-cursors helm-flyspell helm-flycheck helm-gtags helm-projectile imenu-anywhere solarized-theme helm-company lorem-ipsum crm-custom powerline htmlize ox-twbs flycheck smex paredit-menu rainbow-delimiters paredit diff-hl helm-describe-modes helm-descbinds flx-ido ido-completing-read+ nlinum-hl ido-vertical-mode org-bullets color-theme-sanityinc-solarized company company-jedi windresize sokoban smart-tabs-mode rpm-spec-mode page-break-lines redo+ point-undo nlinum magit lua-mode ggtags company-c-headers buffer-move bm 2048-game))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "~/.emacs.d/config.org")
;; (load-file "~/.emacs.d/config.el")
