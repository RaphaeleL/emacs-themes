(deftheme espresso
  "espresso-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (espresso-colors
        '(
          (bg         . "#323232")
          (fg         . "#ffffff")
          (cursor     . "#d6d6d6")
          (cursor-txt . "#ffffff")
          (selection  . "#5b5b5b")
          (selection-fg . "#ffffff")
          (black      . "#353535")
          (red        . "#d25252")
          (green      . "#a5c261")
          (yellow     . "#ffc66d")
          (blue       . "#6c99bb")
          (magenta    . "#d197d9")
          (cyan       . "#bed6ff")
          (white      . "#eeeeec")
          (br-black   . "#535353")
          (br-red     . "#f00c0c")
          (br-green   . "#c2e075")
          (br-yellow  . "#e1e48b")
          (br-blue    . "#8ab7d9")
          (br-magenta . "#efb5f7")
          (br-cyan    . "#dcf4ff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key espresso-colors)) 'unspecified))))

  (custom-theme-set-faces
   'espresso

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

(provide-theme 'espresso)
