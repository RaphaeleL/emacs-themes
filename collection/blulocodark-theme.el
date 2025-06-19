(deftheme blulocodark
  "blulocodark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (blulocodark-colors
        '(
          (bg         . "#282c34")
          (fg         . "#b9c0cb")
          (cursor     . "#ffcc00")
          (cursor-txt . "#282c34")
          (selection  . "#b9c0ca")
          (selection-fg . "#272b33")
          (black      . "#41444d")
          (red        . "#fc2f52")
          (green      . "#25a45c")
          (yellow     . "#ff936a")
          (blue       . "#3476ff")
          (magenta    . "#7a82da")
          (cyan       . "#4483aa")
          (white      . "#cdd4e0")
          (br-black   . "#8f9aae")
          (br-red     . "#ff6480")
          (br-green   . "#3fc56b")
          (br-yellow  . "#f9c859")
          (br-blue    . "#10b1fe")
          (br-magenta . "#ff78f8")
          (br-cyan    . "#5fb9bc")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key blulocodark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'blulocodark

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

(provide-theme 'blulocodark)
