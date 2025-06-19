(deftheme rouge_2
  "rouge_2-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (rouge_2-colors
        '(
          (bg         . "#17182b")
          (fg         . "#a2a3aa")
          (cursor     . "#969e92")
          (cursor-txt . "#ffffff")
          (selection  . "#5d5d6b")
          (selection-fg . "#dfe5ee")
          (black      . "#5d5d6b")
          (red        . "#c6797e")
          (green      . "#969e92")
          (yellow     . "#dbcdab")
          (blue       . "#6e94b9")
          (magenta    . "#4c4e78")
          (cyan       . "#8ab6c1")
          (white      . "#e8e8ea")
          (br-black   . "#616274")
          (br-red     . "#c6797e")
          (br-green   . "#e6dcc4")
          (br-yellow  . "#e6dcc4")
          (br-blue    . "#98b3cd")
          (br-magenta . "#8283a1")
          (br-cyan    . "#abcbd3")
          (br-white   . "#e8e8ea")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key rouge_2-colors)) 'unspecified))))

  (custom-theme-set-faces
   'rouge_2

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

(provide-theme 'rouge_2)
