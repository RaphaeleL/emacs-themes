(deftheme havn_skumring
  "havn_skumring-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (havn_skumring-colors
        '(
          (bg         . "#121521")
          (fg         . "#d7dbea")
          (cursor     . "#40786f")
          (cursor-txt . "#e0e4f2")
          (selection  . "#34504b")
          (selection-fg . "#dce0ee")
          (black      . "#262c45")
          (red        . "#d96048")
          (green      . "#7cab7f")
          (yellow     . "#eeb64e")
          (blue       . "#5d6bef")
          (magenta    . "#7a729a")
          (cyan       . "#ca8cbe")
          (white      . "#dde0ed")
          (br-black   . "#212840")
          (br-red     . "#c47768")
          (br-green   . "#8f9d90")
          (br-yellow  . "#e4c693")
          (br-blue    . "#5d85c6")
          (br-magenta . "#967de7")
          (br-cyan    . "#c57eb3")
          (br-white   . "#fdf6e3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key havn_skumring-colors)) 'unspecified))))

  (custom-theme-set-faces
   'havn_skumring

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

(provide-theme 'havn_skumring)
