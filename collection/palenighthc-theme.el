(deftheme palenighthc
  "palenighthc-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (palenighthc-colors
        '(
          (bg         . "#3e4251")
          (fg         . "#cccccc")
          (cursor     . "#ffcb6b")
          (cursor-txt . "#323232")
          (selection  . "#717cb4")
          (selection-fg . "#80cbc4")
          (black      . "#000000")
          (red        . "#f07178")
          (green      . "#c3e88d")
          (yellow     . "#ffcb6b")
          (blue       . "#82aaff")
          (magenta    . "#c792ea")
          (cyan       . "#89ddff")
          (white      . "#ffffff")
          (br-black   . "#666666")
          (br-red     . "#f6a9ae")
          (br-green   . "#dbf1ba")
          (br-yellow  . "#ffdfa6")
          (br-blue    . "#b4ccff")
          (br-magenta . "#ddbdf2")
          (br-cyan    . "#b8eaff")
          (br-white   . "#999999")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key palenighthc-colors)) 'unspecified))))

  (custom-theme-set-faces
   'palenighthc

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

(provide-theme 'palenighthc)
