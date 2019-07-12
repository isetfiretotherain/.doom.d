;;; init.el -*- lexical-binding: t; -*-
;; Copy me to ~/.doom.d/init.el or ~/.config/doom/init.el, then edit me!

(doom! :feature
       ;;debugger          ; FIXME stepping through code, to help you add bugs
       eval              ; run code, run (also, repls)
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       (lookup           ; helps you navigate your code and documentation
        +docsets)        ; ...or in Dash docsets locally
       snippets          ; my elves. They type so I don't have to
       spellcheck        ; tasing you for misspelling mispelling
       syntax-checker    ; tasing you for every semicolon you forget
       workspaces        ; tab emulation, persistence & separate workspaces

       :completion
       company           ; the ultimate code completion backend
       helm              ; the *other* search engine for love and life
       ;;ido              ; the other *other* search engine...
       ;;ivy              ; a search engine for love and life

       :ui
       ;;deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       doom-modeline     ; a snazzy Atom-inspired mode-line
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       evil-goggles      ; display visual hints when editing in evil
       ;;fci               ; a `fill-column' indicator
       hl-todo           ; highlight TODO/FIXME/NOTE tags
       ;;modeline          ; snazzy, Atom-inspired modeline, plus API
       nav-flash         ; blink the current line after jumping
       ;;neotree           ; a project drawer, like NERDTree for vim
       treemacs          ; a project drawer, like neotree but cooler
       (popup            ; tame sudden yet inevitable temporary windows
        +all             ; catch all popups that start with an asterix
        +defaults)       ; default popup rules
       ;;pretty-code       ; replace bits of code with pretty symbols
       ;;tabbar            ; FIXME an (incomplete) tab bar for Emacs
       ;;unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       window-select     ; visually switch windows

       :editor
       fold              ; (nigh) universal code folding
       ;;(format +onsave)  ; automated prettiness
       ;;lispy             ; vim for lisp, for people who dont like vim
       multiple-cursors  ; editing in many places at once
       ;;parinfer          ; turn lisp into python, sort of
       rotate-text       ; cycle region at point between text candidates

       :emacs
       (dired            ; making dired pretty [functional]
       ;;+ranger         ; bringing the goodness of ranger to dired
       +icons          ; colorful icons for dired-mode
        )
       electric          ; smarter, keyword-based electric-indent
       ;;eshell            ; a consistent, cross-platform shell (WIP)
       imenu             ; an imenu sidebar and searchable code index
       term              ; terminals in Emacs
       vc                ; version-control and Emacs, sitting in a tree

       :tools
       ;;ansible
       ;;docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       ;;ein               ; tame Jupyter notebooks with emacs
       ;;gist              ; interacting with github gists
       ;;macos             ; MacOS-specific commands
       magit             ; a git porcelain for Emacs
       ;;make              ; run make tasks from Emacs
       ;;password-store    ; password manager for nerds
       pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       ;;rgb               ; creating color strings
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       ;;upload            ; map local to remote projects via ssh/ftp
       ;;wakatime

       :lang
       ;;assembly          ; assembly for fun or debugging
       ;;(cc +irony +rtags); C/C++/Obj-C madness
       ;;clojure           ; java with a lisp
       ;;common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, .NET, and mono shenanigans
       data              ; config/data formats
       ;;erlang            ; an elegant language for a more civilized age
       ;;elixir            ; erlang done right
       ;;elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ;;ess               ; emacs speaks statistics
       ;;go                ; the hipster dialect
       ;;(haskell +intero) ; a language that's lazier than I am
       ;;hy                ; readability of scheme w/ speed of python
       ;;idris             ;
       ;;(java +meghanada) ; the poster child for carpal tunnel syndrome
       ;;javascript        ; all(hope(abandon(ye(who(enter(here))))))
       ;;julia             ; a better, faster MATLAB
       latex             ; writing papers in Emacs has never been so fun
       ledger            ; an accounting system in Emacs
       ;;lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       ;;nim               ; python + lisp at the speed of c
       ;;nix               ; I hereby declare "nix geht mehr!"
       ;;ocaml             ; an objective camel
       (org              ; organize your plain life in plain text
        +attach          ; custom attachment system
        +babel           ; running code in org
        +capture         ; org-capture in and outside of Emacs
        +export          ; Exporting org to whatever you want
        +habit           ; Keep track of your habits
        +present         ; Emacs for presentations
        +protocol)       ; Support for org-protocol:// links
       ;;perl              ; write code no one else can comprehend
       ;;php               ; perl's insecure younger brother
       ;;plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       ;;python            ; beautiful is better than ugly
       ;;qt                ; the 'cutest' gui framework ever
       ;;racket            ; a DSL for DSLs
       ;;rest              ; Emacs as a REST client
       ;;ruby              ; 1.step do {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;;rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala             ; java, but good
       (sh +fish)        ; she sells (ba|z|fi)sh shells on the C xor
       ;;solidity          ; do you need a blockchain? No.
       ;;swift             ; who asked for emoji variables?
       ;;web               ; the tubes
       ;;vala              ; GObjective-C

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       ;;(email +gmail)    ; emacs as an email client
       ;;irc               ; how neckbeards socialize
       ;;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought
       (write            ; emacs as a word processor (latex + org + markdown)
       ;; +wordnut         ; wordnet (wn) search
       ;; +langtool)       ; a proofreader (grammar/style check) for Emacs
       )

       :collab
       ;;floobits          ; peer programming for a price
       ;;impatient-mode    ; show off code over HTTP

       :config
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;;literate

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.
       (default +bindings +smartparens))

;; export org to markdown
(require 'ox-md)

;; export org to groff
(require 'ox-groff)

;; Word-wrapping defaults
;; tw=60
(setq-default fill-column 65)

;; Automatic wrapping
(setq-default word-wrap t)

;; company autocomplete
;;(setq global-company-mode t
;;      company-idle-delay 0
;;      company-minimum-prefix-length 3)

;; todo states in org-mode

;; font
(set-frame-font "monospace-9" nil t)

;; load dracula theme
(load-theme 'doom-one t)
;;(load-theme 'doom-nord t)

;; return follow links
(setq org-return-follows-link t)

;;;; org-ref
;;(setq reftex-default-bibliography '("~/OneDrive/Workspace/Version-Controlled/Bibliography-git/references.bib"))
;;
;;;; see org-ref for use of these variables
;;(setq org-ref-bibliography-notes "~/OneDrive/Workspace/Version-Controlled/Bibliography-git/notes.org"
;;      org-ref-default-bibliography '("~/OneDrive/Workspace/Version-Controlled/Bibliography-git/references.bib")
;;      org-ref-pdf-directory "~/OneDrive/Workspace/Version-Controlled/Bibliography-git/pdf-dir/")
;;
;;(setq bibtex-completion-bibliography "~/OneDrive/Workspace/Version-Controlled/Bibliography-git/references.bib"
;;      bibtex-completion-library-path "~/OneDrive/Workspace/Version-Controlled/Bibliography-git/pdf-dir"
;;      bibtex-completion-notes-path "~/OneDrive/Workspace/Version-Controlled/Bibliography-git/helm-bibtex-notes")
;;
;;;; open pdf with system pdf viewer (works on mac)
;;(setq bibtex-completion-pdf-open-function
;;  (lambda (fpath)
;;    (start-process "open" "*open*" "open" fpath)))
;;
;;(setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f"))
;;
;;(require 'org-ref)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" default))
 '(display-line-numbers-type 'relative)
 '(org-adapt-indentation t)
 '(org-agenda-custom-commands
   '(("n" "Agenda and all TODOs"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)
     ("T" "RELATORIO DE PROCESSOS"
      ((tags "URGENTE"
             ((org-agenda-overriding-header "
*** PROCESSOS
**** Veículos com urgência/muito tempo sem mudanca")))
       (tags "TRIAR"
             ((org-agenda-overriding-header "
**** Veículos p/ TRIAR")))
       (tags "CORRIGIR"
             ((org-agenda-overriding-header "**** Veículos p/ CORRIGIR")))
       (tags "EMITIR"
             ((org-agenda-overriding-header "**** Veículos p/ EMITIR")))
       (tags "EMITIDO"
             ((org-agenda-overriding-header "**** Documentos EMITIDOs e não RECEBIDOs")))
       (tags "IPVA LICENCIAMENTO SEGURO SERVICO MULTA"
             ((org-agenda-overriding-header "*** DÉBITOS E AGENDAMENTOS
**** Débitos diversos")))
       (tags "GRAVAME RESTRICAO"
             ((org-agenda-overriding-header "**** Restricões")))
       (tags "AGENDAMENTO TRANSFERENCIA FOTOGRAFIA"
             ((org-agenda-overriding-header "**** Taxas em aberto p/ transferência")))
       (tags "AGENDADO"
             ((org-agenda-overriding-header "**** Vistorias agendadas"))))
      nil nil)
     ("P" "Relacao de placas" tags "PLACA"
      ((org-agenda-overriding-header "*** Relacão de placas")))))
 '(org-agenda-files
   '("~/repositories/marc8/agenda-marc8.org" "~/repositories/org"))
 '(org-agenda-span 7)
 '(org-capture-templates
   '(("T" "Relatório de processos" entry
      (file+headline "~/repositories/marc8/agenda-marc8.org" "Relatorios")
      "* ABERTO RELATÓRIO DE PROCESSOS %u
SINAL VERDE

%U

** Observacões:
%^{OBSERVACOES}

%?" :prepend t :kill-buffer t)
     ("P" "Relacão de placas" entry
      (file+headline "~/repositories/marc8/agenda-marc8.org" "Relacão de placas")
      "* ABERTO RELACAO DE PLACAS - %u
SINAL VERDE
RELACÃO DE PLACAS
%U

%?" :prepend t :kill-buffer t)
     ("N" "Novo carro no estoque" entry
      (file "~/repositories/estoque-marc8.org")
      "* FORA %^{PLACA} - %^{DESCRICAO} :FORA:
:PROPERTIES:
:ENTRADA: %U
:PLACA:%^{PLACA}
:RENAVAM:%^{RENAVAM}
:MARCA:%^{MARCA}
:MODELO:%^{MODELO}
:ANO-FAB:%^{ANO-FAB}
:ANO-MOD:%^{ANO-MOD}
:KM:
:COR:%^{COR}
:FIPE-ID:
:FIPE-DATE:
:FIPE-VAL:
:VALOR:
:END:
:LOGBOOK:
:END:")
     ("O" "Entrada no protocolo" entry
      (file "~/repositories/marc8/protocolo-marc8.org")
      "* ESPERA %^{PLACA} - %^{RESPONSÁVEL}
:PROPERTIES:
:NUMERO: %^{NUMERACAO}
:ENTRADA: %U
:PLACA: %^{PLACA}
:OBJETO: %^{OBJETO A SER ENTREGUE}
:RESPONSAVEL: %^{RESPONSÁVEL}
:PROPRIETARIO: %^{PROPRIETÁRIO}
:RECIPIENTE:
:VALOR-RECEBER:
:VALOR-RECEBIDO:
:END:
:LOGBOOK:
:END:")
     ("p" "Templates for projects")
     ("pt" "Project todo" entry
      (file+headline +org-capture-project-todo-file "Inbox")
      "* TODO %?
%i
%a" :prepend t :kill-buffer t)
     ("pn" "Project notes" entry
      (file+headline +org-capture-project-notes-file "Inbox")
      "* TODO %?
%i
%a" :prepend t :kill-buffer t)
     ("pc" "Project changelog" entry
      (file+headline +org-capture-project-notes-file "Unreleased")
      "* TODO %?
%i
%a" :prepend t :kill-buffer t)))
 '(org-datetree-add-timestamp 'inactive)
 '(org-directory "~/repositories/marc8/")
 '(org-export-backends '(ascii html latex md groff))
 '(org-latex-compiler "pdflatex")
 '(org-list-indent-offset 2)
 '(org-log-done 'time)
 '(org-log-into-drawer t)
 '(org-log-redeadline 'note)
 '(org-log-refile 'time)
 '(org-log-reschedule 'note)
 '(org-modules
   '(org-bbdb org-bibtex org-docview org-eww org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m))
 '(org-return-follows-link t)
 '(org-todo-keyword-faces
   '(("[-]" :inherit
      (font-lock-constant-face bold))
     ("[?]" :inherit
      (warning bold))
     ("WAITING" :inherit bold)
     ("LATER" :inherit
      (warning bold))
     ("ABERTO" :foreground "#e06c75" :weight bold)
     ("ESPERA" :foreground "#e5c07b" :weight bold)
     ("ENCAMINHAR" :foreground "#e56b6c2" :weight bold :underline t)
     ("FEITO" :foreground "#98c379" :weight bold)
     ("LOJA" :foreground "#e5c07b" :weight bold)
     ("FORA" :foreground "#e06c75" :weight bold)
     ("MANUTENCAO" :foreground "#e56b6c2" :weight bold)
     ("SERVICO" :foreground "#e56b6c2" :weight bold)
     ("VENDIDO" :foreground "#98c379" :weight bold)))
 '(org-todo-keywords
   '((sequence "TODO(t)" "|" "DONE(d)")
     (sequence "[ ](T)" "[-](p)" "[?](m)" "|" "[X](D)")
     (sequence "NEXT(n)" "WAITING(w)" "LATER(l)" "|" "CANCELLED(c)")
     (sequence "ABERTO(a)" "ESPERA(e)" "ENCAMINHAR(n)" "|" "FEITO(F)" "CANCELADO(c)")
     (sequence "LOJA(l)" "FORA(f)" "MANUTENCAO(m)" "SERVICO(s)" "|"  "VENDIDO(v)"))))

;; ewal
;;(require 'ewal)
;;(when (ewal-load-wal-colors)
;;  (custom-set-faces
;;   `(line-number ((t (:foreground ,(ewal-get-color 'magenta 4)))))))
;;
;;;; spacemacs/user-init
;;(add-to-list 'load-path "~/projects/ewal")
;;(add-to-list 'load-path "~/projects/ewal/spacemacs-themes")
;;(require 'ewal-spacemacs-themes)
;;(load-theme 'ewal-spacemacs-modern t)
;;;; spacemacs/user-init
;;(add-to-list 'load-path "~/projects/ewal/evil-cursors")
;;(require 'ewal-evil-cursors)
;;(ewal-evil-cursors-get-spacemacs-colors :apply t)
