(deftheme hax0r_gr33n
  "hax0r_gr33n-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (hax0r_gr33n-colors
        '(
          (bg         . "#020f01")
          (fg         . "#16b10e")
          (cursor     . "#15d00d")
          (cursor-txt . "#ffffff")
          (selection  . "#d4ffc1")
          (selection-fg . "#fdfdfd")
          (black      . "#001f0b")
          (red        . "#15d00d")
          (green      . "#15d00d")
          (yellow     . "#15d00d")
          (blue       . "#15d00d")
          (magenta    . "#15d00d")
          (cyan       . "#15d00d")
          (white      . "#fafafa")
          (br-black   . "#001510")
          (br-red     . "#19e20e")
          (br-green   . "#19e20e")
          (br-yellow  . "#19e20e")
          (br-blue    . "#19e20e")
          (br-magenta . "#19e20e")
          (br-cyan    . "#19e20e")
          (br-white   . "#fefefe")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key hax0r_gr33n-colors)) 'unspecified))))

  (custom-theme-set-faces
   'hax0r_gr33n

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

(provide-theme 'hax0r_gr33n)
