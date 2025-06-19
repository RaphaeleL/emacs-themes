(deftheme laser
  "laser-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (laser-colors
        '(
          (bg         . "#030d18")
          (fg         . "#f106e3")
          (cursor     . "#00ff9c")
          (cursor-txt . "#ffffff")
          (selection  . "#2e206a")
          (selection-fg . "#f4f4f4")
          (black      . "#626262")
          (red        . "#ff8373")
          (green      . "#b4fb73")
          (yellow     . "#09b4bd")
          (blue       . "#fed300")
          (magenta    . "#ff90fe")
          (cyan       . "#d1d1fe")
          (white      . "#f1f1f1")
          (br-black   . "#8f8f8f")
          (br-red     . "#ffc4be")
          (br-green   . "#d6fcba")
          (br-yellow  . "#fffed5")
          (br-blue    . "#f92883")
          (br-magenta . "#ffb2fe")
          (br-cyan    . "#e6e7fe")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key laser-colors)) 'unspecified))))

  (custom-theme-set-faces
   'laser

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

(provide-theme 'laser)
