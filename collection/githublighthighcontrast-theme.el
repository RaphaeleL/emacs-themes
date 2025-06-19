(deftheme githublighthighcontrast
  "githublighthighcontrast-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (githublighthighcontrast-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#0e1116")
          (cursor     . "#0349b4")
          (cursor-txt . "#0349b4")
          (selection  . "#0e1116")
          (selection-fg . "#ffffff")
          (black      . "#0e1116")
          (red        . "#a0111f")
          (green      . "#024c1a")
          (yellow     . "#3f2200")
          (blue       . "#0349b4")
          (magenta    . "#622cbc")
          (cyan       . "#1b7c83")
          (white      . "#66707b")
          (br-black   . "#4b535d")
          (br-red     . "#86061d")
          (br-green   . "#055d20")
          (br-yellow  . "#4e2c00")
          (br-blue    . "#1168e3")
          (br-magenta . "#844ae7")
          (br-cyan    . "#3192aa")
          (br-white   . "#88929d")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key githublighthighcontrast-colors)) 'unspecified))))

  (custom-theme-set-faces
   'githublighthighcontrast

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

(provide-theme 'githublighthighcontrast)
