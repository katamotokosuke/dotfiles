;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'linum)

;;行番号表示
(global-linum-mode)
;;バックアップファイル作成しない
(setq make-backup-file nil)
;;start up 画面を出さない
(setq inhibit-startup-screen t)
;;メニューバーを消す
(tool-bar-mode 0)

;;補完
;;(global-company-mode)
