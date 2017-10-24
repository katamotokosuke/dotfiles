
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)
(require 'linum)
(require 'helm-config)
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)
(add-hook 'after-init-hook #' global-flycheck-mode)
(helm-mode 1)

;;tab
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))



;;行番号表示
(global-linum-mode)
;;バックアップファイル作成しない
(setq make-backup-file nil)
;;start up 画面を出さない
(setq inhibit-startup-screen t)
;;メニューバーを消す
(tool-bar-mode 0)
(menu-bar-mode 0)

;;対応するカッコを光らせる
(show-paren-mode t)

;;スクロールは1行
(setq scroll-conservatively 1)

;;ハイライト
(global-auto-highlight-symbol-mode t)

;;()や "" の後ろを自動挿入
(electric-pair-mode 1)

;;key binding
(global-set-key (kbd "C-x C-t") 'neotree-toggle)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "C-t") 'other-window-or-split)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-M-x-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key global-map (kbd "C-x C-b") 'helm-for-files)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)


;;補完
(global-company-mode)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-search-map (kbd "C-n") 'company-select-next)
(define-key company-search-map (kbd "C-p") 'company-select-previous)

;;projectil-rails
(projectile-rails-global-mode)


