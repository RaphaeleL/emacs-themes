(deftheme novel
  "novel-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (novel-colors
        '(
          (bg         . "#dfdbc3")
          (fg         . "#3b2322")
          (cursor     . "#73635a")
          (cursor-txt . "#000000")
          (selection  . "#a4a390")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#cc0000")
          (green      . "#009600")
          (yellow     . "#d06b00")
          (blue       . "#0000cc")
          (magenta    . "#cc00cc")
          (cyan       . "#0087cc")
          (white      . "#cccccc")
          (br-black   . "#808080")
          (br-red     . "#cc0000")
          (br-green   . "#009600")
          (br-yellow  . "#d06b00")
          (br-blue    . "#0000cc")
          (br-magenta . "#cc00cc")
          (br-cyan    . "#0087cc")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key novel-colors)) 'unspecified))))

  (custom-theme-set-faces
   'novel

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

(provide-theme 'novel)
