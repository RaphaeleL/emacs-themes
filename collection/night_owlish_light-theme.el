(deftheme night_owlish_light
  "night_owlish_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (night_owlish_light-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#403f53")
          (cursor     . "#403f53")
          (cursor-txt . "#fbfbfb")
          (selection  . "#f2f2f2")
          (selection-fg . "#403f53")
          (black      . "#011627")
          (red        . "#d3423e")
          (green      . "#2aa298")
          (yellow     . "#daaa01")
          (blue       . "#4876d6")
          (magenta    . "#403f53")
          (cyan       . "#08916a")
          (white      . "#7a8181")
          (br-black   . "#7a8181")
          (br-red     . "#f76e6e")
          (br-green   . "#49d0c5")
          (br-yellow  . "#dac26b")
          (br-blue    . "#5ca7e4")
          (br-magenta . "#697098")
          (br-cyan    . "#00c990")
          (br-white   . "#989fb1")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key night_owlish_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'night_owlish_light

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

(provide-theme 'night_owlish_light)
