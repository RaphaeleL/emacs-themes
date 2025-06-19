(deftheme thayer_bright
  "thayer_bright-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (thayer_bright-colors
        '(
          (bg         . "#1b1d1e")
          (fg         . "#f8f8f8")
          (cursor     . "#fc971f")
          (cursor-txt . "#000000")
          (selection  . "#4d4d4d")
          (selection-fg . "#ffffff")
          (black      . "#1b1d1e")
          (red        . "#f92672")
          (green      . "#4df840")
          (yellow     . "#f4fd22")
          (blue       . "#2757d6")
          (magenta    . "#8c54fe")
          (cyan       . "#38c8b5")
          (white      . "#ccccc6")
          (br-black   . "#505354")
          (br-red     . "#ff5995")
          (br-green   . "#b6e354")
          (br-yellow  . "#feed6c")
          (br-blue    . "#3f78ff")
          (br-magenta . "#9e6ffe")
          (br-cyan    . "#23cfd5")
          (br-white   . "#f8f8f2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key thayer_bright-colors)) 'unspecified))))

  (custom-theme-set-faces
   'thayer_bright

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

(provide-theme 'thayer_bright)
