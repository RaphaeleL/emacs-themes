(deftheme highway
  "highway-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (highway-colors
        '(
          (bg         . "#222225")
          (fg         . "#ededed")
          (cursor     . "#e0d9b9")
          (cursor-txt . "#1f192a")
          (selection  . "#384564")
          (selection-fg . "#ededed")
          (black      . "#000000")
          (red        . "#d00e18")
          (green      . "#138034")
          (yellow     . "#ffcb3e")
          (blue       . "#006bb3")
          (magenta    . "#6b2775")
          (cyan       . "#384564")
          (white      . "#ededed")
          (br-black   . "#5d504a")
          (br-red     . "#f07e18")
          (br-green   . "#b1d130")
          (br-yellow  . "#fff120")
          (br-blue    . "#4fc2fd")
          (br-magenta . "#de0071")
          (br-cyan    . "#5d504a")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key highway-colors)) 'unspecified))))

  (custom-theme-set-faces
   'highway

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

(provide-theme 'highway)
