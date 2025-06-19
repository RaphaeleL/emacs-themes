(deftheme synthwavealpha
  "synthwavealpha-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (synthwavealpha-colors
        '(
          (bg         . "#241b30")
          (fg         . "#f2f2e3")
          (cursor     . "#f2f2e3")
          (cursor-txt . "#241b30")
          (selection  . "#6e29ad")
          (selection-fg . "#f2f2e3")
          (black      . "#241b30")
          (red        . "#e60a70")
          (green      . "#00986c")
          (yellow     . "#adad3e")
          (blue       . "#6e29ad")
          (magenta    . "#b300ad")
          (cyan       . "#00b0b1")
          (white      . "#b9b1bc")
          (br-black   . "#7f7094")
          (br-red     . "#e60a70")
          (br-green   . "#0ae4a4")
          (br-yellow  . "#f9f972")
          (br-blue    . "#aa54f9")
          (br-magenta . "#ff00f6")
          (br-cyan    . "#00fbfd")
          (br-white   . "#f2f2e3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key synthwavealpha-colors)) 'unspecified))))

  (custom-theme-set-faces
   'synthwavealpha

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

(provide-theme 'synthwavealpha)
