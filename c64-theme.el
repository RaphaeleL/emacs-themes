(deftheme c64
  "c64-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (c64-colors
        '(
          (bg         . "#40318d")
          (fg         . "#7869c4")
          (cursor     . "#7869c4")
          (cursor-txt . "#40318d")
          (selection  . "#7869c4")
          (selection-fg . "#40318d")
          (black      . "#090300")
          (red        . "#883932")
          (green      . "#55a049")
          (yellow     . "#bfce72")
          (blue       . "#40318d")
          (magenta    . "#8b3f96")
          (cyan       . "#67b6bd")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#883932")
          (br-green   . "#55a049")
          (br-yellow  . "#bfce72")
          (br-blue    . "#40318d")
          (br-magenta . "#8b3f96")
          (br-cyan    . "#67b6bd")
          (br-white   . "#f7f7f7")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key c64-colors)) 'unspecified))))

  (custom-theme-set-faces
   'c64

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

(provide-theme 'c64)
