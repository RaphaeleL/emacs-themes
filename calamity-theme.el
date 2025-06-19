(deftheme calamity
  "calamity-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (calamity-colors
        '(
          (bg         . "#2f2833")
          (fg         . "#d5ced9")
          (cursor     . "#d5ced9")
          (cursor-txt . "#2f2833")
          (selection  . "#7e6c88")
          (selection-fg . "#d5ced9")
          (black      . "#2f2833")
          (red        . "#fc644d")
          (green      . "#a5f69c")
          (yellow     . "#e9d7a5")
          (blue       . "#3b79c7")
          (magenta    . "#f92672")
          (cyan       . "#74d3de")
          (white      . "#d5ced9")
          (br-black   . "#7e6c88")
          (br-red     . "#fc644d")
          (br-green   . "#a5f69c")
          (br-yellow  . "#e9d7a5")
          (br-blue    . "#3b79c7")
          (br-magenta . "#f92672")
          (br-cyan    . "#74d3de")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key calamity-colors)) 'unspecified))))

  (custom-theme-set-faces
   'calamity

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

(provide-theme 'calamity)
