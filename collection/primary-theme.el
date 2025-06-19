(deftheme primary
  "primary-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (primary-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#000000")
          (cursor     . "#000000")
          (cursor-txt . "#ffffff")
          (selection  . "#656565")
          (selection-fg . "#eeeeee")
          (black      . "#000000")
          (red        . "#db4437")
          (green      . "#0f9d58")
          (yellow     . "#f4b400")
          (blue       . "#4285f4")
          (magenta    . "#db4437")
          (cyan       . "#4285f4")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#db4437")
          (br-green   . "#0f9d58")
          (br-yellow  . "#f4b400")
          (br-blue    . "#4285f4")
          (br-magenta . "#4285f4")
          (br-cyan    . "#0f9d58")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key primary-colors)) 'unspecified))))

  (custom-theme-set-faces
   'primary

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

(provide-theme 'primary)
