(deftheme framer
  "framer-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (framer-colors
        '(
          (bg         . "#111111")
          (fg         . "#777777")
          (cursor     . "#fcdc08")
          (cursor-txt . "#161616")
          (selection  . "#666666")
          (selection-fg . "#ffffff")
          (black      . "#141414")
          (red        . "#ff5555")
          (green      . "#98ec65")
          (yellow     . "#ffcc33")
          (blue       . "#00aaff")
          (magenta    . "#aa88ff")
          (cyan       . "#88ddff")
          (white      . "#cccccc")
          (br-black   . "#414141")
          (br-red     . "#ff8888")
          (br-green   . "#b6f292")
          (br-yellow  . "#ffd966")
          (br-blue    . "#33bbff")
          (br-magenta . "#cebbff")
          (br-cyan    . "#bbecff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key framer-colors)) 'unspecified))))

  (custom-theme-set-faces
   'framer

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

(provide-theme 'framer)
