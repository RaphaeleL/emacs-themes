(deftheme fahrenheit
  "fahrenheit-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (fahrenheit-colors
        '(
          (bg         . "#000000")
          (fg         . "#ffffce")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#4e739f")
          (selection-fg . "#ffffce")
          (black      . "#1d1d1d")
          (red        . "#cda074")
          (green      . "#9e744d")
          (yellow     . "#fecf75")
          (blue       . "#720102")
          (magenta    . "#734c4d")
          (cyan       . "#979797")
          (white      . "#ffffce")
          (br-black   . "#000000")
          (br-red     . "#fecea0")
          (br-green   . "#cc734d")
          (br-yellow  . "#fd9f4d")
          (br-blue    . "#cb4a05")
          (br-magenta . "#4e739f")
          (br-cyan    . "#fed04d")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key fahrenheit-colors)) 'unspecified))))

  (custom-theme-set-faces
   'fahrenheit

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

(provide-theme 'fahrenheit)
