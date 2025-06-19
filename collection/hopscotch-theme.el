(deftheme hopscotch
  "hopscotch-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (hopscotch-colors
        '(
          (bg         . "#322931")
          (fg         . "#b9b5b8")
          (cursor     . "#b9b5b8")
          (cursor-txt . "#322931")
          (selection  . "#5c545b")
          (selection-fg . "#b9b5b8")
          (black      . "#322931")
          (red        . "#dd464c")
          (green      . "#8fc13e")
          (yellow     . "#fdcc59")
          (blue       . "#1290bf")
          (magenta    . "#c85e7c")
          (cyan       . "#149b93")
          (white      . "#b9b5b8")
          (br-black   . "#797379")
          (br-red     . "#dd464c")
          (br-green   . "#8fc13e")
          (br-yellow  . "#fdcc59")
          (br-blue    . "#1290bf")
          (br-magenta . "#c85e7c")
          (br-cyan    . "#149b93")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key hopscotch-colors)) 'unspecified))))

  (custom-theme-set-faces
   'hopscotch

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

(provide-theme 'hopscotch)
