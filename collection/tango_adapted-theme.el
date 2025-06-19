(deftheme tango_adapted
  "tango_adapted-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tango_adapted-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#000000")
          (cursor     . "#000000")
          (cursor-txt . "#ffffff")
          (selection  . "#c1deff")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#ff0000")
          (green      . "#59d600")
          (yellow     . "#f0cb00")
          (blue       . "#00a2ff")
          (magenta    . "#c17ecc")
          (cyan       . "#00d0d6")
          (white      . "#e6ebe1")
          (br-black   . "#8f928b")
          (br-red     . "#ff0013")
          (br-green   . "#93ff00")
          (br-yellow  . "#fff121")
          (br-blue    . "#88c9ff")
          (br-magenta . "#e9a7e1")
          (br-cyan    . "#00feff")
          (br-white   . "#f6f6f4")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tango_adapted-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tango_adapted

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

(provide-theme 'tango_adapted)
