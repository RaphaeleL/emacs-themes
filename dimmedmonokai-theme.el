(deftheme dimmedmonokai
  "dimmedmonokai-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (dimmedmonokai-colors
        '(
          (bg         . "#1f1f1f")
          (fg         . "#b9bcba")
          (cursor     . "#f83e19")
          (cursor-txt . "#171717")
          (selection  . "#2a2d32")
          (selection-fg . "#b9bcba")
          (black      . "#3a3d43")
          (red        . "#be3f48")
          (green      . "#879a3b")
          (yellow     . "#c5a635")
          (blue       . "#4f76a1")
          (magenta    . "#855c8d")
          (cyan       . "#578fa4")
          (white      . "#b9bcba")
          (br-black   . "#888987")
          (br-red     . "#fb001f")
          (br-green   . "#0f722f")
          (br-yellow  . "#c47033")
          (br-blue    . "#186de3")
          (br-magenta . "#fb0067")
          (br-cyan    . "#2e706d")
          (br-white   . "#fdffb9")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key dimmedmonokai-colors)) 'unspecified))))

  (custom-theme-set-faces
   'dimmedmonokai

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

(provide-theme 'dimmedmonokai)
