(deftheme flexokilight
  "flexokilight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (flexokilight-colors
        '(
          (bg         . "#fffcf0")
          (fg         . "#100f0f")
          (cursor     . "#100f0f")
          (cursor-txt . "#fffcf0")
          (selection  . "#6f6e69")
          (selection-fg . "#fffcf0")
          (black      . "#100f0f")
          (red        . "#af3029")
          (green      . "#66800b")
          (yellow     . "#ad8301")
          (blue       . "#205ea6")
          (magenta    . "#a02f6f")
          (cyan       . "#24837b")
          (white      . "#6f6e69")
          (br-black   . "#b7b5ac")
          (br-red     . "#d14d41")
          (br-green   . "#879a39")
          (br-yellow  . "#d0a215")
          (br-blue    . "#4385be")
          (br-magenta . "#ce5d97")
          (br-cyan    . "#3aa99f")
          (br-white   . "#cecdc3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key flexokilight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'flexokilight

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

(provide-theme 'flexokilight)
