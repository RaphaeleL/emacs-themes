(deftheme shadesofpurple
  "shadesofpurple-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (shadesofpurple-colors
        '(
          (bg         . "#1e1d40")
          (fg         . "#ffffff")
          (cursor     . "#fad000")
          (cursor-txt . "#fefff4")
          (selection  . "#b362ff")
          (selection-fg . "#c2c2c2")
          (black      . "#000000")
          (red        . "#d90429")
          (green      . "#3ad900")
          (yellow     . "#ffe700")
          (blue       . "#6943ff")
          (magenta    . "#ff2c70")
          (cyan       . "#00c5c7")
          (white      . "#c7c7c7")
          (br-black   . "#686868")
          (br-red     . "#f92a1c")
          (br-green   . "#43d426")
          (br-yellow  . "#f1d000")
          (br-blue    . "#6871ff")
          (br-magenta . "#ff77ff")
          (br-cyan    . "#79e8fb")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key shadesofpurple-colors)) 'unspecified))))

  (custom-theme-set-faces
   'shadesofpurple

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

(provide-theme 'shadesofpurple)
