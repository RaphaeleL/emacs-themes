(deftheme flatland
  "flatland-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (flatland-colors
        '(
          (bg         . "#1d1f21")
          (fg         . "#b8dbef")
          (cursor     . "#708284")
          (cursor-txt . "#002831")
          (selection  . "#2b2a24")
          (selection-fg . "#ffffff")
          (black      . "#1d1d19")
          (red        . "#f18339")
          (green      . "#9fd364")
          (yellow     . "#f4ef6d")
          (blue       . "#5096be")
          (magenta    . "#695abc")
          (cyan       . "#d63865")
          (white      . "#ffffff")
          (br-black   . "#1d1d19")
          (br-red     . "#d22a24")
          (br-green   . "#a7d42c")
          (br-yellow  . "#ff8949")
          (br-blue    . "#61b9d0")
          (br-magenta . "#695abc")
          (br-cyan    . "#d63865")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key flatland-colors)) 'unspecified))))

  (custom-theme-set-faces
   'flatland

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

(provide-theme 'flatland)
