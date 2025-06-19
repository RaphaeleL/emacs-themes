(deftheme monokai_pro_octagon
  "monokai_pro_octagon-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (monokai_pro_octagon-colors
        '(
          (bg         . "#282a3a")
          (fg         . "#eaf2f1")
          (cursor     . "#b2b9bd")
          (cursor-txt . "#b2b9bd")
          (selection  . "#535763")
          (selection-fg . "#eaf2f1")
          (black      . "#282a3a")
          (red        . "#ff657a")
          (green      . "#bad761")
          (yellow     . "#ffd76d")
          (blue       . "#ff9b5e")
          (magenta    . "#c39ac9")
          (cyan       . "#9cd1bb")
          (white      . "#eaf2f1")
          (br-black   . "#696d77")
          (br-red     . "#ff657a")
          (br-green   . "#bad761")
          (br-yellow  . "#ffd76d")
          (br-blue    . "#ff9b5e")
          (br-magenta . "#c39ac9")
          (br-cyan    . "#9cd1bb")
          (br-white   . "#eaf2f1")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key monokai_pro_octagon-colors)) 'unspecified))))

  (custom-theme-set-faces
   'monokai_pro_octagon

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

(provide-theme 'monokai_pro_octagon)
