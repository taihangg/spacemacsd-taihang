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
   dotspacemacs-enable-lazy-installation 'nil
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
        ;; ----------------------------------------------------------------
        ;; Example of useful layers you may want to use right away.
        ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
        ;; <M-m f e R> (Emacs style) to install them.
        ;; ----------------------------------------------------------------
        
        ;; completion layer
        helm
	(auto-completion :variables auto-completion-enable-sort-by-usage t
                      auto-completion-enable-snippets-in-popup t
                      :disabled-for org markdown)
        
        better-defaults
        
        ;; git
        
        ;; markdown
        
        

        
        ;; spell-checking
        syntax-checking

        ;; version-control
        
        ;; theme layer
        colors
        
        
        ranger
     	search-engine
     	(gtags :disabled-for clojure emacs-lisp javascript latex python shell-scripts)
     	(shell :variables shell-default-shell 'eshell)
     	(org :variables 
            org-enable-reveal-js-support t
            org-projectile-file "~/TODOs.org")
        html
     	javascript
        ;; programming layer
	emacs-lisp
        (c-c++ :variables
                c-c++-default-mode-for-headers 'c++-mode)
        go
        
        (chinese    :packages youdao-dictionary fcitx
                    :variables chinese-enable-fcitx nil
                    chinese-enable-youdao-dict t)
        
        chrome
        
        ;; email layer
        mu4e
    
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-but-keep-unused))

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
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 10
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
   dotspacemacs-startup-banner 'official
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
                            ;; monokai
                            afternoon
                            alect-dark
                            farmhouse-dark 
                            adwaita
                            alect-black
                            deeper-blue
                            sanityinc-solarized-light 
                            sanityinc-solarized-dark)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14
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
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
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
   cursor-type 'hollow
   )
   
   
   
   )

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
    
    
    (setq configuration-layer--elpa-archives
        '(
            ("melpa-cn" . "http://elpa.zilongshanren.com/melpa/")
            ("org-cn"   . "http://elpa.zilongshanren.com/org/")
            ("gnu-cn"   . "http://elpa.zilongshanren.com/gnu/")

          ))
          
          
    ;; https://github.com/syl20bnr/spacemacs/issues/2705
    (setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
    
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
    ;(setq ns-use-srgb-colorspace nil)
    ;(setq powerline-default-separator 'utf-8)
    ;(add-to-list 'auto-mode-alist '("\\.js\\'" . react-mode))
    ;(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
    ;(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))
    ;(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))
    ;(add-to-list 'auto-mode-alist '("\\.h\\'" . c-mode))
    
	;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
    (tool-bar-mode -1)
	;; 关闭文件滑动控件
    (scroll-bar-mode -1)
	;; 显示行号
    (global-linum-mode 1)
	;; 关闭启动帮助画面
    ;; (setq inhibit-splash-screen 1)
	;; 关闭缩进 (第二天中被去除), 用双分好;;注释
    (electric-indent-mode 1)
	;; 更改显示字体大小 16pt
    ;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
    (set-face-attribute 'default nil :height 160)
	; 开启全局 Company 补全
    (global-company-mode 1)
	;; 更改光标的样式（不能生效，解决方案见第二集）
    ;;(setq cursor-type 'bar)
	(setq-default cursor-type 'bar)
	;; 禁止 Emacs 自动生成备份文件
	(setq make-backup-files nil)
	
	;; 最近编辑过的文件
	(require 'recentf)
    (recentf-mode 1)
    (setq recentf-max-menu-item 10)
	;(global-set-key "C-x C-r" 'recentf-open-files)
	;(global-set-key "\C-x\ \C-r" 'recentf-open-files)
	
    ;; 这个快捷键绑定可以用之后的插件 counsel 代替
    ;; (global-set-key (kbd "C-x C-r") 'recentf-open-files)
	;; 当你选中一段文字之后输入一个字符会替换掉你选中部分的文字
	(delete-selection-mode 1)
	;; org-mode内语法高亮
	(require 'org)
	(setq org-src-fontify-natively t)
	(show-paren-mode 1)
	
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (monokai-theme-theme command-log-mode ox-gfm kadwait-theme elfeed-goodies elfeed-org elfeed-web elfeed geeknote engine-mode spotify helm-spotify multi twittering-mode wakatime-mode evil-cleverparens evil-commentary evil-snipe diff-hl ansible ansible-doc jinja2-mode counsel-dash helm-dash deft docker docker-tramp dockerfile-mode fasd grizzl flycheck-ledger ledger-mode osx-location rase sunshine theme-changer imenu-list nginx-mode pandoc-mode ox-pandoc pdf-tools tablist prodigy puppet-mode rebox2 ob-http restclient salt-mode mmm-jinja2 yaml-mode spray systemd terraform-mode hcl-mode vagrant vagrant-tramp company-ycmd flycheck-ycmd ycmd request-deferred helm-cscope xcscope ggtags helm-gtags bracketed-paste origami hl-anything evil-magit gitattributes-mode gitconfig-mode git-link git-messenger git-timemachine helm-gitignore gitignore-mode magit-gitflow orgit smeargle gist github-browse-file github-clone github-search magit-gh-pulls magit gh marshal logito pcache magit-popup p4 git-gutter-fringe git-gutter git-gutter-fringe+ fringe-helper git-gutter+ git-commit with-editor floobits company-nixos-options helm-nixos-options nix-mode nixos-options launchctl osx-dictionary osx-trash pbcopy reveal-in-osx-finder nlinum-relative nlinum adoc-mode markup-faces nasm-mode x86-lookup ahk-mode org-ref key-chord helm-bibtex parsebib biblio biblio-core srefactor stickyfunc-enhance cider-eval-sexp-fu clj-refactor edn cider paredit queue peg clojure-mode clojure-snippets common-lisp-snippets slime-company slime omnisharp csharp-mode csv-mode company-dcd d-mode flycheck-dmd-dub alchemist flycheck-mix elixir-mode ob-elixir elm-mode flycheck-elm erlang ess-R-data-view ess-R-object-popup ess-smart-equals ess arduino-mode julia-mode matlab-mode qml-mode scad-mode stan-mode thrift wolfram-mode faust-mode fsharp-mode flycheck-gometalinter graphviz-dot-mode cmm-mode company-cabal company-ghci company-ghc flycheck-haskell ghc haskell-snippets helm-hoogle hindent hlint-refactor intero haskell-mode idris-mode prop-menu ein company-emacs-eclim eclim coffee-mode company-tern js-doc js2-refactor multiple-cursors json-mode json-reformat json-snatcher tern web-beautify livid-mode skewer-mode js2-mode simple-httpd auctex-latexmk company-auctex auctex typo lua-mode company-emoji emoji-cheat-sheet-plus gh-md markdown-toc mmm-mode vmd-mode flycheck-nim nim-mode commenter epc ctable concurrent deferred merlin ocp-indent tuareg caml utop drupal-mode php-extras plantuml-mode psci purescript-mode psc-ide company-anaconda anaconda-mode cython-mode helm-pydoc hy-mode live-py-mode pip-requirements py-isort pyenv-mode pythonic pytest pyvenv yapfify company-quickhelp racket-mode faceup bundler chruby enh-ruby-mode minitest rbenv robe rspec-mode rubocop ruby-test-mode ruby-tools rvm cargo racer flycheck-rust seq rust-mode toml-mode ensime noflet scala-mode sbt-mode geiser glsl-mode company-shell fish-mode insert-shebang ob-sml sml-mode sql-indent swift-mode tide typescript-mode vimrc-mode dactyl-mode powershell chinese-pyim chinese-pyim-basedict chinese-wbim fcitx find-by-pinyin-dired ace-pinyin pinyinlib ace-jump-mode pangu-spacing 2048-game pacmacs dash-functional typit mmt selectric-mode xkcd pony-mode feature-mode projectile-rails rake inf-ruby inflections ibuffer-projectile ox-twbs smex counsel-projectile counsel swiper ivy-hydra wgrep auto-dictionary flyspell-correct-ivy ivy flyspell-correct-helm flyspell-correct-popup flyspell-correct flyspell-popup erc-gitter jabber fsm rcirc-color rcirc-notify slack emojify circe oauth2 websocket dalect-blac-theme aafternoon-theme dadwait-theme dafternoon-theme mwim mu4e-maildirs-extension mu4e-alert ht gmail-message-mode ham-mode markdown-mode html-to-markdown edit-server ox-reveal zonokai-theme zenburn-theme zen-and-art-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pastels-on-dark-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme firebelly-theme farmhouse-theme espresso-theme dracula-theme django-theme darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme go-eldoc company-go go-mode youdao-dictionary names chinese-word-at-point xterm-color web-mode tagedit powerline slim-mode shell-pop scss-mode sass-mode ranger rainbow-mode rainbow-identifiers pug-mode spinner org alert log4e gntp multi-term less-css-mode hydra parent-mode projectile helm-css-scss haml-mode pos-tip flycheck pkg-info epl flx smartparens iedit anzu evil goto-chg undo-tree highlight eshell-z eshell-prompt-extras esh-help emmet-mode f s disaster diminish company-web web-completion-data company-c-headers company color-identifiers-mode cmake-mode clang-format bind-map bind-key yasnippet packed dash helm avy helm-core async auto-complete popup package-build php-auto-yasnippets phpcbf phpunit php-mode erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spacemacs-theme spaceline restart-emacs request rainbow-delimiters quelpa popwin persp-mode pcre2el paradox org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump define-word company-statistics column-enforce-mode clean-aindent-mode auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
