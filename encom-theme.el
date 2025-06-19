(deftheme encom
  "encom-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (encom-colors
        '(
          (bg         . "#000000")
          (fg         . "#00a595")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#00a48c")
          (selection-fg . "#3de1c9")
          (black      . "#000000")
          (red        . "#9f0000")
          (green      . "#008b00")
          (yellow     . "#ffd000")
          (blue       . "#0081ff")
          (magenta    . "#bc00ca")
          (cyan       . "#008b8b")
          (white      . "#bbbbbb")
          (br-black   . "#555555")
          (br-red     . "#ff0000")
          (br-green   . "#00ee00")
          (br-yellow  . "#ffff00")
          (br-blue    . "#0000ff")
          (br-magenta . "#ff00ff")
          (br-cyan    . "#00cdcd")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key encom-colors)) 'unspecified))))

  (custom-theme-set-faces
   'encom

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

(provide-theme 'encom)
