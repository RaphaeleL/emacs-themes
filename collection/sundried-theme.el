(deftheme sundried
  "sundried-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (sundried-colors
        '(
          (bg         . "#1a1818")
          (fg         . "#c9c9c9")
          (cursor     . "#ffffff")
          (cursor-txt . "#191717")
          (selection  . "#302b2a")
          (selection-fg . "#c9c9c9")
          (black      . "#302b2a")
          (red        . "#a7463d")
          (green      . "#587744")
          (yellow     . "#9d602a")
          (blue       . "#485b98")
          (magenta    . "#864651")
          (cyan       . "#9c814f")
          (white      . "#c9c9c9")
          (br-black   . "#4d4e48")
          (br-red     . "#aa000c")
          (br-green   . "#128c21")
          (br-yellow  . "#fc6a21")
          (br-blue    . "#7999f7")
          (br-magenta . "#fd8aa1")
          (br-cyan    . "#fad484")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key sundried-colors)) 'unspecified))))

  (custom-theme-set-faces
   'sundried

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

(provide-theme 'sundried)
