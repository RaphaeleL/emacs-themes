(deftheme sugarplum
  "sugarplum-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (sugarplum-colors
        '(
          (bg         . "#111147")
          (fg         . "#db7ddd")
          (cursor     . "#53b397")
          (cursor-txt . "#53b397")
          (selection  . "#5ca8dc")
          (selection-fg . "#d0beee")
          (black      . "#111147")
          (red        . "#5ca8dc")
          (green      . "#53b397")
          (yellow     . "#249a84")
          (blue       . "#db7ddd")
          (magenta    . "#d0beee")
          (cyan       . "#f9f3f9")
          (white      . "#a175d4")
          (br-black   . "#111147")
          (br-red     . "#5cb5dc")
          (br-green   . "#52deb5")
          (br-yellow  . "#01f5c7")
          (br-blue    . "#fa5dfd")
          (br-magenta . "#c6a5fd")
          (br-cyan    . "#ffffff")
          (br-white   . "#b577fd")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key sugarplum-colors)) 'unspecified))))

  (custom-theme-set-faces
   'sugarplum

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

(provide-theme 'sugarplum)
