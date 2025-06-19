(deftheme later_this_evening
  "later_this_evening-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (later_this_evening-colors
        '(
          (bg         . "#222222")
          (fg         . "#959595")
          (cursor     . "#424242")
          (cursor-txt . "#959595")
          (selection  . "#424242")
          (selection-fg . "#959595")
          (black      . "#2b2b2b")
          (red        . "#d45a60")
          (green      . "#afba67")
          (yellow     . "#e5d289")
          (blue       . "#a0bad6")
          (magenta    . "#c092d6")
          (cyan       . "#91bfb7")
          (white      . "#3c3d3d")
          (br-black   . "#454747")
          (br-red     . "#d3232f")
          (br-green   . "#aabb39")
          (br-yellow  . "#e5be39")
          (br-blue    . "#6699d6")
          (br-magenta . "#ab53d6")
          (br-cyan    . "#5fc0ae")
          (br-white   . "#c1c2c2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key later_this_evening-colors)) 'unspecified))))

  (custom-theme-set-faces
   'later_this_evening

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

(provide-theme 'later_this_evening)
