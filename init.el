;; ロードパス
;; ~/.emacs.d/elisp ディレクトリをロードパスに追加する
;; Emacs23以前用
(when (> emacs-major-version 23)
    (defvar user-emacs-directory "~/.emacs.d"))
;; load-path を追加する関数
(defun add-to-load-path (&rest paths)
    (let (path)
        (dolist (path paths paths)
            (let ((default-directory
                    (expand-file-name (concat user-emacs-directory path))))
              (add-to-list 'load-path default-directory)
              (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
                  (normal-top-level-add-subdirs-to-load-path))))))
;; 引数のディレクトリとそのサブディレクトリをload-path に追加
;; (add-to-load-path "elisp" "conf" "public_repos")

;; theme
(load-theme 'manoj-dark t)

;; M-x package-install init-loaderでinit-loaderをインストールしておくこと
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; init-loader
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
