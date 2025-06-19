(deftheme solarized_dark_patched
  "solarized_dark_patched-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (solarized_dark_patched-colors
        '(
          (bg         . "#001e27")
          (fg         . "#708284")
          (cursor     . "#708284")
          (cursor-txt . "#002831")
          (selection  . "#002831")
          (selection-fg . "#819090")
          (black      . "#002831")
          (red        . "#d11c24")
          (green      . "#738a05")
          (yellow     . "#a57706")
          (blue       . "#2176c7")
          (magenta    . "#c61c6f")
          (cyan       . "#259286")
          (white      . "#eae3cb")
          (br-black   . "#475b62")
          (br-red     . "#bd3613")
          (br-green   . "#475b62")
          (br-yellow  . "#536870")
          (br-blue    . "#708284")
          (br-magenta . "#5956ba")
          (br-cyan    . "#819090")
          (br-white   . "#fcf4dc")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key solarized_dark_patched-colors)) 'unspecified))))

  (custom-theme-set-faces
   'solarized_dark_patched

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

(provide-theme 'solarized_dark_patched)
