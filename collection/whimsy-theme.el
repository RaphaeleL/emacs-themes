(deftheme whimsy
  "whimsy-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (whimsy-colors
        '(
          (bg         . "#29283b")
          (fg         . "#b3b0d6")
          (cursor     . "#b3b0d6")
          (cursor-txt . "#535178")
          (selection  . "#3d3c58")
          (selection-fg . "#ffffff")
          (black      . "#535178")
          (red        . "#ef6487")
          (green      . "#5eca89")
          (yellow     . "#fdd877")
          (blue       . "#65aef7")
          (magenta    . "#aa7ff0")
          (cyan       . "#43c1be")
          (white      . "#ffffff")
          (br-black   . "#535178")
          (br-red     . "#ef6487")
          (br-green   . "#5eca89")
          (br-yellow  . "#fdd877")
          (br-blue    . "#65aef7")
          (br-magenta . "#aa7ff0")
          (br-cyan    . "#43c1be")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key whimsy-colors)) 'unspecified))))

  (custom-theme-set-faces
   'whimsy

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

(provide-theme 'whimsy)
