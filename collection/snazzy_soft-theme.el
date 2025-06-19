(deftheme snazzy_soft
  "snazzy_soft-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (snazzy_soft-colors
        '(
          (bg         . "#282a36")
          (fg         . "#eff0eb")
          (cursor     . "#eaeaea")
          (cursor-txt . "#282a36")
          (selection  . "#92bcd0")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#ff5c57")
          (green      . "#5af78e")
          (yellow     . "#f3f99d")
          (blue       . "#57c7ff")
          (magenta    . "#ff6ac1")
          (cyan       . "#9aedfe")
          (white      . "#f1f1f0")
          (br-black   . "#686868")
          (br-red     . "#ff5c57")
          (br-green   . "#5af78e")
          (br-yellow  . "#f3f99d")
          (br-blue    . "#57c7ff")
          (br-magenta . "#ff6ac1")
          (br-cyan    . "#9aedfe")
          (br-white   . "#f1f1f0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key snazzy_soft-colors)) 'unspecified))))

  (custom-theme-set-faces
   'snazzy_soft

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

(provide-theme 'snazzy_soft)
