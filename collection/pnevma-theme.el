(deftheme pnevma
  "pnevma-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (pnevma-colors
        '(
          (bg         . "#1c1c1c")
          (fg         . "#d0d0d0")
          (cursor     . "#e4c9af")
          (cursor-txt . "#000000")
          (selection  . "#4d4d4d")
          (selection-fg . "#ffffff")
          (black      . "#2f2e2d")
          (red        . "#a36666")
          (green      . "#90a57d")
          (yellow     . "#d7af87")
          (blue       . "#7fa5bd")
          (magenta    . "#c79ec4")
          (cyan       . "#8adbb4")
          (white      . "#d0d0d0")
          (br-black   . "#4a4845")
          (br-red     . "#d78787")
          (br-green   . "#afbea2")
          (br-yellow  . "#e4c9af")
          (br-blue    . "#a1bdce")
          (br-magenta . "#d7beda")
          (br-cyan    . "#b1e7dd")
          (br-white   . "#efefef")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key pnevma-colors)) 'unspecified))))

  (custom-theme-set-faces
   'pnevma

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

(provide-theme 'pnevma)
