(deftheme ollie
  "ollie-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ollie-colors
        '(
          (bg         . "#222125")
          (fg         . "#8a8dae")
          (cursor     . "#5b6ea7")
          (cursor-txt . "#2a292d")
          (selection  . "#1e3a66")
          (selection-fg . "#8a8eac")
          (black      . "#000000")
          (red        . "#ac2e31")
          (green      . "#31ac61")
          (yellow     . "#ac4300")
          (blue       . "#2d57ac")
          (magenta    . "#b08528")
          (cyan       . "#1fa6ac")
          (white      . "#8a8eac")
          (br-black   . "#5b3725")
          (br-red     . "#ff3d48")
          (br-green   . "#3bff99")
          (br-yellow  . "#ff5e1e")
          (br-blue    . "#4488ff")
          (br-magenta . "#ffc21d")
          (br-cyan    . "#1ffaff")
          (br-white   . "#5b6ea7")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ollie-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ollie

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

(provide-theme 'ollie)
