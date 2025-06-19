(deftheme medallion
  "medallion-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (medallion-colors
        '(
          (bg         . "#1d1908")
          (fg         . "#cac296")
          (cursor     . "#d3ba30")
          (cursor-txt . "#d2bc3d")
          (selection  . "#626dac")
          (selection-fg . "#cac29a")
          (black      . "#000000")
          (red        . "#b64c00")
          (green      . "#7c8b16")
          (yellow     . "#d3bd26")
          (blue       . "#616bb0")
          (magenta    . "#8c5a90")
          (cyan       . "#916c25")
          (white      . "#cac29a")
          (br-black   . "#5e5219")
          (br-red     . "#ff9149")
          (br-green   . "#b2ca3b")
          (br-yellow  . "#ffe54a")
          (br-blue    . "#acb8ff")
          (br-magenta . "#ffa0ff")
          (br-cyan    . "#ffbc51")
          (br-white   . "#fed698")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key medallion-colors)) 'unspecified))))

  (custom-theme-set-faces
   'medallion

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

(provide-theme 'medallion)
