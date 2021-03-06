(use-package helm
  :config
  (helm-mode +1)
  ;; (require 'helm-config)
  (setq helm-split-window-inside-p t)
  (setq helm-use-frame-when-more-than-two-windows nil)
  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-min-height 30)
  (setq helm-display-buffer-default-height 23)
  (setq helm-default-display-buffer-functions '(display-buffer-in-side-window))
  (helm-autoresize-mode 1)
  :bind
  ("C-x C-f" . helm-find-files)
  ("M-x" . helm-M-x)
  ("C-x b" . helm-mini)
  ("C-s" . helm-ag-this-file))

(use-package smex)
(use-package helm-projectile
  :bind ("C-c p h" . helm-projectile))

(use-package helm-swoop
  :bind
  ("M-s s" . helm-swoop))

(provide 'helm-config)
