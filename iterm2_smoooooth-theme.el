(deftheme iterm2_smoooooth
  "iterm2_smoooooth-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (iterm2_smoooooth-colors
        '(
          (bg         . "#15191f")
          (fg         . "#dcdcdc")
          (cursor     . "#ffffff")
          (cursor-txt . "#000000")
          (selection  . "#b3d7ff")
          (selection-fg . "#000000")
          (black      . "#14191e")
          (red        . "#b43c2a")
          (green      . "#00c200")
          (yellow     . "#c7c400")
          (blue       . "#2744c7")
          (magenta    . "#c040be")
          (cyan       . "#00c5c7")
          (white      . "#c7c7c7")
          (br-black   . "#686868")
          (br-red     . "#dd7975")
          (br-green   . "#58e790")
          (br-yellow  . "#ece100")
          (br-blue    . "#a7abf2")
          (br-magenta . "#e17ee1")
          (br-cyan    . "#60fdff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key iterm2_smoooooth-colors)) 'unspecified))))

  (custom-theme-set-faces
   'iterm2_smoooooth

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

(provide-theme 'iterm2_smoooooth)
