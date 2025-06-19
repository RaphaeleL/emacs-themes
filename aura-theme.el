(deftheme aura
  "aura-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (aura-colors
        '(
          (bg         . "#15141b")
          (fg         . "#edecee")
          (cursor     . "#a277ff")
          (cursor-txt . "#edecee")
          (selection  . "#a277ff")
          (selection-fg . "#edecee")
          (black      . "#110f18")
          (red        . "#ff6767")
          (green      . "#61ffca")
          (yellow     . "#ffca85")
          (blue       . "#a277ff")
          (magenta    . "#a277ff")
          (cyan       . "#61ffca")
          (white      . "#edecee")
          (br-black   . "#4d4d4d")
          (br-red     . "#ffca85")
          (br-green   . "#a277ff")
          (br-yellow  . "#ffca85")
          (br-blue    . "#a277ff")
          (br-magenta . "#a277ff")
          (br-cyan    . "#61ffca")
          (br-white   . "#edecee")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key aura-colors)) 'unspecified))))

  (custom-theme-set-faces
   'aura

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

(provide-theme 'aura)
