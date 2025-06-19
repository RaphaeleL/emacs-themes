(deftheme warmneon
  "warmneon-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (warmneon-colors
        '(
          (bg         . "#404040")
          (fg         . "#afdab6")
          (cursor     . "#30ff24")
          (cursor-txt . "#3eef37")
          (selection  . "#b0ad21")
          (selection-fg . "#ffffff")
          (black      . "#000000")
          (red        . "#e24346")
          (green      . "#39b13a")
          (yellow     . "#dae145")
          (blue       . "#4261c5")
          (magenta    . "#f920fb")
          (cyan       . "#2abbd4")
          (white      . "#d0b8a3")
          (br-black   . "#fefcfc")
          (br-red     . "#e97071")
          (br-green   . "#9cc090")
          (br-yellow  . "#ddda7a")
          (br-blue    . "#7b91d6")
          (br-magenta . "#f674ba")
          (br-cyan    . "#5ed1e5")
          (br-white   . "#d8c8bb")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key warmneon-colors)) 'unspecified))))

  (custom-theme-set-faces
   'warmneon

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

(provide-theme 'warmneon)
