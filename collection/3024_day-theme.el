(deftheme 3024_day
  "3024_day-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (3024_day-colors
        '(
          (bg         . "#f7f7f7")
          (fg         . "#4a4543")
          (cursor     . "#4a4543")
          (cursor-txt . "#f7f7f7")
          (selection  . "#a5a2a2")
          (selection-fg . "#4a4543")
          (black      . "#090300")
          (red        . "#db2d20")
          (green      . "#01a252")
          (yellow     . "#fded02")
          (blue       . "#01a0e4")
          (magenta    . "#a16a94")
          (cyan       . "#b5e4f4")
          (white      . "#a5a2a2")
          (br-black   . "#5c5855")
          (br-red     . "#e8bbd0")
          (br-green   . "#3a3432")
          (br-yellow  . "#4a4543")
          (br-blue    . "#807d7c")
          (br-magenta . "#d6d5d4")
          (br-cyan    . "#cdab53")
          (br-white   . "#f7f7f7")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key 3024_day-colors)) 'unspecified))))

  (custom-theme-set-faces
   '3024_day

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

(provide-theme '3024_day)
