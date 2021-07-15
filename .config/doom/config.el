;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Giancarlo Espitia Ramirez"
      user-mail-address "giancarlo.cytro@gmail.com")

(setq doom-font (font-spec :family "SauceCodePro Nerd Font Mono" :size 14)
      doom-variable-pitch-font (font-spec :family "SauceCodePro Nerd Font" :size 15))

(setq doom-theme 'doom-dracula)
(setq! doom-dracula-brighter-modeline t
   doom-dracula-colorful-headers t
   doom-dracula-padded-modeline t)

(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documentos/org/"
      org-agenda-files '("~/Documentos/org/agenda/"))

;; (setq org-latex-packages-alist
;;       '("AUTO" "babel" t ("pdflatex")))
;; (add-to-list 'org-latex-packages-alist
;;              '("AUTO" "polyglossia" t ("xelatex" "lualatex")))

(use-package! latex
  :config
  (setq auctex-latexmk-inherit-TeX-PDF-mode nil))

(use-package! langtool
  :config
  (setq langtool-default-language "es"))

(use-package! reftex
  :config
  (add-to-list 'reftex-bibliography-commands "setupbibtex\[database=")
  (setq reftex-label-alist '(("\\pagereference[*]" ?a nil "~\\at[%s]" nil nil))))

(use-package! tex
  :config
  (add-to-list 'TeX-command-list
	       '("LMXT" "context %s" TeX-run-command 't)))

(add-hook 'ConTeXt-mode-hook
          (lambda ()
            (add-to-list 'reftex-cite-format '(99 . "\\cite[%t]"))
            (setq TeX-command-default "LMXT")))

(use-package! highlight-indent-guides
  :init
  (setq highlight-indent-guides-method 'bitmap))

(setq ispell-dictionary "spanish")

;; (set-file-template! context-mode)
