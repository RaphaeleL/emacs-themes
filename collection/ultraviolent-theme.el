(deftheme ultraviolent
  "ultraviolent-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ultraviolent-colors
        '(
          (bg         . "#242728")
          (fg         . "#c1c1c1")
          (cursor     . "#c1c1c1")
          (cursor-txt . "#ffffff")
          (selection  . "#574c49")
          (selection-fg . "#c3c7cb")
          (black      . "#242728")
          (red        . "#ff0090")
          (green      . "#b6ff00")
          (yellow     . "#fff727")
          (blue       . "#47e0fb")
          (magenta    . "#d731ff")
          (cyan       . "#0effbb")
          (white      . "#e1e1e1")
          (br-black   . "#636667")
          (br-red     . "#fb58b4")
          (br-green   . "#deff8c")
          (br-yellow  . "#ebe087")
          (br-blue    . "#7fecff")
          (br-magenta . "#e681ff")
          (br-cyan    . "#69fcd3")
          (br-white   . "#f9f9f5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ultraviolent-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ultraviolent

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

(provide-theme 'ultraviolent)
