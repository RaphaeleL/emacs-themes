(deftheme githublightdefault
  "githublightdefault-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (githublightdefault-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#1f2328")
          (cursor     . "#0969da")
          (cursor-txt . "#0969da")
          (selection  . "#1f2328")
          (selection-fg . "#ffffff")
          (black      . "#24292f")
          (red        . "#cf222e")
          (green      . "#116329")
          (yellow     . "#4d2d00")
          (blue       . "#0969da")
          (magenta    . "#8250df")
          (cyan       . "#1b7c83")
          (white      . "#6e7781")
          (br-black   . "#57606a")
          (br-red     . "#a40e26")
          (br-green   . "#1a7f37")
          (br-yellow  . "#633c01")
          (br-blue    . "#218bff")
          (br-magenta . "#a475f9")
          (br-cyan    . "#3192aa")
          (br-white   . "#8c959f")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key githublightdefault-colors)) 'unspecified))))

  (custom-theme-set-faces
   'githublightdefault

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

(provide-theme 'githublightdefault)
