(deftheme clrs
  "clrs-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (clrs-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#262626")
          (cursor     . "#6fd3fc")
          (cursor-txt . "#ffffff")
          (selection  . "#6fd3fc")
          (selection-fg . "#041730")
          (black      . "#000000")
          (red        . "#f8282a")
          (green      . "#328a5d")
          (yellow     . "#fa701d")
          (blue       . "#135cd0")
          (magenta    . "#9f00bd")
          (cyan       . "#33c3c1")
          (white      . "#b3b3b3")
          (br-black   . "#555753")
          (br-red     . "#fb0416")
          (br-green   . "#2cc631")
          (br-yellow  . "#fdd727")
          (br-blue    . "#1670ff")
          (br-magenta . "#e900b0")
          (br-cyan    . "#3ad5ce")
          (br-white   . "#eeeeec")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key clrs-colors)) 'unspecified))))

  (custom-theme-set-faces
   'clrs

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

(provide-theme 'clrs)
