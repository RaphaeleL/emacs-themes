(deftheme mirage
  "mirage-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (mirage-colors
        '(
          (bg         . "#1b2738")
          (fg         . "#a6b2c0")
          (cursor     . "#ddb3ff")
          (cursor-txt . "#ffffff")
          (selection  . "#273951")
          (selection-fg . "#d3dbe5")
          (black      . "#011627")
          (red        . "#ff9999")
          (green      . "#85cc95")
          (yellow     . "#ffd700")
          (blue       . "#7fb5ff")
          (magenta    . "#ddb3ff")
          (cyan       . "#21c7a8")
          (white      . "#ffffff")
          (br-black   . "#575656")
          (br-red     . "#ff9999")
          (br-green   . "#85cc95")
          (br-yellow  . "#ffd700")
          (br-blue    . "#7fb5ff")
          (br-magenta . "#ddb3ff")
          (br-cyan    . "#85cc95")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key mirage-colors)) 'unspecified))))

  (custom-theme-set-faces
   'mirage

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

(provide-theme 'mirage)
