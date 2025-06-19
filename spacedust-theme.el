(deftheme spacedust
  "spacedust-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (spacedust-colors
        '(
          (bg         . "#0a1e24")
          (fg         . "#ecf0c1")
          (cursor     . "#708284")
          (cursor-txt . "#002831")
          (selection  . "#0a385c")
          (selection-fg . "#ffffff")
          (black      . "#6e5346")
          (red        . "#e35b00")
          (green      . "#5cab96")
          (yellow     . "#e3cd7b")
          (blue       . "#0f548b")
          (magenta    . "#e35b00")
          (cyan       . "#06afc7")
          (white      . "#f0f1ce")
          (br-black   . "#684c31")
          (br-red     . "#ff8a3a")
          (br-green   . "#aecab8")
          (br-yellow  . "#ffc878")
          (br-blue    . "#67a0ce")
          (br-magenta . "#ff8a3a")
          (br-cyan    . "#83a7b4")
          (br-white   . "#fefff1")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key spacedust-colors)) 'unspecified))))

  (custom-theme-set-faces
   'spacedust

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

(provide-theme 'spacedust)
