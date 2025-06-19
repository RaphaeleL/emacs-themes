(deftheme doomone
  "doomone-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (doomone-colors
        '(
          (bg         . "#282c34")
          (fg         . "#bbc2cf")
          (cursor     . "#51afef")
          (cursor-txt . "#1b1b1b")
          (selection  . "#42444b")
          (selection-fg . "#bbc2cf")
          (black      . "#000000")
          (red        . "#ff6c6b")
          (green      . "#98be65")
          (yellow     . "#ecbe7b")
          (blue       . "#a9a1e1")
          (magenta    . "#c678dd")
          (cyan       . "#51afef")
          (white      . "#bbc2cf")
          (br-black   . "#000000")
          (br-red     . "#ff6655")
          (br-green   . "#99bb66")
          (br-yellow  . "#ecbe7b")
          (br-blue    . "#a9a1e1")
          (br-magenta . "#c678dd")
          (br-cyan    . "#51afef")
          (br-white   . "#bfbfbf")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key doomone-colors)) 'unspecified))))

  (custom-theme-set-faces
   'doomone

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

(provide-theme 'doomone)
