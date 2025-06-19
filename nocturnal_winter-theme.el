(deftheme nocturnal_winter
  "nocturnal_winter-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (nocturnal_winter-colors
        '(
          (bg         . "#0d0d17")
          (fg         . "#e6e5e5")
          (cursor     . "#e6e5e5")
          (cursor-txt . "#ffffff")
          (selection  . "#adbdd0")
          (selection-fg . "#000000")
          (black      . "#4d4d4d")
          (red        . "#f12d52")
          (green      . "#09cd7e")
          (yellow     . "#f5f17a")
          (blue       . "#3182e0")
          (magenta    . "#ff2b6d")
          (cyan       . "#09c87a")
          (white      . "#fcfcfc")
          (br-black   . "#808080")
          (br-red     . "#f16d86")
          (br-green   . "#0ae78d")
          (br-yellow  . "#fffc67")
          (br-blue    . "#6096ff")
          (br-magenta . "#ff78a2")
          (br-cyan    . "#0ae78d")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key nocturnal_winter-colors)) 'unspecified))))

  (custom-theme-set-faces
   'nocturnal_winter

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

(provide-theme 'nocturnal_winter)
