(deftheme guezwhoz
  "guezwhoz-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (guezwhoz-colors
        '(
          (bg         . "#1c1c1c")
          (fg         . "#d0d0d0")
          (cursor     . "#eeeeee")
          (cursor-txt . "#eeeeee")
          (selection  . "#005f5f")
          (selection-fg . "#eeeeee")
          (black      . "#080808")
          (red        . "#ff5f5f")
          (green      . "#87d7af")
          (yellow     . "#d7d787")
          (blue       . "#5fafd7")
          (magenta    . "#afafff")
          (cyan       . "#5fd7d7")
          (white      . "#dadada")
          (br-black   . "#8a8a8a")
          (br-red     . "#d75f5f")
          (br-green   . "#afd7af")
          (br-yellow  . "#d7d7af")
          (br-blue    . "#87afd7")
          (br-magenta . "#afafd7")
          (br-cyan    . "#87d7d7")
          (br-white   . "#dadada")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key guezwhoz-colors)) 'unspecified))))

  (custom-theme-set-faces
   'guezwhoz

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

(provide-theme 'guezwhoz)
