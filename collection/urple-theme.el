(deftheme urple
  "urple-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (urple-colors
        '(
          (bg         . "#1b1b23")
          (fg         . "#877a9b")
          (cursor     . "#a063eb")
          (cursor-txt . "#1b1b22")
          (selection  . "#a063eb")
          (selection-fg . "#1b1b22")
          (black      . "#000000")
          (red        . "#b0425b")
          (green      . "#37a415")
          (yellow     . "#ad5c42")
          (blue       . "#564d9b")
          (magenta    . "#6c3ca1")
          (cyan       . "#808080")
          (white      . "#87799c")
          (br-black   . "#5d3225")
          (br-red     . "#ff6388")
          (br-green   . "#29e620")
          (br-yellow  . "#f08161")
          (br-blue    . "#867aed")
          (br-magenta . "#a05eee")
          (br-cyan    . "#eaeaea")
          (br-white   . "#bfa3ff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key urple-colors)) 'unspecified))))

  (custom-theme-set-faces
   'urple

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

(provide-theme 'urple)
