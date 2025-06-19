(deftheme fishtank
  "fishtank-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (fishtank-colors
        '(
          (bg         . "#232537")
          (fg         . "#ecf0fe")
          (cursor     . "#fecd5e")
          (cursor-txt . "#232537")
          (selection  . "#fcf7e9")
          (selection-fg . "#232537")
          (black      . "#03073c")
          (red        . "#c6004a")
          (green      . "#acf157")
          (yellow     . "#fecd5e")
          (blue       . "#525fb8")
          (magenta    . "#986f82")
          (cyan       . "#968763")
          (white      . "#ecf0fc")
          (br-black   . "#6c5b30")
          (br-red     . "#da4b8a")
          (br-green   . "#dbffa9")
          (br-yellow  . "#fee6a9")
          (br-blue    . "#b2befa")
          (br-magenta . "#fda5cd")
          (br-cyan    . "#a5bd86")
          (br-white   . "#f6ffec")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key fishtank-colors)) 'unspecified))))

  (custom-theme-set-faces
   'fishtank

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

(provide-theme 'fishtank)
