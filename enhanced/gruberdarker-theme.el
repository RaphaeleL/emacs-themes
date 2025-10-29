(deftheme gruberdarker "Custom Variant of rexim/gruber-darker-theme")

(let* ((class '((class color) (min-colors 89)))
       (gruberdarker-colors
        '((bg           . "#181818")   ;; Deep, dark background
          (fg           . "#e4e4e4")   ;; Light gray text
          (cursor       . "#ffdd33")   ;; Main color: yellow
          (cursor-txt   . "#181818")   ;; Dark background for cursor text
          (selection    . "#2c2c2c")   ;; Slightly lighter than bg for selection
          (selection-fg . "#e4e4e4")   ;; Same as fg for consistency
          (black        . "#282828")   ;; Softer black
          (red          . "#f43841")   ;; Vibrant red
          (green        . "#73d936")   ;; Bright green
          (yellow       . "#ffdd33")   ;; Warm yellow - MAIN COLOR
          (brown        . "#cc8c3c")   ;; caramel brown
          (grey         . "#282828")   ;; grey-ish
          (blue         . "#95a99f")   ;; Muted blue
          (magenta      . "#9e95c7")   ;; Soft magenta
          (cyan         . "#95a99f")   ;; Muted cyan
          (white        . "#e4e4e4")   ;; Light gray
          (br-black     . "#52494e")   ;; Warm gray
          (br-red       . "#ff4f58")   ;; Bright red
          (br-green     . "#73d936")   ;; Same as green
          (br-yellow    . "#ffdd33")   ;; Same as yellow
          (br-blue      . "#95a99f")   ;; Same as blue
          (br-brown     . "#cc8c3c")   ;; Same as brown
          (br-grey      . "#282828")   ;; Same as grey
          (br-magenta   . "#afafd7")   ;; Light magenta
          (br-cyan      . "#95a99f")   ;; Same as cyan
          (br-white     . "#f5f5f5"))) ;; Almost white

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key) (or (cdr (assoc key gruberdarker-colors)) 'unspecified))))

  (custom-theme-set-faces 'gruberdarker

   ;; Basic faces
   `(default ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'fg)))))
   `(cursor ((,class (:background ,(funcall safe-get-color 'cursor) :foreground ,(funcall safe-get-color 'cursor-txt)))))
   `(region ((,class (:background ,(funcall safe-get-color 'selection)))))
   `(highlight ((,class (:background ,(funcall safe-get-color 'selection)))))
   `(fringe ((,class (:background ,(funcall safe-get-color 'bg)))))
   `(minibuffer-prompt ((,class (:foreground ,(funcall safe-get-color 'yellow) :weight bold))))

   ;; Line number faces - main color for current line
   `(line-number ((,class (:inherit default :foreground ,(funcall safe-get-color 'br-black)))))
   `(line-number-current-line ((,class (:inherit default :foreground ,(funcall safe-get-color 'yellow) :weight bold))))
   `(line-number-major-tick ((,class (:foreground ,(funcall safe-get-color 'br-black)))))
   `(line-number-minor-tick ((,class (:foreground ,(funcall safe-get-color 'br-black)))))

   ;; Font lock faces - carefully tuned for Gruber-darker style
   `(font-lock-builtin-face ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(font-lock-comment-face ((,class (:foreground ,(funcall safe-get-color 'br-brown) :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,(funcall safe-get-color 'br-brown)))))
   `(font-lock-constant-face ((,class (:foreground ,(funcall safe-get-color 'br-blue)))))
   `(font-lock-doc-face ((,class (:foreground ,(funcall safe-get-color 'green) :slant italic))))
   `(font-lock-doc-string-face ((,class (:foreground ,(funcall safe-get-color 'green) :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,(funcall safe-get-color 'blue)))))
   `(font-lock-keyword-face ((,class (:foreground ,(funcall safe-get-color 'yellow) :weight bold))))
   `(font-lock-preprocessor-face ((,class (:foreground ,(funcall safe-get-color 'br-blue)))))
   `(font-lock-string-face ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(font-lock-type-face ((,class (:foreground ,(funcall safe-get-color 'br-blue)))))
   `(font-lock-variable-name-face ((,class (:foreground ,(funcall safe-get-color 'br-white)))))
   `(font-lock-warning-face ((,class (:foreground ,(funcall safe-get-color 'red) :weight bold))))

   ;; Modeline faces - Gruber-darker style
   `(mode-line ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'fg)))))
   `(mode-line-inactive ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'fg)))))
   `(mode-line-highlight ((,class (:background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'bg) :weight bold))))
   `(mode-line-emphasis ((,class (:weight bold))))
   `(mode-line-buffer-id ((,class (:foreground ,(funcall safe-get-color 'yellow) :weight bold))))

   ;; Whitespace
   `(whitespace-space ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'br-grey)))))
   `(whitespace-tab ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'br-grey)))))
   `(whitespace-hspace ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'br-grey)))))
   `(whitespace-line ((,class (:background ,(funcall safe-get-color 'br-black) :foreground ,(funcall safe-get-color 'red)))))
   `(whitespace-newline ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'br-grey)))))
   `(whitespace-trailing ((,class (:background ,(funcall safe-get-color 'red) :foreground ,(funcall safe-get-color 'red)))))
   `(whitespace-empty ((,class (:background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'yellow)))))
   `(whitespace-indentation ((,class (:background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'red)))))
   `(whitespace-space-after-tab ((,class (:background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'yellow)))))
   `(whitespace-space-before-tab ((,class (:background ,(funcall safe-get-color 'br-black) :foreground ,(funcall safe-get-color 'br-grey)))))

))

(provide-theme 'gruberdarker)
