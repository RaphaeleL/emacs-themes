(deftheme raycast_dark
  "raycast_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (raycast_dark-colors
        '(
          (bg         . "#1a1a1a")
          (fg         . "#ffffff")
          (cursor     . "#cccccc")
          (cursor-txt . "#ffffff")
          (selection  . "#333333")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#ff5360")
          (green      . "#59d499")
          (yellow     . "#ffc531")
          (blue       . "#56c2ff")
          (magenta    . "#cf2f98")
          (cyan       . "#52eee5")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#ff6363")
          (br-green   . "#59d499")
          (br-yellow  . "#ffc531")
          (br-blue    . "#56c2ff")
          (br-magenta . "#cf2f98")
          (br-cyan    . "#52eee5")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key raycast_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'raycast_dark

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

(provide-theme 'raycast_dark)
