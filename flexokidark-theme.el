(deftheme flexokidark
  "flexokidark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (flexokidark-colors
        '(
          (bg         . "#100f0f")
          (fg         . "#cecdc3")
          (cursor     . "#cecdc3")
          (cursor-txt . "#100f0f")
          (selection  . "#cecdc3")
          (selection-fg . "#100f0f")
          (black      . "#100f0f")
          (red        . "#d14d41")
          (green      . "#879a39")
          (yellow     . "#d0a215")
          (blue       . "#4385be")
          (magenta    . "#ce5d97")
          (cyan       . "#3aa99f")
          (white      . "#878580")
          (br-black   . "#575653")
          (br-red     . "#af3029")
          (br-green   . "#66800b")
          (br-yellow  . "#ad8301")
          (br-blue    . "#205ea6")
          (br-magenta . "#a02f6f")
          (br-cyan    . "#24837b")
          (br-white   . "#cecdc3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key flexokidark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'flexokidark

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

(provide-theme 'flexokidark)
