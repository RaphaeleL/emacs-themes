(deftheme elegant
  "elegant-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (elegant-colors
        '(
          (bg         . "#292b31")
          (fg         . "#cfd2d6")
          (cursor     . "#55bbf9")
          (cursor-txt . "#ffffff")
          (selection  . "#d5d5d5")
          (selection-fg . "#224281")
          (black      . "#0c1221")
          (red        . "#ea335b")
          (green      . "#95ca9a")
          (yellow     . "#f7cd94")
          (blue       . "#93aadd")
          (magenta    . "#bf94e5")
          (cyan       . "#8ccaec")
          (white      . "#ffffff")
          (br-black   . "#575656")
          (br-red     . "#ea335b")
          (br-green   . "#95ca9a")
          (br-yellow  . "#f7cd94")
          (br-blue    . "#93aadd")
          (br-magenta . "#bf94e5")
          (br-cyan    . "#5faae9")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key elegant-colors)) 'unspecified))))

  (custom-theme-set-faces
   'elegant

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

(provide-theme 'elegant)
