(deftheme liquidcarbontransparentinverse
  "liquidcarbontransparentinverse-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (liquidcarbontransparentinverse-colors
        '(
          (bg         . "#000000")
          (fg         . "#afc2c2")
          (cursor     . "#ffffff")
          (cursor-txt . "#000000")
          (selection  . "#7dbeff")
          (selection-fg . "#000000")
          (black      . "#bccccd")
          (red        . "#ff3030")
          (green      . "#559a70")
          (yellow     . "#ccac00")
          (blue       . "#0099cc")
          (magenta    . "#cc69c8")
          (cyan       . "#7ac4cc")
          (white      . "#000000")
          (br-black   . "#ffffff")
          (br-red     . "#ff3030")
          (br-green   . "#559a70")
          (br-yellow  . "#ccac00")
          (br-blue    . "#0099cc")
          (br-magenta . "#cc69c8")
          (br-cyan    . "#7ac4cc")
          (br-white   . "#000000")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key liquidcarbontransparentinverse-colors)) 'unspecified))))

  (custom-theme-set-faces
   'liquidcarbontransparentinverse

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

(provide-theme 'liquidcarbontransparentinverse)
