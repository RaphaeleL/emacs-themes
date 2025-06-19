(deftheme glacier
  "glacier-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (glacier-colors
        '(
          (bg         . "#0c1115")
          (fg         . "#ffffff")
          (cursor     . "#6c6c6c")
          (cursor-txt . "#6c6c6c")
          (selection  . "#bd2523")
          (selection-fg . "#ffffff")
          (black      . "#2e343c")
          (red        . "#bd0f2f")
          (green      . "#35a770")
          (yellow     . "#fb9435")
          (blue       . "#1f5872")
          (magenta    . "#bd2523")
          (cyan       . "#778397")
          (white      . "#ffffff")
          (br-black   . "#404a55")
          (br-red     . "#bd0f2f")
          (br-green   . "#49e998")
          (br-yellow  . "#fddf6e")
          (br-blue    . "#2a8bc1")
          (br-magenta . "#ea4727")
          (br-cyan    . "#a0b6d3")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key glacier-colors)) 'unspecified))))

  (custom-theme-set-faces
   'glacier

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

(provide-theme 'glacier)
