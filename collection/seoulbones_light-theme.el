(deftheme seoulbones_light
  "seoulbones_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (seoulbones_light-colors
        '(
          (bg         . "#e2e2e2")
          (fg         . "#555555")
          (cursor     . "#555555")
          (cursor-txt . "#e2e2e2")
          (selection  . "#cccccc")
          (selection-fg . "#555555")
          (black      . "#e2e2e2")
          (red        . "#dc5284")
          (green      . "#628562")
          (yellow     . "#c48562")
          (blue       . "#0084a3")
          (magenta    . "#896788")
          (cyan       . "#008586")
          (white      . "#555555")
          (br-black   . "#bfbabb")
          (br-red     . "#be3c6d")
          (br-green   . "#487249")
          (br-yellow  . "#a76b48")
          (br-blue    . "#006f89")
          (br-magenta . "#7f4c7e")
          (br-cyan    . "#006f70")
          (br-white   . "#777777")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key seoulbones_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'seoulbones_light

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

(provide-theme 'seoulbones_light)
