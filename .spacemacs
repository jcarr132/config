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
   dotspacemacs-enable-lazy-installation 'all
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; LANGUAGES
     markdown
     html
     javascript
     python
     (latex :variables latex-enable-auto-fill t
            latex-enable-folding t
            latex-build-command "LaTeX")
     bibtex
     emacs-lisp


     ;; UTILITIES
     pdf
     themes-megapack
     helm
     ;; ivy
     auto-completion
     better-defaults
     git
     org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; confguration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
     doom-themes
     evil-mc
   )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
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
   dotspacemacs-startup-banner '999
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
                         doom-nord
                         solarized-dark
                         spacegray
                         dracula
                         gruvbox
                         zenburn
                         spacemacs-dark
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-mode-line-theme `vim-powerline
   ;; dotspacemacs-mode-line-theme `spacemacs
   ;; dotspacemacs-default-font '("Iosevka Medium"
   dotspacemacs-default-font '("Hack Regular"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
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
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
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
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
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
   dotspacemacs-line-numbers '(:relative t
                               :disabled-for-modes dired-mode
                                                   doc-view-mode
                                                   markdown-mode
                                                   org-mode
                                                   pdf-view-mode
                                                   text-mode
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
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  ;; Multiple cursors
  (use-package evil-mc
    :ensure t
    :config

    (defun evil--mc-make-cursor-at-col (startcol _endcol orig-line)
      (move-to-column startcol)
      (unless (= (line-number-at-pos) orig-line)
        (evil-mc-make-cursor-here)))
    (defun evil-mc-make-vertical-cursors (beg end)
      (interactive (list (region-beginning) (region-end)))
      (evil-mc-pause-cursors)
      (apply-on-rectangle #'evil--mc-make-cursor-at-col
                          beg end (line-number-at-pos (point)))
      (evil-mc-resume-cursors)
      (evil-normal-state)
      (move-to-column (evil-mc-column-number (if (> end beg)
                                                 beg
                                               end)))))

  ;; disable linum-mode for documents
  ;; (add-hook 'doc-view-mode-hook
  ;;           (lambda ()
  ;;             (linum-mode -1)
  ;;             ))

  (add-hook 'prog-mode-hook 'linum-relative-mode)

  (global-evil-mc-mode t)
  (defun eslint-fix-buffer ()
    "Fixes javascript via eslint"
    (interactive)
    (shell-command-on-region
     ;; beginning and end of buffer
     (point-min)
     (point-max)
     ;; command and parameters
     "eslint-fix-text"
     ;; output buffer
     (current-buffer)
     ;; replace?
     t
     ;; name of the error buffer
     "*Eslint-Fix Error Buffer*"
     ;; show error buffer?
     t))

  ;; (spacemacs/declare-prefix "ee" "eslint")
  ;; (spacemacs/set-leader-keys  "eef" 'eslint-fix-buffer)

  ;; LaTeX/bibtex/reftex
  (setq
        reftex-plug-into-AUCTeX t
        reftex-default-bibliography '("~/Dropbox/Papers/references.bib")
        org-ref-default-bibliography '("~/Dropbox/Papers/references.bib")
        org-ref-pdf-directory "~/Dropbox/Papers/pdfs/"
        org-ref-bibliography-notes "~/Dropbox/Papers/notes.org"
        )

  (setq bibtex-completion-bibliography "~/Dropbox/Papers/references.bib"
        bibtex-completion-library-path "~/Dropbox/Papers/bibtex-pdfs"
        bibtex-completion-notes-path "~/Dropbox/Papers/helm-bibtex-notes")

  (setq-default TeX-PDF-mode t)
  ;; (TeX-global-PDF-mode t)
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  ;; (setenv "PATH" (concat (getenv "PATH") ":/usr/bin/latex"))

  (defun org-mode-reftex-setup ()
    (load-library "reftex")
    (and (buffer-file-name) (file-exists-p (buffer-file-name))
         (progn
                                        ;enable auto-revert-mode to update reftex when bibtex file changes on disk
           (global-auto-revert-mode t)
           (reftex-parse-all)
           (add-hook 'org-mode-hook 'org-mode-reftex-setup)

           )))

  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "latex")
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#bf616a" "#B4EB89" "#ebcb8b" "#89AAEB" "#C189EB" "#89EBCA" "#232830"))
 '(beacon-color "#cc6666")
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "cb477d192ee6456dc2eb5ca5a0b7bd16bdb26514be8f8512b937291317c7b166" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "b0fd04a1b4b614840073a82a53e88fe2abc3d731462d6fde4e541807825af342" "4e132458143b6bab453e812f03208075189deca7ad5954a4abb27d5afce10a9a" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "11e57648ab04915568e558b77541d0e94e69d09c9c54c06075938b6abc0189d8" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "8d805143f2c71cfad5207155234089729bb742a1cb67b7f60357fdd952044315" "8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4ea0aa360264ff861fb0212abe4161b83ad1d8c8b74d8a04bcd1baf0ebdceeae" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "4138944fbed88c047c9973f68908b36b4153646a045648a22083bd622d1e636d" "cd7ffd461946d2a644af8013d529870ea0761dccec33ac5c51a7aaeadec861c2" "e3c87e869f94af65d358aa279945a3daf46f8185f1a5756ca1c90759024593dd" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#343d46" t)
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(jdee-db-active-breakpoint-face-colors (cons "#f2f2f2" "#4271ae"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#f2f2f2" "#718c00"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#f2f2f2" "#a5a4a5"))
 '(js-indent-level 2)
 '(linum-format "%3i")
 '(minimap-always-recenter t)
 '(minimap-dedicated-window nil)
 '(minimap-mode t)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(objed-cursor-color "#c82829")
 '(org-agenda-files (quote ("~/Dropbox/org/todo.org")))
 '(org-startup-truncated nil)
 '(package-selected-packages
   (quote
    (helm-flyspell minimap doom-nord-theme-theme doom-nord-theme doom-themes org-ref key-chord helm-bibtex parsebib biblio biblio-core yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode helm-pydoc cython-mode company-anaconda anaconda-mode pythonic lv eslint-fix git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter diff-hl zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme pdf-tools tablist mmm-mode markdown-toc markdown-mode gh-md wgrep smex ivy-hydra flyspell-correct-ivy counsel-projectile counsel swiper ivy company-auctex auctex-latexmk auctex unfill mwim helm-company helm-c-yasnippet fuzzy company-web web-completion-data company-tern dash-functional tern company-statistics company auto-yasnippet ac-ispell auto-complete xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help smeargle orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download magit-gitflow magit-popup htmlize helm-gitignore gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck evil-magit magit transient git-commit with-editor auto-dictionary web-mode tagedit slim-mode scss-mode sass-mode pug-mode helm-css-scss haml-mode emmet-mode web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc coffee-mode ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(powerline-color1 "#3d3d68")
 '(powerline-color2 "#292945")
 '(tab-width 2)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#bf616a")
     (40 . "#DCA432")
     (60 . "#ebcb8b")
     (80 . "#B4EB89")
     (100 . "#89EBCA")
     (120 . "#89AAEB")
     (140 . "#C189EB")
     (160 . "#bf616a")
     (180 . "#DCA432")
     (200 . "#ebcb8b")
     (220 . "#B4EB89")
     (240 . "#89EBCA")
     (260 . "#89AAEB")
     (280 . "#C189EB")
     (300 . "#bf616a")
     (320 . "#DCA432")
     (340 . "#ebcb8b")
     (360 . "#B4EB89"))))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
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
 '(LaTeX-command "latex")
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#bf616a" "#B4EB89" "#ebcb8b" "#89AAEB" "#C189EB" "#89EBCA" "#232830"))
 '(beacon-color "#cc6666")
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "cb477d192ee6456dc2eb5ca5a0b7bd16bdb26514be8f8512b937291317c7b166" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "b0fd04a1b4b614840073a82a53e88fe2abc3d731462d6fde4e541807825af342" "4e132458143b6bab453e812f03208075189deca7ad5954a4abb27d5afce10a9a" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "11e57648ab04915568e558b77541d0e94e69d09c9c54c06075938b6abc0189d8" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "8d805143f2c71cfad5207155234089729bb742a1cb67b7f60357fdd952044315" "8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4ea0aa360264ff861fb0212abe4161b83ad1d8c8b74d8a04bcd1baf0ebdceeae" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "4138944fbed88c047c9973f68908b36b4153646a045648a22083bd622d1e636d" "cd7ffd461946d2a644af8013d529870ea0761dccec33ac5c51a7aaeadec861c2" "e3c87e869f94af65d358aa279945a3daf46f8185f1a5756ca1c90759024593dd" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#343d46" t)
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(jdee-db-active-breakpoint-face-colors (cons "#f2f2f2" "#4271ae"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#f2f2f2" "#718c00"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#f2f2f2" "#a5a4a5"))
 '(js-indent-level 2)
 '(linum-format "%3i")
 '(minimap-always-recenter t)
 '(minimap-dedicated-window nil)
 '(minimap-mode t)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(objed-cursor-color "#c82829")
 '(org-agenda-files (quote ("~/Dropbox/org/todo.org")))
 '(org-startup-truncated nil)
 '(package-selected-packages
   (quote
    (pdf-view-restore helm-flyspell minimap doom-nord-theme-theme doom-nord-theme doom-themes org-ref key-chord helm-bibtex parsebib biblio biblio-core yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode helm-pydoc cython-mode company-anaconda anaconda-mode pythonic lv eslint-fix git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter diff-hl zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme pdf-tools tablist mmm-mode markdown-toc markdown-mode gh-md wgrep smex ivy-hydra flyspell-correct-ivy counsel-projectile counsel swiper ivy company-auctex auctex-latexmk auctex unfill mwim helm-company helm-c-yasnippet fuzzy company-web web-completion-data company-tern dash-functional tern company-statistics company auto-yasnippet ac-ispell auto-complete xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help smeargle orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download magit-gitflow magit-popup htmlize helm-gitignore gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck evil-magit magit transient git-commit with-editor auto-dictionary web-mode tagedit slim-mode scss-mode sass-mode pug-mode helm-css-scss haml-mode emmet-mode web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc coffee-mode ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(powerline-color1 "#3d3d68")
 '(powerline-color2 "#292945")
 '(tab-width 2)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#bf616a")
     (40 . "#DCA432")
     (60 . "#ebcb8b")
     (80 . "#B4EB89")
     (100 . "#89EBCA")
     (120 . "#89AAEB")
     (140 . "#C189EB")
     (160 . "#bf616a")
     (180 . "#DCA432")
     (200 . "#ebcb8b")
     (220 . "#B4EB89")
     (240 . "#89EBCA")
     (260 . "#89AAEB")
     (280 . "#C189EB")
     (300 . "#bf616a")
     (320 . "#DCA432")
     (340 . "#ebcb8b")
     (360 . "#B4EB89"))))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
