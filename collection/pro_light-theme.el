(deftheme pro_light
  "pro_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (pro_light-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#191919")
          (cursor     . "#4d4d4d")
          (cursor-txt . "#f2f2f2")
          (selection  . "#c1ddff")
          (selection-fg . "#191919")
          (black      . "#000000")
          (red        . "#e5492b")
          (green      . "#50d148")
          (yellow     . "#c6c440")
          (blue       . "#3b75ff")
          (magenta    . "#ed66e8")
          (cyan       . "#4ed2de")
          (white      . "#dcdcdc")
          (br-black   . "#9f9f9f")
          (br-red     . "#ff6640")
          (br-green   . "#61ef57")
          (br-yellow  . "#f2f156")
          (br-blue    . "#0082ff")
          (br-magenta . "#ff7eff")
          (br-cyan    . "#61f7f8")
          (br-white   . "#f2f2f2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key pro_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'pro_light

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

(provide-theme 'pro_light)
