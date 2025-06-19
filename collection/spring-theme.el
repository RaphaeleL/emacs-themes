(deftheme spring
  "spring-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (spring-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#4d4d4c")
          (cursor     . "#4d4d4c")
          (cursor-txt . "#ffffff")
          (selection  . "#d6d6d6")
          (selection-fg . "#4d4d4c")
          (black      . "#000000")
          (red        . "#ff4d83")
          (green      . "#1f8c3b")
          (yellow     . "#1fc95b")
          (blue       . "#1dd3ee")
          (magenta    . "#8959a8")
          (cyan       . "#3e999f")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#ff0021")
          (br-green   . "#1fc231")
          (br-yellow  . "#d5b807")
          (br-blue    . "#15a9fd")
          (br-magenta . "#8959a8")
          (br-cyan    . "#3e999f")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key spring-colors)) 'unspecified))))

  (custom-theme-set-faces
   'spring

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

(provide-theme 'spring)
