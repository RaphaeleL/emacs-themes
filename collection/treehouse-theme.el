(deftheme treehouse
  "treehouse-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (treehouse-colors
        '(
          (bg         . "#191919")
          (fg         . "#786b53")
          (cursor     . "#fac814")
          (cursor-txt . "#191919")
          (selection  . "#786b53")
          (selection-fg . "#fac800")
          (black      . "#321300")
          (red        . "#b2270e")
          (green      . "#44a900")
          (yellow     . "#aa820c")
          (blue       . "#58859a")
          (magenta    . "#97363d")
          (cyan       . "#b25a1e")
          (white      . "#786b53")
          (br-black   . "#433626")
          (br-red     . "#ed5d20")
          (br-green   . "#55f238")
          (br-yellow  . "#f2b732")
          (br-blue    . "#85cfed")
          (br-magenta . "#e14c5a")
          (br-cyan    . "#f07d14")
          (br-white   . "#ffc800")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key treehouse-colors)) 'unspecified))))

  (custom-theme-set-faces
   'treehouse

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

(provide-theme 'treehouse)
