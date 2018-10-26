(use-package python
  :defer t
  :mode (".py\\'" . python-mode)
  :config
  (progn
    (setq python-shell-interpreter "ipython3.5"
	  python-shell-interpreter-args "--simple-prompt")
    (my/leader-keys-major-mode
     :keymaps 'python-mode-map
     :major-modes t
     "'"  'run-python
     "s" '(:ignore t :which-key "REPL")
     "sb" 'python-shell-send-buffer
     "sf" 'python-shell-send-defun
     "sr" 'python-shell-send-region
     "ss" 'python-shell-send-string
     "sz" 'python-shell-switch-to-shell)
    (my/leader-keys-major-mode
      :keymaps 'inferior-python-mode-map
      "h" 'counsel-shell-history)))

(use-package anaconda-mode
  :ensure t
  :diminish anaconda-mode
  :defer t
  :after python
  :init
  (progn
    (my/leader-keys-major-mode
  :config
  (anaconda-mode))
      :keymaps 'python-mode-map
      :major-modes t
      "h" '(:ignore t :which-key "help")
      "hh" 'anaconda-mode-show-doc
      "g" '(:ignore t :which-key "goto")
      "ga" 'anaconda-mode-find-assignments
      "gb" 'anaconda-mode-go-back
      "gu" 'anaconda-mode-find-references
      "gd" 'anaconda-mode-find-definitions
      "gD" 'anaconda-mode-find-definitions-other-window)

(use-package company-anaconda
  :ensure t
  :defer t
  :after 'anaconda-mode
  :init
  (progn
    (add-to-list 'company-backend 'company-anaconda)
    (add-hook 'python-mode-hook 'anaconda-mode)))

(use-package yapfify
  :ensure t
  :diminish yapf-mode
  :defer t
  :init
  (progn
    (my/leader-keys-major-mode
     :keymaps 'python-mode-map
     "=" 'yapfify-buffer))
  :config
  (progn
    (add-hook 'python-mode-hook 'yapf-mode)))

(use-package pyvenv
  :ensure t
  :defer t
  :after python
  :init
  (my/leader-keys-major-mode
    :keymaps 'python-mode-map
    "v" '(:ignore t :wk "virtualenv")
    "va" 'pyvenv-activate
    "vd" 'pyvenv-deactivate
    "vw" 'pyvenv-workon)
  )
(provide 'init-python)
