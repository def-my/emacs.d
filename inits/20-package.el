(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(package-refresh-contents)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    anything
    auto-complete
    exec-path-from-shell
    redo+
    migemo
    undo-tree
    undo-hist
    popup
    magit
    flymake
    js2-mode
    ruby-block
    rbenv
    markdown-mode
    rst
    ))

(dolist (package installing-package-list)
  (unless (package-installed-p package)
    (package-install package)))
