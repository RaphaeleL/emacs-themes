(deftheme ciapre
  "ciapre-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ciapre-colors
        '(
          (bg         . "#191c27")
          (fg         . "#aea47a")
          (cursor     . "#92805b")
          (cursor-txt . "#181818")
          (selection  . "#172539")
          (selection-fg . "#aea47f")
          (black      . "#181818")
          (red        . "#810009")
          (green      . "#48513b")
          (yellow     . "#cc8b3f")
          (blue       . "#576d8c")
          (magenta    . "#724d7c")
          (cyan       . "#5c4f4b")
          (white      . "#aea47f")
          (br-black   . "#555555")
          (br-red     . "#ac3835")
          (br-green   . "#a6a75d")
          (br-yellow  . "#dcdf7c")
          (br-blue    . "#3097c6")
          (br-magenta . "#d33061")
          (br-cyan    . "#f3dbb2")
          (br-white   . "#f4f4f4")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ciapre-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ciapre

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

(provide-theme 'ciapre)
