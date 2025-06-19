(deftheme red_planet
  "red_planet-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (red_planet-colors
        '(
          (bg         . "#222222")
          (fg         . "#c2b790")
          (cursor     . "#c2b790")
          (cursor-txt . "#202020")
          (selection  . "#1b324a")
          (selection-fg . "#bcb291")
          (black      . "#202020")
          (red        . "#8c3432")
          (green      . "#728271")
          (yellow     . "#e8bf6a")
          (blue       . "#69819e")
          (magenta    . "#896492")
          (cyan       . "#5b8390")
          (white      . "#b9aa99")
          (br-black   . "#676767")
          (br-red     . "#b55242")
          (br-green   . "#869985")
          (br-yellow  . "#ebeb91")
          (br-blue    . "#60827e")
          (br-magenta . "#de4974")
          (br-cyan    . "#38add8")
          (br-white   . "#d6bfb8")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key red_planet-colors)) 'unspecified))))

  (custom-theme-set-faces
   'red_planet

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

(provide-theme 'red_planet)
