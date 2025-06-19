(deftheme cutiepro
  "cutiepro-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (cutiepro-colors
        '(
          (bg         . "#181818")
          (fg         . "#d5d0c9")
          (cursor     . "#efc4cd")
          (cursor-txt . "#181818")
          (selection  . "#363636")
          (selection-fg . "#d5d0c9")
          (black      . "#000000")
          (red        . "#f56e7f")
          (green      . "#bec975")
          (yellow     . "#f58669")
          (blue       . "#42d9c5")
          (magenta    . "#d286b7")
          (cyan       . "#37cb8a")
          (white      . "#d5c3c3")
          (br-black   . "#88847f")
          (br-red     . "#e5a1a3")
          (br-green   . "#e8d6a7")
          (br-yellow  . "#f1bb79")
          (br-blue    . "#80c5de")
          (br-magenta . "#b294bb")
          (br-cyan    . "#9dccbb")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key cutiepro-colors)) 'unspecified))))

  (custom-theme-set-faces
   'cutiepro

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

(provide-theme 'cutiepro)
