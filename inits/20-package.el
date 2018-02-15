(require 'package)
(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(package-refresh-contents)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    ;;helm
    ;;auto-complete
    ;;exec-path-from-shell
    ;;redo+
    ;;migemo
    ;;undo-tree
    ;;undo-hist
    ;;popup
    ;;magit
    ;;flymake
    ;;js2-mode
    ;;ruby-block
    ;;rbenv
    ;;markdown-mode
    ;;rst
    ;;smartparens
    ))

(dolist (package installing-package-list)
  (unless (package-installed-p package)
    (package-install package)))
