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
   '(spacemacs-theme god-leader all-the-icons dashboard writeroom-mode god-mode parinfer-rust-mode multi-vterm vterm unfill mwim which-key rpm-spec-mode vundo yasnippet company-auctex helm-company flyspell-correct-helm ob-rust rust-mode json-mode yaml-mode ccls doom-themes doom-modeline markdown-mode rainbow-delimiters window-jump shackle anzu switch-window lsp-ui helm-xref symbol-overlay ag imenu-anywhere vdiff ztree ssh-config-mode helm-ag projectile org-tree-slide cmake-mode helm avy paradox delight csv-mode beginend helm-flycheck helm-projectile lorem-ipsum ox-twbs flycheck helm-describe-modes helm-descbinds org-bullets company windresize sokoban smart-tabs-mode page-break-lines magit lua-mode))
 '(safe-local-variable-values
   '((projectile-project-compilation-cmd . "cmake --build build")
     (delete-trailing-whitespace-on-save)
     (projectile-project-compilation-dir . ".")
     (projectile-project-compilation-cmd . "make -j2")
     (projectile-project-compilation-cmd . "make -C build")
     (projectile-project-compilation-cmd . "./local.sh")
     (projectile-project-compilation-cmd . "./build.sh")
     (havner/delete-trailing-whitespace)))
 '(warning-suppress-types '((comp) (comp))))

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
