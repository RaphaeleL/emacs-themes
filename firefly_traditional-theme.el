(deftheme firefly_traditional
  "firefly_traditional-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (firefly_traditional-colors
        '(
          (bg         . "#000000")
          (fg         . "#f5f5f5")
          (cursor     . "#00f900")
          (cursor-txt . "#ffffff")
          (selection  . "#cfeac6")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#c23720")
          (green      . "#33bc26")
          (yellow     . "#afad24")
          (blue       . "#5a63ff")
          (magenta    . "#d53ad2")
          (cyan       . "#33bbc7")
          (white      . "#cccccc")
          (br-black   . "#828282")
          (br-red     . "#ff3b1e")
          (br-green   . "#2ee720")
          (br-yellow  . "#ecec16")
          (br-blue    . "#838dff")
          (br-magenta . "#ff5cfe")
          (br-cyan    . "#29f0f0")
          (br-white   . "#ebebeb")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key firefly_traditional-colors)) 'unspecified))))

  (custom-theme-set-faces
   'firefly_traditional

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

(provide-theme 'firefly_traditional)
