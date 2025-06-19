(deftheme peppermint
  "peppermint-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (peppermint-colors
        '(
          (bg         . "#000000")
          (fg         . "#c8c8c8")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#e6e6e6")
          (selection-fg . "#000000")
          (black      . "#353535")
          (red        . "#e74669")
          (green      . "#89d287")
          (yellow     . "#dab853")
          (blue       . "#449fd0")
          (magenta    . "#da62dc")
          (cyan       . "#65aaaf")
          (white      . "#b4b4b4")
          (br-black   . "#535353")
          (br-red     . "#e4859b")
          (br-green   . "#a3cca2")
          (br-yellow  . "#e1e487")
          (br-blue    . "#6fbce2")
          (br-magenta . "#e586e7")
          (br-cyan    . "#96dcdb")
          (br-white   . "#dfdfdf")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key peppermint-colors)) 'unspecified))))

  (custom-theme-set-faces
   'peppermint

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

(provide-theme 'peppermint)
