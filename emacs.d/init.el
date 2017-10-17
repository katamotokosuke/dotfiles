;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'linum)
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)


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


;;()や "" の後ろを自動挿入
(electric-pair-mode 1)

;;neotree
(global-set-key (kbd "C-x C-t") 'neotree-toggle)

;;補完
(global-company-mode)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-search-map (kbd "C-n") 'company-select-next)
(define-key company-search-map (kbd "C-p") 'company-select-previous)
