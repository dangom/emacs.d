(setq TeX-save-query nil)
(setq TeX-source-correlate-method 'synctex)
(setq TeX-source-correlate-mode t)
(add-hook 'latex-mode-hook (lambda () (setq truncate-lines nil)))
(add-hook 'latex-mode-hook 'turn-on-cdlatex)
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
(setq TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "PDF Tools")
     (output-html "xdg-open"))))
(provide 'init-auctex)
