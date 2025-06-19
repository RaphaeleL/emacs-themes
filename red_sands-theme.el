(deftheme red_sands
  "red_sands-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (red_sands-colors
        '(
          (bg         . "#7a251e")
          (fg         . "#d7c9a7")
          (cursor     . "#ffffff")
          (cursor-txt . "#000000")
          (selection  . "#a4a390")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#ff3f00")
          (green      . "#00bb00")
          (yellow     . "#e7b000")
          (blue       . "#0072ff")
          (magenta    . "#bb00bb")
          (cyan       . "#00bbbb")
          (white      . "#bbbbbb")
          (br-black   . "#555555")
          (br-red     . "#bb0000")
          (br-green   . "#00bb00")
          (br-yellow  . "#e7b000")
          (br-blue    . "#0072ae")
          (br-magenta . "#ff55ff")
          (br-cyan    . "#55ffff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key red_sands-colors)) 'unspecified))))

  (custom-theme-set-faces
   'red_sands

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

(provide-theme 'red_sands)
