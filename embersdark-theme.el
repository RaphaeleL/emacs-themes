(deftheme embersdark
  "embersdark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (embersdark-colors
        '(
          (bg         . "#16130f")
          (fg         . "#a39a90")
          (cursor     . "#a39a90")
          (cursor-txt . "#16130f")
          (selection  . "#433b32")
          (selection-fg . "#a39a90")
          (black      . "#16130f")
          (red        . "#826d57")
          (green      . "#57826d")
          (yellow     . "#6d8257")
          (blue       . "#6d5782")
          (magenta    . "#82576d")
          (cyan       . "#576d82")
          (white      . "#a39a90")
          (br-black   . "#5a5047")
          (br-red     . "#828257")
          (br-green   . "#2c2620")
          (br-yellow  . "#433b32")
          (br-blue    . "#8a8075")
          (br-magenta . "#beb6ae")
          (br-cyan    . "#825757")
          (br-white   . "#dbd6d1")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key embersdark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'embersdark

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

(provide-theme 'embersdark)
