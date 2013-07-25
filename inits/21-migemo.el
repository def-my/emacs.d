(when (and (executable-find "cmigemo")
           (require 'migemo nil t))
  ;; use cmigemo
  (setq migemo-command "cmigemo")

  ;; set encoding
  (setq migemo-coding-system 'utf-8-unix)

  ;; migemo command options
  (setq migemo-options '("-q" "--emacs")) ;; "-i" "\a"))

  ;; dictionary settings
  (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)

  ;; cache settings
  (setq migemo-use-pattern-alist t)
  (setq migemo-use-frequent-pattern-alist t)
  (setq migemo-pattern-alist-length 1000)

  ;; start migemo
  (load-library "migemo")
  (migemo-init)
)
