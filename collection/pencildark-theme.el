(deftheme pencildark
  "pencildark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (pencildark-colors
        '(
          (bg         . "#212121")
          (fg         . "#f1f1f1")
          (cursor     . "#20bbfc")
          (cursor-txt . "#f1f1f1")
          (selection  . "#b6d6fd")
          (selection-fg . "#f1f1f1")
          (black      . "#212121")
          (red        . "#c30771")
          (green      . "#10a778")
          (yellow     . "#a89c14")
          (blue       . "#008ec4")
          (magenta    . "#523c79")
          (cyan       . "#20a5ba")
          (white      . "#d9d9d9")
          (br-black   . "#424242")
          (br-red     . "#fb007a")
          (br-green   . "#5fd7af")
          (br-yellow  . "#f3e430")
          (br-blue    . "#20bbfc")
          (br-magenta . "#6855de")
          (br-cyan    . "#4fb8cc")
          (br-white   . "#f1f1f1")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key pencildark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'pencildark

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

(provide-theme 'pencildark)
