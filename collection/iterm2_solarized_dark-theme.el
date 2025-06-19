(deftheme iterm2_solarized_dark
  "iterm2_solarized_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (iterm2_solarized_dark-colors
        '(
          (bg         . "#002b36")
          (fg         . "#839496")
          (cursor     . "#839496")
          (cursor-txt . "#073642")
          (selection  . "#073642")
          (selection-fg . "#93a1a1")
          (black      . "#073642")
          (red        . "#dc322f")
          (green      . "#859900")
          (yellow     . "#b58900")
          (blue       . "#268bd2")
          (magenta    . "#d33682")
          (cyan       . "#2aa198")
          (white      . "#eee8d5")
          (br-black   . "#002b36")
          (br-red     . "#cb4b16")
          (br-green   . "#586e75")
          (br-yellow  . "#657b83")
          (br-blue    . "#839496")
          (br-magenta . "#6c71c4")
          (br-cyan    . "#93a1a1")
          (br-white   . "#fdf6e3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key iterm2_solarized_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'iterm2_solarized_dark

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

(provide-theme 'iterm2_solarized_dark)
