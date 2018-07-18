(require 'spaceline-config)
(spaceline-spacemacs-theme)
(setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
(setq powerline-default-separator 'wave)
(setq anzu-cons-mode-line-p nil)
(setq spaceline-minor-modes-p nil)
(setq spaceline-window-numbers-unicode 1)
(setq spaceline-workspace-numbers-unicode 1)
(setq powerline-height 18)
(spaceline-helm-mode 1)
(set-face-attribute 'spaceline-evil-visual nil :inherit 'mode-line :foreground "#3E3D31" :background "DeepSkyBlue")
;; (set-face-background 'powerline-active2 "gray")
;; (set-face-background 'powerline-inactive2 "gray"
(set-face-attribute 'powerline-inactive1 nil :background "gray90" :foreground "black")
(set-face-attribute 'powerline-inactive2 nil :background "gray" :foreground "black")
(set-face-attribute 'mode-line-inactive nil :background "darkgray" :foreground "black")
(set-face-attribute 'powerline-active1 nil :background "gray90" :foreground "black")
(set-face-attribute 'powerline-active2 nil :background "gray" :foreground "black")
(set-face-attribute 'mode-line nil :background "darkgray" :foreground "black")
(spaceline-compile)
(provide 'init-spaceline)
