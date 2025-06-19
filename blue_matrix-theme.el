(deftheme blue_matrix
  "blue_matrix-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (blue_matrix-colors
        '(
          (bg         . "#101116")
          (fg         . "#00a2ff")
          (cursor     . "#76ff9f")
          (cursor-txt . "#ffffff")
          (selection  . "#c1deff")
          (selection-fg . "#000000")
          (black      . "#101116")
          (red        . "#ff5680")
          (green      . "#00ff9c")
          (yellow     . "#fffc58")
          (blue       . "#00b0ff")
          (magenta    . "#d57bff")
          (cyan       . "#76c1ff")
          (white      . "#c7c7c7")
          (br-black   . "#686868")
          (br-red     . "#ff6e67")
          (br-green   . "#5ffa68")
          (br-yellow  . "#fffc67")
          (br-blue    . "#6871ff")
          (br-magenta . "#d682ec")
          (br-cyan    . "#60fdff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key blue_matrix-colors)) 'unspecified))))

  (custom-theme-set-faces
   'blue_matrix

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

(provide-theme 'blue_matrix)
