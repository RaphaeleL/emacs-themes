(deftheme icebergdark
  "icebergdark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (icebergdark-colors
        '(
          (bg         . "#161821")
          (fg         . "#c6c8d1")
          (cursor     . "#c6c8d1")
          (cursor-txt . "#161821")
          (selection  . "#c6c8d1")
          (selection-fg . "#161821")
          (black      . "#1e2132")
          (red        . "#e27878")
          (green      . "#b4be82")
          (yellow     . "#e2a478")
          (blue       . "#84a0c6")
          (magenta    . "#a093c7")
          (cyan       . "#89b8c2")
          (white      . "#c6c8d1")
          (br-black   . "#6b7089")
          (br-red     . "#e98989")
          (br-green   . "#c0ca8e")
          (br-yellow  . "#e9b189")
          (br-blue    . "#91acd1")
          (br-magenta . "#ada0d3")
          (br-cyan    . "#95c4ce")
          (br-white   . "#d2d4de")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key icebergdark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'icebergdark

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

(provide-theme 'icebergdark)
