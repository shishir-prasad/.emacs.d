 (require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-refresh-contents)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-always-ensure t)


(require 'org)
(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
