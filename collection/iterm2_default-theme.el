(deftheme iterm2_default
  "iterm2_default-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (iterm2_default-colors
        '(
          (bg         . "#000000")
          (fg         . "#ffffff")
          (cursor     . "#e5e5e5")
          (cursor-txt . "#000000")
          (selection  . "#c1deff")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#c91b00")
          (green      . "#00c200")
          (yellow     . "#c7c400")
          (blue       . "#2225c4")
          (magenta    . "#ca30c7")
          (cyan       . "#00c5c7")
          (white      . "#ffffff")
          (br-black   . "#686868")
          (br-red     . "#ff6e67")
          (br-green   . "#5ffa68")
          (br-yellow  . "#fffc67")
          (br-blue    . "#6871ff")
          (br-magenta . "#ff77ff")
          (br-cyan    . "#60fdff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key iterm2_default-colors)) 'unspecified))))

  (custom-theme-set-faces
   'iterm2_default

   `(default ((,class (:background ,(funcall safe-get-color 'bg)
                                   :foreground ,(funcall safe-get-color 'fg)))))
   `(cursor ((,class (:background ,(funcall safe-get-color 'cursor)
                                  :foreground ,(funcall safe-get-color 'cursor-txt)))))
   `(region ((,class (:background ,(funcall safe-get-color 'selection)
                                  :foreground ,(funcall safe-get-color 'selection-fg)))))
   `(highlight ((,class (:background ,(funcall safe-get-color 'selection)))))
   `(fringe ((,class (:background ,(funcall safe-get-color 'bg)))))
   `(minibuffer-prompt ((,class (:foreground ,(funcall safe-get-color 'blue)
                                             :weight bold))))
   `(show-paren-match ((,class (:background ,(funcall safe-get-color 'br-yellow)
                                            :foreground ,(funcall safe-get-color 'bg)
                                            :weight bold))))
   `(show-paren-mismatch ((,class (:background ,(funcall safe-get-color 'br-red)
                                               :foreground ,(funcall safe-get-color 'bg)
                                               :weight bold))))))

(provide-theme 'iterm2_default)
