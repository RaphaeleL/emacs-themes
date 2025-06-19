(deftheme builtin_tango_dark
  "builtin_tango_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (builtin_tango_dark-colors
        '(
          (bg         . "#000000")
          (fg         . "#ffffff")
          (cursor     . "#ffffff")
          (cursor-txt . "#000000")
          (selection  . "#b5d5ff")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#cc0000")
          (green      . "#4e9a06")
          (yellow     . "#c4a000")
          (blue       . "#3465a4")
          (magenta    . "#75507b")
          (cyan       . "#06989a")
          (white      . "#d3d7cf")
          (br-black   . "#555753")
          (br-red     . "#ef2929")
          (br-green   . "#8ae234")
          (br-yellow  . "#fce94f")
          (br-blue    . "#729fcf")
          (br-magenta . "#ad7fa8")
          (br-cyan    . "#34e2e2")
          (br-white   . "#eeeeec")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key builtin_tango_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'builtin_tango_dark

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

(provide-theme 'builtin_tango_dark)
