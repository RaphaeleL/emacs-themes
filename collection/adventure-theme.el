(deftheme adventure
  "adventure-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (adventure-colors
        '(
          (bg         . "#040404")
          (fg         . "#feffff")
          (cursor     . "#feffff")
          (cursor-txt . "#000000")
          (selection  . "#606060")
          (selection-fg . "#ffffff")
          (black      . "#040404")
          (red        . "#d84a33")
          (green      . "#5da602")
          (yellow     . "#eebb6e")
          (blue       . "#417ab3")
          (magenta    . "#e5c499")
          (cyan       . "#bdcfe5")
          (white      . "#dbded8")
          (br-black   . "#685656")
          (br-red     . "#d76b42")
          (br-green   . "#99b52c")
          (br-yellow  . "#ffb670")
          (br-blue    . "#97d7ef")
          (br-magenta . "#aa7900")
          (br-cyan    . "#bdcfe5")
          (br-white   . "#e4d5c7")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key adventure-colors)) 'unspecified))))

  (custom-theme-set-faces
   'adventure

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

(provide-theme 'adventure)
