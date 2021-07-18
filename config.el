(setq user-full-name "Lucas F. Aguiar"
      user-mail-address "lucas.fernandes.df@gmail.com")

(add-to-list 'exec-path "usr/bin/sqlite3")

(setq doom-font (font-spec :family "Roboto Mono" :size 16))

;; (setq doom-theme 'doom-solarized-light)
;; (setq doom-theme 'modus-operandi)
;; (setq doom-theme 'modus-operandi)

(setq calendar-location-name "Brasília, DF")
(setq calendar-latitude -15.77)
(setq calendar-longitude -47.92)
(require 'theme-changer)
(change-theme 'modus-operandi 'modus-vivendi)
(add-to-list 'load-path "~/.doom.d/theme-changer")

(setenv "BROWSER" "vivaldi")

(setq org-directory "~/org-roam")
(setq org-default-notes-file "~/org-roam/notes.org")

(use-package org-capture
  :config
  (setq org-capture-templates
        '(("t" "Novo TODO" entry (file+headline "~/org-roam/todo.org" "Inbox")
             "* %?\n %i" :prepend t)
          ("n" "Nova anotação" entry (file+headline "~/org-roam/notes.org" "Inbox")
             "* %?\n %i" :prepend t)
          ("p" "Novo projeto" entry (file+headline "~/org-roam/projects.org" "Inbox")
             "* %?\n %i" :prepend t)
            )
          )
)

(use-package org-roam
  :ensure t
  :hook (after-init . org-roam-mode)

  :config
  (setq org-roam-directory "~/org-roam")

  (map!
   "C-c n l" #'org-roam
   "C-c n t" #'org-roam-today
   "C-c n f" #'org-roam-find-file
   "C-c n i" #'org-roam-insert
   "C-c n g" #'org-roam-graph-show
   )
  )

(use-package! org-roam-bibtex
  :after (org-roam)
  :hook (org-roam-mode . org-roam-bibtex-mode)
  :config
  ;; (setq org-roam-server-host "172.16.3.168")
  (setq orb-preformat-keywords
   '("=key=" "title" "url" "file" "author-or-editor" "keywords"))
  (setq orb-templates
        '(("r" "ref" plain (function org-roam-capture--get-point)
           ""
           :file-name "${=key=}"
           :head "#+TITLE: ${=key=}: ${title}
#+ROAM_KEY: ${ref}
#+ROAM_TAGS: article
- tags ::"
           :unnarrowed t)))

(org-roam-bibtex-mode)
(use-package org-journal
  :bind
  ("C-c n j" . org-journal-new-entry)
  :custom
  (org-journal-date-prefix "#+TITLE: ")
  (org-journal-file-format "%Y-%m-%d.org")
  (org-journal-dir "~/org-roam")
  (org-journal-date-format "%A, %d de %B de %Y"))

(use-package deft
  :after org
  :bind
  ("C-c n d" . deft)
  :custom
  (deft-recursive t)
  (deft-use-filter-string-for-filename t)
  (deft-default-extension "org")
  (deft-directory "~/org-roam"))

(setq org-hide-emphasis-markers t)

(setq display-line-numbers-type relative)

(setq centaur-tabs-style "bar")

(modify-all-frames-parameters '((fullscreen . maximized)))

;; tw=60
(setq-default fill-column 75)

(require 'toc-org nil t)
(add-hook 'org-mode-hook 'toc-org-mode)

(when (and (daemonp) (require 'edit-server nil :noerror))
  (edit-server-start))
(add-hook 'edit-server-start-hook 'markdown-mode)

;; (use-package org-noter
;;   :config
;;   ;; Your org-noter config ........
;;   (require 'org-noter-pdftools))

(use-package org-pdftools
  :hook (org-mode . org-pdftools-setup-link))

(pdf-tools-install)

(use-package! org-noter
  :config
  (setq
   org-noter-pdftools-markup-pointer-color "yellow"
   org-noter-notes-search-path '("~/org-roam")
   ;; org-noter-insert-note-no-questions t
   org-noter-doc-split-fraction '(0.7 . 03)
   org-noter-always-create-frame nil
   org-noter-hide-other nil
   org-noter-pdftools-free-pointer-icon "Note"
   org-noter-pdftools-free-pointer-color "red"
   org-noter-kill-frame-at-session-end nil
   )
  (map! :map (pdf-view-mode)
        :leader
        (:prefix-map ("n" . "notes")
          :desc "Write notes"                    "w" #'org-noter)
        )
  )

(use-package! org-pdftools
  :hook (org-load . org-pdftools-setup-link))
(use-package! org-noter-pdftools
  :after org-noter
  :config
  (with-eval-after-load 'pdf-annot
    (add-hook 'pdf-annot-activate-handler-functions #'org-noter-pdftools-jump-to-note)))

(use-package org-roam-server
  :ensure t
  :config
  (setq org-roam-server-host "127.0.0.1"
        org-roam-server-port 8080
        org-roam-server-authenticate nil
        org-roam-server-export-inline-images t
        org-roam-server-serve-files nil
        org-roam-server-served-file-extensions '("pdf" "mp4" "ogv")
        org-roam-server-network-poll t
        org-roam-server-network-arrows nil
        org-roam-server-network-label-truncate t
        org-roam-server-network-label-truncate-length 60
        org-roam-server-network-label-wrap-length 20))
