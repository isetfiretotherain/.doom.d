(setq user-full-name "Lucas F. Aguiar"
      user-mail-address "lucas.fernandes.df@gmail.com")

(setq doom-font (font-spec :family "Roboto Mono Light" :size 14))

;; (setq doom-theme 'doom-solarized-light)
;; (setq doom-theme 'modus-operandi)
;; (setq doom-theme 'modus-operandi)

(setq calendar-location-name "Brasília, DF")
(setq calendar-latitude -15.77)
(setq calendar-longitude -47.92)
(require 'theme-changer)
(change-theme 'modus-operandi 'modus-vivendi)
(add-to-list 'load-path "~/.doom.d/theme-changer")

(setenv "BROWSER" "firefox")

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
  :hook (after-init . org-roam-mode)

  :config
  (setq org-roam-directory "~/org-roam")

  (map!
   "C-c n l" #'org-roam
   "C-c n t" #'org-roam-today
   "C-c n f" #'org-roam-find-file
   "C-c n i" #'org-roam-insert
   "C-c n g" #'org-roam-show-graph
   )
  )

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

(setq display-line-numbers-type relative)

(setq centaur-tabs-style "bar")

(modify-all-frames-parameters '((fullscreen . maximized)))

(use-package telega
  :load-path  "~/telega.el"
  :commands (telega)
  :defer t)
