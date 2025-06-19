(deftheme kanagawa_wave
  "kanagawa_wave-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (kanagawa_wave-colors
        '(
          (bg         . "#1f1f28")
          (fg         . "#dcd7ba")
          (cursor     . "#c8c093")
          (cursor-txt . "#1d202f")
          (selection  . "#2d4f67")
          (selection-fg . "#c8c093")
          (black      . "#090618")
          (red        . "#c34043")
          (green      . "#76946a")
          (yellow     . "#c0a36e")
          (blue       . "#7e9cd8")
          (magenta    . "#957fb8")
          (cyan       . "#6a9589")
          (white      . "#c8c093")
          (br-black   . "#727169")
          (br-red     . "#e82424")
          (br-green   . "#98bb6c")
          (br-yellow  . "#e6c384")
          (br-blue    . "#7fb4ca")
          (br-magenta . "#938aa9")
          (br-cyan    . "#7aa89f")
          (br-white   . "#dcd7ba")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key kanagawa_wave-colors)) 'unspecified))))

  (custom-theme-set-faces
   'kanagawa_wave

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

(provide-theme 'kanagawa_wave)
