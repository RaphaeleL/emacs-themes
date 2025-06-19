(deftheme monokai_classic
  "monokai_classic-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (monokai_classic-colors
        '(
          (bg         . "#272822")
          (fg         . "#fdfff1")
          (cursor     . "#c0c1b5")
          (cursor-txt . "#c0c1b5")
          (selection  . "#57584f")
          (selection-fg . "#fdfff1")
          (black      . "#272822")
          (red        . "#f92672")
          (green      . "#a6e22e")
          (yellow     . "#e6db74")
          (blue       . "#fd971f")
          (magenta    . "#ae81ff")
          (cyan       . "#66d9ef")
          (white      . "#fdfff1")
          (br-black   . "#6e7066")
          (br-red     . "#f92672")
          (br-green   . "#a6e22e")
          (br-yellow  . "#e6db74")
          (br-blue    . "#fd971f")
          (br-magenta . "#ae81ff")
          (br-cyan    . "#66d9ef")
          (br-white   . "#fdfff1")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key monokai_classic-colors)) 'unspecified))))

  (custom-theme-set-faces
   'monokai_classic

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

(provide-theme 'monokai_classic)
