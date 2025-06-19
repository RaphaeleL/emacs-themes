(deftheme monokai_pro_machine
  "monokai_pro_machine-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (monokai_pro_machine-colors
        '(
          (bg         . "#273136")
          (fg         . "#f2fffc")
          (cursor     . "#b8c4c3")
          (cursor-txt . "#b8c4c3")
          (selection  . "#545f62")
          (selection-fg . "#f2fffc")
          (black      . "#273136")
          (red        . "#ff6d7e")
          (green      . "#a2e57b")
          (yellow     . "#ffed72")
          (blue       . "#ffb270")
          (magenta    . "#baa0f8")
          (cyan       . "#7cd5f1")
          (white      . "#f2fffc")
          (br-black   . "#6b7678")
          (br-red     . "#ff6d7e")
          (br-green   . "#a2e57b")
          (br-yellow  . "#ffed72")
          (br-blue    . "#ffb270")
          (br-magenta . "#baa0f8")
          (br-cyan    . "#7cd5f1")
          (br-white   . "#f2fffc")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key monokai_pro_machine-colors)) 'unspecified))))

  (custom-theme-set-faces
   'monokai_pro_machine

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

(provide-theme 'monokai_pro_machine)
