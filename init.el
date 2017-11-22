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
   '(ob-rust string-inflection rust-mode ox-mediawiki json-mode company-auctex diffview writeroom-mode yaml-mode tabbar ccls doom-themes doom-modeline markdown-mode rainbow-delimiters parinfer window-jump shackle helm-c-yasnippet flyspell-correct-popup flyspell-correct-helm anzu switch-window lsp-ui helm-xref symbol-overlay ripgrep ag helm-rg imenu-anywhere zone-nyan irony-eldoc vdiff calfw calfw-org ztree ssh-config-mode tramp-term spotify memory-usage helm-ag projectile malyon org-tree-slide expand-region cmake-mode company-irony-c-headers flycheck-irony company-irony elfeed-org volume engine-mode helm avy pdf-tools undo-tree sane-term paradox helm-bm delight csv-mode minesweeper beginend helm-flycheck helm-projectile helm-company lorem-ipsum htmlize ox-twbs flycheck helm-describe-modes helm-descbinds org-bullets company company-jedi windresize sokoban smart-tabs-mode rpm-spec-mode page-break-lines magit lua-mode bm))
 '(safe-local-variable-values
   '((projectile-project-compilation-cmd . "cmake --build build")
     (delete-trailing-whitespace-on-save)
     (smart-tabs-mode . t)
     (projectile-project-compilation-dir . ".")
     (projectile-project-compilation-cmd . "make -j2")
     (projectile-project-compilation-cmd . "make -C build")
     (projectile-project-compilation-cmd . "./local.sh")
     (projectile-project-compilation-cmd . "./build.sh")
     (smart-tabs-mode)
     (whitespace-line-column . 100)
     (org-beamer-frame-level . 2)
     (havner/delete-trailing-whitespace)))
 '(warning-suppress-types '((emacs) (comp))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-buffer-minor-mode ((t (:inherit (mode-line-emphasis bold)))))
 '(helm-buffer-directory ((t (:inherit font-lock-string-face))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "#2a2e38" :foreground "#bbc2cf" :box (:line-width 1 :color "grey25" :style pressed-button) :weight bold))))
 '(tabbar-selected-modified ((t (:inherit tabbar-selected :foreground "#7bc275" :box (:line-width 1 :color "grey25" :style pressed-button)))))
 '(tabbar-unselected ((t (:inherit tabbar-default :foreground "#62686E" :box (:line-width 1 :color "grey25" :style released-button))))))

(let ((secret-file "~/.emacs.d/secret.el"))
  (if (file-readable-p secret-file)
      (load-file secret-file)))

(org-babel-load-file "~/.emacs.d/config.org")
;; (load-file "~/.emacs.d/config.el")
