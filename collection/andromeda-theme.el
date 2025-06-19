(deftheme andromeda
  "andromeda-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (andromeda-colors
        '(
          (bg         . "#262a33")
          (fg         . "#e5e5e5")
          (cursor     . "#f8f8f0")
          (cursor-txt . "#cfcfc2")
          (selection  . "#5a5c62")
          (selection-fg . "#ece7e7")
          (black      . "#000000")
          (red        . "#cd3131")
          (green      . "#05bc79")
          (yellow     . "#e5e512")
          (blue       . "#2472c8")
          (magenta    . "#bc3fbc")
          (cyan       . "#0fa8cd")
          (white      . "#e5e5e5")
          (br-black   . "#666666")
          (br-red     . "#cd3131")
          (br-green   . "#05bc79")
          (br-yellow  . "#e5e512")
          (br-blue    . "#2472c8")
          (br-magenta . "#bc3fbc")
          (br-cyan    . "#0fa8cd")
          (br-white   . "#e5e5e5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key andromeda-colors)) 'unspecified))))

  (custom-theme-set-faces
   'andromeda

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

(provide-theme 'andromeda)
