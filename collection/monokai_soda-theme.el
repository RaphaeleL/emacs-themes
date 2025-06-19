(deftheme monokai_soda
  "monokai_soda-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (monokai_soda-colors
        '(
          (bg         . "#1a1a1a")
          (fg         . "#c4c5b5")
          (cursor     . "#f6f7ec")
          (cursor-txt . "#c4c5b5")
          (selection  . "#343434")
          (selection-fg . "#c4c5b5")
          (black      . "#1a1a1a")
          (red        . "#f4005f")
          (green      . "#98e024")
          (yellow     . "#fa8419")
          (blue       . "#9d65ff")
          (magenta    . "#f4005f")
          (cyan       . "#58d1eb")
          (white      . "#c4c5b5")
          (br-black   . "#625e4c")
          (br-red     . "#f4005f")
          (br-green   . "#98e024")
          (br-yellow  . "#e0d561")
          (br-blue    . "#9d65ff")
          (br-magenta . "#f4005f")
          (br-cyan    . "#58d1eb")
          (br-white   . "#f6f6ef")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key monokai_soda-colors)) 'unspecified))))

  (custom-theme-set-faces
   'monokai_soda

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

(provide-theme 'monokai_soda)
