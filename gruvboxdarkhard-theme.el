(deftheme gruvboxdarkhard
  "gruvboxdarkhard-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (gruvboxdarkhard-colors
        '(
          (bg         . "#1d2021")
          (fg         . "#ebdbb2")
          (cursor     . "#ebdbb2")
          (cursor-txt . "#1d2021")
          (selection  . "#665c54")
          (selection-fg . "#ebdbb2")
          (black      . "#1d2021")
          (red        . "#cc241d")
          (green      . "#98971a")
          (yellow     . "#d79921")
          (blue       . "#458588")
          (magenta    . "#b16286")
          (cyan       . "#689d6a")
          (white      . "#a89984")
          (br-black   . "#928374")
          (br-red     . "#fb4934")
          (br-green   . "#b8bb26")
          (br-yellow  . "#fabd2f")
          (br-blue    . "#83a598")
          (br-magenta . "#d3869b")
          (br-cyan    . "#8ec07c")
          (br-white   . "#ebdbb2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key gruvboxdarkhard-colors)) 'unspecified))))

  (custom-theme-set-faces
   'gruvboxdarkhard

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

(provide-theme 'gruvboxdarkhard)
