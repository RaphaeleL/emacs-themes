(deftheme kanagawabones
  "kanagawabones-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (kanagawabones-colors
        '(
          (bg         . "#1f1f28")
          (fg         . "#ddd8bb")
          (cursor     . "#e6e0c2")
          (cursor-txt . "#1f1f28")
          (selection  . "#49473e")
          (selection-fg . "#ddd8bb")
          (black      . "#1f1f28")
          (red        . "#e46a78")
          (green      . "#98bc6d")
          (yellow     . "#e5c283")
          (blue       . "#7eb3c9")
          (magenta    . "#957fb8")
          (cyan       . "#7eb3c9")
          (white      . "#ddd8bb")
          (br-black   . "#3c3c51")
          (br-red     . "#ec818c")
          (br-green   . "#9ec967")
          (br-yellow  . "#f1c982")
          (br-blue    . "#7bc2df")
          (br-magenta . "#a98fd2")
          (br-cyan    . "#7bc2df")
          (br-white   . "#a8a48d")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key kanagawabones-colors)) 'unspecified))))

  (custom-theme-set-faces
   'kanagawabones

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

(provide-theme 'kanagawabones)
