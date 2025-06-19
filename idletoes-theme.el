(deftheme idletoes
  "idletoes-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (idletoes-colors
        '(
          (bg         . "#323232")
          (fg         . "#ffffff")
          (cursor     . "#d6d6d6")
          (cursor-txt . "#000000")
          (selection  . "#5b5b5b")
          (selection-fg . "#000000")
          (black      . "#323232")
          (red        . "#d25252")
          (green      . "#7fe173")
          (yellow     . "#ffc66d")
          (blue       . "#4099ff")
          (magenta    . "#f680ff")
          (cyan       . "#bed6ff")
          (white      . "#eeeeec")
          (br-black   . "#535353")
          (br-red     . "#f07070")
          (br-green   . "#9dff91")
          (br-yellow  . "#ffe48b")
          (br-blue    . "#5eb7f7")
          (br-magenta . "#ff9dff")
          (br-cyan    . "#dcf4ff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key idletoes-colors)) 'unspecified))))

  (custom-theme-set-faces
   'idletoes

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

(provide-theme 'idletoes)
