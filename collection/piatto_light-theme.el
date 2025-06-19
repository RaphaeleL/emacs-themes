(deftheme piatto_light
  "piatto_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (piatto_light-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#414141")
          (cursor     . "#5e77c8")
          (cursor-txt . "#abbee5")
          (selection  . "#706b4e")
          (selection-fg . "#acbcdc")
          (black      . "#414141")
          (red        . "#b23771")
          (green      . "#66781e")
          (yellow     . "#cd6f34")
          (blue       . "#3c5ea8")
          (magenta    . "#a454b2")
          (cyan       . "#66781e")
          (white      . "#ffffff")
          (br-black   . "#3f3f3f")
          (br-red     . "#db3365")
          (br-green   . "#829429")
          (br-yellow  . "#cd6f34")
          (br-blue    . "#3c5ea8")
          (br-magenta . "#a454b2")
          (br-cyan    . "#829429")
          (br-white   . "#f2f2f2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key piatto_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'piatto_light

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

(provide-theme 'piatto_light)
