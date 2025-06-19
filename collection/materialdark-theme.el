(deftheme materialdark
  "materialdark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (materialdark-colors
        '(
          (bg         . "#232322")
          (fg         . "#e5e5e5")
          (cursor     . "#16afca")
          (cursor-txt . "#dfdfdf")
          (selection  . "#dfdfdf")
          (selection-fg . "#3d3d3d")
          (black      . "#212121")
          (red        . "#b7141f")
          (green      . "#457b24")
          (yellow     . "#f6981e")
          (blue       . "#134eb2")
          (magenta    . "#560088")
          (cyan       . "#0e717c")
          (white      . "#efefef")
          (br-black   . "#424242")
          (br-red     . "#e83b3f")
          (br-green   . "#7aba3a")
          (br-yellow  . "#ffea2e")
          (br-blue    . "#54a4f3")
          (br-magenta . "#aa4dbc")
          (br-cyan    . "#26bbd1")
          (br-white   . "#d9d9d9")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key materialdark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'materialdark

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

(provide-theme 'materialdark)
