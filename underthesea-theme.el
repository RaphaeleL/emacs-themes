(deftheme underthesea
  "underthesea-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (underthesea-colors
        '(
          (bg         . "#011116")
          (fg         . "#ffffff")
          (cursor     . "#4afcd6")
          (cursor-txt . "#031413")
          (selection  . "#415555")
          (selection-fg . "#4dffda")
          (black      . "#022026")
          (red        . "#b2302d")
          (green      . "#00a941")
          (yellow     . "#59819c")
          (blue       . "#459a86")
          (magenta    . "#00599d")
          (cyan       . "#5d7e19")
          (white      . "#405555")
          (br-black   . "#384451")
          (br-red     . "#ff4242")
          (br-green   . "#2aea5e")
          (br-yellow  . "#8ed4fd")
          (br-blue    . "#61d5ba")
          (br-magenta . "#1298ff")
          (br-cyan    . "#98d028")
          (br-white   . "#58fbd6")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key underthesea-colors)) 'unspecified))))

  (custom-theme-set-faces
   'underthesea

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

(provide-theme 'underthesea)
