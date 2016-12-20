;; Fix windows problems with HTTPS repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

(setq dotspacemacs-elpa-https nil)

;; Used packages
(prelude-require-packages '(smex
                            ido-ubiquitous
                            markdown-toc
                            markdown-mode
                            flymd
                            clojure-mode-extra-font-locking
                            paredit
                            rainbow-delimiters
                            tagedit))

;; Set a better default font
(set-default-font "Courier New-12")

;; Make projectile ignore .gitignored files
(projectile-global-mode)
(setq projectile-enable-caching nil)
(setq projectile-indexing-method 'alien)

;; enable rainbow delimiters mode
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; fix windows calls to UNIX programs
(setenv "PATH" (concat "C:\\cygwin64\\bin;" (getenv "PATH")))
(setq find-program "C:\\cygwin64\\bin\\find.exe"
      grep-program "C:\\cygwin64\\bin\\grep.exe")

;; add bin folder to path
(setq exec-path (append exec-path '("C:\\Users\i851292\bin")))

;; customize markdown TOC
(setq markdown-toc-header-toc-title "## Contents")
(setq markdown-toc-list-item-marker "1.")


;; flymd on firefox
(defun my-flymd-browser-function (url)
  (let ((browse-url-browser-function 'browse-url-firefox))
    (browse-url (concat "file://" url))))
(setq flymd-browser-open-function 'my-flymd-browser-function)

;; set line numbers
(global-linum-mode t)

;; stop highlighting long lines
(setq whitespace-line-column 99999)

;; disable flycheck
(global-flycheck-mode -1)
