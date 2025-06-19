(deftheme synthwave
  "synthwave-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (synthwave-colors
        '(
          (bg         . "#000000")
          (fg         . "#dad9c7")
          (cursor     . "#19cde6")
          (cursor-txt . "#dad9c7")
          (selection  . "#19cde6")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#f6188f")
          (green      . "#1ebb2b")
          (yellow     . "#fdf834")
          (blue       . "#2186ec")
          (magenta    . "#f85a21")
          (cyan       . "#12c3e2")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#f841a0")
          (br-green   . "#25c141")
          (br-yellow  . "#fdf454")
          (br-blue    . "#2f9ded")
          (br-magenta . "#f97137")
          (br-cyan    . "#19cde6")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key synthwave-colors)) 'unspecified))))

  (custom-theme-set-faces
   'synthwave

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

(provide-theme 'synthwave)
