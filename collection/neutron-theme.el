(deftheme neutron
  "neutron-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (neutron-colors
        '(
          (bg         . "#1c1e22")
          (fg         . "#e6e8ef")
          (cursor     . "#f6f7ec")
          (cursor-txt . "#c4c5b5")
          (selection  . "#2f363e")
          (selection-fg . "#7d8fa4")
          (black      . "#23252b")
          (red        . "#b54036")
          (green      . "#5ab977")
          (yellow     . "#deb566")
          (blue       . "#6a7c93")
          (magenta    . "#a4799d")
          (cyan       . "#3f94a8")
          (white      . "#e6e8ef")
          (br-black   . "#23252b")
          (br-red     . "#b54036")
          (br-green   . "#5ab977")
          (br-yellow  . "#deb566")
          (br-blue    . "#6a7c93")
          (br-magenta . "#a4799d")
          (br-cyan    . "#3f94a8")
          (br-white   . "#ebedf2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key neutron-colors)) 'unspecified))))

  (custom-theme-set-faces
   'neutron

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

(provide-theme 'neutron)
