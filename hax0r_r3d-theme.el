(deftheme hax0r_r3d
  "hax0r_r3d-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (hax0r_r3d-colors
        '(
          (bg         . "#200101")
          (fg         . "#b10e0e")
          (cursor     . "#b00d0d")
          (cursor-txt . "#ffffff")
          (selection  . "#ebc1ff")
          (selection-fg . "#fdfdfd")
          (black      . "#1f0000")
          (red        . "#b00d0d")
          (green      . "#b00d0d")
          (yellow     . "#b00d0d")
          (blue       . "#b00d0d")
          (magenta    . "#b00d0d")
          (cyan       . "#b00d0d")
          (white      . "#fafafa")
          (br-black   . "#150000")
          (br-red     . "#ff1111")
          (br-green   . "#ff1010")
          (br-yellow  . "#ff1010")
          (br-blue    . "#ff1010")
          (br-magenta . "#ff1010")
          (br-cyan    . "#ff1010")
          (br-white   . "#fefefe")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key hax0r_r3d-colors)) 'unspecified))))

  (custom-theme-set-faces
   'hax0r_r3d

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

(provide-theme 'hax0r_r3d)
