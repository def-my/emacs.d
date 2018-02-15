;; theme
(load-theme 'manoj-dark t)

;; M-x package-install init-loaderでinit-loaderをインストールしておくこと
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; init-loader
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
