;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ag anzu avy beginend cmake-mode company company-auctex consult consult-company
        consult-flycheck consult-lsp consult-projectile csv-mode dashboard
        diredfl doom-modeline doom-themes embark-consult emojify flycheck
        go-mode god-mode helpful htmlize json-mode json-reformat kotlin-mode
        leader-key lorem-ipsum lsp-ui lua-mode magit marginalia markdown-mode
        minimap multi-vterm mwim neotree ob-rust orderless org-bullets
        org-tree-slide ox-twbs package-lint page-break-lines paradox
        parinfer-rust-mode projectile qml-mode rainbow-delimiters rg
        rpm-spec-mode rust-mode shackle smart-tabs-mode sokoban soong-mode
        spacemacs-theme ssh-config-mode swift-mode switch-window symbol-overlay
        typescript-mode unfill vdiff vertico vterm vundo wgrep which-key
        window-jump windresize writeroom-mode yaml-mode yasnippet ztree))
 '(safe-local-variable-values
   '((tab-bar-mode)
     (eval and buffer-file-name (not (eq major-mode 'package-recipe-mode))
           (or (require 'package-recipe-mode nil t)
               (let ((load-path (cons "../package-build" load-path)))
                 (require 'package-recipe-mode nil t)))
           (package-recipe-mode))
     (projectile-project-compilation-dir . ".")
     (projectile-project-compilation-cmd . "cmake --build build")
     (projectile-project-compilation-cmd . "make -j2")
     (projectile-project-compilation-cmd . "make -C build")
     (projectile-project-compilation-cmd . "./local.sh")
     (projectile-project-compilation-cmd . "./build.sh"))))

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(let ((packages-refreshed nil))
  (dolist (p package-selected-packages)
    (unless (package-installed-p p)
      (message "Installing: %s" p)
      (unless packages-refreshed
        (package-refresh-contents)
        (setq packages-refreshed t))
      (package-install p)))
  (when packages-refreshed
    (package-autoremove)))

(let ((secret-file "~/.emacs.d/secret.el"))
  (when (file-readable-p secret-file)
    (load-file secret-file)))

;; (org-babel-load-file "~/.emacs.d/config.org")
(let ((config-org "~/.emacs.d/config.org")
      (config-lisp "~/.emacs.d/config.el"))
  (when (file-newer-than-file-p config-org config-lisp)
    (require 'ob-tangle)
    (org-babel-tangle-file config-org config-lisp)
    (byte-compile-file config-lisp))
  (load-file config-lisp))
