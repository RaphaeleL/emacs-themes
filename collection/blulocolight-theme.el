(deftheme blulocolight
  "blulocolight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (blulocolight-colors
        '(
          (bg         . "#f9f9f9")
          (fg         . "#373a41")
          (cursor     . "#f32759")
          (cursor-txt . "#ffffff")
          (selection  . "#daf0ff")
          (selection-fg . "#373a41")
          (black      . "#373a41")
          (red        . "#d52753")
          (green      . "#23974a")
          (yellow     . "#df631c")
          (blue       . "#275fe4")
          (magenta    . "#823ff1")
          (cyan       . "#27618d")
          (white      . "#babbc2")
          (br-black   . "#676a77")
          (br-red     . "#ff6480")
          (br-green   . "#3cbc66")
          (br-yellow  . "#c5a332")
          (br-blue    . "#0099e1")
          (br-magenta . "#ce33c0")
          (br-cyan    . "#6d93bb")
          (br-white   . "#d3d3d3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key blulocolight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'blulocolight

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

(provide-theme 'blulocolight)
