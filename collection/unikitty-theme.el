(deftheme unikitty
  "unikitty-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (unikitty-colors
        '(
          (bg         . "#ff8cd9")
          (fg         . "#0b0b0b")
          (cursor     . "#bafc8b")
          (cursor-txt . "#202020")
          (selection  . "#3ea9fe")
          (selection-fg . "#ffffff")
          (black      . "#0c0c0c")
          (red        . "#a80f20")
          (green      . "#bafc8b")
          (yellow     . "#eedf4b")
          (blue       . "#145fcd")
          (magenta    . "#ff36a2")
          (cyan       . "#6bd1bc")
          (white      . "#e2d7e1")
          (br-black   . "#434343")
          (br-red     . "#d91329")
          (br-green   . "#d3ffaf")
          (br-yellow  . "#ffef50")
          (br-blue    . "#0075ea")
          (br-magenta . "#fdd5e5")
          (br-cyan    . "#79ecd5")
          (br-white   . "#fff3fe")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key unikitty-colors)) 'unspecified))))

  (custom-theme-set-faces
   'unikitty

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

(provide-theme 'unikitty)
