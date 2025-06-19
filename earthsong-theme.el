(deftheme earthsong
  "earthsong-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (earthsong-colors
        '(
          (bg         . "#292520")
          (fg         . "#e5c7a9")
          (cursor     . "#f6f7ec")
          (cursor-txt . "#292520")
          (selection  . "#121418")
          (selection-fg . "#e5c7a9")
          (black      . "#121418")
          (red        . "#c94234")
          (green      . "#85c54c")
          (yellow     . "#f5ae2e")
          (blue       . "#1398b9")
          (magenta    . "#d0633d")
          (cyan       . "#509552")
          (white      . "#e5c6aa")
          (br-black   . "#675f54")
          (br-red     . "#ff645a")
          (br-green   . "#98e036")
          (br-yellow  . "#e0d561")
          (br-blue    . "#5fdaff")
          (br-magenta . "#ff9269")
          (br-cyan    . "#84f088")
          (br-white   . "#f6f7ec")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key earthsong-colors)) 'unspecified))))

  (custom-theme-set-faces
   'earthsong

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

(provide-theme 'earthsong)
