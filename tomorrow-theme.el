(deftheme tomorrow
  "tomorrow-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tomorrow-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#4d4d4c")
          (cursor     . "#4d4d4c")
          (cursor-txt . "#ffffff")
          (selection  . "#d6d6d6")
          (selection-fg . "#4d4d4c")
          (black      . "#000000")
          (red        . "#c82829")
          (green      . "#718c00")
          (yellow     . "#eab700")
          (blue       . "#4271ae")
          (magenta    . "#8959a8")
          (cyan       . "#3e999f")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#c82829")
          (br-green   . "#718c00")
          (br-yellow  . "#eab700")
          (br-blue    . "#4271ae")
          (br-magenta . "#8959a8")
          (br-cyan    . "#3e999f")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tomorrow-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tomorrow

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

(provide-theme 'tomorrow)
