(deftheme galizur
  "galizur-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (galizur-colors
        '(
          (bg         . "#071317")
          (fg         . "#ddeeff")
          (cursor     . "#ddeeff")
          (cursor-txt . "#071317")
          (selection  . "#071317")
          (selection-fg . "#ddeeff")
          (black      . "#223344")
          (red        . "#aa1122")
          (green      . "#33aa11")
          (yellow     . "#ccaa22")
          (blue       . "#2255cc")
          (magenta    . "#7755aa")
          (cyan       . "#22bbdd")
          (white      . "#8899aa")
          (br-black   . "#556677")
          (br-red     . "#ff1133")
          (br-green   . "#33ff11")
          (br-yellow  . "#ffdd33")
          (br-blue    . "#3377ff")
          (br-magenta . "#aa77ff")
          (br-cyan    . "#33ddff")
          (br-white   . "#bbccdd")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key galizur-colors)) 'unspecified))))

  (custom-theme-set-faces
   'galizur

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

(provide-theme 'galizur)
