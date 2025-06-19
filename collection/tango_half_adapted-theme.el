(deftheme tango_half_adapted
  "tango_half_adapted-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tango_half_adapted-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#000000")
          (cursor     . "#000000")
          (cursor-txt . "#ffffff")
          (selection  . "#c1deff")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#ff0000")
          (green      . "#4cc300")
          (yellow     . "#e2c000")
          (blue       . "#008ef6")
          (magenta    . "#a96cb3")
          (cyan       . "#00bdc3")
          (white      . "#e0e5db")
          (br-black   . "#797d76")
          (br-red     . "#ff0013")
          (br-green   . "#8af600")
          (br-yellow  . "#ffec00")
          (br-blue    . "#76bfff")
          (br-magenta . "#d898d1")
          (br-cyan    . "#00f6fa")
          (br-white   . "#f4f4f2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tango_half_adapted-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tango_half_adapted

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

(provide-theme 'tango_half_adapted)
