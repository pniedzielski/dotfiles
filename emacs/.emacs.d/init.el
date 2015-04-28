(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'org)
(org-babel-load-file
  (expand-file-name "pn-config.org" user-emacs-directory))
