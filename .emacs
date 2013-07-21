(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'solarized-dark t)
;; Or alternate color palette
;; (load-theme 'solarized-light t)

;;(load-theme 'zenburn t)


(setq font-lock-maximum-decoration t)
(add-to-list 'auto-mode-alist '("\\.vuh" . tcl-mode))
(add-to-list 'auto-mode-alist '("\\.adp" . html-mode))
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; no menu bar, please - it's useelss
(menu-bar-mode nil)

;; mouse wheel scrolling
(mouse-wheel-mode t)

;; create backup files in their own directory instead of leaving them all over the place
;; Enable backup files:
(setq make-backup-files t)

;; Enable backup versioning with default values
(setq version-control t)

;; Save all backup files in this directory
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))


;; Below from http://www-cdf.fnal.gov/~sthrlnd/emacs_help.html

;; get rid of the toolbar on top of the window
(tool-bar-mode 0)
;; Show column number at bottom of screen
(column-number-mode 1)

;; turn on paren matching
    (show-paren-mode t)
    (setq show-paren-style 'mixed)

;; Use "y or n" answers instead of full words "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Dont show the GNU splash screen
(setq inhibit-startup-message t)

;; Possibly fixing un/redo: http://www.emacswiki.org/RedoMode

; make file name and computer title
(set-default 'frame-title-format 
             (list "" "emacs" "@" (getenv "HOST") " : %f" ))

(add-hook 'before-save-hook 'delete-trailing-whitespace)
