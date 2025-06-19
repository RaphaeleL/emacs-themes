(deftheme dimidium
  "dimidium-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (dimidium-colors
        '(
          (bg         . "#141414")
          (fg         . "#bab7b6")
          (cursor     . "#37e57b")
          (cursor-txt . "#141414")
          (selection  . "#8db8e5")
          (selection-fg . "#141414")
          (black      . "#000000")
          (red        . "#cf494c")
          (green      . "#60b442")
          (yellow     . "#db9c11")
          (blue       . "#0575d8")
          (magenta    . "#af5ed2")
          (cyan       . "#1db6bb")
          (white      . "#bab7b6")
          (br-black   . "#817e7e")
          (br-red     . "#ff643b")
          (br-green   . "#37e57b")
          (br-yellow  . "#fccd1a")
          (br-blue    . "#688dfd")
          (br-magenta . "#ed6fe9")
          (br-cyan    . "#32e0fb")
          (br-white   . "#d3d8d9")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key dimidium-colors)) 'unspecified))))

  (custom-theme-set-faces
   'dimidium

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

(provide-theme 'dimidium)
