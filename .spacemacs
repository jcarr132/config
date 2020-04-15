;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')

   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(csv
     yaml
     yaml
     vimscript
     ;; LAYERS
     ;;languages

     emacs-lisp
     shell-scripts
     html
     javascript
     python
     latex
     bibtex
     ess ;; R
     markdown
     rust

     ;; utilities
     ;; pdf-tools
     epub
     pdf
     themes-megapack
     ;; helm
     ivy
     auto-completion
     better-defaults
     git
     org
     (mu4e :variables
           mu4e-installation-path "/usr/share/emacs/site-lisp/")
     (shell :variables
            shell-default-shell 'shell
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     ;; vim-powerline
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      all-the-icons
                                      all-the-icons-ivy
                                      dashboard
                                      all-the-icons
                                      page-break-lines
                                      nov
                                      ewal
                                      ewal-spacemacs-themes
                                      ;; ewal-spacemacs-theme
                                      ewal-evil-cursors
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    vi-tilde-fringe
                                    )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 0

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         ;; zenburn
                         ;; ewal-spacemacs-classic
                         ;; doom-nord
                         solarized-dark
                         ;; spacemacs-dark
                         ;; spacemacs-light
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-mode-line-theme 'vim-powerline
   ;; dotspacemacs-default-font '(
   ;;                             "Inconsolata Regular"
   ;;                             "Fira Code"
   ;;                             "Hasklig"
   ;;                             :family "Hasklig"
   ;;                             :size 13
   ;;                             :weight normal
   ;;                             :width normal
   ;; dotspacemacs-default-font '(("FuraCode Nerd Font Mono"
                               ;;                              :size 13
   ;;                              :weight medium
   ;;                              :width normal
   ;;                              :powerline-scale 1.1)
   ;;                             ("Fira Code Symbol"
   ;;                              :size 13
   ;;                              :weight normal
   ;;                              :width normal
   ;;                              :powerline-scale 1.1));; :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state t
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.0
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 80
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 80
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers '(:visual t
                                       :enabled-for-modes
                                       prog-mode

                                       :disabled-for-modes
                                       dired-mode
                                       doc-view-mode
                                       markdown-mode
                                       pdf-view-mode
                                       text-mode

                                       :size-limit-kb 1000
                                  )
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

    ;; line numbering
  (defun my-prog-config ()
    (spacemacs/toggle-visual-line-numbers-on)
    )
    (add-hook 'prog-mode-hook 'my-prog-config)

    ;; read epubs with nov.el
    (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
    (setq nov-text-width 80)


    ;; org-mode configuration
    (defun my-org-config ()
      (spacemacs/toggle-visual-line-numbers-on)
      )
    (add-hook 'org-mode-hook 'my-org-config)


    ;; config for new frames created from daemon
    (defun my-frame-config (&optional frame)
      (with-selected-frame (or frame (selected-frame))
        ;; do things to FRAME
        (spacemacs/toggle-indent-guide-globally-on)
        (spacemacs/toggle-camel-case-motion-globally-on)
        (spacemacs/toggle-smartparens-globally-on)
        (spacemacs/toggle-version-control-margin-globally-on)
        (spacemacs/enable-transparency)
        ;; (find-file "~/Dropbox/org/brain.org")
        (load-theme 'ewal-spacemacs-modern)
        (get-buffer "*dashboard*")
        )
      )


    ;; apply settings to new/initial frames
    (add-hook 'after-init-hook 'my-frame-config)
    (add-hook 'after-make-frame-functions 'my-frame-config)
    (my-frame-config)
    ;; (find-file "~/Dropbox/org/brain.org")


    ;; configure ewal (pywal colours in emacs)
    (use-package ewal
      :init (setq ewal-use-built-in-always-p nil
                  ewal-use-built-in-on-failure-p t
                  ewal-built-in-palette "sexy-material"))
    (use-package ewal-spacemacs-themes
      :init (progn
              (show-paren-mode +1)
              (global-hl-line-mode))
      :config (progn
                (load-theme 'ewal-spacemacs-modern)
                (enable-theme 'ewal-spacemacs-modern)))
    (use-package ewal-evil-cursors
      :after (ewal-spacemacs-themes)
      :config (ewal-evil-cursors-get-colors
               :apply t))

    (load-theme 'ewal-spacemacs-modern)




  (setq initial-buffer-choice #'(lambda () (get-buffer "*dashboard*")))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
  (load-theme 'ewal-spacemacs-modern)

  (autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
  (add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

  ;; all the icons
  (use-package all-the-icons)
  (use-package all-the-icons-ivy
    :init (add-hook 'after-init-hook 'all-the-icons-ivy-setup))

  ;; fix ivy SPC-SPC
  (with-eval-after-load 'ivy
    (setq ivy-initial-inputs-alist nil)
  )

  ;; dashboard
  ;; Set the title
  (setq dashboard-banner-logo-title "Welcome to Emacs!")

  ;; Set the banner
  (setq dashboard-startup-banner 'logo)
  ;; Value can be
  ;; 'official which displays the official emacs logo
  ;; 'logo which displays an alternative emacs logo
  ;; 1, 2 or 3 which displays one of the text banners
  ;; "path/to/your/image.png" which displays whatever image you would prefer

  ;; Content is not centered by default. To center, set
  (setq dashboard-center-content t)
  (setq dashboard-set-heading-icons t)
  ;; (setq dashboard-set-navigator t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-set-footer nil)
  (setq show-week-agenda-p t)
  (setq page-break-lines nil)
  (setq dashboard-items '(
                          (recents  . 10)
                          (projects . 10)
                          (agenda . 10)
                          )
        )

  ;; Format: "(icon title help action face prefix suffix)"
  ;; (setq dashboard-navigator-buttons
  ;;       `(;; line1
  ;;         ((,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
  ;;           "Homepage"
  ;;           "Browse homepage"
  ;;           (lambda (&rest _) (browse-url "homepage")))
  ;;          ("★" "Star" "Show stars" (lambda (&rest _) (show-stars)) warning)
  ;;          ("?" "" "?/h" #'show-help nil "<" ">"))
  ;;         ;; line 2
  ;;         ((,(all-the-icons-faicon "linkedin" :height 1.1 :v-adjust 0.0)
  ;;           "Linkedin"
  ;;           ""
  ;;           (lambda (&rest _) (browse-url "homepage")))
  ;;          ("⚑" nil "Show flags" (lambda (&rest _) (message "flag")) error))))


  (use-package dashboard
    :ensure t
    :config
    (defun dashboard-setup ()
      "Setup post initialization hooks.
      If a command line argument is provided,
      assume a filename and skip displaying Dashboard."
      ;; Display useful lists of items
      (dashboard-insert-startupify-lists)
      (when (< (length command-line-args) 2 )
        (switch-to-buffer dashboard-buffer-name)
        (goto-char (point-min))
        (redisplay)))
    (dashboard-setup))


  (setq initial-buffer-choice #'(lambda () (get-buffer "*dashboard*")))



  ;; ORG-MODE
  (setq org-todo-keyword-faces
        '(("TODO" . (:background ""))
          ("DONE" . (:background ""))
          ("DOING" . (:background ""))
          ("WAITING" . (:background ""))
          ("SCHEDULED" . (:background ""))
          ("TEST" . (:background ""))
          ("CANCELLED" . (:background ""))
          ("UNREAD" . (:background ""))
          ("READING" . (:background ""))
          ("NEXT" . (:background ""))
          ("IN-PROGRESS" . (:background ""))
          ("SOON" . (:background ""))
          ("SOMEDAY" . (:background ""))
          ))

  ;; Hide leading stars
  (setq org-startup-indented t
        org-hide-leading-stars t)

  ;; custom faces for org mode blocks
  ;; (defface org-block-begin-line
  ;;   '((t (:underline "" :foreground "" :background "")))
  ;;   "Face used for the line delimiting the begin of source blocks.")

  ;; (defface org-block-background
  ;;   '((t (:background "")))
  ;;   "Face used for the source block background.")

  ;; (defface org-block-end-line
  ;;   '((t (:overline "" :foreground "" :background "")))
  ;;   "Face used for the line delimiting the end of source blocks.")

  ;; (defface org-block
  ;;   '((t (:overline "" :foreground "" :background "")))
  ;;   "Face used for the line delimiting the end of source blocks.")

  (custom-set-faces
   '(org-block-begin-line
     ((t (:foreground "#ffffff" :background "#000000"))))
   '(org-block
     ((t (:background "#000000"))))
   '(org-block-end-line
     ((t (:foreground "#ffffff" :background "#000000"))))
   )

  ;; apply settings to new/initial frames
  (add-hook 'after-init-hook 'my-frame-config)
  (add-hook 'after-make-frame-functions 'my-frame-config)
  (my-frame-config)


  (defun my-org-config ()
    (spacemacs/toggle-visual-line-numbers-on)
    (org-latex-preview)
    (org-toggle-pretty-entities)
    (add-to-list 'org-latex-classes
                 '("book-noparts"
                   "\\documentclass{book}"
                   ("\\chapter{%s}" . "\\chapter*{%s}")
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

    )
  (add-hook 'org-mode-hook 'my-org-config)

  ;; (add-hook 'pdf-view-mode-hook 'linum-mode nil)


  ;; LaTeX/bibtex/reftex
  (setq
        reftex-plug-into-AUCTeX t
        reftex-default-bibliography '("~/Dropbox/Papers/references.bib")
        org-ref-default-bibliography '("~/Dropbox/Papers/references.bib")
        org-ref-pdf-directory "~/Dropbox/Papers/pdfs/"
        org-ref-bibliography-notes "~/Dropbox/Papers/notes.org"
        )
  (setq bibtex-completion-bibliography "~/Dropbox/Papers/references.bib"
        bibtex-completion-library-path "~/Dropbox/Papers/pdfs"
        bibtex-completion-notes-path "~/Dropbox/Papers/helm-bibtex-notes")
  (setq-default TeX-PDF-mode t)
  ;; (TeX-global-PDF-mode t)
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  ;; (setenv "PATH" (concat (getenv "PATH") ":/usr/bin/latex"))

  (setq org-latex-pdf-process
        '("latexmk -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f"))

  (defun org-mode-reftex-setup ()
    (load-library "reftex")
    (and (buffer-file-name) (file-exists-p (buffer-file-name))
         (progn
           ;enable auto-revert-mode to update reftex when bibtex file changes on disk
           (global-auto-revert-mode t)
           (reftex-parse-all)
           (add-hook 'org-mode-hook 'org-mode-reftex-setup)
           )))

  (setq org-default-notes-file "~/Dropbox/org/capture.org")

  ;; setup indent-width for JS and related filetypes



  (defun my-setup-indent (n)
    ;; java/c/c++
    (setq c-basic-offset n)
    ;; web development
    (setq javascript-indent-level n) ; javascript-mode
    (setq js-indent-level n) ; js-mode
    (setq js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
    (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
    (setq web-mode-css-indent-offset n) ; web-mode, css in html file
    (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
    (setq css-indent-offset n) ; css-mode
    )
  (my-setup-indent 2) ;


  ;; ;; Font Ligatures
  ;; (defun my-correct-symbol-bounds (pretty-alist)
  ;;     "Prepend a TAB character to each symbol in this alist,
  ;; this way compose-region called by prettify-symbols-mode
  ;; will use the correct width of the symbols
  ;; instead of the width measured by char-width."
  ;;     (mapcar (lambda (el)
  ;;               (setcdr el (string ?\t (cdr el)))
  ;;               el)
  ;;             pretty-alist))
  ;; (defun my-ligature-list (ligatures codepoint-start)
  ;;     "Create an alist of strings to replace with
  ;; codepoints starting from codepoint-start."
  ;;     (let ((codepoints (-iterate '1+ codepoint-start (length ligatures))))
  ;;       (-zip-pair ligatures codepoints)))
  ;; (setq my-fira-code-ligatures
  ;;     (let* ((ligs '("www" "**/" "*>" "*/" "\\\\" "\\\\\\"
  ;;                   "{-" "[]" "::" ":::" ":=" "!!" "!=" "!==" "-}"
  ;;                   "--" "---" "-->" "->" "->>" "-<" "-<<" "-~"
  ;;                   "#{" "#[" "##" "###" "####" "#(" "#?" "#_" "#_("
  ;;                   ".-" ".=" ".." "..<" "..." "?=" "??" ";;" "/*"
  ;;                   "/**" "/=" "/==" "/>" "//" "///" "&&" "||" "||="
  ;;                   "|=" "|>" "^=" "$>" "++" "+++" "+>" "=:=" "=="
  ;;                   "===" "==>" "=>" "=>>" "<=" "=<<" "=/=" ">-" ">="
  ;;                   ">=>" ">>" ">>-" ">>=" ">>>" "<*" "<*>" "<|" "<|>"
  ;;                   "<$" "<$>" "<!--" "<-" "<--" "<->" "<+" "<+>" "<="
  ;;                   "<==" "<=>" "<=<" "<>" "<<" "<<-" "<<=" "<<<" "<~"
  ;;                   "<~~" "</" "</>" "~@" "~-" "~=" "~>" "~~" "~~>" "%%"
  ;;                   )))
  ;;       (my-correct-symbol-bounds (my-ligature-list ligs #Xe100))))
  ;; (defun my-set-fira-code-ligatures ()
  ;;     "Add fira code ligatures for use with prettify-symbols-mode."
  ;;     (setq prettify-symbols-alist
  ;;           (append my-fira-code-ligatures prettify-symbols-alist))
  ;;     (prettify-symbols-mode))
  ;; (add-hook 'prog-mode-hook 'my-set-fira-code-ligatures)


;;; runs eslint --fix on the current file after save
;;; alpha quality -- use at your own risk
(defun eslint-fix-file ()
  (interactive)
  (message "eslint --fixing the file" (buffer-file-name))
  (shell-command (concat "eslint --fix " (buffer-file-name))))

(defun eslint-fix-file-and-revert ()
  (interactive)
  (eslint-fix-file)
  (revert-buffer t t))

;; fix annoying file lock with multiple emacs instances
(setq recentf-save-file (format "/tmp/recentf.%s" (emacs-pid)))


;; r
(defun then_R_operator ()
  "R - %>% operator or 'then' pipe operator"
  (interactive)
  (just-one-space 1)
  (insert "%>%")
  (reindent-then-newline-and-indent))

(add-hook 'ess-mode-hook
          (lambda ()
            (define-key ess-mode-map (kbd "C-S-m") 'then_R_operator)
            (define-key inferior-ess-mode-map (kbd "C-S-m") 'then_R_operator)

            (define-key ess-mode-map (kbd "M--") 'ess-insert-assign)
            (define-key inferior-ess-mode-map (kbd "M--") 'ess-insert-assign)
            )
          )

(use-package org-tempo)


;; babel
;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (emacs-lisp . t)
   (python . t)
   ;; (ipython . t)
   ;; (sh . t)
   (shell . t)
   (js . t)
   ))
;; end of user-config

)
;;*********************


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("cd7ffd461946d2a644af8013d529870ea0761dccec33ac5c51a7aaeadec861c2" "a7051d761a713aaf5b893c90eaba27463c791cd75d7257d3a8e66b0c8c346e77" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "86704574d397606ee1433af037c46611fb0a2787e8b6fd1d6c96361575be72d2" "41098e2f8fa67dc51bbe89cce4fb7109f53a164e3a92356964c72f76d068587e" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(org-agenda-files (quote ("~/Dropbox/org/brain.org")))
 '(package-selected-packages
   (quote
    (nov esxml xresources-theme zenburn-theme zen-and-art-theme yapfify xterm-color ws-butler winum white-sand-theme which-key web-mode web-beautify volatile-highlights uuidgen use-package unfill underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toml-mode toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spaceline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode reverse-theme restart-emacs rebecca-theme rainbow-delimiters railscasts-theme racer pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode professional-theme popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el paradox orgit organic-green-theme org-ref org-projectile org-present org-pomodoro org-mime org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme neotree naquadah-theme mwim mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme material-theme markdown-toc majapahit-theme magit-gitflow madhat2r-theme macrostep lush-theme lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme indent-guide hy-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md gandalf-theme fuzzy flyspell-correct-helm flycheck-rust flycheck-pos-tip flx-ido flatui-theme flatland-theme fish-mode fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell ewal-evil-cursors evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu ess-smart-equals ess-R-data-view espresso-theme eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav dumb-jump dracula-theme django-theme diminish diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme company-web company-tern company-statistics company-shell company-auctex company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clues-theme clean-aindent-mode cherry-blossom-theme cargo busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("cd7ffd461946d2a644af8013d529870ea0761dccec33ac5c51a7aaeadec861c2" "a7051d761a713aaf5b893c90eaba27463c791cd75d7257d3a8e66b0c8c346e77" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "86704574d397606ee1433af037c46611fb0a2787e8b6fd1d6c96361575be72d2" "41098e2f8fa67dc51bbe89cce4fb7109f53a164e3a92356964c72f76d068587e" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#4C566A")
 '(global-git-gutter+-mode t)
 '(jdee-db-active-breakpoint-face-colors (cons "#191C25" "#81A1C1"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#191C25" "#A3BE8C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#191C25" "#434C5E"))
 '(objed-cursor-color "#BF616A")
 '(org-agenda-files (quote ("~/Dropbox/org/brain.org")))
 '(package-selected-packages
   (quote
    (csv-mode nov esxml xresources-theme zenburn-theme zen-and-art-theme yapfify xterm-color ws-butler winum white-sand-theme which-key web-mode web-beautify volatile-highlights uuidgen use-package unfill underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toml-mode toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spaceline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode reverse-theme restart-emacs rebecca-theme rainbow-delimiters railscasts-theme racer pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode professional-theme popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el paradox orgit organic-green-theme org-ref org-projectile org-present org-pomodoro org-mime org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme neotree naquadah-theme mwim mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme material-theme markdown-toc majapahit-theme magit-gitflow madhat2r-theme macrostep lush-theme lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme indent-guide hy-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md gandalf-theme fuzzy flyspell-correct-helm flycheck-rust flycheck-pos-tip flx-ido flatui-theme flatland-theme fish-mode fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell ewal-evil-cursors evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu ess-smart-equals ess-R-data-view espresso-theme eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav dumb-jump dracula-theme django-theme diminish diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme company-web company-tern company-statistics company-shell company-auctex company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clues-theme clean-aindent-mode cherry-blossom-theme cargo busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(pdf-view-midnight-colors (cons "#ECEFF4" "#2E3440"))
 '(rustic-ansi-faces
   ["#2E3440" "#BF616A" "#A3BE8C" "#EBCB8B" "#81A1C1" "#B48EAD" "#88C0D0" "#ECEFF4"])
 '(vc-annotate-background "#2E3440")
 '(vc-annotate-color-map
   (list
    (cons 20 "#A3BE8C")
    (cons 40 "#bbc28b")
    (cons 60 "#d3c68b")
    (cons 80 "#EBCB8B")
    (cons 100 "#e2b482")
    (cons 120 "#d99d79")
    (cons 140 "#D08770")
    (cons 160 "#c68984")
    (cons 180 "#bd8b98")
    (cons 200 "#B48EAD")
    (cons 220 "#b77f96")
    (cons 240 "#bb7080")
    (cons 260 "#BF616A")
    (cons 280 "#a05b67")
    (cons 300 "#815664")
    (cons 320 "#625161")
    (cons 340 "#4C566A")
    (cons 360 "#4C566A")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
)
