(deftheme bluedolphin
  "bluedolphin-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (bluedolphin-colors
        '(
          (bg         . "#006984")
          (fg         . "#c5f2ff")
          (cursor     . "#ffcc00")
          (cursor-txt . "#292d3e")
          (selection  . "#2baeca")
          (selection-fg . "#eceff1")
          (black      . "#292d3e")
          (red        . "#ff8288")
          (green      . "#b4e88d")
          (yellow     . "#f4d69f")
          (blue       . "#82aaff")
          (magenta    . "#e9c1ff")
          (cyan       . "#89ebff")
          (white      . "#d0d0d0")
          (br-black   . "#434758")
          (br-red     . "#ff8b92")
          (br-green   . "#ddffa7")
          (br-yellow  . "#ffe585")
          (br-blue    . "#9cc4ff")
          (br-magenta . "#ddb0f6")
          (br-cyan    . "#a3f7ff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key bluedolphin-colors)) 'unspecified))))

  (custom-theme-set-faces
   'bluedolphin

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

(provide-theme 'bluedolphin)
